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
     Delete one attachment
     
     See also:
     REST API Reference for aiAttachmentsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/
     - parameter body: (body) The ID of the attachment to delete, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAttachmentsDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete one attachment
     
     See also:
     REST API Reference for aiAttachmentsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/
     
     - DELETE /api/2.0/ai/attachments/delete
     - Permanently deletes one attachment, whether it is still a draft or already bound to a message. The ID is not validated here, so a malformed one surfaces as an error relayed from storage rather than as a 400, and an ID that does not exist answers success without deleting anything. Deleting a bound attachment leaves the message in place without it. The deletion cannot be undone.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the attachment to delete, as a bare JSON string. 
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete many
     
     See also:
     REST API Reference for aiAttachmentsDeleteMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/
     - parameter requestBody: (body) The IDs of the attachments to delete, as a bare JSON array of strings. 
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
     - Permanently deletes several attachments in one round trip. `ids` is optional and an absent value is treated as an empty list, so a malformed request quietly deletes nothing instead of failing. IDs that do not exist are skipped without being reported, so the answer confirms only that the call was accepted. The deletions cannot be undone.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter requestBody: (body) The IDs of the attachments to delete, as a bare JSON array of strings. 
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get one attachment
     
     See also:
     REST API Reference for aiAttachmentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/
     - parameter body: (body) The ID of the attachment to read, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAttachment
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsGet(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAttachment {
        return try await aiAttachmentsGetWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get one attachment
     
     See also:
     REST API Reference for aiAttachmentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/
     
     - POST /api/2.0/ai/attachments/get
     - Returns one attachment by its ID, whether it is still a draft or already bound to a message. The ID is required and has to be a non-empty string. An ID that no longer exists is not reported as 404: the answer is a null body with status 200, so treat a missing payload as no such attachment. Use `POST api/2.0/ai/attachments/get-many` to read several at once.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the attachment to read, as a bare JSON string. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get many
     
     See also:
     REST API Reference for aiAttachmentsGetMany Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/
     - parameter requestBody: (body) The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position. 
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
     - Returns several attachments in one call, aligned by position with the `ids` that were sent, so the answer can be zipped straight onto the request. An ID that no longer exists leaves its slot empty rather than shortening the list, which is how a caller tells which of them are gone. `ids` has to be present and non-empty - an empty batch is rejected rather than answered with an empty list. Nothing is changed by the call.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter requestBody: (body) The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get suggested questions
     
     See also:
     REST API Reference for aiAttachmentsGetSuggestedQuestions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-suggested-questions/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAttachmentsGetSuggestedQuestions(requestBody: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAttachmentsGetSuggestedQuestionsWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get suggested questions
     
     See also:
     REST API Reference for aiAttachmentsGetSuggestedQuestions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-suggested-questions/
     
     - POST /api/2.0/ai/attachments/suggested-questions
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiAttachmentsGetSuggestedQuestionsWithRequestBuilder(requestBody: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/attachments/suggested-questions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Binds draft attachments to the chat message that owns them, after that message has been persisted, so that deleting the message removes them too. All three of `ids`, `messageId` and `threadId` are required, and the references are verified rather than trusted: an unknown message answers 404, a message that belongs to a different thread answers 400, and attachments that no longer exist answer 404 naming each missing ID. That verification exists because the underlying binding call skips unknown IDs silently, which used to report success for a link that had not happened. Drafts stay unbound until this succeeds.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Stores one file attachment as a draft and returns it, so its ID can be attached to a message later. `input` carries the host `path` - the DocSpace entry ID the AI backend resolves server-side - the text `content` already extracted from that file, the ONLYOFFICE numeric file `type`, and optionally a `title`; the text is what the model reads, so this operation does not open the file itself. Archives are refused outright, whatever their declared name says. Drafts are not bound to a conversation until `POST api/2.0/ai/attachments/link-to-message` is called, so an unlinked draft outlives the round that created it.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Stores several file attachments as drafts in one round trip and returns them in the order they were sent. Each entry is validated exactly as the single-file operation validates its `input`, and the first bad one rejects the whole batch with its index named in the message - nothing is stored. `inputs` has to be present and an array: an absent or null value is a malformed request rather than an empty batch, and only an explicit empty array means no files. Follow up with `POST api/2.0/ai/attachments/link-to-message` to bind the drafts to a message.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
