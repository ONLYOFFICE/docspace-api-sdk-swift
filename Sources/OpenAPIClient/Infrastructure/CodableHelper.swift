//
//  Copyright (c) Ascensio System SIA 2026
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

open class CodableHelper: @unchecked Sendable {
    public init() {}

    private var customDateFormatter: DateFormatter?
    private var defaultDateFormatter: DateFormatter = OpenISO8601DateFormatter()

    private var customJSONDecoder: JSONDecoder?
    private lazy var defaultJSONDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }()

    private var customJSONEncoder: JSONEncoder?
    private lazy var defaultJSONEncoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .formatted(dateFormatter)
        encoder.outputFormatting = .prettyPrinted
        return encoder
    }()

    public var dateFormatter: DateFormatter {
        get { return customDateFormatter ?? defaultDateFormatter }
        set { customDateFormatter = newValue }
    }
    public var jsonDecoder: JSONDecoder {
        get { return customJSONDecoder ?? defaultJSONDecoder }
        set { customJSONDecoder = newValue }
    }
    public var jsonEncoder: JSONEncoder {
        get { return customJSONEncoder ?? defaultJSONEncoder }
        set { customJSONEncoder = newValue }
    }

    open func decode<T>(_ type: T.Type, from data: Data) -> Swift.Result<T, Error> where T: Decodable {
        return Swift.Result { try jsonDecoder.decode(type, from: data) }
    }

    open func encode<T>(_ value: T) -> Swift.Result<Data, Error> where T: Encodable {
        return Swift.Result { try jsonEncoder.encode(value) }
    }
}
