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
     Attach tags to a room
     
     See also:
     REST API Reference for addRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addRoomTags(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await addRoomTagsWithRequestBuilder(id: id, batchTagsRequestDto: batchTagsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Attach tags to a room
     
     See also:
     REST API Reference for addRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
     
     - PUT /api/2.0/files/rooms/{id}/tags
     - Attaches the named tags to a room and returns the room with its whole tag set. Tags are portal-wide labels  shared by every room, and a name that the catalogue does not hold yet is created there by this call, so  attaching is also the short way of adding a tag to the portal. Names already attached to the room are kept as  they are, and repeating the call changes nothing, which makes it safe to retry. An empty list is accepted and  does nothing, while a blank or overlong name is rejected as an invalid request. The caller must be a manager  of the room or an administrator of the portal, and a room in the Archive section is refused with 403. A tag  has no identifier of its own and is addressed by name, so `GET api/2.0/files/tags` is what shows which names  already exist. Use `DELETE api/2.0/files/rooms/{id}/tags` to detach them again, which leaves the tags  themselves in the catalogue.
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
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func addRoomTagsWithRequestBuilder(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/tags"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: batchTagsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Attach tags to a room (third-party storage)
     
     See also:
     REST API Reference for addRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addRoomTags(id: String, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await addRoomTagsWithRequestBuilder(id: id, batchTagsRequestDto: batchTagsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Attach tags to a room (third-party storage)
     
     See also:
     REST API Reference for addRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
     
     - PUT /api/2.0/files/rooms/{id}/tags
     - Attaches the named tags to a room and returns the room with its whole tag set. Tags are portal-wide labels  shared by every room, and a name that the catalogue does not hold yet is created there by this call, so  attaching is also the short way of adding a tag to the portal. Names already attached to the room are kept as  they are, and repeating the call changes nothing, which makes it safe to retry. An empty list is accepted and  does nothing, while a blank or overlong name is rejected as an invalid request. The caller must be a manager  of the room or an administrator of the portal, and a room in the Archive section is refused with 403. A tag  has no identifier of its own and is addressed by name, so `GET api/2.0/files/tags` is what shows which names  already exist. Use `DELETE api/2.0/files/rooms/{id}/tags` to detach them again, which leaves the tags  themselves in the catalogue.
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
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func addRoomTagsWithRequestBuilder(id: String, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/tags"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: batchTagsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Archive a room
     
     See also:
     REST API Reference for archiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func archiveRoom(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await archiveRoomWithRequestBuilder(id: id, archiveRoomRequest: archiveRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Archive a room
     
     See also:
     REST API Reference for archiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
     
     - PUT /api/2.0/files/rooms/{id}/archive
     - Queues a background job that moves one room from the Rooms section to the Archive section, and returns the  operation record of that job. An archived room stays readable to its members and becomes read only: files  cannot be created, renamed or edited in it, and its settings, tags, logo and links can no longer be changed,  which is why many other room operations answer an archived room with a refusal. The caller must be a manager  of the room; administrators of the portal cannot archive a room they were not invited to, and a room template  cannot be archived at all and is answered as missing. The room is not archived when the response arrives: poll  `GET api/2.0/files/fileops` until `finished` is true. Archiving an already archived room is harmless.  `deleteAfter` decides only how long the finished record survives, not what happens to the room. Use  `PUT api/2.0/files/rooms/{id}/unarchive` to bring the room back.
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
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func archiveRoomWithRequestBuilder(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/archive"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: archiveRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Archive a room (third-party storage)
     
     See also:
     REST API Reference for archiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func archiveRoom(id: String, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await archiveRoomWithRequestBuilder(id: id, archiveRoomRequest: archiveRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Archive a room (third-party storage)
     
     See also:
     REST API Reference for archiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
     
     - PUT /api/2.0/files/rooms/{id}/archive
     - Queues a background job that moves one room from the Rooms section to the Archive section, and returns the  operation record of that job. An archived room stays readable to its members and becomes read only: files  cannot be created, renamed or edited in it, and its settings, tags, logo and links can no longer be changed,  which is why many other room operations answer an archived room with a refusal. The caller must be a manager  of the room; administrators of the portal cannot archive a room they were not invited to, and a room template  cannot be archived at all and is answered as missing. The room is not archived when the response arrives: poll  `GET api/2.0/files/fileops` until `finished` is true. Archiving an already archived room is harmless.  `deleteAfter` decides only how long the finished record survives, not what happens to the room. Use  `PUT api/2.0/files/rooms/{id}/unarchive` to bring the room back.
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
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func archiveRoomWithRequestBuilder(id: String, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/archive"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: archiveRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change the room cover
     
     See also:
     REST API Reference for changeRoomCover Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
     - parameter id: (path) The room to change, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter coverRequestDto: (body) The cover and the colour to apply. Either half may be sent on its own, and an empty object leaves the room as  it is. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeRoomCover(id: Int, coverRequestDto: CoverRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await changeRoomCoverWithRequestBuilder(id: id, coverRequestDto: coverRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the room cover
     
     See also:
     REST API Reference for changeRoomCover Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
     
     - POST /api/2.0/files/rooms/{id}/cover
     - Sets the cover picture and the background colour a room is shown with, and returns the whole room afterwards.  `cover` accepts only an identifier listed by `GET api/2.0/files/rooms/covers`, and `color` only six  hexadecimal digits with no leading number sign, so anything else is rejected as an invalid request. Either  field may be sent on its own, an empty `cover` clears the picture, an empty `color` restores the default one,  and an empty body leaves the room untouched. The cover is what the room shows while it has no uploaded logo:  setting a logo with `POST api/2.0/files/rooms/{id}/logo` hides the cover without erasing it, and deleting that  logo brings it back. The caller must be a manager of the room, an archived room is refused with 403, and an  unknown or deleted room is answered with 404. Repeating the same request is harmless, and the cover survives  archiving and unarchiving.
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
     - parameter id: (path) The room to change, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter coverRequestDto: (body) The cover and the colour to apply. Either half may be sent on its own, and an empty object leaves the room as  it is. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func changeRoomCoverWithRequestBuilder(id: Int, coverRequestDto: CoverRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/cover"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: coverRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change the room cover (third-party storage)
     
     See also:
     REST API Reference for changeRoomCover Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
     - parameter id: (path) The room to change, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter coverRequestDto: (body) The cover and the colour to apply. Either half may be sent on its own, and an empty object leaves the room as  it is. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeRoomCover(id: String, coverRequestDto: CoverRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await changeRoomCoverWithRequestBuilder(id: id, coverRequestDto: coverRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the room cover (third-party storage)
     
     See also:
     REST API Reference for changeRoomCover Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
     
     - POST /api/2.0/files/rooms/{id}/cover
     - Sets the cover picture and the background colour a room is shown with, and returns the whole room afterwards.  `cover` accepts only an identifier listed by `GET api/2.0/files/rooms/covers`, and `color` only six  hexadecimal digits with no leading number sign, so anything else is rejected as an invalid request. Either  field may be sent on its own, an empty `cover` clears the picture, an empty `color` restores the default one,  and an empty body leaves the room untouched. The cover is what the room shows while it has no uploaded logo:  setting a logo with `POST api/2.0/files/rooms/{id}/logo` hides the cover without erasing it, and deleting that  logo brings it back. The caller must be a manager of the room, an archived room is refused with 403, and an  unknown or deleted room is answered with 404. Repeating the same request is harmless, and the cover survives  archiving and unarchiving.
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
     - parameter id: (path) The room to change, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter coverRequestDto: (body) The cover and the colour to apply. Either half may be sent on its own, and an empty object leaves the room as  it is. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func changeRoomCoverWithRequestBuilder(id: String, coverRequestDto: CoverRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/cover"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: coverRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a room
     
     See also:
     REST API Reference for createRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
     - parameter createRoomRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoom(createRoomRequestDto: CreateRoomRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await createRoomWithRequestBuilder(createRoomRequestDto: createRoomRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a room
     
     See also:
     REST API Reference for createRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
     
     - POST /api/2.0/files/rooms
     - Creates a room in the portal Rooms section and returns it. `roomType` decides which sharing links, member  roles and form features the room offers, and it cannot be changed afterwards, so a room of the wrong kind has  to be recreated. The caller must be the portal owner, a portal administrator or a room administrator; a user  or a guest is refused, and so is a public room while the portal forbids external sharing. `title` is required  and must not be blank: characters a folder name cannot hold are replaced with underscores and the rest is  truncated, so the stored title can differ from the one sent and two rooms can share it. `quota` is accepted  only while the per-room quota feature is on and must stay within the portal quota, `cover` only for an id  returned by `GET api/2.0/files/rooms/covers`, and `color` as six hexadecimal digits with no leading number  sign. Tag names the portal does not know yet are added to the tag catalogue. `share` is not implemented and  any non-empty value is rejected, so invite members afterwards with `PUT api/2.0/files/rooms/{id}/share`.  Passing the portal room limit ends the call as a billing refusal and creates nothing.
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
     - parameter createRoomRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func createRoomWithRequestBuilder(createRoomRequestDto: CreateRoomRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        let localVariablePath = "/api/2.0/files/rooms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createRoomRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a room from the template
     
     See also:
     REST API Reference for createRoomFromTemplate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/
     - parameter createRoomFromTemplateDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomFromTemplateStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomFromTemplate(createRoomFromTemplateDto: CreateRoomFromTemplateDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomFromTemplateStatusWrapper {
        return try await createRoomFromTemplateWithRequestBuilder(createRoomFromTemplateDto: createRoomFromTemplateDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a room from the template
     
     See also:
     REST API Reference for createRoomFromTemplate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/
     
     - POST /api/2.0/files/rooms/fromtemplate
     - Starts a background job that copies a room template into a new room of the Rooms section, and answers with the  same progress record that `GET api/2.0/files/rooms/fromtemplate/status` returns. The caller must be able to  read the template and to create rooms at all, so a user or a guest is refused, and the checks run before the  job is queued. The room does not exist when the response arrives: poll the status operation until  `isCompleted` is true, then take `roomId` from it, and treat a non-empty `error` as a failed job. Only one  such job is kept per account, and a finished one is discarded when the next is started, so a second creation  loses the record of the first. Anything not sent is inherited from the template, and `copyLogo` keeps the  template logo and makes `logo` pointless. `quota` is accepted only while the per-room quota feature is on, and  a template of a public room cannot be instantiated while the portal forbids external sharing. A template that  does not exist or cannot be read is answered as missing.
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
     - parameter createRoomFromTemplateDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomFromTemplateStatusWrapper> 
     */
    open class func createRoomFromTemplateWithRequestBuilder(createRoomFromTemplateDto: CreateRoomFromTemplateDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomFromTemplateStatusWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/fromtemplate"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createRoomFromTemplateDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomFromTemplateStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the room logo
     
     See also:
     REST API Reference for createRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
     - parameter id: (path) The room the logo is set on.      - parameter logoRequest: (body) The uploaded picture and the piece of it to use. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomLogo(id: Int, logoRequest: LogoRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await createRoomLogoWithRequestBuilder(id: id, logoRequest: logoRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the room logo
     
     See also:
     REST API Reference for createRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
     
     - POST /api/2.0/files/rooms/{id}/logo
     - Turns an image already uploaded to the portal into the logo of a room and returns the room with the addresses  of the four logo sizes. This is the second half of a two-step flow: upload the picture with  `POST api/2.0/files/logos` first and pass the path it returns as `tmpFile`, because the image itself is never  sent here. The temporary file belongs to the account that uploaded it and is consumed by this call, so it  cannot be reused for a second room and a path somebody else uploaded is refused. `x`, `y`, `width` and  `height` crop the picture; sending a position without a size is rejected as an invalid request, while a size  without a position is accepted. An empty `tmpFile` leaves the room as it is. A logo replaces the cover in the  interface without erasing it, and removing the logo brings the cover back. The caller must be a manager of the  room, an archived room is refused, and an unknown room is answered with 404.
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
     - parameter id: (path) The room the logo is set on. 
     - parameter logoRequest: (body) The uploaded picture and the piece of it to use. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func createRoomLogoWithRequestBuilder(id: Int, logoRequest: LogoRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/logo"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: logoRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the room logo (third-party storage)
     
     See also:
     REST API Reference for createRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
     - parameter id: (path) The room the logo is set on.      - parameter logoRequest: (body) The uploaded picture and the piece of it to use. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomLogo(id: String, logoRequest: LogoRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await createRoomLogoWithRequestBuilder(id: id, logoRequest: logoRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the room logo (third-party storage)
     
     See also:
     REST API Reference for createRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
     
     - POST /api/2.0/files/rooms/{id}/logo
     - Turns an image already uploaded to the portal into the logo of a room and returns the room with the addresses  of the four logo sizes. This is the second half of a two-step flow: upload the picture with  `POST api/2.0/files/logos` first and pass the path it returns as `tmpFile`, because the image itself is never  sent here. The temporary file belongs to the account that uploaded it and is consumed by this call, so it  cannot be reused for a second room and a path somebody else uploaded is refused. `x`, `y`, `width` and  `height` crop the picture; sending a position without a size is rejected as an invalid request, while a size  without a position is accepted. An empty `tmpFile` leaves the room as it is. A logo replaces the cover in the  interface without erasing it, and removing the logo brings the cover back. The caller must be a manager of the  room, an archived room is refused, and an unknown room is answered with 404.
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
     - parameter id: (path) The room the logo is set on. 
     - parameter logoRequest: (body) The uploaded picture and the piece of it to use. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func createRoomLogoWithRequestBuilder(id: String, logoRequest: LogoRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/logo"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: logoRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a room tag
     
     See also:
     REST API Reference for createRoomTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/
     - parameter createTagRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomTag(createTagRequestDto: CreateTagRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await createRoomTagWithRequestBuilder(createTagRequestDto: createTagRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a room tag
     
     See also:
     REST API Reference for createRoomTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/
     
     - POST /api/2.0/files/tags
     - Adds a custom tag to the portal-wide catalog of room tags and answers with the stored name. Tags are shared by  the whole portal instead of belonging to the caller: once the tag exists, every room manager can attach it to  their own rooms with `PUT api/2.0/files/rooms/{id}/tags`, and that call also creates a tag it does not find.  Creating a name that is already in the catalog returns the existing tag unchanged rather than a duplicate or  an error, so repeating the call after a timeout is safe. A blank name, or one longer than the published limit,  is rejected as an invalid request. Only a room manager or a portal administrator may create a tag, and a user  or a guest is refused. The answer is the name as stored, and that name is the value to send in the `tags`  filter of `GET api/2.0/files/rooms` and in the room tag calls. The catalog itself is read with  `GET api/2.0/files/tags`.
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
     - parameter createTagRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func createRoomTagWithRequestBuilder(createTagRequestDto: CreateTagRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/files/tags"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTagRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a room template
     
     See also:
     REST API Reference for createRoomTemplate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/
     - parameter roomTemplateDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomTemplateStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomTemplate(roomTemplateDto: RoomTemplateDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomTemplateStatusWrapper {
        return try await createRoomTemplateWithRequestBuilder(roomTemplateDto: roomTemplateDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a room template
     
     See also:
     REST API Reference for createRoomTemplate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/
     
     - POST /api/2.0/files/roomtemplate
     - Queues a background job that turns an existing room into a reusable room template, and returns the state of  that job right away. The template lands in the portal's Templates section, inherits the source room's type,  privacy, indexing, storage limit, lifetime, download and watermark settings, and receives copies of the room's  files together with its ordinary subfolders and everything inside them; the service subfolders a room keeps  for its own workflows are left out. The caller needs room-manager rights on the source room, and the room must  not be archived: a room that cannot be found under Rooms is answered as missing, and every other refusal comes  back as a rejection. The template is not ready when the response arrives, so poll  `GET api/2.0/files/roomtemplate/status` until `isCompleted` is true, then read `templateId`; a non-empty  `error` there means the job failed and the half-built template was removed. Only one template creation is  tracked per caller, and starting another replaces the previous record. Setting `public` to true discards  `share` and `groups` and shares the finished template with everyone instead, while `copyLogo` reuses the  source room's own picture and makes `logo` irrelevant.
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
     - parameter roomTemplateDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomTemplateStatusWrapper> 
     */
    open class func createRoomTemplateWithRequestBuilder(roomTemplateDto: RoomTemplateDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomTemplateStatusWrapper> {
        let localVariablePath = "/api/2.0/files/roomtemplate"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: roomTemplateDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomTemplateStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a third-party room
     
     See also:
     REST API Reference for createRoomThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
     - parameter id: (path) The identifier of the folder in the connected third-party storage that becomes the room, or receives it as a  subfolder. Folder identifiers of a connected account are strings and are returned by the folder listings of  that account.      - parameter createThirdPartyRoom: (body) The settings of the room to be created out of the folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomThirdParty(id: String, createThirdPartyRoom: CreateThirdPartyRoom, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await createRoomThirdPartyWithRequestBuilder(id: id, createThirdPartyRoom: createThirdPartyRoom, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a third-party room
     
     See also:
     REST API Reference for createRoomThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
     
     - POST /api/2.0/files/rooms/thirdparty/{id}
     - Turns a folder of a connected third-party storage account into a room of the `Rooms` section, so that the  files of the room keep living in that storage instead of the portal. Connect the account first with  `POST api/2.0/files/thirdparty` and take the path parameter from a folder listing of that account: it is the  identifier of a folder in the storage, not of a room. One connected account can back one room only, so a  second call over the same account is refused, and so is an account that was not connected for room storage.  The caller needs the right to create rooms, which a portal user and a guest do not have; a public room is  refused while the administrator restricts external access, and reaching the room limit of the tariff is  refused too. With `createAsNewFolder` the room is a new subfolder named after `title`, otherwise the folder  from the path becomes the room itself and `indexing`, `denyDownload`, `tags` and `logo` are then dropped. The  answer is the new room, whose identifiers are strings; a public or a form-filling room already has its primary  link, readable with `GET api/2.0/files/rooms/{id}/link`.
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
     - parameter id: (path) The identifier of the folder in the connected third-party storage that becomes the room, or receives it as a  subfolder. Folder identifiers of a connected account are strings and are returned by the folder listings of  that account. 
     - parameter createThirdPartyRoom: (body) The settings of the room to be created out of the folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func createRoomThirdPartyWithRequestBuilder(id: String, createThirdPartyRoom: CreateThirdPartyRoom, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/thirdparty/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createThirdPartyRoom, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete the custom room tags
     
     See also:
     REST API Reference for deleteCustomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/
     - parameter batchTagsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteCustomTags(batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteCustomTagsWithRequestBuilder(batchTagsRequestDto: batchTagsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete the custom room tags
     
     See also:
     REST API Reference for deleteCustomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/
     
     - DELETE /api/2.0/files/tags
     - Deletes custom room tags from the portal catalog by name and detaches them from every room that carries them;  the rooms themselves and their content are untouched, and only the tag disappears from their tag lists. Only a  portal administrator may call it, and a room manager who is allowed to create tags is refused. The names are  matched exactly as they are stored: names that are not in the catalog are skipped in silence and an empty list  is accepted as a no-op, so a successful answer does not prove that anything was deleted; check a name with  `GET api/2.0/files/tags/{tagName}/haslinks` first when that matters. The call cannot be undone: creating the  name again with `POST api/2.0/files/tags` brings back the tag but not its links, which have to be attached to  each room once more. The answer carries no body. To take a tag off one room and leave it in the catalog for  the others, use `DELETE api/2.0/files/rooms/{id}/tags` instead.
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
     - parameter batchTagsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCustomTagsWithRequestBuilder(batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/files/tags"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: batchTagsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove a room
     
     See also:
     REST API Reference for deleteRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
     - parameter id: (path) The room to delete, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter deleteRoomRequest: (body) The body of the request. It is required even though the deletion does not depend on what it holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoom(id: Int, deleteRoomRequest: DeleteRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await deleteRoomWithRequestBuilder(id: id, deleteRoomRequest: deleteRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove a room
     
     See also:
     REST API Reference for deleteRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
     
     - DELETE /api/2.0/files/rooms/{id}
     - Queues a background job that deletes one room with everything inside it, and returns the operation record of  that job. Deleting a room is destructive and has no trash step: the room and its files are gone once the job  finishes, unlike a file or a folder, which is moved to the trash first. The right to delete is checked before  the job is queued, so a caller who may not delete the room is refused straight away and an unknown room is  answered as missing; the same checks run again when the job starts, which is why the `error` of the finished  operation still has to be read. Poll `GET api/2.0/files/fileops` until `finished` is true, or read the  returned record again by its `id`. The record is kept until it is read once, so one poll after completion  still sees it. `deleteAfter` in the body is required by the contract but has no effect on the job. An archived  room is deleted the same way, and a second delete of the same id reports that the room is missing.
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
     - parameter id: (path) The room to delete, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter deleteRoomRequest: (body) The body of the request. It is required even though the deletion does not depend on what it holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func deleteRoomWithRequestBuilder(id: Int, deleteRoomRequest: DeleteRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove a room (third-party storage)
     
     See also:
     REST API Reference for deleteRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
     - parameter id: (path) The room to delete, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter deleteRoomRequest: (body) The body of the request. It is required even though the deletion does not depend on what it holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoom(id: String, deleteRoomRequest: DeleteRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await deleteRoomWithRequestBuilder(id: id, deleteRoomRequest: deleteRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove a room (third-party storage)
     
     See also:
     REST API Reference for deleteRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
     
     - DELETE /api/2.0/files/rooms/{id}
     - Queues a background job that deletes one room with everything inside it, and returns the operation record of  that job. Deleting a room is destructive and has no trash step: the room and its files are gone once the job  finishes, unlike a file or a folder, which is moved to the trash first. The right to delete is checked before  the job is queued, so a caller who may not delete the room is refused straight away and an unknown room is  answered as missing; the same checks run again when the job starts, which is why the `error` of the finished  operation still has to be read. Poll `GET api/2.0/files/fileops` until `finished` is true, or read the  returned record again by its `id`. The record is kept until it is read once, so one poll after completion  still sees it. `deleteAfter` in the body is required by the contract but has no effect on the job. An archived  room is deleted the same way, and a second delete of the same id reports that the room is missing.
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
     - parameter id: (path) The room to delete, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter deleteRoomRequest: (body) The body of the request. It is required even though the deletion does not depend on what it holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func deleteRoomWithRequestBuilder(id: String, deleteRoomRequest: DeleteRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove a room logo
     
     See also:
     REST API Reference for deleteRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomLogo(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await deleteRoomLogoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove a room logo
     
     See also:
     REST API Reference for deleteRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
     
     - DELETE /api/2.0/files/rooms/{id}/logo
     - Removes the uploaded logo of a room and returns the room with empty logo addresses. What the room falls back  to is its cover and colour, which the logo only hid: if a cover was set before the logo, it is shown again,  and `POST api/2.0/files/rooms/{id}/cover` is what changes it. Nothing else about the room is touched, so  membership, tags, links and settings are preserved. A room that has no logo is accepted and answered with 200,  and repeating the call is therefore harmless. The caller must be a manager of the room; a member invited even  with editing rights is refused, and so is a room in the Archive section. A room that does not exist or was  deleted is answered as missing. After the logo is removed a new one can be set again through  `POST api/2.0/files/logos` followed by `POST api/2.0/files/rooms/{id}/logo`.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func deleteRoomLogoWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/logo"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove a room logo (third-party storage)
     
     See also:
     REST API Reference for deleteRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomLogo(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await deleteRoomLogoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove a room logo (third-party storage)
     
     See also:
     REST API Reference for deleteRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
     
     - DELETE /api/2.0/files/rooms/{id}/logo
     - Removes the uploaded logo of a room and returns the room with empty logo addresses. What the room falls back  to is its cover and colour, which the logo only hid: if a cover was set before the logo, it is shown again,  and `POST api/2.0/files/rooms/{id}/cover` is what changes it. Nothing else about the room is touched, so  membership, tags, links and settings are preserved. A room that has no logo is accepted and answered with 200,  and repeating the call is therefore harmless. The caller must be a manager of the room; a member invited even  with editing rights is refused, and so is a room in the Archive section. A room that does not exist or was  deleted is answered as missing. After the logo is removed a new one can be set again through  `POST api/2.0/files/logos` followed by `POST api/2.0/files/rooms/{id}/logo`.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func deleteRoomLogoWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/logo"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Detach tags from a room
     
     See also:
     REST API Reference for deleteRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomTags(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await deleteRoomTagsWithRequestBuilder(id: id, batchTagsRequestDto: batchTagsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Detach tags from a room
     
     See also:
     REST API Reference for deleteRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
     
     - DELETE /api/2.0/files/rooms/{id}/tags
     - Detaches the named tags from a room and returns the room with its remaining tag set. Only the link between the  room and the tag is removed: the tag stays in the portal catalogue and keeps working for every other room, and  `DELETE api/2.0/files/tags` is what removes it from the portal itself. Names that are not in the catalogue, or  not attached to this room, are skipped without an error, so a successful answer does not prove that anything  was detached; compare the returned tag set instead. An empty list is accepted and does nothing, while a null  entry in the list is rejected as an invalid request. The caller must be a manager of the room or an  administrator of the portal, and a room in the Archive section is refused with 403. A tag that loses its last  room stays in the catalogue, and only deleting that room takes the tag with it.
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
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func deleteRoomTagsWithRequestBuilder(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/tags"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: batchTagsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Detach tags from a room (third-party storage)
     
     See also:
     REST API Reference for deleteRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomTags(id: String, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await deleteRoomTagsWithRequestBuilder(id: id, batchTagsRequestDto: batchTagsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Detach tags from a room (third-party storage)
     
     See also:
     REST API Reference for deleteRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
     
     - DELETE /api/2.0/files/rooms/{id}/tags
     - Detaches the named tags from a room and returns the room with its remaining tag set. Only the link between the  room and the tag is removed: the tag stays in the portal catalogue and keeps working for every other room, and  `DELETE api/2.0/files/tags` is what removes it from the portal itself. Names that are not in the catalogue, or  not attached to this room, are skipped without an error, so a successful answer does not prove that anything  was detached; compare the returned tag set instead. An empty list is accepted and does nothing, while a null  entry in the list is rejected as an invalid request. The caller must be a manager of the room or an  administrator of the portal, and a room in the Archive section is refused with 403. A tag that loses its last  room stays in the catalogue, and only deleting that room takes the tag with it.
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
     - parameter id: (path) The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter batchTagsRequestDto: (body) The names to attach or to detach. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func deleteRoomTagsWithRequestBuilder(id: String, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/tags"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: batchTagsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get external DB sync status
     
     See also:
     REST API Reference for getExternalDbSyncStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-db-sync-status/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExternalDbSyncTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getExternalDbSyncStatus(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExternalDbSyncTaskWrapper {
        return try await getExternalDbSyncStatusWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get external DB sync status
     
     See also:
     REST API Reference for getExternalDbSyncStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-db-sync-status/
     
     - GET /api/2.0/files/rooms/{id}/externaldbsync
     - Returns the record of the external database export job of a form filling room, or an empty body when the room  has no job at all. The room must be a form filling room and the caller must be able to edit it, otherwise the  call is refused; an unknown room is answered with 404. This is the polling target of  `POST api/2.0/files/rooms/{id}/externaldbsync`: repeat it until `isCompleted` is true, and then read `forms`,  which lists one entry per original form with its own `success` and `error` and is empty while the job is still  running. `percentage` advances as forms are processed, `status` distinguishes a job that is queued, running,  finished or failed, and `error` carries the message of a job that stopped as a whole. The record belongs to  the room rather than to the account that started the job, so any member who can edit the room sees the same  answer. The call changes nothing and is safe to repeat.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ExternalDbSyncTaskWrapper> 
     */
    open class func getExternalDbSyncStatusWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ExternalDbSyncTaskWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/externaldbsync"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalDbSyncTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get new items in a room
     
     See also:
     REST API Reference for getNewRoomItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: NewItemsFileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNewRoomItems(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NewItemsFileEntryBaseArrayWrapper {
        return try await getNewRoomItemsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get new items in a room
     
     See also:
     REST API Reference for getNewRoomItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
     
     - GET /api/2.0/files/rooms/{id}/news
     - Returns what is new for the calling account in one room, grouped by the day the entry was last changed, with  the newest day first and the entries inside a day ordered from the most recent. Only files are reported: a  folder somebody else created is not an entry of its own, while a file created inside it is, however deep it  lies. What the caller changed is never new for the caller, and a file that was deleted afterwards disappears  from the answer. Reading this list leaves the badges alone, which is what makes it the operation to call  before `GET api/2.0/files/rooms/{id}`, since opening the room clears them. An empty array therefore means that  there is nothing new, not that the badges were already read. The caller needs access to the room; somebody who  is not a member is refused, and an unknown or deleted room is answered as missing. Use  `GET api/2.0/files/rooms/news` for the same report across every room at once.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<NewItemsFileEntryBaseArrayWrapper> 
     */
    open class func getNewRoomItemsWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NewItemsFileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/news"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NewItemsFileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get new items in a room (third-party storage)
     
     See also:
     REST API Reference for getNewRoomItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: NewItemsFileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNewRoomItems(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NewItemsFileEntryBaseArrayWrapper {
        return try await getNewRoomItemsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get new items in a room (third-party storage)
     
     See also:
     REST API Reference for getNewRoomItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
     
     - GET /api/2.0/files/rooms/{id}/news
     - Returns what is new for the calling account in one room, grouped by the day the entry was last changed, with  the newest day first and the entries inside a day ordered from the most recent. Only files are reported: a  folder somebody else created is not an entry of its own, while a file created inside it is, however deep it  lies. What the caller changed is never new for the caller, and a file that was deleted afterwards disappears  from the answer. Reading this list leaves the badges alone, which is what makes it the operation to call  before `GET api/2.0/files/rooms/{id}`, since opening the room clears them. An empty array therefore means that  there is nothing new, not that the badges were already read. The caller needs access to the room; somebody who  is not a member is refused, and an unknown or deleted room is answered as missing. Use  `GET api/2.0/files/rooms/news` for the same report across every room at once.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<NewItemsFileEntryBaseArrayWrapper> 
     */
    open class func getNewRoomItemsWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NewItemsFileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/news"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NewItemsFileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room template public access
     
     See also:
     REST API Reference for getPublicSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
     - parameter id: (path) The identifier of the room template. Take it from `templateId` of `GET api/2.0/files/roomtemplate/status`, or  from the folder list of `GET api/2.0/files/rooms` called with `searchArea` set to 4; an identifier of an  ordinary room is not accepted. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPublicSettings(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await getPublicSettingsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room template public access
     
     See also:
     REST API Reference for getPublicSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
     
     - GET /api/2.0/files/roomtemplate/{id}/public
     - Reports whether the room template addressed by `id` is shared with everyone or is reachable only by the  accounts it was explicitly shared with. True means the Everyone group holds read access, so any member allowed  to create rooms can build one from the template with `POST api/2.0/files/rooms/fromtemplate`; false means only  the owner and the named recipients can. The identifier has to belong to a room template — take it from  `templateId` of `GET api/2.0/files/roomtemplate/status`, or from the folder list of `GET api/2.0/files/rooms`  called with `searchArea` set to 4 — while an ordinary room, a deleted template or an unknown value is answered  as missing. The caller needs read access to the template, so somebody else's private template is refused even  for a portal administrator, and members who cannot reach the Templates section at all are refused whatever the  template's state. The call only reads state; use `PUT api/2.0/files/roomtemplate/public` to change it.
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
     - parameter id: (path) The identifier of the room template. Take it from `templateId` of `GET api/2.0/files/roomtemplate/status`, or  from the folder list of `GET api/2.0/files/rooms` called with `searchArea` set to 4; an identifier of an  ordinary room is not accepted. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func getPublicSettingsWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/roomtemplate/{id}/public"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room cover gallery
     
     See also:
     REST API Reference for getRoomCovers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: CoversResultArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomCovers(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CoversResultArrayWrapper {
        return try await getRoomCoversWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room cover gallery
     
     See also:
     REST API Reference for getRoomCovers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/
     
     - GET /api/2.0/files/rooms/covers
     - Returns the gallery of cover pictures a room can be given: every entry pairs the identifier to send to  `POST api/2.0/files/rooms/{id}/cover` with the drawing itself as inline vector markup ready to be rendered.  The gallery is built into the product rather than stored per portal, so it is the same for every account and  every room, does not depend on what rooms exist, and its identifiers do not change with the language of the  request. The identifiers are unique and stable, which makes them safe to keep in a client, while the drawings  behind them may change between product versions. Any account of the portal may read the gallery, but a guest  is refused. The list is the only source of valid cover identifiers: a value that is not in it is rejected  wherever a cover is set, including room creation and room update. The call changes nothing and is safe to  repeat.
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
     - returns: RequestBuilder<CoversResultArrayWrapper> 
     */
    open class func getRoomCoversWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CoversResultArrayWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/covers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CoversResultArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room creation progress
     
     See also:
     REST API Reference for getRoomCreatingStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomFromTemplateStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomCreatingStatus(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomFromTemplateStatusWrapper {
        return try await getRoomCreatingStatusWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room creation progress
     
     See also:
     REST API Reference for getRoomCreatingStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/
     
     - GET /api/2.0/files/rooms/fromtemplate/status
     - Returns the progress of the room-from-template job started by the calling account with  `POST api/2.0/files/rooms/fromtemplate`. The record is private to the account that started the job: jobs of  other members are never reported, and only one record is kept per account. The body is empty when the account  has no such record, and it is also empty when the job queue cannot be read, so an empty answer is not proof  that nothing was started. `progress` is a percentage, `isCompleted` marks the end of the job whether it  succeeded or failed, `error` carries the failure message and is empty on success, and `roomId` is meaningful  only once the room exists. The record survives the end of the job and is dropped when the next creation  starts, so polling after completion keeps returning the same answer. Poll this operation until `isCompleted`  is true and then read the room itself with `GET api/2.0/files/rooms/{id}`. The call changes nothing and is  safe to repeat.
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
     - returns: RequestBuilder<RoomFromTemplateStatusWrapper> 
     */
    open class func getRoomCreatingStatusWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomFromTemplateStatusWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/fromtemplate/status"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomFromTemplateStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room index export
     
     See also:
     REST API Reference for getRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomIndexExport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getRoomIndexExportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room index export
     
     See also:
     REST API Reference for getRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/
     
     - GET /api/2.0/files/rooms/indexexport
     - Returns the state of the index export of the calling account, the job started by  `POST api/2.0/files/rooms/{id}/indexexport`. The record is not addressed by room: there is at most one per  account, and the answer describes the latest export whichever room it was started for. When the account has  never started one, or its record was cancelled, the body is null rather than an error, so null is the normal  way of saying that there is nothing to report. While the job runs, `percentage` moves in coarse steps instead  of smoothly, which makes it a rough hint rather than a measure of the remaining time; `isCompleted` is the  field to wait on, and it is also set for a job that failed or was cancelled, so read `status` to tell the  outcomes apart and `error` for the message. After a successful build, `resultFileId`, `resultFileName` and  `resultFileUrl` point to the spreadsheet saved in the My documents section of the caller. The record survives  completion and is replaced only by the next export.
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
    open class func getRoomIndexExportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/indexexport"
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
     Get room information
     
     See also:
     REST API Reference for getRoomInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomInfo(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await getRoomInfoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room information
     
     See also:
     REST API Reference for getRoomInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
     
     - GET /api/2.0/files/rooms/{id}
     - Returns one room with its type, title, tags, logo, cover, colour, quota and virtual data room settings,  together with the access level the caller has in it. Reading the room is not a side-effect-free call: it  clears the caller new-item badges for that room, and `newForMe` comes back as 0, so read  `GET api/2.0/files/rooms/{id}/news` first when the new items matter. The caller needs read access to the room;  portal administrators can read a room they were never invited to, while a member without access is refused.  The operation also answers an anonymous caller, but only in the context of a valid external share link of that  room, and a plain anonymous request is rejected as unauthenticated. A room that never existed, was deleted, or  lives in a section the caller cannot see is answered as missing. Archived rooms are returned as well and are  recognised by their root section rather than by a separate flag. Use `GET api/2.0/files/rooms` to search and  page through rooms instead of guessing ids.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func getRoomInfoWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room information (third-party storage)
     
     See also:
     REST API Reference for getRoomInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomInfo(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await getRoomInfoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room information (third-party storage)
     
     See also:
     REST API Reference for getRoomInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
     
     - GET /api/2.0/files/rooms/{id}
     - Returns one room with its type, title, tags, logo, cover, colour, quota and virtual data room settings,  together with the access level the caller has in it. Reading the room is not a side-effect-free call: it  clears the caller new-item badges for that room, and `newForMe` comes back as 0, so read  `GET api/2.0/files/rooms/{id}/news` first when the new items matter. The caller needs read access to the room;  portal administrators can read a room they were never invited to, while a member without access is refused.  The operation also answers an anonymous caller, but only in the context of a valid external share link of that  room, and a plain anonymous request is rejected as unauthenticated. A room that never existed, was deleted, or  lives in a section the caller cannot see is answered as missing. Archived rooms are returned as well and are  recognised by their root section rather than by a separate flag. Use `GET api/2.0/files/rooms` to search and  page through rooms instead of guessing ids.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func getRoomInfoWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room links
     
     See also:
     REST API Reference for getRoomLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
     - parameter id: (path) The room whose links are listed, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter type: (query) Narrows the answer to one kind of link: invitation links, which turn whoever opens them into a member, or  external links, which open the room without an account. Leaving it out returns both kinds together. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomLinks(id: Int, type: LinkType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getRoomLinksWithRequestBuilder(id: id, type: type, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room links
     
     See also:
     REST API Reference for getRoomLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
     
     - GET /api/2.0/files/rooms/{id}/links
     - Returns the sharing links of a room, with the invitation and the external links mixed together unless `type`  narrows it to one kind. Each entry carries the link address, its title, access level, expiration, the flag  that marks the primary external link of the room and, for invitation links, how many times it may still be  used. Public and form filling rooms come with an external link created for them, so an empty answer there  means that the link was revoked rather than that the room is private; rooms of the other kinds start with no  links at all and only gain one when somebody creates it, which for a collaboration room and a virtual data  room can be an invitation link alone. The caller needs access to the room and the right to see its links: a  member invited without that right gets an empty list rather than an error, while somebody who is not in the  room at all is refused. Paging parameters are not honoured here: the first hundred links are returned and the  reported count is the number of entries actually sent.
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
     - parameter id: (path) The room whose links are listed, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter type: (query) Narrows the answer to one kind of link: invitation links, which turn whoever opens them into a member, or  external links, which open the room without an account. Leaving it out returns both kinds together. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getRoomLinksWithRequestBuilder(id: Int, type: LinkType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": (wrappedValue: type?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room links (third-party storage)
     
     See also:
     REST API Reference for getRoomLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
     - parameter id: (path) The room whose links are listed, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter type: (query) Narrows the answer to one kind of link: invitation links, which turn whoever opens them into a member, or  external links, which open the room without an account. Leaving it out returns both kinds together. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomLinks(id: String, type: LinkType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getRoomLinksWithRequestBuilder(id: id, type: type, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room links (third-party storage)
     
     See also:
     REST API Reference for getRoomLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
     
     - GET /api/2.0/files/rooms/{id}/links
     - Returns the sharing links of a room, with the invitation and the external links mixed together unless `type`  narrows it to one kind. Each entry carries the link address, its title, access level, expiration, the flag  that marks the primary external link of the room and, for invitation links, how many times it may still be  used. Public and form filling rooms come with an external link created for them, so an empty answer there  means that the link was revoked rather than that the room is private; rooms of the other kinds start with no  links at all and only gain one when somebody creates it, which for a collaboration room and a virtual data  room can be an invitation link alone. The caller needs access to the room and the right to see its links: a  member invited without that right gets an empty list rather than an error, while somebody who is not in the  room at all is refused. Paging parameters are not honoured here: the first hundred links are returned and the  reported count is the number of entries actually sent.
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
     - parameter id: (path) The room whose links are listed, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter type: (query) Narrows the answer to one kind of link: invitation links, which turn whoever opens them into a member, or  external links, which open the room without an account. Leaving it out returns both kinds together. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getRoomLinksWithRequestBuilder(id: String, type: LinkType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": (wrappedValue: type?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room access rights
     
     See also:
     REST API Reference for getRoomSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
     - parameter id: (path) The room whose access list is read, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter filterType: (query) What kind of access entries to list. The default covers accounts and groups and leaves the sharing links of  the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. (optional)     - parameter count: (query) How many entries to return in one answer. The total number of matching entries comes back in the response  headers, so it is what tells the caller whether another page is needed. (optional)     - parameter startIndex: (query) How many matching entries to skip before the page starts. Together with the page size it walks the list, which  is ordered by role and then by name and is therefore stable between calls. (optional)     - parameter filterValue: (query) Keeps only the entries whose displayed name contains this text. An invitation that has not been accepted yet  is listed under the email address it was sent to, so that is what has to be searched for. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomSecurityInfo(id: Int, filterType: ShareFilterType? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getRoomSecurityInfoWithRequestBuilder(id: id, filterType: filterType, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room access rights
     
     See also:
     REST API Reference for getRoomSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
     
     - GET /api/2.0/files/rooms/{id}/share
     - Returns one page of the access list of a room: the owner first, then the managers, the groups, the ordinary  members, the guests and finally the invitations nobody has accepted yet, with the total in the response  headers. `filterType` selects what is listed and defaults to accounts and groups, which leaves the sharing  links of the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. `filterValue` matches the  displayed name of the subject, and an invitation that is still pending is listed under the email address it  was sent to. Paging is done with `count` and `startIndex`, and the order is stable between calls. Any member  who can read the room sees the accounts and the groups, so the list is not limited to the managers, and portal  administrators can read the list of a room they were never invited to; somebody who is not in the room at all  is refused. Asking for the link entries instead needs the right to see the links of the room, and a member  without it gets an empty page rather than an error.
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
     - parameter id: (path) The room whose access list is read, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter filterType: (query) What kind of access entries to list. The default covers accounts and groups and leaves the sharing links of  the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. (optional)
     - parameter count: (query) How many entries to return in one answer. The total number of matching entries comes back in the response  headers, so it is what tells the caller whether another page is needed. (optional)
     - parameter startIndex: (query) How many matching entries to skip before the page starts. Together with the page size it walks the list, which  is ordered by role and then by name and is therefore stable between calls. (optional)
     - parameter filterValue: (query) Keeps only the entries whose displayed name contains this text. An invitation that has not been accepted yet  is listed under the email address it was sent to, so that is what has to be searched for. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getRoomSecurityInfoWithRequestBuilder(id: Int, filterType: ShareFilterType? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room access rights (third-party storage)
     
     See also:
     REST API Reference for getRoomSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
     - parameter id: (path) The room whose access list is read, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter filterType: (query) What kind of access entries to list. The default covers accounts and groups and leaves the sharing links of  the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. (optional)     - parameter count: (query) How many entries to return in one answer. The total number of matching entries comes back in the response  headers, so it is what tells the caller whether another page is needed. (optional)     - parameter startIndex: (query) How many matching entries to skip before the page starts. Together with the page size it walks the list, which  is ordered by role and then by name and is therefore stable between calls. (optional)     - parameter filterValue: (query) Keeps only the entries whose displayed name contains this text. An invitation that has not been accepted yet  is listed under the email address it was sent to, so that is what has to be searched for. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomSecurityInfo(id: String, filterType: ShareFilterType? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getRoomSecurityInfoWithRequestBuilder(id: id, filterType: filterType, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room access rights (third-party storage)
     
     See also:
     REST API Reference for getRoomSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
     
     - GET /api/2.0/files/rooms/{id}/share
     - Returns one page of the access list of a room: the owner first, then the managers, the groups, the ordinary  members, the guests and finally the invitations nobody has accepted yet, with the total in the response  headers. `filterType` selects what is listed and defaults to accounts and groups, which leaves the sharing  links of the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. `filterValue` matches the  displayed name of the subject, and an invitation that is still pending is listed under the email address it  was sent to. Paging is done with `count` and `startIndex`, and the order is stable between calls. Any member  who can read the room sees the accounts and the groups, so the list is not limited to the managers, and portal  administrators can read the list of a room they were never invited to; somebody who is not in the room at all  is refused. Asking for the link entries instead needs the right to see the links of the room, and a member  without it gets an empty page rather than an error.
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
     - parameter id: (path) The room whose access list is read, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter filterType: (query) What kind of access entries to list. The default covers accounts and groups and leaves the sharing links of  the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. (optional)
     - parameter count: (query) How many entries to return in one answer. The total number of matching entries comes back in the response  headers, so it is what tells the caller whether another page is needed. (optional)
     - parameter startIndex: (query) How many matching entries to skip before the page starts. Together with the page size it walks the list, which  is ordered by role and then by name and is therefore stable between calls. (optional)
     - parameter filterValue: (query) Keeps only the entries whose displayed name contains this text. An invitation that has not been accepted yet  is listed under the email address it was sent to, so that is what has to be searched for. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getRoomSecurityInfoWithRequestBuilder(id: String, filterType: ShareFilterType? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get available room tags
     
     See also:
     REST API Reference for getRoomTagsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
     - parameter count: (query) How many tag names one page may carry. The answer reports no total, so a page shorter than this is the sign  that the list is exhausted. (optional)     - parameter startIndex: (query) How many tag names to skip before the page begins. Raise it by the number of names already received to read  the next page. (optional)     - parameter filterValue: (query) Keeps only the tag names that contain this text, ignoring case. It is a substring match, so a fragment from  the middle of a name is enough. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: STRINGArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomTagsInfo(count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> STRINGArrayWrapper {
        return try await getRoomTagsInfoWithRequestBuilder(count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get available room tags
     
     See also:
     REST API Reference for getRoomTagsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
     
     - GET /api/2.0/files/tags
     - Returns the custom room tags available to the caller as a flat array of names, not of objects. What the array  holds depends on the account: a portal administrator gets the whole catalog, including tags that no room uses  yet, while every other account gets only the tags attached to rooms it can see, with duplicates removed. An  empty answer therefore means that this caller sees no tagged room, not that the portal has no tags.  `filterValue` keeps the names that contain the given text, ignoring case, while `count` and `startIndex` page  the result; no total is returned, so a page shorter than `count` is the signal that the list is exhausted. The  names are exactly the values accepted by the `tags` filter of `GET api/2.0/files/rooms` and by the room tag  calls, which makes this the call to fill a tag picker with. Add a tag with `POST api/2.0/files/tags` and check  whether one is still in use with `GET api/2.0/files/tags/{tagName}/haslinks`.
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
     - parameter count: (query) How many tag names one page may carry. The answer reports no total, so a page shorter than this is the sign  that the list is exhausted. (optional)
     - parameter startIndex: (query) How many tag names to skip before the page begins. Raise it by the number of names already received to read  the next page. (optional)
     - parameter filterValue: (query) Keeps only the tag names that contain this text, ignoring case. It is a substring match, so a fragment from  the middle of a name is enough. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<STRINGArrayWrapper> 
     */
    open class func getRoomTagsInfoWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<STRINGArrayWrapper> {
        let localVariablePath = "/api/2.0/files/tags"
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

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<STRINGArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room template creation status
     
     See also:
     REST API Reference for getRoomTemplateCreatingStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomTemplateStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomTemplateCreatingStatus(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomTemplateStatusWrapper {
        return try await getRoomTemplateCreatingStatusWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room template creation status
     
     See also:
     REST API Reference for getRoomTemplateCreatingStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/
     
     - GET /api/2.0/files/roomtemplate/status
     - Reports the state of the room template creation the caller started with `POST api/2.0/files/roomtemplate`. The  record is private to the account that started the job: work started by another member is never reported, and a  caller who has started none gets an empty response instead of an object. Poll until `isCompleted` turns true,  then take the identifier of the finished template from `templateId`; a non-empty `error` means the job failed  and no template was kept. Treat `isCompleted` as the completion signal rather than `progress`, which the  background job only sets to 100 once the work is over. The record outlives the job, so a finished operation  can be read again and keeps returning the same identifier until the caller starts another template creation,  which replaces it. The call only reads state and needs no access to the source room or to the template, but it  does require an authenticated caller.
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
     - returns: RequestBuilder<RoomTemplateStatusWrapper> 
     */
    open class func getRoomTemplateCreatingStatusWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomTemplateStatusWrapper> {
        let localVariablePath = "/api/2.0/files/roomtemplate/status"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomTemplateStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get rooms
     
     See also:
     REST API Reference for getRoomsFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
     - parameter type: (query) Keeps only the rooms of the listed kinds. Repeat the parameter to pass more than one value; they are combined  with OR, and omitting it returns the rooms of every kind. (optional)     - parameter subjectId: (query) Keeps only the rooms this account or group has access to, which is how the rooms of one member are listed. The  identifier comes from the portal people and group listings, and the exclude flag turns the filter into its  opposite. (optional)     - parameter subjectOwnerId: (query) Keeps only the rooms created by this account, regardless of who else was invited to them. The identifier comes  from the portal people listing, and the exclude flag turns the filter into its opposite. (optional)     - parameter searchArea: (query) The section to list. Every section is a separate root and a room belongs to exactly one of them at a time, so  archiving a room moves it out of the active section. The default is the active section, which leaves the  form-filling rooms to their own value. (optional)     - parameter withoutTags: (query) When true, keeps only the rooms that carry no tag at all, which is the complement of the tag filter. When  false or omitted, tags play no part in the selection. (optional)     - parameter tags: (query) A JSON array of tag names serialized into a single query value, for example [Important,Legal]. A room  matches when it carries any one of them. Take the names from `GET api/2.0/files/tags`; a name that is not in  the catalog simply matches nothing. (optional)     - parameter excludeSubject: (query) Inverts the two subject filters: when true, the rooms of the named account are the ones left out of the answer  instead of the only ones kept. It does nothing on its own. (optional)     - parameter provider: (query) Keeps only the rooms whose content lives in the named third-party service, for portals where rooms may be  connected to external storage. The default keeps rooms of every origin. (optional)     - parameter quotaFilter: (query) Splits the rooms by whether a storage quota was set on the room itself or it follows the portal default, which  is how rooms with a custom limit are found. (optional)     - parameter storageFilter: (query) Splits the rooms by where their content is stored, in the portal itself or in a connected third-party account.  It is the coarse form of the provider filter. (optional)     - parameter privacyFilter: (query) Splits the rooms by whether they are private, that is encrypted rooms whose content the portal cannot read.  Omitting it returns both kinds. (optional)     - parameter count: (query) How many rooms one page may carry. Ask for the next page by raising the start index by the number of rooms  already received. (optional)     - parameter startIndex: (query) How many matching rooms to skip before the page begins. Page through the answer until the skip plus the rooms  received reaches the total it reports. (optional)     - parameter sortBy: (query) The field to order the rooms by, named as in the file listings: `AZ` for the title, `DateAndTime` for the last  change, `DateAndTimeCreation`, `Author`, `Size`, `Type`, `RoomType`, `Tags`, `UsedSpace`, `LastOpened`. The  name is matched ignoring case, an unknown one is rejected rather than ignored, and the accepted one also  becomes this account's stored order. (optional)     - parameter sortOrder: (query) The direction of the order chosen by the sort field. It has no effect when no sort field is given and the  stored order of the account is used. (optional)     - parameter filterValue: (query) Keeps only the rooms whose title contains this text, ignoring case. It is a substring match over the title  alone: room content and tags are not searched. (optional)     - parameter groupId: (query) Keeps only the rooms that belong to this room group. The identifier comes from `GET api/2.0/files/group`; the  groups of portal members are a different concept and their identifiers do not match here. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsFolder(type: [RoomType]? = nil, subjectId: UUID? = nil, subjectOwnerId: UUID? = nil, searchArea: SearchArea? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, provider: ProviderFilter? = nil, quotaFilter: QuotaFilter? = nil, storageFilter: StorageFilter? = nil, privacyFilter: RoomPrivacyFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, groupId: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentWrapper {
        return try await getRoomsFolderWithRequestBuilder(type: type, subjectId: subjectId, subjectOwnerId: subjectOwnerId, searchArea: searchArea, withoutTags: withoutTags, tags: tags, excludeSubject: excludeSubject, provider: provider, quotaFilter: quotaFilter, storageFilter: storageFilter, privacyFilter: privacyFilter, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, groupId: groupId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get rooms
     
     See also:
     REST API Reference for getRoomsFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
     
     - GET /api/2.0/files/rooms
     - Lists the rooms of one section of the portal: the active rooms by default, or the archive, the form-filling  section or the room templates, chosen with `searchArea`. The rooms arrive in `folders` while `files` stays  empty, `current` describes the section itself, and `total` counts every room that matched the filters before  paging. A caller sees only the rooms they created or were invited to, while a portal administrator sees all of  them, so an empty answer means nothing is visible to this account rather than nothing exists. The remaining  parameters narrow the same set, by room type, title, tags, member, owner, storage, quota and privacy, and they  combine with each other. Sorting is not free of side effects: a `sortBy` value is also stored as this  account's default order for later listings, and omitting it reuses the stored order. Page the result with  `count` and `startIndex`. Read a single room with `GET api/2.0/files/rooms/{id}`, and create one with  `POST api/2.0/files/rooms`.
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
     - parameter type: (query) Keeps only the rooms of the listed kinds. Repeat the parameter to pass more than one value; they are combined  with OR, and omitting it returns the rooms of every kind. (optional)
     - parameter subjectId: (query) Keeps only the rooms this account or group has access to, which is how the rooms of one member are listed. The  identifier comes from the portal people and group listings, and the exclude flag turns the filter into its  opposite. (optional)
     - parameter subjectOwnerId: (query) Keeps only the rooms created by this account, regardless of who else was invited to them. The identifier comes  from the portal people listing, and the exclude flag turns the filter into its opposite. (optional)
     - parameter searchArea: (query) The section to list. Every section is a separate root and a room belongs to exactly one of them at a time, so  archiving a room moves it out of the active section. The default is the active section, which leaves the  form-filling rooms to their own value. (optional)
     - parameter withoutTags: (query) When true, keeps only the rooms that carry no tag at all, which is the complement of the tag filter. When  false or omitted, tags play no part in the selection. (optional)
     - parameter tags: (query) A JSON array of tag names serialized into a single query value, for example [Important,Legal]. A room  matches when it carries any one of them. Take the names from `GET api/2.0/files/tags`; a name that is not in  the catalog simply matches nothing. (optional)
     - parameter excludeSubject: (query) Inverts the two subject filters: when true, the rooms of the named account are the ones left out of the answer  instead of the only ones kept. It does nothing on its own. (optional)
     - parameter provider: (query) Keeps only the rooms whose content lives in the named third-party service, for portals where rooms may be  connected to external storage. The default keeps rooms of every origin. (optional)
     - parameter quotaFilter: (query) Splits the rooms by whether a storage quota was set on the room itself or it follows the portal default, which  is how rooms with a custom limit are found. (optional)
     - parameter storageFilter: (query) Splits the rooms by where their content is stored, in the portal itself or in a connected third-party account.  It is the coarse form of the provider filter. (optional)
     - parameter privacyFilter: (query) Splits the rooms by whether they are private, that is encrypted rooms whose content the portal cannot read.  Omitting it returns both kinds. (optional)
     - parameter count: (query) How many rooms one page may carry. Ask for the next page by raising the start index by the number of rooms  already received. (optional)
     - parameter startIndex: (query) How many matching rooms to skip before the page begins. Page through the answer until the skip plus the rooms  received reaches the total it reports. (optional)
     - parameter sortBy: (query) The field to order the rooms by, named as in the file listings: `AZ` for the title, `DateAndTime` for the last  change, `DateAndTimeCreation`, `Author`, `Size`, `Type`, `RoomType`, `Tags`, `UsedSpace`, `LastOpened`. The  name is matched ignoring case, an unknown one is rejected rather than ignored, and the accepted one also  becomes this account's stored order. (optional)
     - parameter sortOrder: (query) The direction of the order chosen by the sort field. It has no effect when no sort field is given and the  stored order of the account is used. (optional)
     - parameter filterValue: (query) Keeps only the rooms whose title contains this text, ignoring case. It is a substring match over the title  alone: room content and tags are not searched. (optional)
     - parameter groupId: (query) Keeps only the rooms that belong to this room group. The identifier comes from `GET api/2.0/files/group`; the  groups of portal members are a different concept and their identifiers do not match here. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentWrapper> 
     */
    open class func getRoomsFolderWithRequestBuilder(type: [RoomType]? = nil, subjectId: UUID? = nil, subjectOwnerId: UUID? = nil, searchArea: SearchArea? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, provider: ProviderFilter? = nil, quotaFilter: QuotaFilter? = nil, storageFilter: StorageFilter? = nil, privacyFilter: RoomPrivacyFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, groupId: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentWrapper> {
        let localVariablePath = "/api/2.0/files/rooms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": (wrappedValue: type?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "subjectId": (wrappedValue: subjectId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "subjectOwnerId": (wrappedValue: subjectOwnerId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchArea": (wrappedValue: searchArea?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutTags": (wrappedValue: withoutTags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "tags": (wrappedValue: tags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "provider": (wrappedValue: provider?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "quotaFilter": (wrappedValue: quotaFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "storageFilter": (wrappedValue: storageFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "privacyFilter": (wrappedValue: privacyFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "groupId": (wrappedValue: groupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get new items in all rooms
     
     See also:
     REST API Reference for getRoomsNewItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: NewItemsRoomNewItemsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsNewItems(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NewItemsRoomNewItemsArrayWrapper {
        return try await getRoomsNewItemsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get new items in all rooms
     
     See also:
     REST API Reference for getRoomsNewItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/
     
     - GET /api/2.0/files/rooms/news
     - Collects everything that is marked as new for the caller across the active rooms into one answer, grouped  first by the day an entry changed and then by the room it belongs to. An entry becomes new when somebody else  creates or changes it in a room the caller has already opened, so the caller's own work never shows up here,  and neither does anything from a room they have never visited. Only files are listed: a new subfolder is not  an item, although files created inside it are, at any depth. The days come newest first, and inside a day the  rooms and their files follow the same order by change time. The archive is out of scope, only rooms of the  active section are covered. Reading the list clears nothing: the marks stay until the room itself is opened  with `GET api/2.0/files/rooms/{id}`. An empty array means that this account has nothing new. For one room, use  `GET api/2.0/files/rooms/{id}/news`.
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
     - returns: RequestBuilder<NewItemsRoomNewItemsArrayWrapper> 
     */
    open class func getRoomsNewItemsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NewItemsRoomNewItemsArrayWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/news"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NewItemsRoomNewItemsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room primary external link
     
     See also:
     REST API Reference for getRoomsPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsPrimaryExternalLink(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getRoomsPrimaryExternalLinkWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room primary external link
     
     See also:
     REST API Reference for getRoomsPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
     
     - GET /api/2.0/files/rooms/{id}/link
     - Returns the primary external link of a room, which is the one address meant to be handed out to people outside  the portal. A public room and a form filling room get such a link when they are created, and asking for it  again returns the same link rather than a new one, so the answer is stable. In a room that has no primary link  yet this call creates one instead of reporting nothing, which needs the right to manage the links of the room:  a member invited with a lower level is refused with 403, and so is anybody who is not in the room at all. A  link that was explicitly revoked stays revoked and is reported as missing rather than recreated, and an  unknown room is answered with 404 as well. An archived public room still reports its link. The answer is the  same entry that `GET api/2.0/files/rooms/{id}/links` returns with the primary flag set, including the request  token that has to travel with the address.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getRoomsPrimaryExternalLinkWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the room primary external link (third-party storage)
     
     See also:
     REST API Reference for getRoomsPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsPrimaryExternalLink(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getRoomsPrimaryExternalLinkWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room primary external link (third-party storage)
     
     See also:
     REST API Reference for getRoomsPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
     
     - GET /api/2.0/files/rooms/{id}/link
     - Returns the primary external link of a room, which is the one address meant to be handed out to people outside  the portal. A public room and a form filling room get such a link when they are created, and asking for it  again returns the same link rather than a new one, so the answer is stable. In a room that has no primary link  yet this call creates one instead of reporting nothing, which needs the right to manage the links of the room:  a member invited with a lower level is refused with 403, and so is anybody who is not in the room at all. A  link that was explicitly revoked stays revoked and is reported as missing rather than recreated, and an  unknown room is answered with 404 as well. An archived public room still reports its link. The answer is the  same entry that `GET api/2.0/files/rooms/{id}/links` returns with the primary flag set, including the request  token that has to travel with the address.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getRoomsPrimaryExternalLinkWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check room tag usage
     
     See also:
     REST API Reference for hasTagLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/
     - parameter tagName2: (path) The tag being checked. Send the same value as the `tagName` query parameter, which is the one the handler reads.      - parameter tagName: (query) The tag to check, spelled exactly as it is stored in the catalog. This query value is the one the handler  reads, so the path segment of the same name has to repeat it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hasTagLinks(tagName2: String, tagName: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await hasTagLinksWithRequestBuilder(tagName2: tagName2, tagName: tagName, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check room tag usage
     
     See also:
     REST API Reference for hasTagLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/
     
     - GET /api/2.0/files/tags/{tagName}/haslinks
     - Reports whether any room still carries the named tag, which is the check to run before the tag is deleted from  the catalog. Only a portal administrator may call it, and every other account is refused. The name is matched  exactly against the catalog, and a name that is not in it is answered with 404. That also tells the two ways a  tag stops being used apart: taking the tag off the last room that carried it leaves the tag in the catalog and  turns the answer to false, while deleting that last room removes the tag itself, after which the call answers  404. A true answer means at least one room, active or archived, still references the tag, so deleting it with  `DELETE api/2.0/files/tags` would strip it from those rooms. The handler reads the tag name from the query  string, so the value has to be sent twice: in the path segment and as the `tagName` query parameter.
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
     - parameter tagName2: (path) The tag being checked. Send the same value as the `tagName` query parameter, which is the one the handler reads. 
     - parameter tagName: (query) The tag to check, spelled exactly as it is stored in the catalog. This query value is the one the handler  reads, so the path segment of the same name has to repeat it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func hasTagLinksWithRequestBuilder(tagName2: String, tagName: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/tags/{tagName}/haslinks"
        let tagName2PreEscape = "\(APIHelper.mapValueToPathItem(tagName2))"
        let tagName2PostEscape = tagName2PreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{tagName}", with: tagName2PostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tagName": (wrappedValue: tagName?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Pin a room
     
     See also:
     REST API Reference for pinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func pinRoom(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await pinRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Pin a room
     
     See also:
     REST API Reference for pinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
     
     - PUT /api/2.0/files/rooms/{id}/pin
     - Pins a room to the top of the room list of the calling account and returns the room with the pinned flag set.  Pinning is personal: it changes the order only for the caller, is invisible to the other members of the room,  and does not survive a trip through the Archive section, so an unarchived room has to be pinned again. Pinned  rooms stay above the unpinned ones whatever sorting or filter the listing uses, and their own order between  each other is stable. An account may keep only a limited number of pinned rooms at a time, ten on a portal  with the default configuration, and AI rooms are counted separately against their own allowance; a request  over the limit is refused until something is unpinned with `PUT api/2.0/files/rooms/{id}/unpin`. Pinning a  room that is already pinned changes nothing and is safe to repeat. Anybody who can read the room may pin it,  including guests and portal administrators who were never invited, while somebody who is not in the room is  refused, an archived room is rejected and an unknown room is answered as missing.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func pinRoomWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/pin"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Pin a room (third-party storage)
     
     See also:
     REST API Reference for pinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func pinRoom(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await pinRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Pin a room (third-party storage)
     
     See also:
     REST API Reference for pinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
     
     - PUT /api/2.0/files/rooms/{id}/pin
     - Pins a room to the top of the room list of the calling account and returns the room with the pinned flag set.  Pinning is personal: it changes the order only for the caller, is invisible to the other members of the room,  and does not survive a trip through the Archive section, so an unarchived room has to be pinned again. Pinned  rooms stay above the unpinned ones whatever sorting or filter the listing uses, and their own order between  each other is stable. An account may keep only a limited number of pinned rooms at a time, ten on a portal  with the default configuration, and AI rooms are counted separately against their own allowance; a request  over the limit is refused until something is unpinned with `PUT api/2.0/files/rooms/{id}/unpin`. Pinning a  room that is already pinned changes nothing and is safe to repeat. Anybody who can read the room may pin it,  including guests and portal administrators who were never invited, while somebody who is not in the room is  refused, an archived room is rejected and an unknown room is answered as missing.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func pinRoomWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/pin"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reorder room contents
     
     See also:
     REST API Reference for reorderRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reorderRoom(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await reorderRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reorder room contents
     
     See also:
     REST API Reference for reorderRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
     
     - PUT /api/2.0/files/rooms/{id}/reorder
     - Renumbers the manual order of the items lying directly in a room so that they run from one upwards with no  gaps and no duplicates, and returns the room. The order of the items relative to each other is preserved: only  the numbers are compacted, and nothing is moved, renamed, duplicated or deleted. Files and folders share one  sequence. Nested folders keep their own numbering and are not touched, so each level is compacted on its own.  The operation is meant for a room with indexing turned on, where the manual order is what listings follow; a  room without indexing accepts it and simply has nothing that depends on the result. Running it twice changes  nothing the second time, and an already dense sequence is left as it is, which makes the call safe to retry.  The caller must be a manager of the room; a member invited with any other level is refused, an archived room  is rejected, and an unknown or deleted room is answered as missing.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func reorderRoomWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/reorder"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reorder room contents (third-party storage)
     
     See also:
     REST API Reference for reorderRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reorderRoom(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await reorderRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reorder room contents (third-party storage)
     
     See also:
     REST API Reference for reorderRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
     
     - PUT /api/2.0/files/rooms/{id}/reorder
     - Renumbers the manual order of the items lying directly in a room so that they run from one upwards with no  gaps and no duplicates, and returns the room. The order of the items relative to each other is preserved: only  the numbers are compacted, and nothing is moved, renamed, duplicated or deleted. Files and folders share one  sequence. Nested folders keep their own numbering and are not touched, so each level is compacted on its own.  The operation is meant for a room with indexing turned on, where the manual order is what listings follow; a  room without indexing accepts it and simply has nothing that depends on the result. Running it twice changes  nothing the second time, and an already dense sequence is left as it is, which makes the call safe to retry.  The caller must be a manager of the room; a member invited with any other level is refused, an archived room  is rejected, and an unknown or deleted room is answered as missing.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func reorderRoomWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/reorder"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Resend the room invitations
     
     See also:
     REST API Reference for resendEmailInvitations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
     - parameter id: (path) The room whose invitations are resent, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter userInvitation: (body) Which pending invitations to send again. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resendEmailInvitations(id: Int, userInvitation: UserInvitation, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await resendEmailInvitationsWithRequestBuilder(id: id, userInvitation: userInvitation, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resend the room invitations
     
     See also:
     REST API Reference for resendEmailInvitations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
     
     - POST /api/2.0/files/rooms/{id}/resend
     - Sends the room invitation email again to members who were invited but have not joined yet. `resendAll` covers  every pending invitation of the room and makes `usersIds` irrelevant, while an explicit list without that flag  is limited to the named accounts. An account that has already accepted the invitation, is not a member of the  room, or is invisible to the caller is skipped without an error, and a request that names nobody and does not  set the flag does nothing, so a successful answer never proves that a message went out. Nothing about the room  or its membership changes, and the operation can be repeated. The caller must be a manager of the room, an  archived room is refused, a room template is answered as missing, and a malformed account id is rejected as an  invalid request. The call is rate limited, so a client that loops over members should send one batch instead.  The response carries no body.
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
     - parameter id: (path) The room whose invitations are resent, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter userInvitation: (body) Which pending invitations to send again. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func resendEmailInvitationsWithRequestBuilder(id: Int, userInvitation: UserInvitation, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/resend"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userInvitation, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Resend the room invitations (third-party storage)
     
     See also:
     REST API Reference for resendEmailInvitations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
     - parameter id: (path) The room whose invitations are resent, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter userInvitation: (body) Which pending invitations to send again. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resendEmailInvitations(id: String, userInvitation: UserInvitation, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await resendEmailInvitationsWithRequestBuilder(id: id, userInvitation: userInvitation, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resend the room invitations (third-party storage)
     
     See also:
     REST API Reference for resendEmailInvitations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
     
     - POST /api/2.0/files/rooms/{id}/resend
     - Sends the room invitation email again to members who were invited but have not joined yet. `resendAll` covers  every pending invitation of the room and makes `usersIds` irrelevant, while an explicit list without that flag  is limited to the named accounts. An account that has already accepted the invitation, is not a member of the  room, or is invisible to the caller is skipped without an error, and a request that names nobody and does not  set the flag does nothing, so a successful answer never proves that a message went out. Nothing about the room  or its membership changes, and the operation can be repeated. The caller must be a manager of the room, an  archived room is refused, a room template is answered as missing, and a malformed account id is rejected as an  invalid request. The call is rate limited, so a client that loops over members should send one batch instead.  The response carries no body.
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
     - parameter id: (path) The room whose invitations are resent, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter userInvitation: (body) Which pending invitations to send again. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func resendEmailInvitationsWithRequestBuilder(id: String, userInvitation: UserInvitation, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/resend"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userInvitation, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set room template public access
     
     See also:
     REST API Reference for setPublicSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/
     - parameter setPublicDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setPublicSettings(setPublicDto: SetPublicDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await setPublicSettingsWithRequestBuilder(setPublicDto: setPublicDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set room template public access
     
     See also:
     REST API Reference for setPublicSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/
     
     - PUT /api/2.0/files/roomtemplate/public
     - Switches the room template named by `id` between shared with everyone and private, rewriting its whole  recipient list in the process. With `public` true the Everyone group is granted read access, so every member  allowed to create rooms can build one from the template with `POST api/2.0/files/rooms/fromtemplate`; with  false that access is taken away. In both cases every other account and group the template was shared with —  including the addresses passed as `share` when it was created — loses access, so this is not a way to add a  single recipient to an existing list. Only the account that owns the template may call it: a portal  administrator who does not own it is refused, and so is a member invited to the source room. The identifier  has to resolve to a room template; an ordinary room or an unknown value is answered as missing, and an  identifier below 1 is rejected as an invalid request. Repeating the call with the same value changes nothing,  and nothing is returned; read the current state with `GET api/2.0/files/roomtemplate/{id}/public`.
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
     - parameter setPublicDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func setPublicSettingsWithRequestBuilder(setPublicDto: SetPublicDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/files/roomtemplate/public"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setPublicDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the room external or invitation link
     
     See also:
     REST API Reference for setRoomLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
     - parameter id: (path) The room the link belongs to, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter roomLinkRequest: (body) The link to create, change or revoke. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRoomLink(id: Int, roomLinkRequest: RoomLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setRoomLinkWithRequestBuilder(id: id, roomLinkRequest: roomLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the room external or invitation link
     
     See also:
     REST API Reference for setRoomLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
     
     - PUT /api/2.0/files/rooms/{id}/links
     - Creates, updates or deletes one sharing link of a room and returns it. `linkType` chooses the kind: an  invitation link makes whoever opens it a member with the given access level, while an external link opens the  room without an account. Omitting `linkId` creates a link, passing the id of an existing one updates it, and  an unknown id is created with that id; the kind of an existing link cannot be changed afterwards. An access  level of 0 deletes the link, and deleting the primary external link of a public or form filling room  immediately replaces it with a fresh one, so such a room is never left without one. A room keeps at most one  invitation link, and a second one is refused; form filling rooms take no invitation links, and collaboration,  form filling and virtual data rooms take no external links. An expiration date in the past is dropped silently  for an external link and rejected for an invitation link. `password`, `denyDownload` and `internal` apply to  external links only.
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
     - parameter id: (path) The room the link belongs to, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter roomLinkRequest: (body) The link to create, change or revoke. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setRoomLinkWithRequestBuilder(id: Int, roomLinkRequest: RoomLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: roomLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the room external or invitation link (third-party storage)
     
     See also:
     REST API Reference for setRoomLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
     - parameter id: (path) The room the link belongs to, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter roomLinkRequest: (body) The link to create, change or revoke. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRoomLink(id: String, roomLinkRequest: RoomLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setRoomLinkWithRequestBuilder(id: id, roomLinkRequest: roomLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the room external or invitation link (third-party storage)
     
     See also:
     REST API Reference for setRoomLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
     
     - PUT /api/2.0/files/rooms/{id}/links
     - Creates, updates or deletes one sharing link of a room and returns it. `linkType` chooses the kind: an  invitation link makes whoever opens it a member with the given access level, while an external link opens the  room without an account. Omitting `linkId` creates a link, passing the id of an existing one updates it, and  an unknown id is created with that id; the kind of an existing link cannot be changed afterwards. An access  level of 0 deletes the link, and deleting the primary external link of a public or form filling room  immediately replaces it with a fresh one, so such a room is never left without one. A room keeps at most one  invitation link, and a second one is refused; form filling rooms take no invitation links, and collaboration,  form filling and virtual data rooms take no external links. An expiration date in the past is dropped silently  for an external link and rejected for an invitation link. `password`, `denyDownload` and `internal` apply to  external links only.
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
     - parameter id: (path) The room the link belongs to, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter roomLinkRequest: (body) The link to create, change or revoke. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setRoomLinkWithRequestBuilder(id: String, roomLinkRequest: RoomLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: roomLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the room access rights
     
     See also:
     REST API Reference for setRoomSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
     - parameter id: (path) The room whose membership changes, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter roomInvitationRequest: (body) The membership changes to apply, together with how the people concerned are notified. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomSecurityWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRoomSecurity(id: Int, roomInvitationRequest: RoomInvitationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomSecurityWrapper {
        return try await setRoomSecurityWithRequestBuilder(id: id, roomInvitationRequest: roomInvitationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the room access rights
     
     See also:
     REST API Reference for setRoomSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
     
     - PUT /api/2.0/files/rooms/{id}/share
     - Adds, changes and removes room members in one batch, and returns the resulting access list of the named  subjects. Each entry names either an account or a group of the portal, or the email address of somebody who  has no account yet, together with the access level to grant; an access of 0 removes the subject from the room.  An entry without an access level is ignored, the same subject listed twice keeps the last level, and an empty  list is accepted and changes nothing. The caller must be a manager of the room, so an invitation sent by a  user or a guest is refused, and an account that is a portal user or a guest cannot be made a room manager.  Inviting by email also needs the portal to allow guest invitations. A subject the caller is not allowed to see  is dropped without an error, which is why the answer has to be compared with the request. Removing a member  who still holds a form role is refused through `error` unless `force` is set. `notify` sends the invitation  email with the optional `message`.
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
     - parameter id: (path) The room whose membership changes, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter roomInvitationRequest: (body) The membership changes to apply, together with how the people concerned are notified. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomSecurityWrapper> 
     */
    open class func setRoomSecurityWithRequestBuilder(id: Int, roomInvitationRequest: RoomInvitationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomSecurityWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: roomInvitationRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomSecurityWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the room access rights (third-party storage)
     
     See also:
     REST API Reference for setRoomSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
     - parameter id: (path) The room whose membership changes, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter roomInvitationRequest: (body) The membership changes to apply, together with how the people concerned are notified. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomSecurityWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRoomSecurity(id: String, roomInvitationRequest: RoomInvitationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomSecurityWrapper {
        return try await setRoomSecurityWithRequestBuilder(id: id, roomInvitationRequest: roomInvitationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the room access rights (third-party storage)
     
     See also:
     REST API Reference for setRoomSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
     
     - PUT /api/2.0/files/rooms/{id}/share
     - Adds, changes and removes room members in one batch, and returns the resulting access list of the named  subjects. Each entry names either an account or a group of the portal, or the email address of somebody who  has no account yet, together with the access level to grant; an access of 0 removes the subject from the room.  An entry without an access level is ignored, the same subject listed twice keeps the last level, and an empty  list is accepted and changes nothing. The caller must be a manager of the room, so an invitation sent by a  user or a guest is refused, and an account that is a portal user or a guest cannot be made a room manager.  Inviting by email also needs the portal to allow guest invitations. A subject the caller is not allowed to see  is dropped without an error, which is why the answer has to be compared with the request. Removing a member  who still holds a form role is refused through `error` unless `force` is set. `notify` sends the invitation  email with the optional `message`.
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
     - parameter id: (path) The room whose membership changes, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter roomInvitationRequest: (body) The membership changes to apply, together with how the people concerned are notified. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomSecurityWrapper> 
     */
    open class func setRoomSecurityWithRequestBuilder(id: String, roomInvitationRequest: RoomInvitationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomSecurityWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: roomInvitationRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomSecurityWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start external DB sync
     
     See also:
     REST API Reference for startExternalDbSync Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-external-db-sync/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExternalDbSyncTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startExternalDbSync(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExternalDbSyncTaskWrapper {
        return try await startExternalDbSyncWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start external DB sync
     
     See also:
     REST API Reference for startExternalDbSync Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-external-db-sync/
     
     - POST /api/2.0/files/rooms/{id}/externaldbsync
     - Queues a background job that re-exports the collected data of every original form of a form filling room into  the external database configured for the portal, and returns the job record. The room must be a form filling  room and the caller must be able to edit it, otherwise the call is refused with 403; an unknown room is  answered with 404. The export is not done when the response arrives: poll  `GET api/2.0/files/rooms/{id}/externaldbsync` until `isCompleted` is true, then read `forms` for the per-form  outcome, which stays empty while the job is running. Starting the job again while it is still running returns  the same record instead of a second job, so a retry is safe; a finished job is replaced by the new one. One  job is kept per room. A form whose data cannot be exported does not stop the others: it comes back in `forms`  with `success` false and its own `error`. When the portal has no external database configured the call fails  and nothing is queued.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ExternalDbSyncTaskWrapper> 
     */
    open class func startExternalDbSyncWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ExternalDbSyncTaskWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/externaldbsync"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalDbSyncTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the room index export
     
     See also:
     REST API Reference for startRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startRoomIndexExport(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await startRoomIndexExportWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the room index export
     
     See also:
     REST API Reference for startRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
     
     - POST /api/2.0/files/rooms/{id}/indexexport
     - Queues a background job that builds the index of a virtual data room as a spreadsheet, and answers with the  job record to poll. The room has to be a virtual data room with indexing switched on, and the caller has to be  its manager or a portal administrator; any other kind of room, a room template, and a member invited with a  lower access level are refused, while an unknown room is answered as missing. There is one job per account:  starting an export while an earlier one is still running answers with that earlier record instead of queuing a  second job, and a finished record is replaced by the new one. Poll `GET api/2.0/files/rooms/indexexport` until  `isCompleted` is true, then read `status` to tell a completed job from a failed or cancelled one, and take  `resultFileId` and `resultFileUrl` from the same record. The report is saved as a spreadsheet in the My  documents section of the caller, not in the room. Cancel a running job with  `DELETE api/2.0/files/rooms/indexexport`.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func startRoomIndexExportWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/indexexport"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate the room index export
     
     See also:
     REST API Reference for terminateRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateRoomIndexExport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateRoomIndexExportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the room index export
     
     See also:
     REST API Reference for terminateRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/
     
     - DELETE /api/2.0/files/rooms/indexexport
     - Cancels the room index export of the calling account and drops its job record. No room is named because there  is at most one export per account, so the call always acts on the caller's own job and never on somebody  else's: an account with nothing running gets a successful answer that changes nothing, which makes the call  safe to repeat and makes it useless as a way of stopping an export somebody else started. Afterwards  `GET api/2.0/files/rooms/indexexport` answers with an empty body until a new export is started with  `POST api/2.0/files/rooms/{id}/indexexport`. The cancellation is asynchronous: the background job stops at its  next checkpoint, so one that is already saving the file may still finish, and a report that was written before  the cancellation stays in the My documents section of the caller and has to be deleted as an ordinary file.  The answer carries no body and says nothing about whether an export was running.
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
    open class func terminateRoomIndexExportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/files/rooms/indexexport"
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

    /**
     Unarchive a room
     
     See also:
     REST API Reference for unarchiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unarchiveRoom(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await unarchiveRoomWithRequestBuilder(id: id, archiveRoomRequest: archiveRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unarchive a room
     
     See also:
     REST API Reference for unarchiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
     
     - PUT /api/2.0/files/rooms/{id}/unarchive
     - Queues a background job that moves one room from the Archive section back to the Rooms section, and returns  the operation record of that job. The room becomes writable again with the membership, tags, logo and links it  had before, while the pinned state of its members is not restored and has to be set again with  `PUT api/2.0/files/rooms/{id}/pin`. The caller must be a manager of the room; a member who was only invited to  it is refused, a room template is answered as missing, and a room that was never archived simply stays where  it is. The room is not moved when the response arrives: poll `GET api/2.0/files/fileops` until `finished` is  true, and expect a room that is still archived until then. `deleteAfter` decides only how long the finished  record survives. Calling the operation twice in a row does not corrupt the room, and a deleted or unknown room  id is reported as missing.
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
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func unarchiveRoomWithRequestBuilder(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/unarchive"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: archiveRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Unarchive a room (third-party storage)
     
     See also:
     REST API Reference for unarchiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unarchiveRoom(id: String, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await unarchiveRoomWithRequestBuilder(id: id, archiveRoomRequest: archiveRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unarchive a room (third-party storage)
     
     See also:
     REST API Reference for unarchiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
     
     - PUT /api/2.0/files/rooms/{id}/unarchive
     - Queues a background job that moves one room from the Archive section back to the Rooms section, and returns  the operation record of that job. The room becomes writable again with the membership, tags, logo and links it  had before, while the pinned state of its members is not restored and has to be set again with  `PUT api/2.0/files/rooms/{id}/pin`. The caller must be a manager of the room; a member who was only invited to  it is refused, a room template is answered as missing, and a room that was never archived simply stays where  it is. The room is not moved when the response arrives: poll `GET api/2.0/files/fileops` until `finished` is  true, and expect a room that is still archived until then. `deleteAfter` decides only how long the finished  record survives. Calling the operation twice in a row does not corrupt the room, and a deleted or unknown room  id is reported as missing.
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
     - parameter id: (path) The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter archiveRoomRequest: (body) The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func unarchiveRoomWithRequestBuilder(id: String, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/unarchive"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: archiveRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Unpin a room
     
     See also:
     REST API Reference for unpinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unpinRoom(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await unpinRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unpin a room
     
     See also:
     REST API Reference for unpinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
     
     - PUT /api/2.0/files/rooms/{id}/unpin
     - Removes a room from the pinned group of the calling account and returns the room with the pinned flag cleared.  Only the personal ordering of the caller changes: the room itself, its members, their roles and its contents  are left exactly as they were, and the room stays in the list, simply among the unpinned ones. Unpinning frees  one of the pin slots of the account, which AI rooms count separately, so it is the way out of a refused  `PUT api/2.0/files/rooms/{id}/pin`. Unpinning a room that was never pinned is accepted and changes nothing, so  the call can be repeated safely and its answer does not prove that anything was pinned before. Anybody who can  read the room may unpin it, while somebody who is not in the room at all is refused and an unknown or deleted  room is answered as missing. An archived room cannot be unpinned.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func unpinRoomWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/unpin"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Unpin a room (third-party storage)
     
     See also:
     REST API Reference for unpinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unpinRoom(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await unpinRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unpin a room (third-party storage)
     
     See also:
     REST API Reference for unpinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
     
     - PUT /api/2.0/files/rooms/{id}/unpin
     - Removes a room from the pinned group of the calling account and returns the room with the pinned flag cleared.  Only the personal ordering of the caller changes: the room itself, its members, their roles and its contents  are left exactly as they were, and the room stays in the list, simply among the unpinned ones. Unpinning frees  one of the pin slots of the account, which AI rooms count separately, so it is the way out of a refused  `PUT api/2.0/files/rooms/{id}/pin`. Unpinning a room that was never pinned is accepted and changes nothing, so  the call can be repeated safely and its answer does not prove that anything was pinned before. Anybody who can  read the room may unpin it, while somebody who is not in the room at all is refused and an unknown or deleted  room is answered as missing. An archived room cannot be unpinned.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func unpinRoomWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/unpin"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a room
     
     See also:
     REST API Reference for updateRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
     - parameter id: (path) The room to update, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter updateRoomRequest: (body) The fields to change. Only the properties present in the object are applied, and a property that the object  does not define is rejected instead of being ignored. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateRoom(id: Int, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await updateRoomWithRequestBuilder(id: id, updateRoomRequest: updateRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a room
     
     See also:
     REST API Reference for updateRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
     
     - PUT /api/2.0/files/rooms/{id}
     - Applies a partial change to one room and returns the whole room as it is after it. Only the fields present in  the body are touched, an empty body changes nothing, and a property the body does not define is rejected as an  invalid request instead of being ignored. The caller must be a manager of this room: portal administrators do  not get in without an invitation, and an archived room is refused. `title` is trimmed, sanitised the way a  room title is sanitised at creation, and a blank value is treated as no change. `tags` replaces the whole tag  set and an empty array clears it, an empty `color` restores the default and an empty `cover` removes the  cover. A `quota` of -1 switches the room back to no custom limit, any other negative value restores the portal  default, and a positive one is accepted only while the per-room quota feature is on. Turning `indexing` on  renumbers the room contents. `chatSettings` belongs to an AI room and is rejected anywhere else. Use  `POST api/2.0/files/rooms/{id}/logo` for logo cropping.
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
     - parameter id: (path) The room to update, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter updateRoomRequest: (body) The fields to change. Only the properties present in the object are applied, and a property that the object  does not define is rejected instead of being ignored. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func updateRoomWithRequestBuilder(id: Int, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a room (third-party storage)
     
     See also:
     REST API Reference for updateRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
     - parameter id: (path) The room to update, named by the identifier that `GET api/2.0/files/rooms` reports for it.      - parameter updateRoomRequest: (body) The fields to change. Only the properties present in the object are applied, and a property that the object  does not define is rejected instead of being ignored. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateRoom(id: String, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await updateRoomWithRequestBuilder(id: id, updateRoomRequest: updateRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a room (third-party storage)
     
     See also:
     REST API Reference for updateRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
     
     - PUT /api/2.0/files/rooms/{id}
     - Applies a partial change to one room and returns the whole room as it is after it. Only the fields present in  the body are touched, an empty body changes nothing, and a property the body does not define is rejected as an  invalid request instead of being ignored. The caller must be a manager of this room: portal administrators do  not get in without an invitation, and an archived room is refused. `title` is trimmed, sanitised the way a  room title is sanitised at creation, and a blank value is treated as no change. `tags` replaces the whole tag  set and an empty array clears it, an empty `color` restores the default and an empty `cover` removes the  cover. A `quota` of -1 switches the room back to no custom limit, any other negative value restores the portal  default, and a positive one is accepted only while the per-room quota feature is on. Turning `indexing` on  renumbers the room contents. `chatSettings` belongs to an AI room and is rejected anywhere else. Use  `POST api/2.0/files/rooms/{id}/logo` for logo cropping.
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
     - parameter id: (path) The room to update, named by the identifier that `GET api/2.0/files/rooms` reports for it. 
     - parameter updateRoomRequest: (body) The fields to change. Only the properties present in the object are applied, and a property that the object  does not define is rejected instead of being ignored. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func updateRoomWithRequestBuilder(id: String, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Rename a room tag
     
     See also:
     REST API Reference for updateRoomTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-tag/
     - parameter updateTagRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateRoomTag(updateTagRequestDto: UpdateTagRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await updateRoomTagWithRequestBuilder(updateTagRequestDto: updateTagRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rename a room tag
     
     See also:
     REST API Reference for updateRoomTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-tag/
     
     - PUT /api/2.0/files/tags
     - Renames a custom room tag in the portal catalog. The rename follows the tag everywhere it is used: every room  that carries it keeps it and shows the new name, so nothing has to be re-attached afterwards. Only a portal  administrator may rename a tag, and a room manager who is allowed to create tags is still refused here. The  old name is matched exactly as it is stored rather than searched for, and a name that is not in the catalog is  answered as missing. A new name that another tag already occupies is rejected as an invalid request, because  tag names are unique across the portal; both names must be non-blank and within the published length limit.  The answer is the new name. Stored queries are not updated for the caller: a `tags` filter of  `GET api/2.0/files/rooms` that still names the old value stops matching anything. The catalog is read with  `GET api/2.0/files/tags`.
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
     - parameter updateTagRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func updateRoomTagWithRequestBuilder(updateTagRequestDto: UpdateTagRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/files/tags"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateTagRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a room logo image
     
     See also:
     REST API Reference for uploadRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/
     - parameter file: (form) The image data. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UploadResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadRoomLogo(file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UploadResultWrapper {
        return try await uploadRoomLogoWithRequestBuilder(file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a room logo image
     
     See also:
     REST API Reference for uploadRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/
     
     - POST /api/2.0/files/logos
     - Stores an image in temporary storage and answers with the path to it, which is the first half of setting a  room logo. No room changes here: pass the returned path as `tmpFile` to `POST api/2.0/files/rooms/{id}/logo`,  together with the crop rectangle, to make the image the logo of a room. The image travels as multipart form  data, and the first file part of the request is the one that is used while any other part is ignored. It is  re-encoded to PNG and scaled down to fit 1280 by 1280 pixels, so a larger picture is accepted and shrunk,  while a part that is not a readable image, or one over the portal limit for uploaded images, is refused with  400. Only a room manager or a portal administrator may upload, and everyone else gets 403. Every call produces  a new path, and an image that is never used stays in temporary storage until it is cleaned up, so uploading  twice is harmless.
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
     - parameter file: (form) The image data. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UploadResultWrapper> 
     */
    open class func uploadRoomLogoWithRequestBuilder(file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UploadResultWrapper> {
        let localVariablePath = "/api/2.0/files/logos"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UploadResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension RoomsAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> RoomsAPIApi {
        self.fields = fields
        return self
    }
}
