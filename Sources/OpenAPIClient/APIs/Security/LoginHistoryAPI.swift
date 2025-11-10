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

open class {{{{x-classname}}}} {
var fields: String?

    /**
     Generate the login history report
     
     See also:
     REST API Reference for createLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createLoginHistoryReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await createLoginHistoryReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Generate the login history report
     
     See also:
     REST API Reference for createLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/
     
     - POST /api/2.0/security/audit/login/report
     - Generates the login history report.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func createLoginHistoryReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/security/audit/login/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get login history
     
     See also:
     REST API Reference for getLastLoginEvents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-login-events/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: LoginEventArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLastLoginEvents(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginEventArrayWrapper {
        return try await getLastLoginEventsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get login history
     
     See also:
     REST API Reference for getLastLoginEvents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-login-events/
     
     - GET /api/2.0/security/audit/login/last
     - Returns all the latest user login activity, including successful logins and error logs.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<LoginEventArrayWrapper> 
     */
    open class func getLastLoginEventsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<LoginEventArrayWrapper> {
        let localVariablePath = "/api/2.0/security/audit/login/last"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LoginEventArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get filtered login events
     
     See also:
     REST API Reference for getLoginEventsByFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/
     - parameter userId: (query) The ID of the user whose login events are being queried. (optional)     - parameter action: (query) The login-related action to filter events by. (optional)     - parameter from: (query) The starting date and time for filtering login events. (optional)     - parameter to: (query) The ending date and time for filtering login events. (optional)     - parameter count: (query) The number of login events to retrieve in the query. (optional)     - parameter startIndex: (query) The starting index for fetching a subset of login events from the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: LoginEventArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLoginEventsByFilter(userId: UUID? = nil, action: MessageAction? = nil, from: ApiDateTime? = nil, to: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginEventArrayWrapper {
        return try await getLoginEventsByFilterWithRequestBuilder(userId: userId, action: action, from: from, to: to, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get filtered login events
     
     See also:
     REST API Reference for getLoginEventsByFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/
     
     - GET /api/2.0/security/audit/login/filter
     - Returns a list of the login events by the parameters specified in the request.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - parameter userId: (query) The ID of the user whose login events are being queried. (optional)
     - parameter action: (query) The login-related action to filter events by. (optional)
     - parameter from: (query) The starting date and time for filtering login events. (optional)
     - parameter to: (query) The ending date and time for filtering login events. (optional)
     - parameter count: (query) The number of login events to retrieve in the query. (optional)
     - parameter startIndex: (query) The starting index for fetching a subset of login events from the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<LoginEventArrayWrapper> 
     */
    open class func getLoginEventsByFilterWithRequestBuilder(userId: UUID? = nil, action: MessageAction? = nil, from: ApiDateTime? = nil, to: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<LoginEventArrayWrapper> {
        let localVariablePath = "/api/2.0/security/audit/login/filter"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": (wrappedValue: userId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "action": (wrappedValue: action?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "from": (wrappedValue: from?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "to": (wrappedValue: to?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LoginEventArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension SecurityLoginHistoryAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> SecurityLoginHistoryAPIApi {
        self.fields = fields
        return self
    }
}
