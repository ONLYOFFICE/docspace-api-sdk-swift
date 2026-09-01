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
     Delete
     
     See also:
     REST API Reference for aiAttachmentsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAttachmentsDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete
     
     See also:
     REST API Reference for aiAttachmentsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/
     
     - DELETE /api/2.0/ai/attachments/delete
     - Permanently deletes one attachment, whether it is still a draft or already linked to a message.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiAttachmentsDeleteWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/attachments/delete"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete many
     
     See also:
     REST API Reference for aiAttachmentsDeleteMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsDeleteMany(requestBody: [String], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAttachmentsDeleteManyWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete many
     
     See also:
     REST API Reference for aiAttachmentsDeleteMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/
     
     - DELETE /api/2.0/ai/attachments/delete-many
     - Permanently deletes a batch of attachments in a single round trip.
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiAttachmentsDeleteManyWithRequestBuilder(requestBody: [String], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/attachments/delete-many"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get
     
     See also:
     REST API Reference for aiAttachmentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAttachment
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsGet(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAttachment {
        return try await aiAttachmentsGetWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get
     
     See also:
     REST API Reference for aiAttachmentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/
     
     - POST /api/2.0/ai/attachments/get
     - Returns one attachment by identifier.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAttachment> 
     */
    open class func aiAttachmentsGetWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAttachment> {
        let localVariablePath = "/api/2.0/ai/attachments/get"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiAttachment>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get many
     
     See also:
     REST API Reference for aiAttachmentsGetMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiAttachment]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsGetMany(requestBody: [String], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiAttachment] {
        return try await aiAttachmentsGetManyWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get many
     
     See also:
     REST API Reference for aiAttachmentsGetMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/
     
     - POST /api/2.0/ai/attachments/get-many
     - Returns a batch of attachments, preserving the requested order; an identifier that no longer exists comes back empty.
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiAttachment]> 
     */
    open class func aiAttachmentsGetManyWithRequestBuilder(requestBody: [String], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiAttachment]> {
        let localVariablePath = "/api/2.0/ai/attachments/get-many"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiAttachment]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Link to message
     
     See also:
     REST API Reference for aiAttachmentsLinkToMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/
     - parameter aiAttachmentsLinkToMessageRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsLinkToMessage(aiAttachmentsLinkToMessageRequest: AiAttachmentsLinkToMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAttachmentsLinkToMessageWithRequestBuilder(aiAttachmentsLinkToMessageRequest: aiAttachmentsLinkToMessageRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Link to message
     
     See also:
     REST API Reference for aiAttachmentsLinkToMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/
     
     - POST /api/2.0/ai/attachments/link-to-message
     - Binds draft attachments to the chat message that owns them, once that message has been persisted, so deleting the message removes them too. Identifiers that no longer exist are skipped.
     - parameter aiAttachmentsLinkToMessageRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiAttachmentsLinkToMessageWithRequestBuilder(aiAttachmentsLinkToMessageRequest: AiAttachmentsLinkToMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/attachments/link-to-message"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAttachmentsLinkToMessageRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Save file
     
     See also:
     REST API Reference for aiAttachmentsSaveFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/
     - parameter aiAttachmentsSaveFileRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAttachment
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsSaveFile(aiAttachmentsSaveFileRequest: AiAttachmentsSaveFileRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAttachment {
        return try await aiAttachmentsSaveFileWithRequestBuilder(aiAttachmentsSaveFileRequest: aiAttachmentsSaveFileRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save file
     
     See also:
     REST API Reference for aiAttachmentsSaveFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/
     
     - POST /api/2.0/ai/attachments/save-file
     - Stores one file attachment as a draft, carrying the host-extracted text of the file. Prefer `save-files-many` when adding several files at once so they land as one round trip.
     - parameter aiAttachmentsSaveFileRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAttachment> 
     */
    open class func aiAttachmentsSaveFileWithRequestBuilder(aiAttachmentsSaveFileRequest: AiAttachmentsSaveFileRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAttachment> {
        let localVariablePath = "/api/2.0/ai/attachments/save-file"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAttachmentsSaveFileRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiAttachment>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Save files many
     
     See also:
     REST API Reference for aiAttachmentsSaveFilesMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/
     - parameter aiAttachmentsSaveFilesManyRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiAttachment]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsSaveFilesMany(aiAttachmentsSaveFilesManyRequest: AiAttachmentsSaveFilesManyRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiAttachment] {
        return try await aiAttachmentsSaveFilesManyWithRequestBuilder(aiAttachmentsSaveFilesManyRequest: aiAttachmentsSaveFilesManyRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save files many
     
     See also:
     REST API Reference for aiAttachmentsSaveFilesMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/
     
     - POST /api/2.0/ai/attachments/save-files-many
     - Stores a batch of file attachments as drafts in a single round trip. The returned records keep the order of the input.
     - parameter aiAttachmentsSaveFilesManyRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiAttachment]> 
     */
    open class func aiAttachmentsSaveFilesManyWithRequestBuilder(aiAttachmentsSaveFilesManyRequest: AiAttachmentsSaveFilesManyRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiAttachment]> {
        let localVariablePath = "/api/2.0/ai/attachments/save-files-many"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAttachmentsSaveFilesManyRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiAttachment]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
