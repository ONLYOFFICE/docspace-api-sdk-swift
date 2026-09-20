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
     - Creates a room group, a personal collection that gathers rooms the caller already works with under one name  and icon; it belongs to the account that created it and is never shown to other members of the portal. Pass  the group name, the identifier of one of the built-in covers offered by `GET api/2.0/files/rooms/covers`, and  a list of at least one room - a number for a room stored in the portal, a string for a room on a connected  third-party account. Any role may create its own group, a guest included: what is checked is read access to  each listed room, not the role of the caller. Repeated identifiers are collapsed, and a value that is not a  room identifier at all is rejected as an invalid request. When none of the listed rooms can be read the group  is not created; when only some of them can, the group is created with those rooms and the call is still  reported as failed, so re-read `GET api/2.0/files/group` before retrying. A room may sit in several groups,  and two groups of the same account may carry the same name. The answer is the stored group with its rooms.
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
     Change room group icon
     
     See also:
     REST API Reference for changeRoomGroupIcon Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/
     - parameter id: (path) The room group to re-icon, identified by the value `GET api/2.0/files/group` reports for it. A group of  another account cannot be addressed and reads as missing.      - parameter iconRequest: (body) The icon to give the group. A body that leaves the icon out is accepted and changes nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomGroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeRoomGroupIcon(id: Int, iconRequest: IconRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomGroupWrapper {
        return try await changeRoomGroupIconWithRequestBuilder(id: id, iconRequest: iconRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change room group icon
     
     See also:
     REST API Reference for changeRoomGroupIcon Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/
     
     - POST /api/2.0/files/group/{id}/icon
     - Replaces the icon of one of the caller's own room groups and returns the whole group, its name and its rooms  left as they were. Send the identifier of one of the built-in covers offered by  `GET api/2.0/files/rooms/covers`; an empty string strips the icon, after which the group comes back with an  empty `icon`, and any other value - including a word that merely reads like one, such as `none` - is rejected  as an invalid request. An uploaded image cannot be used here, unlike the logo of a room. Leaving `icon` out of  the body or sending it as null is accepted and changes nothing, whereas a request that carries no body at all,  or a body that is not JSON, is refused. Setting the icon the group already has is accepted as well, so  retrying the call is safe. Any role may re-icon its own group, and a group belonging to another account is  answered as missing rather than refused, exactly as reading it would be.
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
     - parameter id: (path) The room group to re-icon, identified by the value `GET api/2.0/files/group` reports for it. A group of  another account cannot be addressed and reads as missing. 
     - parameter iconRequest: (body) The icon to give the group. A body that leaves the icon out is accepted and changes nothing. (optional)
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
     Delete a room group
     
     See also:
     REST API Reference for deleteRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/
     - parameter id: (path) The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing.      - parameter includeMembers: (query) Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomGroup(id: Int, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteRoomGroupWithRequestBuilder(id: id, includeMembers: includeMembers, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a room group
     
     See also:
     REST API Reference for deleteRoomGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/
     
     - DELETE /api/2.0/files/group/{id}
     - Deletes one of the caller's own room groups. Only the collection goes away: the rooms it gathered, their  content and the shares on them are left exactly as they were, and a room that was in no other group simply  stops being grouped. Deleting a group of another account is refused, and an identifier that names nothing -  because it never existed, or because the group has already been deleted - is answered as missing, so repeating  the call after a successful delete does not report success a second time. The operation is destructive and  cannot be undone: there is no trash for groups, and rebuilding one means calling `POST api/2.0/files/group`  again with the same name, icon and rooms, which gives it a new identifier. Nothing is returned in the body.  The `includeMembers` parameter is accepted here because the route shares its contract with  `GET api/2.0/files/group/{id}`, and has no effect on what is deleted. Read the group first when the rooms it  gathers still have to be recorded somewhere.
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
     - parameter id: (path) The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing. 
     - parameter includeMembers: (query) Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`. (optional)
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
     - parameter id: (path) The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing.      - parameter includeMembers: (query) Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`. (optional)
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
     - Returns one room group of the calling account together with the rooms it gathers. Groups are personal: an  identifier that belongs to another member is answered the same way as one that was never created or has  already been deleted, and a portal administrator is no exception to that rule. Take the identifier from  `GET api/2.0/files/group`, which lists the groups the caller owns. Set `includeMembers` to false to get the  group without the `rooms` array, which is the cheaper form when only the name, the icon and the number of  rooms are needed; `totalRooms` is filled either way. A room moved to the archive is left out of both `rooms`  and `totalRooms` while its membership survives, so taking the room out of the archive brings it back into the  group. Rooms stored in the portal are listed before rooms on connected third-party accounts. The call is  read-only and changes nothing about the group or the rooms it refers to.
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
     - parameter id: (path) The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing. 
     - parameter includeMembers: (query) Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`. (optional)
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
     - parameter includeMembers: (query) Whether the rooms of each group are listed in the answer: true fills the `rooms` array of every entry, false  leaves it out and reports only how many there are in `totalRooms`. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomGroupArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomGroups(includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomGroupArrayWrapper {
        return try await getRoomGroupsWithRequestBuilder(includeMembers: includeMembers, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List room groups
     
     See also:
     REST API Reference for getRoomGroups Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-groups/
     
     - GET /api/2.0/files/group
     - Returns every room group of the calling account, each with the rooms it gathers. Only groups the caller  created are listed: groups of other members never appear here, and an account that has never made one gets an  empty array back. Set `includeMembers` to false to leave the `rooms` array out of every entry and keep the  name, the icon and `totalRooms` alone, which is the cheaper form when the list is only being shown as a menu.  Archived rooms are skipped in both the `rooms` array and the `totalRooms` count, and reappear once the room is  taken out of the archive. The listing is neither paged nor filtered - it always carries the whole set - and  the order of the entries is not contractual, so sort them on the client when the order matters. The call is  read-only. Use `GET api/2.0/files/group/{id}` when the identifier of a single group is already known, and  `POST api/2.0/files/group` to add one.
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
     - parameter includeMembers: (query) Whether the rooms of each group are listed in the answer: true fills the `rooms` array of every entry, false  leaves it out and reports only how many there are in `totalRooms`. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomGroupArrayWrapper> 
     */
    open class func getRoomGroupsWithRequestBuilder(includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomGroupArrayWrapper> {
        let localVariablePath = "/api/2.0/files/group"
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
     - parameter id: (path) The room group to change, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing.      - parameter updateRoomGroupRequest: (body) The changes to apply. Carrying none of them leaves the group as it is, and each of them may be sent on its own  or together with the others. 
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
     - Applies changes to one of the caller's own room groups: a new name, rooms to attach, rooms to detach, or any  combination of the three in a single call. A body that carries none of the three (`{}`) is accepted and  changes nothing, while a body that names them and leaves every one of them empty asks for an update that  cannot be performed and is rejected as an invalid request. `roomsToAdd` is resolved the way creation resolves  its list: every identifier has to name a room the caller can read, repeats and rooms already in the group are  collapsed, and when only part of the list resolves the rest is still attached and the call is reported as  failed. `roomsToRemove` works the other way round - a room already in the group is always detached, even when  the caller has since lost access to it, whereas an identifier that is not in the group is resolved first and  refused when it names nothing. The steps are applied in order and are not rolled back when a later one fails.  A group of another account is answered as missing. The answer is the group as stored after the call.
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
     - parameter id: (path) The room group to change, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing. 
     - parameter updateRoomGroupRequest: (body) The changes to apply. Carrying none of them leaves the group as it is, and each of them may be sent on its own  or together with the others. 
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
