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
     - returns: AiThreadMessageLike
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsAppendUserMessage(aiThreadsAppendUserMessageRequest: AiThreadsAppendUserMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadMessageLike {
        return try await aiThreadsAppendUserMessageWithRequestBuilder(aiThreadsAppendUserMessageRequest: aiThreadsAppendUserMessageRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Append user message
     
     See also:
     REST API Reference for aiThreadsAppendUserMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/
     
     - POST /api/2.0/ai/threads/append-user-message
     - Persists a user message in a thread and bumps the thread's last-edit date so it resurfaces in the sidebar. Optionally rebinds the thread to another profile when the model changed mid-conversation.
     - parameter aiThreadsAppendUserMessageRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThreadMessageLike> 
     */
    open class func aiThreadsAppendUserMessageWithRequestBuilder(aiThreadsAppendUserMessageRequest: AiThreadsAppendUserMessageRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThreadMessageLike> {
        let localVariablePath = "/api/2.0/ai/threads/append-user-message"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsAppendUserMessageRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThreadMessageLike>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Clear messages
     
     See also:
     REST API Reference for aiThreadsClearMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/
     - parameter body: (body)  
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
     - Drops every message of a thread while keeping the thread itself, and bumps its last-edit date.
     - parameter body: (body)  
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Create
     
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
     Create
     
     See also:
     REST API Reference for aiThreadsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/
     
     - POST /api/2.0/ai/threads/create
     - Creates a chat thread with a caller-supplied title. Use `open-or-create` instead when the title should be generated from the first user message.
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete
     
     See also:
     REST API Reference for aiThreadsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiThreadsDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete
     
     See also:
     REST API Reference for aiThreadsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
     
     - DELETE /api/2.0/ai/threads/delete
     - Deletes a chat thread together with its messages.
     - parameter body: (body)  
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete message
     
     See also:
     REST API Reference for aiThreadsDeleteMessage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/
     - parameter body: (body)  
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
     - Deletes one chat message, leaving the rest of the thread untouched.
     - parameter body: (body)  
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get by id
     
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
     Get by id
     
     See also:
     REST API Reference for aiThreadsGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/
     
     - GET /api/2.0/ai/threads/get-by-id
     - Returns one chat thread, or an empty result when the identifier is unknown.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get message by id
     
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
     Get message by id
     
     See also:
     REST API Reference for aiThreadsGetMessageById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/
     
     - GET /api/2.0/ai/threads/get-message-by-id
     - Returns one chat message by its globally unique identifier.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List
     
     See also:
     REST API Reference for aiThreadsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)     - parameter count: (query) The maximum number of items to return in one page. (optional)     - parameter cursor: (query) The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)     - parameter query: (query) The full-text query the thread list is filtered by. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiThread]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsList(entityId: String? = nil, count: String? = nil, cursor: String? = nil, query: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiThread] {
        return try await aiThreadsListWithRequestBuilder(entityId: entityId, count: count, cursor: cursor, query: query, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List
     
     See also:
     REST API Reference for aiThreadsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
     
     - GET /api/2.0/ai/threads/list
     - Lists the chat threads of the scope, most recently edited first. Supports cursor pagination and a server-side case-insensitive title search.
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter count: (query) The maximum number of items to return in one page. (optional)
     - parameter cursor: (query) The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)
     - parameter query: (query) The full-text query the thread list is filtered by. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiThread]> 
     */
    open class func aiThreadsListWithRequestBuilder(entityId: String? = nil, count: String? = nil, cursor: String? = nil, query: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiThread]> {
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Opens a chat thread and returns its history, or creates one with a title generated from the supplied first message. That first message is not persisted - the caller decides whether to follow up with `append-user-message`.
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
    open class func aiThreadsReadMessages(threadId: String, count: String? = nil, cursor: String? = nil, direction: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiThreadMessageLike] {
        return try await aiThreadsReadMessagesWithRequestBuilder(threadId: threadId, count: count, cursor: cursor, direction: direction, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Read messages
     
     See also:
     REST API Reference for aiThreadsReadMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/
     
     - GET /api/2.0/ai/threads/read-messages
     - Reads the messages of a thread, with the same cursor pagination as the thread list.
     - parameter threadId: (query) The chat thread identifier. 
     - parameter count: (query) The maximum number of items to return in one page. (optional)
     - parameter cursor: (query) The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)
     - parameter direction: (query) The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiThreadMessageLike]> 
     */
    open class func aiThreadsReadMessagesWithRequestBuilder(threadId: String, count: String? = nil, cursor: String? = nil, direction: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiThreadMessageLike]> {
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Regenerate title
     
     See also:
     REST API Reference for aiThreadsRegenerateTitle Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
     - parameter aiThreadsRegenerateTitleRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiThreadsRegenerateTitle(aiThreadsRegenerateTitleRequest: AiThreadsRegenerateTitleRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> String {
        return try await aiThreadsRegenerateTitleWithRequestBuilder(aiThreadsRegenerateTitleRequest: aiThreadsRegenerateTitleRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Regenerate title
     
     See also:
     REST API Reference for aiThreadsRegenerateTitle Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
     
     - POST /api/2.0/ai/threads/regenerate-title
     - Generates a fresh title from the thread's first user message and persists it. Fails when the thread has no user message yet.
     - parameter aiThreadsRegenerateTitleRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<String> 
     */
    open class func aiThreadsRegenerateTitleWithRequestBuilder(aiThreadsRegenerateTitleRequest: AiThreadsRegenerateTitleRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<String> {
        let localVariablePath = "/api/2.0/ai/threads/regenerate-title"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiThreadsRegenerateTitleRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Rename
     
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
     Rename
     
     See also:
     REST API Reference for aiThreadsRename Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/
     
     - PUT /api/2.0/ai/threads/rename
     - Renames a chat thread and bumps its last-edit date so the new title shows up in the sidebar.
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Touch
     
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
     Touch
     
     See also:
     REST API Reference for aiThreadsTouch Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/
     
     - POST /api/2.0/ai/threads/touch
     - Bumps a thread's last-edit date, and optionally rebinds it to another profile, when something other than a new message - a model switch, say - should resurface it.
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Replaces the content of a chat message - used by the edit and regenerate flows that change a message outside the streaming lifecycle.
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
extension AIThreadsAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> AIThreadsAPIApi {
        self.fields = fields
        return self
    }
}
