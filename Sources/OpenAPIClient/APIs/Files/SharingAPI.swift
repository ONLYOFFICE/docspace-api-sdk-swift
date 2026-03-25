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
     Apply external data password
     
     See also:
     REST API Reference for applyExternalSharePassword Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
     - parameter key: (path) The unique document identifier.      - parameter externalShareRequestParam: (body) The external data share request parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExternalShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func applyExternalSharePassword(key: String, externalShareRequestParam: ExternalShareRequestParam, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExternalShareWrapper {
        return try await applyExternalSharePasswordWithRequestBuilder(key: key, externalShareRequestParam: externalShareRequestParam, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Apply external data password
     
     See also:
     REST API Reference for applyExternalSharePassword Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
     
     - POST /api/2.0/files/share/{key}/password
     - Applies a password specified in the request to get the external data.
     - parameter key: (path) The unique document identifier. 
     - parameter externalShareRequestParam: (body) The external data share request parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ExternalShareWrapper> 
     */
    open class func applyExternalSharePasswordWithRequestBuilder(key: String, externalShareRequestParam: ExternalShareRequestParam, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ExternalShareWrapper> {
        var localVariablePath = "/api/2.0/files/share/{key}/password"
        let keyPreEscape = "\(APIHelper.mapValueToPathItem(key))"
        let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: externalShareRequestParam, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Change the file owner
     
     See also:
     REST API Reference for changeFileOwner Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/
     - parameter changeOwnerRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeFileOwner(changeOwnerRequestDto: ChangeOwnerRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await changeFileOwnerWithRequestBuilder(changeOwnerRequestDto: changeOwnerRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the file owner
     
     See also:
     REST API Reference for changeFileOwner Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/
     
     - POST /api/2.0/files/owner
     - Changes the owner of the file with the ID specified in the request.
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
     - parameter changeOwnerRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func changeFileOwnerWithRequestBuilder(changeOwnerRequestDto: ChangeOwnerRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        let localVariablePath = "/api/2.0/files/owner"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeOwnerRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the external data
     
     See also:
     REST API Reference for getExternalShareData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
     - parameter key: (path) The unique key of the external shared data.      - parameter fileId: (query) The unique document identifier. (optional)     - parameter folderId: (query) The unique folder identifier. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExternalShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getExternalShareData(key: String, fileId: String? = nil, folderId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExternalShareWrapper {
        return try await getExternalShareDataWithRequestBuilder(key: key, fileId: fileId, folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the external data
     
     See also:
     REST API Reference for getExternalShareData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
     
     - GET /api/2.0/files/share/{key}
     - Returns the external data by the key specified in the request.
     - parameter key: (path) The unique key of the external shared data. 
     - parameter fileId: (query) The unique document identifier. (optional)
     - parameter folderId: (query) The unique folder identifier. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ExternalShareWrapper> 
     */
    open class func getExternalShareDataWithRequestBuilder(key: String, fileId: String? = nil, folderId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ExternalShareWrapper> {
        var localVariablePath = "/api/2.0/files/share/{key}"
        let keyPreEscape = "\(APIHelper.mapValueToPathItem(key))"
        let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fileId": (wrappedValue: fileId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "folderId": (wrappedValue: folderId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get the shared file information
     
     See also:
     REST API Reference for getFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
     - parameter id: (path) The file unique identifier.      - parameter count: (query) The number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileSecurityInfo(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFileSecurityInfoWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the shared file information
     
     See also:
     REST API Reference for getFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
     
     - GET /api/2.0/files/file/{id}/share
     - Returns the detailed information about the shared file with the ID specified in the request.
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
     - parameter id: (path) The file unique identifier. 
     - parameter count: (query) The number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFileSecurityInfoWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the shared folder information
     
     See also:
     REST API Reference for getFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
     - parameter id: (path) The folder unique identifier.      - parameter count: (query) The number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderSecurityInfo(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFolderSecurityInfoWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the shared folder information
     
     See also:
     REST API Reference for getFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
     
     - GET /api/2.0/files/folder/{id}/share
     - Returns the detailed information about the shared folder with the ID specified in the request.
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
     - parameter id: (path) The folder unique identifier. 
     - parameter count: (query) The number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFolderSecurityInfoWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file group members with security information
     
     See also:
     REST API Reference for getGroupsMembersWithFileSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
     - parameter fileId: (path) The file ID.      - parameter groupId: (path) The group ID.      - parameter count: (query) The number of items to be retrieved in the current query. (optional)     - parameter startIndex: (query) The starting index for the query result set. (optional)     - parameter filterValue: (query) The filter value used for searching or querying group members based on text input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupMemberSecurityRequestArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsMembersWithFileSecurity(fileId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupMemberSecurityRequestArrayWrapper {
        return try await getGroupsMembersWithFileSecurityWithRequestBuilder(fileId: fileId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file group members with security information
     
     See also:
     REST API Reference for getGroupsMembersWithFileSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
     
     - GET /api/2.0/files/file/{fileId}/group/{groupId}/share
     - Returns the group members with their file security information.
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
     - parameter fileId: (path) The file ID. 
     - parameter groupId: (path) The group ID. 
     - parameter count: (query) The number of items to be retrieved in the current query. (optional)
     - parameter startIndex: (query) The starting index for the query result set. (optional)
     - parameter filterValue: (query) The filter value used for searching or querying group members based on text input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupMemberSecurityRequestArrayWrapper> 
     */
    open class func getGroupsMembersWithFileSecurityWithRequestBuilder(fileId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupMemberSecurityRequestArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/group/{groupId}/share"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupMemberSecurityRequestArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder group members with security information
     
     See also:
     REST API Reference for getGroupsMembersWithFolderSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
     - parameter folderId: (path) The folder ID.      - parameter groupId: (path) The group ID.      - parameter count: (query) The number of items to be retrieved in the current query. (optional)     - parameter startIndex: (query) The starting index for the query result set. (optional)     - parameter filterValue: (query) The filter value used for searching or querying group members based on text input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupMemberSecurityRequestArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsMembersWithFolderSecurity(folderId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupMemberSecurityRequestArrayWrapper {
        return try await getGroupsMembersWithFolderSecurityWithRequestBuilder(folderId: folderId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder group members with security information
     
     See also:
     REST API Reference for getGroupsMembersWithFolderSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
     
     - GET /api/2.0/files/folder/{folderId}/group/{groupId}/share
     - Returns the group members with their folder security information.
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
     - parameter folderId: (path) The folder ID. 
     - parameter groupId: (path) The group ID. 
     - parameter count: (query) The number of items to be retrieved in the current query. (optional)
     - parameter startIndex: (query) The starting index for the query result set. (optional)
     - parameter filterValue: (query) The filter value used for searching or querying group members based on text input. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupMemberSecurityRequestArrayWrapper> 
     */
    open class func getGroupsMembersWithFolderSecurityWithRequestBuilder(folderId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupMemberSecurityRequestArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/group/{groupId}/share"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupMemberSecurityRequestArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the sharing rights
     
     See also:
     REST API Reference for getSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSecurityInfo(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getSecurityInfoWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the sharing rights
     
     See also:
     REST API Reference for getSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/
     
     - POST /api/2.0/files/share
     - Returns the sharing rights for all the files and folders specified in the request.
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
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getSecurityInfoWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        let localVariablePath = "/api/2.0/files/share"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get user access rights by file ID
     
     See also:
     REST API Reference for getSharedUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: MentionWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSharedUsers(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> MentionWrapperArrayWrapper {
        return try await getSharedUsersWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user access rights by file ID
     
     See also:
     REST API Reference for getSharedUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
     
     - GET /api/2.0/files/file/{fileId}/sharedusers
     - Returns a list of users with their access rights to the file with the ID specified in the request.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<MentionWrapperArrayWrapper> 
     */
    open class func getSharedUsersWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<MentionWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/sharedusers"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MentionWrapperArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove the sharing rights
     
     See also:
     REST API Reference for removeSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func removeSecurityInfo(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await removeSecurityInfoWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove the sharing rights
     
     See also:
     REST API Reference for removeSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/
     
     - DELETE /api/2.0/files/share
     - Removes the sharing rights from all the files and folders specified in the request.
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
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func removeSecurityInfoWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/share"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Send the mention message
     
     See also:
     REST API Reference for sendEditorNotify Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
     - parameter fileId: (path) The file ID with the mention message.      - parameter mentionMessageWrapper: (body) The mention message. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AceShortWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendEditorNotify(fileId: Int, mentionMessageWrapper: MentionMessageWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AceShortWrapperArrayWrapper {
        return try await sendEditorNotifyWithRequestBuilder(fileId: fileId, mentionMessageWrapper: mentionMessageWrapper, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send the mention message
     
     See also:
     REST API Reference for sendEditorNotify Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
     
     - POST /api/2.0/files/file/{fileId}/sendeditornotify
     - Sends a message to the users who are mentioned in the file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID with the mention message. 
     - parameter mentionMessageWrapper: (body) The mention message. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AceShortWrapperArrayWrapper> 
     */
    open class func sendEditorNotifyWithRequestBuilder(fileId: Int, mentionMessageWrapper: MentionMessageWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AceShortWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/sendeditornotify"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mentionMessageWrapper, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AceShortWrapperArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Share a file
     
     See also:
     REST API Reference for setFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
     - parameter fileId: (path) The file ID.      - parameter securityInfoSimpleRequestDto: (body) The parameters of the security information simple request. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileSecurityInfo(fileId: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setFileSecurityInfoWithRequestBuilder(fileId: fileId, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Share a file
     
     See also:
     REST API Reference for setFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
     
     - PUT /api/2.0/files/file/{fileId}/share
     - Sets the sharing settings to a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID. 
     - parameter securityInfoSimpleRequestDto: (body) The parameters of the security information simple request. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setFileSecurityInfoWithRequestBuilder(fileId: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/share"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoSimpleRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Share a folder
     
     See also:
     REST API Reference for setFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
     - parameter folderId: (path) The folder ID.      - parameter securityInfoSimpleRequestDto: (body) The parameters of the security information simple request. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderSecurityInfo(folderId: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setFolderSecurityInfoWithRequestBuilder(folderId: folderId, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Share a folder
     
     See also:
     REST API Reference for setFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
     
     - PUT /api/2.0/files/folder/{folderId}/share
     - Sets the sharing settings to a folder with the ID specified in the request.
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
     - parameter folderId: (path) The folder ID. 
     - parameter securityInfoSimpleRequestDto: (body) The parameters of the security information simple request. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setFolderSecurityInfoWithRequestBuilder(folderId: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/share"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoSimpleRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the sharing rights
     
     See also:
     REST API Reference for setSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/
     - parameter securityInfoRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setSecurityInfo(securityInfoRequestDto: SecurityInfoRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setSecurityInfoWithRequestBuilder(securityInfoRequestDto: securityInfoRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the sharing rights
     
     See also:
     REST API Reference for setSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/
     
     - PUT /api/2.0/files/share
     - Sets the sharing rights to all the files and folders specified in the request.
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
     - parameter securityInfoRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setSecurityInfoWithRequestBuilder(securityInfoRequestDto: SecurityInfoRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        let localVariablePath = "/api/2.0/files/share"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
