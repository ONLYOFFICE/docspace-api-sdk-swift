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
     Create photo thumbnails
     
     See also:
     REST API Reference for createMemberPhotoThumbnails Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/
     - parameter userid: (path) The user ID.      - parameter thumbnailsRequest: (body) The thumbnail request. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThumbnailsDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createMemberPhotoThumbnails(userid: String, thumbnailsRequest: ThumbnailsRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThumbnailsDataWrapper {
        return try await createMemberPhotoThumbnailsWithRequestBuilder(userid: userid, thumbnailsRequest: thumbnailsRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create photo thumbnails
     
     See also:
     REST API Reference for createMemberPhotoThumbnails Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/
     
     - POST /api/2.0/people/{userid}/photo/thumbnails
     - Creates the user photo thumbnails by coordinates of the original image specified in the request.
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
     - parameter userid: (path) The user ID. 
     - parameter thumbnailsRequest: (body) The thumbnail request. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThumbnailsDataWrapper> 
     */
    open class func createMemberPhotoThumbnailsWithRequestBuilder(userid: String, thumbnailsRequest: ThumbnailsRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThumbnailsDataWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}/photo/thumbnails"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: thumbnailsRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThumbnailsDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a user photo
     
     See also:
     REST API Reference for deleteMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/
     - parameter userid: (path) The user ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThumbnailsDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteMemberPhoto(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThumbnailsDataWrapper {
        return try await deleteMemberPhotoWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a user photo
     
     See also:
     REST API Reference for deleteMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/
     
     - DELETE /api/2.0/people/{userid}/photo
     - Deletes a photo of the user with the ID specified in the request.
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
     - parameter userid: (path) The user ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThumbnailsDataWrapper> 
     */
    open class func deleteMemberPhotoWithRequestBuilder(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThumbnailsDataWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}/photo"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThumbnailsDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a user photo
     
     See also:
     REST API Reference for getMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/
     - parameter userid: (path) The user ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThumbnailsDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMemberPhoto(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThumbnailsDataWrapper {
        return try await getMemberPhotoWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a user photo
     
     See also:
     REST API Reference for getMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/
     
     - GET /api/2.0/people/{userid}/photo
     - Returns a photo of the user with the ID specified in the request.
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
     - parameter userid: (path) The user ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThumbnailsDataWrapper> 
     */
    open class func getMemberPhotoWithRequestBuilder(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThumbnailsDataWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}/photo"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThumbnailsDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a user photo
     
     See also:
     REST API Reference for updateMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/
     - parameter userid: (path) The user ID.      - parameter updatePhotoMemberRequest: (body) The request parameters for updating a photo. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThumbnailsDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateMemberPhoto(userid: String, updatePhotoMemberRequest: UpdatePhotoMemberRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThumbnailsDataWrapper {
        return try await updateMemberPhotoWithRequestBuilder(userid: userid, updatePhotoMemberRequest: updatePhotoMemberRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a user photo
     
     See also:
     REST API Reference for updateMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/
     
     - PUT /api/2.0/people/{userid}/photo
     - Updates a photo of the user with the ID specified in the request.
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
     - parameter userid: (path) The user ID. 
     - parameter updatePhotoMemberRequest: (body) The request parameters for updating a photo. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThumbnailsDataWrapper> 
     */
    open class func updateMemberPhotoWithRequestBuilder(userid: String, updatePhotoMemberRequest: UpdatePhotoMemberRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThumbnailsDataWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}/photo"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updatePhotoMemberRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThumbnailsDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a user photo
     
     See also:
     REST API Reference for uploadMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/
     - parameter userid: (path) The user ID.      - parameter file: (form) The image data.      - parameter autosave: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileUploadResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadMemberPhoto(userid: String, file: URL, autosave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileUploadResultWrapper {
        return try await uploadMemberPhotoWithRequestBuilder(userid: userid, file: file, autosave: autosave, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a user photo
     
     See also:
     REST API Reference for uploadMemberPhoto Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/
     
     - POST /api/2.0/people/{userid}/photo
     - Uploads a photo of the user with the ID specified in the request.
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
     - parameter userid: (path) The user ID. 
     - parameter file: (form) The image data. 
     - parameter autosave: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileUploadResultWrapper> 
     */
    open class func uploadMemberPhotoWithRequestBuilder(userid: String, file: URL, autosave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileUploadResultWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}/photo"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Autosave": autosave?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileUploadResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
