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

    /**
     Get groups with file sharing settings
     
     See also:
     REST API Reference for getGroupsWithFilesShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/
     - parameter id: (path) The group ID.      - parameter excludeShared: (query) Specifies whether to exclude the group sharing settings from the response. (optional)     - parameter count: (query) The number of groups to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index from which to begin retrieving groups with their sharing settings. (optional)     - parameter filterValue: (query) The text used as a filter for retrieving groups with their sharing settings. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsWithFilesShared(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupArrayWrapper {
        return try await getGroupsWithFilesSharedWithRequestBuilder(id: id, excludeShared: excludeShared, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get groups with file sharing settings
     
     See also:
     REST API Reference for getGroupsWithFilesShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/
     
     - GET /api/2.0/group/file/{id}
     - Returns groups with their sharing settings for a file with the ID specified in request.
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
     - parameter id: (path) The group ID. 
     - parameter excludeShared: (query) Specifies whether to exclude the group sharing settings from the response. (optional)
     - parameter count: (query) The number of groups to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index from which to begin retrieving groups with their sharing settings. (optional)
     - parameter filterValue: (query) The text used as a filter for retrieving groups with their sharing settings. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupArrayWrapper> 
     */
    open class func getGroupsWithFilesSharedWithRequestBuilder(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupArrayWrapper> {
        var localVariablePath = "/api/2.0/group/file/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get groups with folder sharing settings
     
     See also:
     REST API Reference for getGroupsWithFoldersShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/
     - parameter id: (path) The group ID.      - parameter excludeShared: (query) Specifies whether to exclude the group sharing settings from the response. (optional)     - parameter count: (query) The number of groups to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index from which to begin retrieving groups with their sharing settings. (optional)     - parameter filterValue: (query) The text used as a filter for retrieving groups with their sharing settings. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsWithFoldersShared(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupArrayWrapper {
        return try await getGroupsWithFoldersSharedWithRequestBuilder(id: id, excludeShared: excludeShared, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get groups with folder sharing settings
     
     See also:
     REST API Reference for getGroupsWithFoldersShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/
     
     - GET /api/2.0/group/folder/{id}
     - Returns groups with their sharing settings in a folder with the ID specified in request.
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
     - parameter id: (path) The group ID. 
     - parameter excludeShared: (query) Specifies whether to exclude the group sharing settings from the response. (optional)
     - parameter count: (query) The number of groups to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index from which to begin retrieving groups with their sharing settings. (optional)
     - parameter filterValue: (query) The text used as a filter for retrieving groups with their sharing settings. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupArrayWrapper> 
     */
    open class func getGroupsWithFoldersSharedWithRequestBuilder(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupArrayWrapper> {
        var localVariablePath = "/api/2.0/group/folder/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get groups with room sharing settings
     
     See also:
     REST API Reference for getGroupsWithRoomsShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/
     - parameter id: (path) The group ID.      - parameter excludeShared: (query) Specifies whether to exclude the group sharing settings from the response. (optional)     - parameter count: (query) The number of groups to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index from which to begin retrieving groups with their sharing settings. (optional)     - parameter filterValue: (query) The text used as a filter for retrieving groups with their sharing settings. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsWithRoomsShared(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupArrayWrapper {
        return try await getGroupsWithRoomsSharedWithRequestBuilder(id: id, excludeShared: excludeShared, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get groups with room sharing settings
     
     See also:
     REST API Reference for getGroupsWithRoomsShared Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/
     
     - GET /api/2.0/group/room/{id}
     - Returns groups with their sharing settings in a room with the ID specified in request.
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
     - parameter id: (path) The group ID. 
     - parameter excludeShared: (query) Specifies whether to exclude the group sharing settings from the response. (optional)
     - parameter count: (query) The number of groups to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index from which to begin retrieving groups with their sharing settings. (optional)
     - parameter filterValue: (query) The text used as a filter for retrieving groups with their sharing settings. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupArrayWrapper> 
     */
    open class func getGroupsWithRoomsSharedWithRequestBuilder(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupArrayWrapper> {
        var localVariablePath = "/api/2.0/group/room/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "excludeShared": (wrappedValue: excludeShared?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
