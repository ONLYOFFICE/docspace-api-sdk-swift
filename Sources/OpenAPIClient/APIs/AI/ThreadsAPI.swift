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
     Append user message
     
     See also:
     REST API Reference for aiThreadsAppendUserMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/
     - parameter aiThreadsAppendUserMessageRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiThreadsAppendUserMessage200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsAppendUserMessage(aiThreadsAppendUserMessageRequest: AiThreadsAppendUserMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadsAppendUserMessage200Response {
        return try await aiThreadsAppendUserMessageWithRequestBuilder(aiThreadsAppendUserMessageRequest: aiThreadsAppendUserMessageRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Append user message
     
     See also:
     REST API Reference for aiThreadsAppendUserMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/
     
     - POST /api/2.0/ai/threads/append-user-message
     - Stores a user message in a thread and bumps its last-edit date so the thread resurfaces at the top of the list. The per-kind attachment cap of the composer is enforced here as well, so a direct API call cannot exceed what the UI allows. Passing `profileId` rebinds the thread to another model, which is how a mid-conversation model switch is recorded. The answer carries the new message's ID; the message is stored as sent and no reply is generated - run a round with `POST api/2.0/ai/ai/send-with-stream` for that.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiThreadsAppendUserMessageRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThreadsAppendUserMessage200Response> 
     */
    open class func aiThreadsAppendUserMessageWithRequestBuilder(aiThreadsAppendUserMessageRequest: AiThreadsAppendUserMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThreadsAppendUserMessage200Response> {
        let localVariablePath = "/api/2.0/ai/threads/append-user-message"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsAppendUserMessageRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThreadsAppendUserMessage200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Clear messages
     
     See also:
     REST API Reference for aiThreadsClearMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/
     - parameter body: (body) The ID of the thread to empty, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsClearMessages(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiThreadsClearMessagesWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Clear messages
     
     See also:
     REST API Reference for aiThreadsClearMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/
     
     - DELETE /api/2.0/ai/threads/clear-messages
     - Removes every message of a thread while keeping the thread, its title and its model binding, and bumps its last-edit date. The messages are gone for good. Unlike `delete` this does not verify that the thread exists, so clearing an unknown `threadId` reports success rather than 404. The answer only confirms the write.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the thread to empty, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiThreadsClearMessagesWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/threads/clear-messages"
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
     Create a chat thread
     
     See also:
     REST API Reference for aiThreadsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/
     - parameter aiThreadsCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiThread
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsCreate(aiThreadsCreateRequest: AiThreadsCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThread {
        return try await aiThreadsCreateWithRequestBuilder(aiThreadsCreateRequest: aiThreadsCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a chat thread
     
     See also:
     REST API Reference for aiThreadsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/
     
     - POST /api/2.0/ai/threads/create
     - Creates a chat thread with a title supplied by the caller and returns it. A scoped thread requires that `entityId` names a room the caller can open, and a model has to resolve for the scope - an explicit `profileId`, or the room's `Chat` assignment - otherwise there is nothing to run the thread against and the call answers 404. In an agent room the agent's own assignment overrides any `profileId` sent with the request, so a thread there always starts on the agent's model. Use `POST api/2.0/ai/threads/open-or-create` instead when the title should be generated from the first user message.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiThreadsCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThread> 
     */
    open class func aiThreadsCreateWithRequestBuilder(aiThreadsCreateRequest: AiThreadsCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThread> {
        let localVariablePath = "/api/2.0/ai/threads/create"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThread>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a chat thread
     
     See also:
     REST API Reference for aiThreadsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
     - parameter body: (body) The ID of the thread to delete, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiThreadsDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a chat thread
     
     See also:
     REST API Reference for aiThreadsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
     
     - DELETE /api/2.0/ai/threads/delete
     - Deletes a thread together with every message in it. The thread has to exist: unlike the other operations that take a `threadId`, this one checks first and answers 404 for an unknown or already-deleted thread rather than reporting success. The deletion is permanent and the messages cannot be recovered. To empty a thread but keep it, use `DELETE api/2.0/ai/threads/clear-messages`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the thread to delete, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiThreadsDeleteWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/threads/delete"
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
     Delete message
     
     See also:
     REST API Reference for aiThreadsDeleteMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/
     - parameter body: (body) The ID of the message to delete, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsDeleteMessage(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiThreadsDeleteMessageWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete message
     
     See also:
     REST API Reference for aiThreadsDeleteMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/
     
     - DELETE /api/2.0/ai/threads/delete-message
     - Deletes one message and leaves the rest of the thread untouched. `messageId` is required and may be sent either in the body or as a query parameter. An unknown ID is not reported: the call answers success without having deleted anything, so verify with `GET api/2.0/ai/threads/read-messages` when it matters. The deletion is permanent.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the message to delete, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiThreadsDeleteMessageWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/threads/delete-message"
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
     Get a chat thread
     
     See also:
     REST API Reference for aiThreadsGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/
     - parameter threadId: (query) The chat thread identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiThread
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsGetById(threadId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThread {
        return try await aiThreadsGetByIdWithRequestBuilder(threadId: threadId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a chat thread
     
     See also:
     REST API Reference for aiThreadsGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/
     
     - GET /api/2.0/ai/threads/get-by-id
     - Returns one thread by its ID, without its messages - read those with `GET api/2.0/ai/threads/read-messages`. `threadId` is required and an unknown one answers 404, so the result is never an empty body. The answer carries the thread's title, its model binding and its last-edit date. This is a read-only operation and does not bump that date.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter threadId: (query) The chat thread identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThread> 
     */
    open class func aiThreadsGetByIdWithRequestBuilder(threadId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThread> {
        let localVariablePath = "/api/2.0/ai/threads/get-by-id"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "threadId": (wrappedValue: threadId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThread>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get one chat message
     
     See also:
     REST API Reference for aiThreadsGetMessageById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/
     - parameter messageId: (query) The globally unique chat message identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiThreadMessageLike
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsGetMessageById(messageId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadMessageLike {
        return try await aiThreadsGetMessageByIdWithRequestBuilder(messageId: messageId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get one chat message
     
     See also:
     REST API Reference for aiThreadsGetMessageById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/
     
     - GET /api/2.0/ai/threads/get-message-by-id
     - Returns one message by its ID, wherever it sits, without needing the thread it belongs to. `messageId` is required. Unlike `GET api/2.0/ai/threads/get-by-id` an unknown ID is not reported as 404: the answer is an empty body with status 200, so a client has to treat a missing payload as no such message. Message IDs come from the thread history or from the answer of `POST api/2.0/ai/threads/append-user-message`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter messageId: (query) The globally unique chat message identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThreadMessageLike> 
     */
    open class func aiThreadsGetMessageByIdWithRequestBuilder(messageId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThreadMessageLike> {
        let localVariablePath = "/api/2.0/ai/threads/get-message-by-id"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "messageId": (wrappedValue: messageId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThreadMessageLike>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List chat threads
     
     See also:
     REST API Reference for aiThreadsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)     - parameter count: (query) The maximum number of items to return in one page. (optional)     - parameter cursor: (query) The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)     - parameter query: (query) The full-text query the thread list is filtered by. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiThread]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsList(entityId: String? = nil, count: Int? = nil, cursor: String? = nil, query: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiThread] {
        return try await aiThreadsListWithRequestBuilder(entityId: entityId, count: count, cursor: cursor, query: query, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List chat threads
     
     See also:
     REST API Reference for aiThreadsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
     
     - GET /api/2.0/ai/threads/list
     - Lists the threads of a scope, most recently edited first, and searches their titles case-insensitively when `query` is given. Every parameter is optional: omitting `entityId` lists the global scope, and omitting `count` lets the engine apply its own page size. Pagination is by cursor, and the cursor is a JSON object passed as a string in the query - `{id: <last thread id>, lastEditDate: <its date>}` - taken from the last entry of the previous page. A cursor that is not valid JSON, or that lacks an `id`, is ignored rather than rejected, and the read silently starts from the first page again.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter count: (query) The maximum number of items to return in one page. (optional)
     - parameter cursor: (query) The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)
     - parameter query: (query) The full-text query the thread list is filtered by. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiThread]> 
     */
    open class func aiThreadsListWithRequestBuilder(entityId: String? = nil, count: Int? = nil, cursor: String? = nil, query: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiThread]> {
        let localVariablePath = "/api/2.0/ai/threads/list"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "cursor": (wrappedValue: cursor?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "query": (wrappedValue: query?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiThread]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Open or create
     
     See also:
     REST API Reference for aiThreadsOpenOrCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/
     - parameter aiThreadsOpenOrCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiOpenOrCreateResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsOpenOrCreate(aiThreadsOpenOrCreateRequest: AiThreadsOpenOrCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiOpenOrCreateResult {
        return try await aiThreadsOpenOrCreateWithRequestBuilder(aiThreadsOpenOrCreateRequest: aiThreadsOpenOrCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Open or create
     
     See also:
     REST API Reference for aiThreadsOpenOrCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/
     
     - POST /api/2.0/ai/threads/open-or-create
     - Opens a chat thread and returns it with its history, or creates one whose title is generated from the first message supplied in the request. That first message is not persisted: follow up with `POST api/2.0/ai/threads/append-user-message` to store it, or start the round directly with `POST api/2.0/ai/ai/send-with-stream`. Unlike `create` this takes a whole resolved `profile` object rather than an ID, and a request without one answers 404 because no model could be bound. A supplied `entityId` has to be a room the caller can open; anything that is not an agent room folds to the global scope instead of being rejected.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiThreadsOpenOrCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiOpenOrCreateResult> 
     */
    open class func aiThreadsOpenOrCreateWithRequestBuilder(aiThreadsOpenOrCreateRequest: AiThreadsOpenOrCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiOpenOrCreateResult> {
        let localVariablePath = "/api/2.0/ai/threads/open-or-create"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsOpenOrCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiOpenOrCreateResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Read messages
     
     See also:
     REST API Reference for aiThreadsReadMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/
     - parameter threadId: (query) The chat thread identifier.      - parameter count: (query) The maximum number of items to return in one page. (optional)     - parameter cursor: (query) The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)     - parameter direction: (query) The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiThreadMessageLike]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsReadMessages(threadId: String, count: Int? = nil, cursor: String? = nil, direction: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiThreadMessageLike] {
        return try await aiThreadsReadMessagesWithRequestBuilder(threadId: threadId, count: count, cursor: cursor, direction: direction, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Read messages
     
     See also:
     REST API Reference for aiThreadsReadMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/
     
     - GET /api/2.0/ai/threads/read-messages
     - Reads the messages of one thread, oldest first, with the same string-encoded JSON cursor as the thread list. `direction` turns the read around, and only the exact value `desc` does so - anything else, including a misspelling, reads forward. Omitting `threadId` is not an error: the call answers 200 with an empty list, so an empty result does not distinguish a thread with no messages from a request that forgot the ID. A malformed cursor is ignored and the read starts from the beginning.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter threadId: (query) The chat thread identifier. 
     - parameter count: (query) The maximum number of items to return in one page. (optional)
     - parameter cursor: (query) The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)
     - parameter direction: (query) The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiThreadMessageLike]> 
     */
    open class func aiThreadsReadMessagesWithRequestBuilder(threadId: String, count: Int? = nil, cursor: String? = nil, direction: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiThreadMessageLike]> {
        let localVariablePath = "/api/2.0/ai/threads/read-messages"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "threadId": (wrappedValue: threadId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "cursor": (wrappedValue: cursor?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "direction": (wrappedValue: direction?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiThreadMessageLike]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Regenerate title
     
     See also:
     REST API Reference for aiThreadsRegenerateTitle Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
     - parameter aiThreadsRegenerateTitleRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiThreadsRegenerateTitle200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsRegenerateTitle(aiThreadsRegenerateTitleRequest: AiThreadsRegenerateTitleRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadsRegenerateTitle200Response {
        return try await aiThreadsRegenerateTitleWithRequestBuilder(aiThreadsRegenerateTitleRequest: aiThreadsRegenerateTitleRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Regenerate title
     
     See also:
     REST API Reference for aiThreadsRegenerateTitle Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
     
     - POST /api/2.0/ai/threads/regenerate-title
     - Asks the model to produce a title from the thread's first user message, stores it, and returns the new title. Both `threadId` and a resolved `profile` object are required; a thread with no user message yet has nothing to title and fails. This costs a model call, unlike `POST api/2.0/ai/threads/rename`, which just stores the string it is given. An `entityMeta` sent with the request is only read for its `entityId` hint - the source itself is resolved server-side under the caller's credentials, so a client cannot attribute the call to somebody else's room.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiThreadsRegenerateTitleRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThreadsRegenerateTitle200Response> 
     */
    open class func aiThreadsRegenerateTitleWithRequestBuilder(aiThreadsRegenerateTitleRequest: AiThreadsRegenerateTitleRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThreadsRegenerateTitle200Response> {
        let localVariablePath = "/api/2.0/ai/threads/regenerate-title"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsRegenerateTitleRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThreadsRegenerateTitle200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Rename a chat thread
     
     See also:
     REST API Reference for aiThreadsRename Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/
     - parameter aiThreadsRenameRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsRename(aiThreadsRenameRequest: AiThreadsRenameRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiThreadsRenameWithRequestBuilder(aiThreadsRenameRequest: aiThreadsRenameRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rename a chat thread
     
     See also:
     REST API Reference for aiThreadsRename Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/
     
     - PUT /api/2.0/ai/threads/rename
     - Replaces a thread's title with the one supplied and bumps its last-edit date. Both `threadId` and a title with at least one non-whitespace character are required - a blank title is rejected rather than silently stored, so a thread cannot end up nameless. The answer only confirms the write. To have the model produce a title instead of supplying one, use `POST api/2.0/ai/threads/regenerate-title`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiThreadsRenameRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiThreadsRenameWithRequestBuilder(aiThreadsRenameRequest: AiThreadsRenameRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/threads/rename"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsRenameRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Bump a thread's activity
     
     See also:
     REST API Reference for aiThreadsTouch Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/
     - parameter aiThreadsTouchRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsTouch(aiThreadsTouchRequest: AiThreadsTouchRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiThreadsTouchWithRequestBuilder(aiThreadsTouchRequest: aiThreadsTouchRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Bump a thread's activity
     
     See also:
     REST API Reference for aiThreadsTouch Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/
     
     - POST /api/2.0/ai/threads/touch
     - Bumps a thread's last-edit date without adding a message, which resurfaces it in the list. Passing `profileId` also rebinds the thread to another model, so this is the operation to call when a model switch alone should count as activity. Nothing else about the thread changes and the answer only confirms the write. It is idempotent: repeating it simply moves the date forward again.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiThreadsTouchRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiThreadsTouchWithRequestBuilder(aiThreadsTouchRequest: AiThreadsTouchRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/threads/touch"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsTouchRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update message
     
     See also:
     REST API Reference for aiThreadsUpdateMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/
     - parameter aiThreadsUpdateMessageRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsUpdateMessage(aiThreadsUpdateMessageRequest: AiThreadsUpdateMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiThreadsUpdateMessageWithRequestBuilder(aiThreadsUpdateMessageRequest: aiThreadsUpdateMessageRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update message
     
     See also:
     REST API Reference for aiThreadsUpdateMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/
     
     - PUT /api/2.0/ai/threads/update-message
     - Replaces the content of one stored message, which is how the edit and regenerate flows change a message outside the streaming lifecycle. The whole message is overwritten by the one supplied rather than merged, so send a complete object. Neither the ID nor the payload is validated here, so a malformed request surfaces as an error relayed from storage rather than as a 400. The answer only confirms the write.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiThreadsUpdateMessageRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiThreadsUpdateMessageWithRequestBuilder(aiThreadsUpdateMessageRequest: AiThreadsUpdateMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/threads/update-message"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsUpdateMessageRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension AIThreadsAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> AIThreadsAPIApi {
        self.fields = fields
        return self
    }
}
