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
     
     See also:
     REST API Reference for addRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
     - parameter id: (path) The room Id.      - parameter batchTagsRequestDto: (body) The parameters for managing tags. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addRoomTags(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await addRoomTagsWithRequestBuilder(id: id, batchTagsRequestDto: batchTagsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for addRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
     
     - PUT /api/2.0/files/rooms/{id}/tags
     - parameter id: (path) The room Id. 
     - parameter batchTagsRequestDto: (body) The parameters for managing tags. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func addRoomTagsWithRequestBuilder(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for archiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
     - parameter id: (path) The room ID.      - parameter archiveRoomRequest: (body) The parameters for archiving a room. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func archiveRoom(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await archiveRoomWithRequestBuilder(id: id, archiveRoomRequest: archiveRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for archiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
     
     - PUT /api/2.0/files/rooms/{id}/archive
     - parameter id: (path) The room ID. 
     - parameter archiveRoomRequest: (body) The parameters for archiving a room. (optional)
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for changeRoomCover Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
     - parameter id: (path) The room ID.      - parameter coverRequestDto: (body) The request parameters to change the room cover. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeRoomCover(id: Int, coverRequestDto: CoverRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await changeRoomCoverWithRequestBuilder(id: id, coverRequestDto: coverRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for changeRoomCover Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
     
     - POST /api/2.0/files/rooms/{id}/cover
     - parameter id: (path) The room ID. 
     - parameter coverRequestDto: (body) The request parameters to change the room cover. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func changeRoomCoverWithRequestBuilder(id: Int, coverRequestDto: CoverRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for createRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
     - parameter createRoomRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoom(createRoomRequestDto: CreateRoomRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await createRoomWithRequestBuilder(createRoomRequestDto: createRoomRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for createRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
     
     - POST /api/2.0/files/rooms
     - parameter createRoomRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func createRoomWithRequestBuilder(createRoomRequestDto: CreateRoomRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/rooms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createRoomRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for createRoomFromTemplate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/
     
     - POST /api/2.0/files/rooms/fromtemplate
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for createRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
     - parameter id: (path) The room ID.      - parameter logoRequest: (body) The logo request parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomLogo(id: Int, logoRequest: LogoRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await createRoomLogoWithRequestBuilder(id: id, logoRequest: logoRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for createRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
     
     - POST /api/2.0/files/rooms/{id}/logo
     - parameter id: (path) The room ID. 
     - parameter logoRequest: (body) The logo request parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func createRoomLogoWithRequestBuilder(id: Int, logoRequest: LogoRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for createRoomTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/
     - parameter createTagRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomTag(createTagRequestDto: CreateTagRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await createRoomTagWithRequestBuilder(createTagRequestDto: createTagRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for createRoomTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/
     
     - POST /api/2.0/files/tags
     - parameter createTagRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func createRoomTagWithRequestBuilder(createTagRequestDto: CreateTagRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        let localVariablePath = "/api/2.0/files/tags"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTagRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for createRoomTemplate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/
     
     - POST /api/2.0/files/roomtemplate
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for createRoomThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
     - parameter id: (path) The ID of the folder in the third-party storage in which the contents of the room will be stored.      - parameter createThirdPartyRoom: (body) The third-party room information. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderStringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createRoomThirdParty(id: String, createThirdPartyRoom: CreateThirdPartyRoom, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderStringWrapper {
        return try await createRoomThirdPartyWithRequestBuilder(id: id, createThirdPartyRoom: createThirdPartyRoom, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for createRoomThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
     
     - POST /api/2.0/files/rooms/thirdparty/{id}
     - parameter id: (path) The ID of the folder in the third-party storage in which the contents of the room will be stored. 
     - parameter createThirdPartyRoom: (body) The third-party room information. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderStringWrapper> 
     */
    open class func createRoomThirdPartyWithRequestBuilder(id: String, createThirdPartyRoom: CreateThirdPartyRoom, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderStringWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderStringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for deleteCustomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/
     
     - DELETE /api/2.0/files/tags
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for deleteRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
     - parameter id: (path) The room ID.      - parameter deleteRoomRequest: (body) The parameters for deleting a room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoom(id: Int, deleteRoomRequest: DeleteRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await deleteRoomWithRequestBuilder(id: id, deleteRoomRequest: deleteRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for deleteRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
     
     - DELETE /api/2.0/files/rooms/{id}
     - parameter id: (path) The room ID. 
     - parameter deleteRoomRequest: (body) The parameters for deleting a room. 
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for deleteRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomLogo(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await deleteRoomLogoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for deleteRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
     
     - DELETE /api/2.0/files/rooms/{id}/logo
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func deleteRoomLogoWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for deleteRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
     - parameter id: (path) The room Id.      - parameter batchTagsRequestDto: (body) The parameters for managing tags. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomTags(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await deleteRoomTagsWithRequestBuilder(id: id, batchTagsRequestDto: batchTagsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for deleteRoomTags Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
     
     - DELETE /api/2.0/files/rooms/{id}/tags
     - parameter id: (path) The room Id. 
     - parameter batchTagsRequestDto: (body) The parameters for managing tags. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func deleteRoomTagsWithRequestBuilder(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getNewRoomItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: NewItemsFileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNewRoomItems(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NewItemsFileEntryBaseArrayWrapper {
        return try await getNewRoomItemsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getNewRoomItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
     
     - GET /api/2.0/files/rooms/{id}/news
     - parameter id: (path) The room ID. 
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getPublicSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
     - parameter id: (path) The room template ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPublicSettings(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await getPublicSettingsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getPublicSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
     
     - GET /api/2.0/files/roomtemplate/{id}/public
     - parameter id: (path) The room template ID. 
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getRoomCovers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/
     
     - GET /api/2.0/files/rooms/covers
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getRoomCreatingStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/
     
     - GET /api/2.0/files/rooms/fromtemplate/status
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/
     
     - GET /api/2.0/files/rooms/indexexport
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getRoomInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomInfo(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await getRoomInfoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getRoomInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
     
     - GET /api/2.0/files/rooms/{id}
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func getRoomInfoWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getRoomLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
     - parameter id: (path) The room ID.      - parameter type: (query) The link type. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomLinks(id: Int, type: LinkType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getRoomLinksWithRequestBuilder(id: id, type: type, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getRoomLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
     
     - GET /api/2.0/files/rooms/{id}/links
     - parameter id: (path) The room ID. 
     - parameter type: (query) The link type. (optional)
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getRoomSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
     - parameter id: (path) The room ID.      - parameter filterType: (query) The filter type of the access rights. (optional)     - parameter count: (query) The number of items to be retrieved or processed. (optional)     - parameter startIndex: (query) The starting index of the items to retrieve in a paginated request. (optional)     - parameter filterValue: (query) The text filter value used for filtering room security information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomSecurityInfo(id: Int, filterType: ShareFilterType? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getRoomSecurityInfoWithRequestBuilder(id: id, filterType: filterType, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getRoomSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
     
     - GET /api/2.0/files/rooms/{id}/share
     - parameter id: (path) The room ID. 
     - parameter filterType: (query) The filter type of the access rights. (optional)
     - parameter count: (query) The number of items to be retrieved or processed. (optional)
     - parameter startIndex: (query) The starting index of the items to retrieve in a paginated request. (optional)
     - parameter filterValue: (query) The text filter value used for filtering room security information. (optional)
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getRoomTagsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
     - parameter count: (query) Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set. (optional)     - parameter startIndex: (query) Represents the starting index from which the tags&#39; information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins. (optional)     - parameter filterValue: (query) Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomTagsInfo(count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectArrayWrapper {
        return try await getRoomTagsInfoWithRequestBuilder(count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getRoomTagsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
     
     - GET /api/2.0/files/tags
     - parameter count: (query) Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set. (optional)
     - parameter startIndex: (query) Represents the starting index from which the tags&#39; information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins. (optional)
     - parameter filterValue: (query) Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectArrayWrapper> 
     */
    open class func getRoomTagsInfoWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectArrayWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ObjectArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getRoomTemplateCreatingStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/
     
     - GET /api/2.0/files/roomtemplate/status
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getRoomsFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
     - parameter type: (query) The filter by room type. (optional)     - parameter subjectId: (query) The filter by user ID. (optional)     - parameter searchArea: (query) The room search area (Active, Archive, Any, Recent by links). (optional)     - parameter withoutTags: (query) Specifies whether to search by tags or not. (optional)     - parameter tags: (query) The tags in the serialized format. (optional)     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)     - parameter provider: (query) The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage). (optional)     - parameter subjectFilter: (query) The filter by user (Owner - 0, Member - 1). (optional)     - parameter quotaFilter: (query) The filter by quota (All - 0, Default - 1, Custom - 2). (optional)     - parameter storageFilter: (query) The filter by storage (None - 0, Internal - 1, ThirdParty - 2). (optional)     - parameter count: (query) Specifies the maximum number of items to retrieve. (optional)     - parameter startIndex: (query) The index from which to start retrieving the room content. (optional)     - parameter sortBy: (query) Specifies the field by which the room content should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text filter value used to refine search or query operations. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsFolder(type: [RoomType]? = nil, subjectId: String? = nil, searchArea: SearchArea? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, provider: ProviderFilter? = nil, subjectFilter: SubjectFilter? = nil, quotaFilter: QuotaFilter? = nil, storageFilter: StorageFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getRoomsFolderWithRequestBuilder(type: type, subjectId: subjectId, searchArea: searchArea, withoutTags: withoutTags, tags: tags, excludeSubject: excludeSubject, provider: provider, subjectFilter: subjectFilter, quotaFilter: quotaFilter, storageFilter: storageFilter, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getRoomsFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
     
     - GET /api/2.0/files/rooms
     - parameter type: (query) The filter by room type. (optional)
     - parameter subjectId: (query) The filter by user ID. (optional)
     - parameter searchArea: (query) The room search area (Active, Archive, Any, Recent by links). (optional)
     - parameter withoutTags: (query) Specifies whether to search by tags or not. (optional)
     - parameter tags: (query) The tags in the serialized format. (optional)
     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)
     - parameter provider: (query) The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage). (optional)
     - parameter subjectFilter: (query) The filter by user (Owner - 0, Member - 1). (optional)
     - parameter quotaFilter: (query) The filter by quota (All - 0, Default - 1, Custom - 2). (optional)
     - parameter storageFilter: (query) The filter by storage (None - 0, Internal - 1, ThirdParty - 2). (optional)
     - parameter count: (query) Specifies the maximum number of items to retrieve. (optional)
     - parameter startIndex: (query) The index from which to start retrieving the room content. (optional)
     - parameter sortBy: (query) Specifies the field by which the room content should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text filter value used to refine search or query operations. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getRoomsFolderWithRequestBuilder(type: [RoomType]? = nil, subjectId: String? = nil, searchArea: SearchArea? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, provider: ProviderFilter? = nil, subjectFilter: SubjectFilter? = nil, quotaFilter: QuotaFilter? = nil, storageFilter: StorageFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/rooms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": (wrappedValue: type?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "subjectId": (wrappedValue: subjectId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchArea": (wrappedValue: searchArea?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutTags": (wrappedValue: withoutTags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "tags": (wrappedValue: tags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "provider": (wrappedValue: provider?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "subjectFilter": (wrappedValue: subjectFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "quotaFilter": (wrappedValue: quotaFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "storageFilter": (wrappedValue: storageFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
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

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getRoomsNewItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/
     
     - GET /api/2.0/files/rooms/news
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getRoomsPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsPrimaryExternalLink(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getRoomsPrimaryExternalLinkWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getRoomsPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
     
     - GET /api/2.0/files/rooms/{id}/link
     - parameter id: (path) The room ID. 
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for pinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func pinRoom(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await pinRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for pinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
     
     - PUT /api/2.0/files/rooms/{id}/pin
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func pinRoomWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for reorderRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reorderRoom(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await reorderRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for reorderRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
     
     - PUT /api/2.0/files/rooms/{id}/reorder
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func reorderRoomWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for resendEmailInvitations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
     - parameter id: (path) The room ID.      - parameter userInvitation: (body) The user invitation parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resendEmailInvitations(id: Int, userInvitation: UserInvitation, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await resendEmailInvitationsWithRequestBuilder(id: id, userInvitation: userInvitation, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for resendEmailInvitations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
     
     - POST /api/2.0/files/rooms/{id}/resend
     - parameter id: (path) The room ID. 
     - parameter userInvitation: (body) The user invitation parameters. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for setPublicSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/
     
     - PUT /api/2.0/files/roomtemplate/public
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for setRoomLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
     - parameter id: (path) The room ID.      - parameter roomLinkRequest: (body) The room link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRoomLink(id: Int, roomLinkRequest: RoomLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setRoomLinkWithRequestBuilder(id: id, roomLinkRequest: roomLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for setRoomLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
     
     - PUT /api/2.0/files/rooms/{id}/links
     - parameter id: (path) The room ID. 
     - parameter roomLinkRequest: (body) The room link parameters. 
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for setRoomSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
     - parameter id: (path) The room ID.      - parameter roomInvitationRequest: (body) The room invitation request. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomSecurityWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRoomSecurity(id: Int, roomInvitationRequest: RoomInvitationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomSecurityWrapper {
        return try await setRoomSecurityWithRequestBuilder(id: id, roomInvitationRequest: roomInvitationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for setRoomSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
     
     - PUT /api/2.0/files/rooms/{id}/share
     - parameter id: (path) The room ID. 
     - parameter roomInvitationRequest: (body) The room invitation request. 
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for startRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startRoomIndexExport(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await startRoomIndexExportWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for startRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
     
     - POST /api/2.0/files/rooms/{id}/indexexport
     - parameter id: (path) The room ID. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for terminateRoomIndexExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/
     
     - DELETE /api/2.0/files/rooms/indexexport
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for unarchiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
     - parameter id: (path) The room ID.      - parameter archiveRoomRequest: (body) The parameters for archiving a room. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unarchiveRoom(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await unarchiveRoomWithRequestBuilder(id: id, archiveRoomRequest: archiveRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for unarchiveRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
     
     - PUT /api/2.0/files/rooms/{id}/unarchive
     - parameter id: (path) The room ID. 
     - parameter archiveRoomRequest: (body) The parameters for archiving a room. (optional)
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for unpinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unpinRoom(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await unpinRoomWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for unpinRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
     
     - PUT /api/2.0/files/rooms/{id}/unpin
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func unpinRoomWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for updateRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
     - parameter id: (path) The room ID.      - parameter updateRoomRequest: (body) The request parameters for updating a room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateRoom(id: Int, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await updateRoomWithRequestBuilder(id: id, updateRoomRequest: updateRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for updateRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
     
     - PUT /api/2.0/files/rooms/{id}
     - parameter id: (path) The room ID. 
     - parameter updateRoomRequest: (body) The request parameters for updating a room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func updateRoomWithRequestBuilder(id: Int, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for uploadRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/
     - parameter formCollection: (form) The image data. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UploadResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadRoomLogo(formCollection: [KeyValuePairStringStringValues]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UploadResultWrapper {
        return try await uploadRoomLogoWithRequestBuilder(formCollection: formCollection, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for uploadRoomLogo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/
     
     - POST /api/2.0/files/logos
     - parameter formCollection: (form) The image data. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UploadResultWrapper> 
     */
    open class func uploadRoomLogoWithRequestBuilder(formCollection: [KeyValuePairStringStringValues]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UploadResultWrapper> {
        let localVariablePath = "/api/2.0/files/logos"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "FormCollection": formCollection?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UploadResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
extension RoomsAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> RoomsAPIApi {
        self.fields = fields
        return self
    }
}
