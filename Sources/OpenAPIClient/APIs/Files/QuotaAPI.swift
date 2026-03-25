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
     Reset the room quota limit
     
     See also:
     REST API Reference for resetRoomQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-room-quota/
     - parameter updateRoomsRoomIdsRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resetRoomQuota(updateRoomsRoomIdsRequestDtoInteger: UpdateRoomsRoomIdsRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerArrayWrapper {
        return try await resetRoomQuotaWithRequestBuilder(updateRoomsRoomIdsRequestDtoInteger: updateRoomsRoomIdsRequestDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reset the room quota limit
     
     See also:
     REST API Reference for resetRoomQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-room-quota/
     
     - PUT /api/2.0/files/rooms/resetquota
     - Resets the quota limit for the rooms with the IDs specified in the request.
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
     - parameter updateRoomsRoomIdsRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerArrayWrapper> 
     */
    open class func resetRoomQuotaWithRequestBuilder(updateRoomsRoomIdsRequestDtoInteger: UpdateRoomsRoomIdsRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/resetquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomsRoomIdsRequestDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change the room quota limit
     
     See also:
     REST API Reference for updateRoomsQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-rooms-quota/
     - parameter updateRoomsQuotaRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateRoomsQuota(updateRoomsQuotaRequestDtoInteger: UpdateRoomsQuotaRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerArrayWrapper {
        return try await updateRoomsQuotaWithRequestBuilder(updateRoomsQuotaRequestDtoInteger: updateRoomsQuotaRequestDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the room quota limit
     
     See also:
     REST API Reference for updateRoomsQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-rooms-quota/
     
     - PUT /api/2.0/files/rooms/roomquota
     - Changes the quota limit for the rooms with the IDs specified in the request.
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
     - parameter updateRoomsQuotaRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerArrayWrapper> 
     */
    open class func updateRoomsQuotaWithRequestBuilder(updateRoomsQuotaRequestDtoInteger: UpdateRoomsQuotaRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/roomquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomsQuotaRequestDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
