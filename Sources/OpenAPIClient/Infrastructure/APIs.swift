//
//  Copyright (c) Ascensio System SIA 2025
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import Alamofire

open class OpenAPIClientAPIConfiguration: @unchecked Sendable {
    public var basePath: String
    public var customHeaders: [String: String]
    public var credential: URLCredential?
    public var requestBuilderFactory: RequestBuilderFactory
    public var apiResponseQueue: DispatchQueue
    public var codableHelper: CodableHelper

    /// Configures the range of HTTP status codes that will result in a successful response
    ///
    /// If a HTTP status code is outside of this range the response will be interpreted as failed.
    public var successfulStatusCodeRange: Range<Int>

    public var interceptor: RequestInterceptor?

    /// ResponseSerializer that will be used by the generator for `Data` responses
    ///
    /// If unchanged, Alamofires default `DataResponseSerializer` will be used. 
    public var dataResponseSerializer: AnyResponseSerializer<Data>
    /// ResponseSerializer that will be used by the generator for `String` responses
    ///
    /// If unchanged, Alamofires default `StringResponseSerializer` will be used. 
    public var stringResponseSerializer: AnyResponseSerializer<String>

    public init(
        basePath: String = "http://localhost:8092",
        customHeaders: [String: String] = [:],
        credential: URLCredential? = nil,
        requestBuilderFactory: RequestBuilderFactory = AlamofireRequestBuilderFactory(),
        apiResponseQueue: DispatchQueue = .main,
        codableHelper: CodableHelper = CodableHelper(),
        successfulStatusCodeRange: Range<Int> = 200..<300,
        interceptor: RequestInterceptor? = nil,
        dataResponseSerializer: AnyResponseSerializer<Data> = AnyResponseSerializer(DataResponseSerializer()),
        stringResponseSerializer: AnyResponseSerializer<String> = AnyResponseSerializer(StringResponseSerializer())
    ) {
        self.basePath = basePath
        self.customHeaders = customHeaders
        self.credential = credential
        self.requestBuilderFactory = requestBuilderFactory
        self.apiResponseQueue = apiResponseQueue
        self.codableHelper = codableHelper
        self.successfulStatusCodeRange = successfulStatusCodeRange
        self.interceptor = interceptor
        self.dataResponseSerializer = dataResponseSerializer
        self.stringResponseSerializer = stringResponseSerializer
    }

    public static let shared = OpenAPIClientAPIConfiguration()
}

open class RequestBuilder<T>: @unchecked Sendable, Identifiable {
    public var credential: URLCredential?
    public var headers: [String: String]
    public let parameters: [String: any Sendable]?
    public let method: String
    public let URLString: String
    public let requestTask: RequestTask = RequestTask()
    public let requiresAuthentication: Bool
    public let apiConfiguration: OpenAPIClientAPIConfiguration

    /// Optional block to obtain a reference to the request's progress instance when available.
    public var onProgressReady: ((Progress) -> Void)?

    required public init(method: String, URLString: String, parameters: [String: any Sendable]?, headers: [String: String] = [:], requiresAuthentication: Bool, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) {
        self.method = method
        self.URLString = URLString
        self.parameters = parameters
        self.headers = headers
        self.requiresAuthentication = requiresAuthentication
        self.apiConfiguration = apiConfiguration

        addHeaders(apiConfiguration.customHeaders)
        addCredential()
    }

    open func addHeaders(_ aHeaders: [String: String]) {
        for (header, value) in aHeaders {
            headers[header] = value
        }
    }

    @discardableResult
    open func execute(completion: @Sendable @escaping (_ result: Swift.Result<Response<T>, ErrorResponse>) -> Void) -> RequestTask {
        return requestTask
    }

    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    @discardableResult
    open func execute() async throws(ErrorResponse) -> Response<T> {
        do {
            let requestTask = self.requestTask
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                      continuation.resume(throwing: CancellationError())
                      return
                    }

                    self.execute { result in
                        switch result {
                        case let .success(response):
                            nonisolated(unsafe) let response = response
                            continuation.resume(returning: response)
                        case let .failure(error):
                            continuation.resume(throwing: error)
                        }
                    }
                }
            } onCancel: {
                requestTask.cancel()
            }
        } catch {
            if let errorResponse = error as? ErrorResponse {
                throw errorResponse
            } else {
                throw ErrorResponse.error(-3, nil, nil, error)
            }
        }
    }
    
    public func addHeader(name: String, value: String) -> Self {
        if !value.isEmpty {
            headers[name] = value
        }
        return self
    }

    open func addCredential() {
        credential = apiConfiguration.credential
    }
}

public protocol RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type
    func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type
}
