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

open class {{{{x-classname}}}} {
var fields: String?

    /**
     Start login history report
     
     See also:
     REST API Reference for createLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/
     - parameter format: (query) The format the report file is written in. The workbook format is the default and is the only one that leaves  the finished file addressable by ID: a report asked for as CSV comes back with an empty `resultFileId`, so it  can only be reached through `resultFileName` and `resultFileUrl`. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createLoginHistoryReport(format: AuditReportFormat? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await createLoginHistoryReportWithRequestBuilder(format: format, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start login history report
     
     See also:
     REST API Reference for createLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/
     
     - POST /api/2.0/security/audit/login/report
     - Queues a report of the portal's login history and returns the state of the background job that builds it. The  report covers the period reaching from now back by the login history lifetime that  `GET api/2.0/security/audit/settings/lifetime` reports and is never filtered: the query parameters of  `GET api/2.0/security/audit/login/filter` do not apply here. The caller needs the portal-settings right of a  DocSpace administrator plus the audit option of the portal's pricing plan, otherwise the call is answered with  402. The file is not ready when the response arrives - poll `GET api/2.0/security/audit/login/report` until  `isCompleted` is true, then take `resultFileUrl`, and treat a non-empty `error` as a failed build. The  finished file is saved to the caller's My documents section, as an XLSX workbook by default or as CSV when  `format=Csv`, in which case `resultFileId` stays empty and only the name and the URL identify it. One job runs  per caller and kind: calling again while the previous one is still building returns that job instead of  starting a second, and `DELETE api/2.0/security/audit/login/report` cancels it.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter format: (query) The format the report file is written in. The workbook format is the default and is the only one that leaves  the finished file addressable by ID: a report asked for as CSV comes back with an empty `resultFileId`, so it  can only be reached through `resultFileName` and `resultFileUrl`. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func createLoginHistoryReportWithRequestBuilder(format: AuditReportFormat? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/security/audit/login/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "format": (wrappedValue: format?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get recent login events
     
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
     Get recent login events
     
     See also:
     REST API Reference for getLastLoginEvents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-login-events/
     
     - GET /api/2.0/security/audit/login/last
     - Returns the twenty most recent login events of the whole portal - successful sign-ins, sign-outs and failed  attempts alike - as the short summary a settings page shows before anyone asks for the full history. The  caller needs the portal-settings right of a DocSpace administrator, and in a cloud installation the login  history and audit trail section must be enabled for the portal, otherwise the call is answered with 402. The  operation is read-only and takes no parameters: the number of events is fixed at twenty, nothing can be  filtered, and events are ordered newest first. `date` is given in the portal time zone, `actionText` is the  readable sentence describing the event with every substituted value shortened to fifty characters here, and  `country` and `city` are resolved from the IP address and stay empty when it cannot be located. An empty list  means the portal has recorded no login events yet. Use `GET api/2.0/security/audit/login/filter` to filter by  user, action or period and to page through the whole history.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
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
     - parameter userId: (query) The user whose sign-in attempts are kept, given by portal user ID. Leave it at the empty GUID to keep the  events of every user. (optional)     - parameter action: (query) The sign-in action recorded, spelled as `GET api/2.0/security/audit/types` lists it under `actions` - a  successful login, a failed one, a logout. The default value keeps every action. (optional)     - parameter from: (query) The earliest moment an event may have been recorded at, read as a UTC instant. The `date` of the events that  come back is in the portal time zone instead, so the two do not line up on a portal that is not on UTC. (optional)     - parameter to: (query) The latest moment an event may have been recorded at, read as a UTC instant in the same way as `from`. (optional)     - parameter count: (query) How many events one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them. (optional)     - parameter startIndex: (query) How many events to skip before the page begins, counting from the newest. It is applied to the log before  the filters, so a page can hold fewer events than `count` while older matches still exist. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: LoginEventArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLoginEventsByFilter(userId: UUID? = nil, action: MessageAction? = nil, from: Date? = nil, to: Date? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginEventArrayWrapper {
        return try await getLoginEventsByFilterWithRequestBuilder(userId: userId, action: action, from: from, to: to, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get filtered login events
     
     See also:
     REST API Reference for getLoginEventsByFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/
     
     - GET /api/2.0/security/audit/login/filter
     - Returns the portal's login events that match the filters in the query - by user, by login action and by period  - and is the operation behind the login history page. The caller needs the portal-settings right of a DocSpace  administrator plus the audit option of the portal's pricing plan; when that option is missing the filters are  silently ignored and the answer is the same twenty most recent events that  `GET api/2.0/security/audit/login/last` returns, and when the login history and audit trail section is  disabled altogether the call is answered with 402. Omit a filter to match everything. `from` and `to` are read  as UTC instants while `date` comes back in the portal time zone, `count` defaults to 100 and cannot exceed it,  `startIndex` skips events from the newest end, and the page window is applied to the log before the filters,  so a page can hold fewer items than `count` while older matches still exist. The operation is read-only; take  the values accepted by `action` from `GET api/2.0/security/audit/types`.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter userId: (query) The user whose sign-in attempts are kept, given by portal user ID. Leave it at the empty GUID to keep the  events of every user. (optional)
     - parameter action: (query) The sign-in action recorded, spelled as `GET api/2.0/security/audit/types` lists it under `actions` - a  successful login, a failed one, a logout. The default value keeps every action. (optional)
     - parameter from: (query) The earliest moment an event may have been recorded at, read as a UTC instant. The `date` of the events that  come back is in the portal time zone instead, so the two do not line up on a portal that is not on UTC. (optional)
     - parameter to: (query) The latest moment an event may have been recorded at, read as a UTC instant in the same way as `from`. (optional)
     - parameter count: (query) How many events one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them. (optional)
     - parameter startIndex: (query) How many events to skip before the page begins, counting from the newest. It is applied to the log before  the filters, so a page can hold fewer events than `count` while older matches still exist. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<LoginEventArrayWrapper> 
     */
    open class func getLoginEventsByFilterWithRequestBuilder(userId: UUID? = nil, action: MessageAction? = nil, from: Date? = nil, to: Date? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<LoginEventArrayWrapper> {
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

    /**
     Get login history report status
     
     See also:
     REST API Reference for getLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-history-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLoginHistoryReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getLoginHistoryReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get login history report status
     
     See also:
     REST API Reference for getLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-history-report/
     
     - GET /api/2.0/security/audit/login/report
     - Returns the state of the login history report the calling user has started, and is the operation to poll after  `POST api/2.0/security/audit/login/report`. The caller needs the portal-settings right of a DocSpace  administrator plus the audit option of the portal's pricing plan, otherwise the call is answered with 402.  Jobs are kept per user and per report kind: this operation never shows another administrator's report, nor the  audit trail report, which has its own status at `GET api/2.0/security/audit/events/report`. The answer is  empty when no report of this kind is known for the caller; otherwise `percentage` grows towards 100,  `isCompleted` turns true when the build has ended, `error` carries the failure message when it ended badly,  and `resultFileName` and `resultFileUrl` point at the file saved to the caller's My documents section, while  `resultFileId` is filled for an XLSX report only. The operation is read-only and safe to poll every few  seconds; a finished job is dropped as soon as the next report of this kind is started.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func getLoginHistoryReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/security/audit/login/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate login history report
     
     See also:
     REST API Reference for terminateLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-login-history-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateLoginHistoryReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateLoginHistoryReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate login history report
     
     See also:
     REST API Reference for terminateLoginHistoryReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-login-history-report/
     
     - DELETE /api/2.0/security/audit/login/report
     - Cancels the login history report the calling user has running and drops it from the build queue. The caller  needs the portal-settings right of a DocSpace administrator plus the audit option of the portal's pricing  plan, otherwise the call is answered with 402. Cancellation is handed to the same background service that  builds the report, so a successful answer means the request was accepted rather than that the job has already  stopped: poll `GET api/2.0/security/audit/login/report` to watch it disappear. The operation returns no  content and touches only the caller's own login history report - the audit trail report is cancelled by  `DELETE api/2.0/security/audit/events/report`, and no report of another user can be reached from here. It is  idempotent: cancelling when nothing is running is not an error. A job stopped before it finished writing  leaves nothing in My documents, and a report cancelled by mistake has to be built again with  `POST api/2.0/security/audit/login/report`.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func terminateLoginHistoryReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/security/audit/login/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension SecurityLoginHistoryAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> SecurityLoginHistoryAPIApi {
        self.fields = fields
        return self
    }
}
