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
     Generate the audit trail report
     
     See also:
     REST API Reference for createAuditTrailReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createAuditTrailReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await createAuditTrailReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Generate the audit trail report
     
     See also:
     REST API Reference for createAuditTrailReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/
     
     - POST /api/2.0/security/audit/events/report
     - Generates the audit trail report.
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
    open class func createAuditTrailReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/security/audit/events/report"
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
     Get filtered audit trail data
     
     See also:
     REST API Reference for getAuditEventsByFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/
     - parameter userId: (query) The ID of the user who triggered the audit event. (optional)     - parameter moduleType: (query) The location where the audit event occurred. (optional)     - parameter actionType: (query) The type of action performed in the audit event (e.g., Create, Update, Delete). (optional)     - parameter action: (query) The specific action that occurred within the audit event. (optional)     - parameter entryType: (query) The type of audit entry (e.g., Folder, User, File). (optional)     - parameter target: (query) The target object affected by the audit event (e.g., document ID, user account). (optional)     - parameter from: (query) The starting date and time for filtering audit events. (optional)     - parameter to: (query) The ending date and time for filtering audit events. (optional)     - parameter count: (query) The maximum number of audit event records to retrieve. (optional)     - parameter startIndex: (query) The index of the first audit event record to retrieve in a paged query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AuditEventArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAuditEventsByFilter(userId: UUID? = nil, moduleType: LocationType? = nil, actionType: ActionType? = nil, action: MessageAction? = nil, entryType: EntryType? = nil, target: String? = nil, from: ApiDateTime? = nil, to: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AuditEventArrayWrapper {
        return try await getAuditEventsByFilterWithRequestBuilder(userId: userId, moduleType: moduleType, actionType: actionType, action: action, entryType: entryType, target: target, from: from, to: to, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get filtered audit trail data
     
     See also:
     REST API Reference for getAuditEventsByFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/
     
     - GET /api/2.0/security/audit/events/filter
     - Returns a list of the audit events by the parameters specified in the request.
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
     - parameter userId: (query) The ID of the user who triggered the audit event. (optional)
     - parameter moduleType: (query) The location where the audit event occurred. (optional)
     - parameter actionType: (query) The type of action performed in the audit event (e.g., Create, Update, Delete). (optional)
     - parameter action: (query) The specific action that occurred within the audit event. (optional)
     - parameter entryType: (query) The type of audit entry (e.g., Folder, User, File). (optional)
     - parameter target: (query) The target object affected by the audit event (e.g., document ID, user account). (optional)
     - parameter from: (query) The starting date and time for filtering audit events. (optional)
     - parameter to: (query) The ending date and time for filtering audit events. (optional)
     - parameter count: (query) The maximum number of audit event records to retrieve. (optional)
     - parameter startIndex: (query) The index of the first audit event record to retrieve in a paged query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AuditEventArrayWrapper> 
     */
    open class func getAuditEventsByFilterWithRequestBuilder(userId: UUID? = nil, moduleType: LocationType? = nil, actionType: ActionType? = nil, action: MessageAction? = nil, entryType: EntryType? = nil, target: String? = nil, from: ApiDateTime? = nil, to: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AuditEventArrayWrapper> {
        let localVariablePath = "/api/2.0/security/audit/events/filter"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": (wrappedValue: userId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "moduleType": (wrappedValue: moduleType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "actionType": (wrappedValue: actionType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "action": (wrappedValue: action?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "entryType": (wrappedValue: entryType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "target": (wrappedValue: target?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "from": (wrappedValue: from?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "to": (wrappedValue: to?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
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

        let localVariableRequestBuilder: RequestBuilder<AuditEventArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the audit trail settings
     
     See also:
     REST API Reference for getAuditSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantAuditSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAuditSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantAuditSettingsWrapper {
        return try await getAuditSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the audit trail settings
     
     See also:
     REST API Reference for getAuditSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/
     
     - GET /api/2.0/security/audit/settings/lifetime
     - Returns the audit trail settings.
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
     - returns: RequestBuilder<TenantAuditSettingsWrapper> 
     */
    open class func getAuditSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantAuditSettingsWrapper> {
        let localVariablePath = "/api/2.0/security/audit/settings/lifetime"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantAuditSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get audit trail mappers
     
     See also:
     REST API Reference for getAuditTrailMappers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/
     - parameter productType: (query) The type of product related to the audit trail. (optional)     - parameter moduleType: (query) The location associated with the audit trail. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAuditTrailMappers(productType: ProductType? = nil, moduleType: LocationType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await getAuditTrailMappersWithRequestBuilder(productType: productType, moduleType: moduleType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get audit trail mappers
     
     See also:
     REST API Reference for getAuditTrailMappers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/
     
     - GET /api/2.0/security/audit/mappers
     - Returns the mappers for the audit trail types.
     - parameter productType: (query) The type of product related to the audit trail. (optional)
     - parameter moduleType: (query) The location associated with the audit trail. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func getAuditTrailMappersWithRequestBuilder(productType: ProductType? = nil, moduleType: LocationType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        let localVariablePath = "/api/2.0/security/audit/mappers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "productType": (wrappedValue: productType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "moduleType": (wrappedValue: moduleType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get audit trail types
     
     See also:
     REST API Reference for getAuditTrailTypes Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAuditTrailTypes(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await getAuditTrailTypesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get audit trail types
     
     See also:
     REST API Reference for getAuditTrailTypes Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/
     
     - GET /api/2.0/security/audit/types
     - Returns all the available audit trail types.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func getAuditTrailTypesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        let localVariablePath = "/api/2.0/security/audit/types"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get audit trail data
     
     See also:
     REST API Reference for getLastAuditEvents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-audit-events/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AuditEventArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLastAuditEvents(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AuditEventArrayWrapper {
        return try await getLastAuditEventsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get audit trail data
     
     See also:
     REST API Reference for getLastAuditEvents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-audit-events/
     
     - GET /api/2.0/security/audit/events/last
     - Returns a list of the latest changes (creation, modification, deletion, etc.) made by users to the entities on the portal.
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
     - returns: RequestBuilder<AuditEventArrayWrapper> 
     */
    open class func getLastAuditEventsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AuditEventArrayWrapper> {
        let localVariablePath = "/api/2.0/security/audit/events/last"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuditEventArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the audit trail settings
     
     See also:
     REST API Reference for setAuditSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/
     - parameter tenantAuditSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantAuditSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setAuditSettings(tenantAuditSettingsWrapper: TenantAuditSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantAuditSettingsWrapper {
        return try await setAuditSettingsWithRequestBuilder(tenantAuditSettingsWrapper: tenantAuditSettingsWrapper, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the audit trail settings
     
     See also:
     REST API Reference for setAuditSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/
     
     - POST /api/2.0/security/audit/settings/lifetime
     - Sets the audit trail settings for the current portal.
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
     - parameter tenantAuditSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantAuditSettingsWrapper> 
     */
    open class func setAuditSettingsWithRequestBuilder(tenantAuditSettingsWrapper: TenantAuditSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantAuditSettingsWrapper> {
        let localVariablePath = "/api/2.0/security/audit/settings/lifetime"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tenantAuditSettingsWrapper, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantAuditSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension SecurityAuditTrailDataAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> SecurityAuditTrailDataAPIApi {
        self.fields = fields
        return self
    }
}
