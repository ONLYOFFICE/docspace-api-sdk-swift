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
     Add a new room group
     
     See also:
     REST API Reference for addRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-group/
     - parameter roomGroupRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomGroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addRoomGroup(roomGroupRequestDto: RoomGroupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomGroupWrapper {
        return try await addRoomGroupWithRequestBuilder(roomGroupRequestDto: roomGroupRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a new room group
     
     See also:
     REST API Reference for addRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-group/
     
     - POST /api/2.0/files/group
     - Creates a new room group with the specified name, icon, and list of rooms.
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
     - parameter roomGroupRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomGroupWrapper> 
     */
    open class func addRoomGroupWithRequestBuilder(roomGroupRequestDto: RoomGroupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomGroupWrapper> {
        let localVariablePath = "/api/2.0/files/group"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: roomGroupRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomGroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change group icon
     
     See also:
     REST API Reference for changeRoomGroupIcon Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/
     - parameter id: (path) Group id      - parameter iconRequest: (body) Icon update data. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomGroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeRoomGroupIcon(id: Int, iconRequest: IconRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomGroupWrapper {
        return try await changeRoomGroupIconWithRequestBuilder(id: id, iconRequest: iconRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change group icon
     
     See also:
     REST API Reference for changeRoomGroupIcon Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/
     
     - POST /api/2.0/files/group/{id}/icon
     - Changes the icon of an existing room group.
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
     - parameter id: (path) Group id 
     - parameter iconRequest: (body) Icon update data. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomGroupWrapper> 
     */
    open class func changeRoomGroupIconWithRequestBuilder(id: Int, iconRequest: IconRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomGroupWrapper> {
        var localVariablePath = "/api/2.0/files/group/{id}/icon"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: iconRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomGroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete group
     
     See also:
     REST API Reference for deleteRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/
     - parameter id: (path) The group unique identifier.      - parameter includeMembers: (query) Whether to include group members. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomGroup(id: Int, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteRoomGroupWithRequestBuilder(id: id, includeMembers: includeMembers, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete group
     
     See also:
     REST API Reference for deleteRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/
     
     - DELETE /api/2.0/files/group/{id}
     - Deletes the specified room group.
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
     - parameter id: (path) The group unique identifier. 
     - parameter includeMembers: (query) Whether to include group members. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteRoomGroupWithRequestBuilder(id: Int, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "includeMembers": (wrappedValue: includeMembers?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room group info
     
     See also:
     REST API Reference for getRoomGroupInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-group-info/
     - parameter id: (path) The group unique identifier.      - parameter includeMembers: (query) Whether to include group members. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomGroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomGroupInfo(id: Int, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomGroupWrapper {
        return try await getRoomGroupInfoWithRequestBuilder(id: id, includeMembers: includeMembers, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room group info
     
     See also:
     REST API Reference for getRoomGroupInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-group-info/
     
     - GET /api/2.0/files/group/{id}
     - Returns detailed information about a room group.
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
     - parameter id: (path) The group unique identifier. 
     - parameter includeMembers: (query) Whether to include group members. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomGroupWrapper> 
     */
    open class func getRoomGroupInfoWithRequestBuilder(id: Int, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomGroupWrapper> {
        var localVariablePath = "/api/2.0/files/group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "includeMembers": (wrappedValue: includeMembers?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomGroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List room groups
     
     See also:
     REST API Reference for getRoomGroups Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-groups/
     - parameter id: (path) The group unique identifier.      - parameter includeMembers: (query) Whether to include group members. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomGroupArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomGroups(id: Int, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomGroupArrayWrapper {
        return try await getRoomGroupsWithRequestBuilder(id: id, includeMembers: includeMembers, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List room groups
     
     See also:
     REST API Reference for getRoomGroups Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-groups/
     
     - GET /api/2.0/files/group
     - Returns a list of all room groups for the current user.
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
     - parameter id: (path) The group unique identifier. 
     - parameter includeMembers: (query) Whether to include group members. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomGroupArrayWrapper> 
     */
    open class func getRoomGroupsWithRequestBuilder(id: Int, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomGroupArrayWrapper> {
        var localVariablePath = "/api/2.0/files/group"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "includeMembers": (wrappedValue: includeMembers?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomGroupArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update room group
     
     See also:
     REST API Reference for updateRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-group/
     - parameter id: (path) The group ID.      - parameter updateRoomGroupRequest: (body) The request for updating a group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomGroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateRoomGroup(id: Int, updateRoomGroupRequest: UpdateRoomGroupRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomGroupWrapper {
        return try await updateRoomGroupWithRequestBuilder(id: id, updateRoomGroupRequest: updateRoomGroupRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update room group
     
     See also:
     REST API Reference for updateRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-group/
     
     - PUT /api/2.0/files/group/{id}
     - Updates room group properties and adds or removes rooms.
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
     - parameter id: (path) The group ID. 
     - parameter updateRoomGroupRequest: (body) The request for updating a group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomGroupWrapper> 
     */
    open class func updateRoomGroupWithRequestBuilder(id: Int, updateRoomGroupRequest: UpdateRoomGroupRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomGroupWrapper> {
        var localVariablePath = "/api/2.0/files/group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomGroupRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomGroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
