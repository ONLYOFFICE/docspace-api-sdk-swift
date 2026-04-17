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
     Get account entries with file sharing settings
     
     See also:
     REST API Reference for getAccountsEntriesWithFilesShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/
     - parameter id: (path) The user ID.      - parameter employeeStatus: (query) The user status. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter excludeShared: (query) Specifies whether to exclude the account sharing settings from the response. (optional)     - parameter includeShared: (query) Specifies whether to include the account sharing settings in the response. (optional)     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The area of the account entries. (optional)     - parameter employeeTypes: (query) The list of the user types. (optional)     - parameter count: (query) The number of items to retrieve in a request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)     - parameter filterSeparator: (query) Specifies the separator used in filter expressions. (optional)     - parameter filterValue: (query) The text filter applied to the accounts search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccountsEntriesWithFilesShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectArrayWrapper {
        return try await getAccountsEntriesWithFilesSharedWithRequestBuilder(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get account entries with file sharing settings
     
     See also:
     REST API Reference for getAccountsEntriesWithFilesShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/
     
     - GET /api/2.0/accounts/file/{id}/search
     - Returns the account entries with their sharing settings for a file with the ID specified in request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter id: (path) The user ID. 
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter excludeShared: (query) Specifies whether to exclude the account sharing settings from the response. (optional)
     - parameter includeShared: (query) Specifies whether to include the account sharing settings in the response. (optional)
     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The area of the account entries. (optional)
     - parameter employeeTypes: (query) The list of the user types. (optional)
     - parameter count: (query) The number of items to retrieve in a request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter filterSeparator: (query) Specifies the separator used in filter expressions. (optional)
     - parameter filterValue: (query) The text filter applied to the accounts search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectArrayWrapper> 
     */
    open class func getAccountsEntriesWithFilesSharedWithRequestBuilder(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectArrayWrapper> {
        var localVariablePath = "/api/2.0/accounts/file/{id}/search"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "includeShared": (wrappedValue: includeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get account entries with folder sharing settings
     
     See also:
     REST API Reference for getAccountsEntriesWithFoldersShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/
     - parameter id: (path) The user ID.      - parameter employeeStatus: (query) The user status. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter excludeShared: (query) Specifies whether to exclude the account sharing settings from the response. (optional)     - parameter includeShared: (query) Specifies whether to include the account sharing settings in the response. (optional)     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The area of the account entries. (optional)     - parameter employeeTypes: (query) The list of the user types. (optional)     - parameter count: (query) The number of items to retrieve in a request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)     - parameter filterSeparator: (query) Specifies the separator used in filter expressions. (optional)     - parameter filterValue: (query) The text filter applied to the accounts search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccountsEntriesWithFoldersShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectArrayWrapper {
        return try await getAccountsEntriesWithFoldersSharedWithRequestBuilder(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get account entries with folder sharing settings
     
     See also:
     REST API Reference for getAccountsEntriesWithFoldersShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/
     
     - GET /api/2.0/accounts/folder/{id}/search
     - Returns the account entries with their sharing settings in a folder with the ID specified in request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter id: (path) The user ID. 
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter excludeShared: (query) Specifies whether to exclude the account sharing settings from the response. (optional)
     - parameter includeShared: (query) Specifies whether to include the account sharing settings in the response. (optional)
     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The area of the account entries. (optional)
     - parameter employeeTypes: (query) The list of the user types. (optional)
     - parameter count: (query) The number of items to retrieve in a request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter filterSeparator: (query) Specifies the separator used in filter expressions. (optional)
     - parameter filterValue: (query) The text filter applied to the accounts search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectArrayWrapper> 
     */
    open class func getAccountsEntriesWithFoldersSharedWithRequestBuilder(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectArrayWrapper> {
        var localVariablePath = "/api/2.0/accounts/folder/{id}/search"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "includeShared": (wrappedValue: includeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get account entries
     
     See also:
     REST API Reference for getAccountsEntriesWithRoomsShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/
     - parameter id: (path) The user ID.      - parameter employeeStatus: (query) The user status. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter excludeShared: (query) Specifies whether to exclude the account sharing settings from the response. (optional)     - parameter includeShared: (query) Specifies whether to include the account sharing settings in the response. (optional)     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The area of the account entries. (optional)     - parameter employeeTypes: (query) The list of the user types. (optional)     - parameter count: (query) The number of items to retrieve in a request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)     - parameter filterSeparator: (query) Specifies the separator used in filter expressions. (optional)     - parameter filterValue: (query) The text filter applied to the accounts search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccountsEntriesWithRoomsShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectArrayWrapper {
        return try await getAccountsEntriesWithRoomsSharedWithRequestBuilder(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get account entries
     
     See also:
     REST API Reference for getAccountsEntriesWithRoomsShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/
     
     - GET /api/2.0/accounts/room/{id}/search
     - Returns the account entries with their sharing settings in a room with the ID specified in request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter id: (path) The user ID. 
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter excludeShared: (query) Specifies whether to exclude the account sharing settings from the response. (optional)
     - parameter includeShared: (query) Specifies whether to include the account sharing settings in the response. (optional)
     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The area of the account entries. (optional)
     - parameter employeeTypes: (query) The list of the user types. (optional)
     - parameter count: (query) The number of items to retrieve in a request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter filterSeparator: (query) Specifies the separator used in filter expressions. (optional)
     - parameter filterValue: (query) The text filter applied to the accounts search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectArrayWrapper> 
     */
    open class func getAccountsEntriesWithRoomsSharedWithRequestBuilder(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectArrayWrapper> {
        var localVariablePath = "/api/2.0/accounts/room/{id}/search"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "includeShared": (wrappedValue: includeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Search users
     
     See also:
     REST API Reference for getSearch Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/
     - parameter query: (path) The search query.      - parameter filterBy: (query) Specifies a filter criteria for the user search query. (optional)     - parameter filterValue: (query) The value used for filtering users, allowing additional constraints for the query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSearch(query: String, filterBy: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await getSearchWithRequestBuilder(query: query, filterBy: filterBy, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Search users
     
     See also:
     REST API Reference for getSearch Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/
     
     - GET /api/2.0/people/@search/{query}
     - Returns a list of users matching the search query.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter query: (path) The search query. 
     - parameter filterBy: (query) Specifies a filter criteria for the user search query. (optional)
     - parameter filterValue: (query) The value used for filtering users, allowing additional constraints for the query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func getSearchWithRequestBuilder(query: String, filterBy: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/@search/{query}"
        let queryPreEscape = "\(APIHelper.mapValueToPathItem(query))"
        let queryPostEscape = queryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{query}", with: queryPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filterBy": (wrappedValue: filterBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter employeeTypes
     */
    public enum EmployeeTypes_getSimpleByFilter: String, Sendable, CaseIterable {
        case All = 0
        case RoomAdmin = 1
        case Guest = 2
        case DocSpaceAdmin = 3
        case User = 4
    }

    /**
     Search users by extended filter
     
     See also:
     REST API Reference for getSimpleByFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/
     - parameter employeeStatus: (query) The user status. (optional)     - parameter groupId: (query) The group ID. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter employeeType: (query) The user type. (optional)     - parameter employeeTypes: (query) The list of user types. (optional)     - parameter isAdministrator: (query) Specifies if the user is an administrator or not. (optional)     - parameter payments: (query) The user payment status. (optional)     - parameter accountLoginType: (query) The account login type. (optional)     - parameter quotaFilter: (query) The quota filter (All - 0, Default - 1, Custom - 2). (optional)     - parameter withoutGroup: (query) Specifies whether the user should be a member of a group or not. (optional)     - parameter excludeGroup: (query) Specifies whether the user should be a member of the group with the specified ID. (optional)     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The filter area. (optional)     - parameter count: (query) The maximum number of items to be retrieved in the response. (optional)     - parameter startIndex: (query) The zero-based index of the first item to be retrieved in a filtered result set. (optional)     - parameter sortBy: (query) Specifies the property or field name by which the results should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterSeparator: (query) Represents the separator used to split filter criteria in query parameters. (optional)     - parameter filterValue: (query) The search text used to filter results based on user input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSimpleByFilter(employeeStatus: EmployeeStatus? = nil, groupId: UUID? = nil, activationStatus: EmployeeActivationStatus? = nil, employeeType: EmployeeType? = nil, employeeTypes: [EmployeeTypes_getSimpleByFilter]? = nil, isAdministrator: Bool? = nil, payments: Payments? = nil, accountLoginType: AccountLoginType? = nil, quotaFilter: QuotaFilter? = nil, withoutGroup: Bool? = nil, excludeGroup: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeArrayWrapper {
        return try await getSimpleByFilterWithRequestBuilder(employeeStatus: employeeStatus, groupId: groupId, activationStatus: activationStatus, employeeType: employeeType, employeeTypes: employeeTypes, isAdministrator: isAdministrator, payments: payments, accountLoginType: accountLoginType, quotaFilter: quotaFilter, withoutGroup: withoutGroup, excludeGroup: excludeGroup, invitedByMe: invitedByMe, inviterId: inviterId, area: area, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Search users by extended filter
     
     See also:
     REST API Reference for getSimpleByFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/
     
     - GET /api/2.0/people/simple/filter
     - Returns a list of users matching the parameters specified in the request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter groupId: (query) The group ID. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter employeeType: (query) The user type. (optional)
     - parameter employeeTypes: (query) The list of user types. (optional)
     - parameter isAdministrator: (query) Specifies if the user is an administrator or not. (optional)
     - parameter payments: (query) The user payment status. (optional)
     - parameter accountLoginType: (query) The account login type. (optional)
     - parameter quotaFilter: (query) The quota filter (All - 0, Default - 1, Custom - 2). (optional)
     - parameter withoutGroup: (query) Specifies whether the user should be a member of a group or not. (optional)
     - parameter excludeGroup: (query) Specifies whether the user should be a member of the group with the specified ID. (optional)
     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The filter area. (optional)
     - parameter count: (query) The maximum number of items to be retrieved in the response. (optional)
     - parameter startIndex: (query) The zero-based index of the first item to be retrieved in a filtered result set. (optional)
     - parameter sortBy: (query) Specifies the property or field name by which the results should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterSeparator: (query) Represents the separator used to split filter criteria in query parameters. (optional)
     - parameter filterValue: (query) The search text used to filter results based on user input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeArrayWrapper> 
     */
    open class func getSimpleByFilterWithRequestBuilder(employeeStatus: EmployeeStatus? = nil, groupId: UUID? = nil, activationStatus: EmployeeActivationStatus? = nil, employeeType: EmployeeType? = nil, employeeTypes: [EmployeeTypes_getSimpleByFilter]? = nil, isAdministrator: Bool? = nil, payments: Payments? = nil, accountLoginType: AccountLoginType? = nil, quotaFilter: QuotaFilter? = nil, withoutGroup: Bool? = nil, excludeGroup: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeArrayWrapper> {
        let localVariablePath = "/api/2.0/people/simple/filter"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "groupId": (wrappedValue: groupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeType": (wrappedValue: employeeType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isAdministrator": (wrappedValue: isAdministrator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "payments": (wrappedValue: payments?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "accountLoginType": (wrappedValue: accountLoginType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "quotaFilter": (wrappedValue: quotaFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutGroup": (wrappedValue: withoutGroup?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeGroup": (wrappedValue: excludeGroup?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get users with file sharing settings
     
     See also:
     REST API Reference for getUsersWithFilesShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/
     - parameter id: (path) The user ID.      - parameter employeeStatus: (query) The user status. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter excludeShared: (query) Specifies whether to exclude the user sharing settings or not. (optional)     - parameter includeShared: (query) Specifies whether to include the user sharing settings or not. (optional)     - parameter invitedByMe: (query) Specifies whether the user was invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The user area. (optional)     - parameter employeeTypes: (query) The list of user types. (optional)     - parameter count: (query) The maximum number of users to be retrieved in the request. (optional)     - parameter startIndex: (query) The zero-based index of the first record to retrieve in a paged query. (optional)     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)     - parameter filterValue: (query) The filter text value used for searching or filtering user results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUsersWithFilesShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await getUsersWithFilesSharedWithRequestBuilder(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users with file sharing settings
     
     See also:
     REST API Reference for getUsersWithFilesShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/
     
     - GET /api/2.0/people/file/{id}
     - Returns the users with the sharing settings in a file with the ID specified in request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter id: (path) The user ID. 
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter excludeShared: (query) Specifies whether to exclude the user sharing settings or not. (optional)
     - parameter includeShared: (query) Specifies whether to include the user sharing settings or not. (optional)
     - parameter invitedByMe: (query) Specifies whether the user was invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The user area. (optional)
     - parameter employeeTypes: (query) The list of user types. (optional)
     - parameter count: (query) The maximum number of users to be retrieved in the request. (optional)
     - parameter startIndex: (query) The zero-based index of the first record to retrieve in a paged query. (optional)
     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)
     - parameter filterValue: (query) The filter text value used for searching or filtering user results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func getUsersWithFilesSharedWithRequestBuilder(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/file/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "includeShared": (wrappedValue: includeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get users with folder sharing settings
     
     See also:
     REST API Reference for getUsersWithFoldersShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/
     - parameter id: (path) The user ID.      - parameter employeeStatus: (query) The user status. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter excludeShared: (query) Specifies whether to exclude the user sharing settings or not. (optional)     - parameter includeShared: (query) Specifies whether to include the user sharing settings or not. (optional)     - parameter invitedByMe: (query) Specifies whether the user was invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The user area. (optional)     - parameter employeeTypes: (query) The list of user types. (optional)     - parameter count: (query) The maximum number of users to be retrieved in the request. (optional)     - parameter startIndex: (query) The zero-based index of the first record to retrieve in a paged query. (optional)     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)     - parameter filterValue: (query) The filter text value used for searching or filtering user results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUsersWithFoldersShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await getUsersWithFoldersSharedWithRequestBuilder(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users with folder sharing settings
     
     See also:
     REST API Reference for getUsersWithFoldersShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/
     
     - GET /api/2.0/people/folder/{id}
     - Returns the users with the sharing settings in a folder with the ID specified in request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter id: (path) The user ID. 
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter excludeShared: (query) Specifies whether to exclude the user sharing settings or not. (optional)
     - parameter includeShared: (query) Specifies whether to include the user sharing settings or not. (optional)
     - parameter invitedByMe: (query) Specifies whether the user was invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The user area. (optional)
     - parameter employeeTypes: (query) The list of user types. (optional)
     - parameter count: (query) The maximum number of users to be retrieved in the request. (optional)
     - parameter startIndex: (query) The zero-based index of the first record to retrieve in a paged query. (optional)
     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)
     - parameter filterValue: (query) The filter text value used for searching or filtering user results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func getUsersWithFoldersSharedWithRequestBuilder(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/folder/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "includeShared": (wrappedValue: includeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get users with room sharing settings
     
     See also:
     REST API Reference for getUsersWithRoomShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/
     - parameter id: (path) The user ID.      - parameter employeeStatus: (query) The user status. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter excludeShared: (query) Specifies whether to exclude the user sharing settings or not. (optional)     - parameter includeShared: (query) Specifies whether to include the user sharing settings or not. (optional)     - parameter invitedByMe: (query) Specifies whether the user was invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The user area. (optional)     - parameter employeeTypes: (query) The list of user types. (optional)     - parameter count: (query) The maximum number of users to be retrieved in the request. (optional)     - parameter startIndex: (query) The zero-based index of the first record to retrieve in a paged query. (optional)     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)     - parameter filterValue: (query) The filter text value used for searching or filtering user results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUsersWithRoomShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await getUsersWithRoomSharedWithRequestBuilder(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users with room sharing settings
     
     See also:
     REST API Reference for getUsersWithRoomShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/
     
     - GET /api/2.0/people/room/{id}
     - Returns the users with the sharing settings in a room with the ID specified in request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter id: (path) The user ID. 
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter excludeShared: (query) Specifies whether to exclude the user sharing settings or not. (optional)
     - parameter includeShared: (query) Specifies whether to include the user sharing settings or not. (optional)
     - parameter invitedByMe: (query) Specifies whether the user was invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The user area. (optional)
     - parameter employeeTypes: (query) The list of user types. (optional)
     - parameter count: (query) The maximum number of users to be retrieved in the request. (optional)
     - parameter startIndex: (query) The zero-based index of the first record to retrieve in a paged query. (optional)
     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)
     - parameter filterValue: (query) The filter text value used for searching or filtering user results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func getUsersWithRoomSharedWithRequestBuilder(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/room/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "includeShared": (wrappedValue: includeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter employeeTypes
     */
    public enum EmployeeTypes_searchUsersByExtendedFilter: String, Sendable, CaseIterable {
        case All = 0
        case RoomAdmin = 1
        case Guest = 2
        case DocSpaceAdmin = 3
        case User = 4
    }

    /**
     Search users with detailed information by extended filter
     
     See also:
     REST API Reference for searchUsersByExtendedFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/
     - parameter employeeStatus: (query) The user status. (optional)     - parameter groupId: (query) The group ID. (optional)     - parameter activationStatus: (query) The user activation status. (optional)     - parameter employeeType: (query) The user type. (optional)     - parameter employeeTypes: (query) The list of user types. (optional)     - parameter isAdministrator: (query) Specifies if the user is an administrator or not. (optional)     - parameter payments: (query) The user payment status. (optional)     - parameter accountLoginType: (query) The account login type. (optional)     - parameter quotaFilter: (query) The quota filter (All - 0, Default - 1, Custom - 2). (optional)     - parameter withoutGroup: (query) Specifies whether the user should be a member of a group or not. (optional)     - parameter excludeGroup: (query) Specifies whether the user should be a member of the group with the specified ID. (optional)     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)     - parameter inviterId: (query) The inviter ID. (optional)     - parameter area: (query) The filter area. (optional)     - parameter count: (query) The maximum number of items to be retrieved in the response. (optional)     - parameter startIndex: (query) The zero-based index of the first item to be retrieved in a filtered result set. (optional)     - parameter sortBy: (query) Specifies the property or field name by which the results should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterSeparator: (query) Represents the separator used to split filter criteria in query parameters. (optional)     - parameter filterValue: (query) The search text used to filter results based on user input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func searchUsersByExtendedFilter(employeeStatus: EmployeeStatus? = nil, groupId: UUID? = nil, activationStatus: EmployeeActivationStatus? = nil, employeeType: EmployeeType? = nil, employeeTypes: [EmployeeTypes_searchUsersByExtendedFilter]? = nil, isAdministrator: Bool? = nil, payments: Payments? = nil, accountLoginType: AccountLoginType? = nil, quotaFilter: QuotaFilter? = nil, withoutGroup: Bool? = nil, excludeGroup: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await searchUsersByExtendedFilterWithRequestBuilder(employeeStatus: employeeStatus, groupId: groupId, activationStatus: activationStatus, employeeType: employeeType, employeeTypes: employeeTypes, isAdministrator: isAdministrator, payments: payments, accountLoginType: accountLoginType, quotaFilter: quotaFilter, withoutGroup: withoutGroup, excludeGroup: excludeGroup, invitedByMe: invitedByMe, inviterId: inviterId, area: area, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Search users with detailed information by extended filter
     
     See also:
     REST API Reference for searchUsersByExtendedFilter Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/
     
     - GET /api/2.0/people/filter
     - Returns a list of users with full information about them matching the parameters specified in the request.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter employeeStatus: (query) The user status. (optional)
     - parameter groupId: (query) The group ID. (optional)
     - parameter activationStatus: (query) The user activation status. (optional)
     - parameter employeeType: (query) The user type. (optional)
     - parameter employeeTypes: (query) The list of user types. (optional)
     - parameter isAdministrator: (query) Specifies if the user is an administrator or not. (optional)
     - parameter payments: (query) The user payment status. (optional)
     - parameter accountLoginType: (query) The account login type. (optional)
     - parameter quotaFilter: (query) The quota filter (All - 0, Default - 1, Custom - 2). (optional)
     - parameter withoutGroup: (query) Specifies whether the user should be a member of a group or not. (optional)
     - parameter excludeGroup: (query) Specifies whether the user should be a member of the group with the specified ID. (optional)
     - parameter invitedByMe: (query) Specifies whether the user is invited by the current user or not. (optional)
     - parameter inviterId: (query) The inviter ID. (optional)
     - parameter area: (query) The filter area. (optional)
     - parameter count: (query) The maximum number of items to be retrieved in the response. (optional)
     - parameter startIndex: (query) The zero-based index of the first item to be retrieved in a filtered result set. (optional)
     - parameter sortBy: (query) Specifies the property or field name by which the results should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterSeparator: (query) Represents the separator used to split filter criteria in query parameters. (optional)
     - parameter filterValue: (query) The search text used to filter results based on user input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func searchUsersByExtendedFilterWithRequestBuilder(employeeStatus: EmployeeStatus? = nil, groupId: UUID? = nil, activationStatus: EmployeeActivationStatus? = nil, employeeType: EmployeeType? = nil, employeeTypes: [EmployeeTypes_searchUsersByExtendedFilter]? = nil, isAdministrator: Bool? = nil, payments: Payments? = nil, accountLoginType: AccountLoginType? = nil, quotaFilter: QuotaFilter? = nil, withoutGroup: Bool? = nil, excludeGroup: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        let localVariablePath = "/api/2.0/people/filter"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "employeeStatus": (wrappedValue: employeeStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "groupId": (wrappedValue: groupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "activationStatus": (wrappedValue: activationStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeType": (wrappedValue: employeeType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "employeeTypes": (wrappedValue: employeeTypes?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isAdministrator": (wrappedValue: isAdministrator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "payments": (wrappedValue: payments?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "accountLoginType": (wrappedValue: accountLoginType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "quotaFilter": (wrappedValue: quotaFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutGroup": (wrappedValue: withoutGroup?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeGroup": (wrappedValue: excludeGroup?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "invitedByMe": (wrappedValue: invitedByMe?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "inviterId": (wrappedValue: inviterId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "area": (wrappedValue: area?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Search users (using query parameters)
     
     See also:
     REST API Reference for searchUsersByQuery Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/
     - parameter query: (query) The search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func searchUsersByQuery(query: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeArrayWrapper {
        return try await searchUsersByQueryWithRequestBuilder(query: query, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Search users (using query parameters)
     
     See also:
     REST API Reference for searchUsersByQuery Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/
     
     - GET /api/2.0/people/search
     - Returns a list of users matching the search query. This method uses the query parameters.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter query: (query) The search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeArrayWrapper> 
     */
    open class func searchUsersByQueryWithRequestBuilder(query: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeArrayWrapper> {
        let localVariablePath = "/api/2.0/people/search"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": (wrappedValue: query?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Search users by status filter
     
     See also:
     REST API Reference for searchUsersByStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/
     - parameter status: (path) The user status.      - parameter query: (query) The advanced search query. (optional)     - parameter filterBy: (query) Specifies the criteria used to filter search results in advanced queries. (optional)     - parameter filterValue: (query) The value used to filter the search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func searchUsersByStatus(status: EmployeeStatus, query: String? = nil, filterBy: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await searchUsersByStatusWithRequestBuilder(status: status, query: query, filterBy: filterBy, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Search users by status filter
     
     See also:
     REST API Reference for searchUsersByStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/
     
     - GET /api/2.0/people/status/{status}/search
     - Returns a list of users matching the status filter and search query.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter status: (path) The user status. 
     - parameter query: (query) The advanced search query. (optional)
     - parameter filterBy: (query) Specifies the criteria used to filter search results in advanced queries. (optional)
     - parameter filterValue: (query) The value used to filter the search query. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func searchUsersByStatusWithRequestBuilder(status: EmployeeStatus, query: String? = nil, filterBy: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/status/{status}/search"
        let statusPreEscape = "\(APIHelper.mapValueToPathItem(status))"
        let statusPostEscape = statusPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{status}", with: statusPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": (wrappedValue: query?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterBy": (wrappedValue: filterBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension PeopleSearchAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> PeopleSearchAPIApi {
        self.fields = fields
        return self
    }
}
