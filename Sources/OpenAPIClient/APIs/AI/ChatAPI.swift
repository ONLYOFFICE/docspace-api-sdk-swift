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
     Send a message to an existing AI chat
     
     See also:
     REST API Reference for continueChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-chat/
     - parameter chatId: (path) The unique identifier of the existing AI chat session to continue.      - parameter continueChatBody: (body) The message and optional file attachments. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func continueChat(chatId: UUID, continueChatBody: ContinueChatBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await continueChatWithRequestBuilder(chatId: chatId, continueChatBody: continueChatBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send a message to an existing AI chat
     
     See also:
     REST API Reference for continueChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-chat/
     
     - POST /api/2.0/ai/chats/{chatId}/messages
     - Appends a new user message to an existing chat session and streams the AI assistant's response.  The full conversation history of the chat is sent to the AI provider to maintain context.  The response is delivered as a Server-Sent Events (SSE) stream with periodic keep-alive pings.  File references can optionally be attached to provide additional context.
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
     - parameter chatId: (path) The unique identifier of the existing AI chat session to continue. 
     - parameter continueChatBody: (body) The message and optional file attachments. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func continueChatWithRequestBuilder(chatId: UUID, continueChatBody: ContinueChatBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/ai/chats/{chatId}/messages"
        let chatIdPreEscape = "\(APIHelper.mapValueToPathItem(chatId))"
        let chatIdPostEscape = chatIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{chatId}", with: chatIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: continueChatBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete an AI chat
     
     See also:
     REST API Reference for deleteChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-chat/
     - parameter chatId: (path) The unique identifier of the AI chat session to delete. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteChat(chatId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteChatWithRequestBuilder(chatId: chatId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete an AI chat
     
     See also:
     REST API Reference for deleteChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-chat/
     
     - DELETE /api/2.0/ai/chats/{chatId}
     - Permanently deletes an AI chat session along with all of its messages.  Only the chat owner can delete their own chat sessions. This action cannot be undone.
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
     - parameter chatId: (path) The unique identifier of the AI chat session to delete. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteChatWithRequestBuilder(chatId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/ai/chats/{chatId}"
        let chatIdPreEscape = "\(APIHelper.mapValueToPathItem(chatId))"
        let chatIdPostEscape = chatIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{chatId}", with: chatIdPostEscape, options: .literal, range: nil)
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
     Export AI chat messages to a file
     
     See also:
     REST API Reference for exportChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/export-chat/
     - parameter chatId: (path) The unique identifier of the AI chat session to export.      - parameter exportChatRequestBody: (body) The export parameters including destination folder and file title. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func exportChat(chatId: UUID, exportChatRequestBody: ExportChatRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await exportChatWithRequestBuilder(chatId: chatId, exportChatRequestBody: exportChatRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Export AI chat messages to a file
     
     See also:
     REST API Reference for exportChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/export-chat/
     
     - POST /api/2.0/ai/chats/{chatId}/messages/export
     - Exports the entire message history of an AI chat session and saves it as a document in the specified folder.  The exported file is created with the provided title. Only the chat owner can export their own chat sessions.
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
     - parameter chatId: (path) The unique identifier of the AI chat session to export. 
     - parameter exportChatRequestBody: (body) The export parameters including destination folder and file title. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func exportChatWithRequestBuilder(chatId: UUID, exportChatRequestBody: ExportChatRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/ai/chats/{chatId}/messages/export"
        let chatIdPreEscape = "\(APIHelper.mapValueToPathItem(chatId))"
        let chatIdPostEscape = chatIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{chatId}", with: chatIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: exportChatRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get an AI chat by ID
     
     See also:
     REST API Reference for getChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat/
     - parameter chatId: (path) The unique identifier of the AI chat session to retrieve. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChatWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getChat(chatId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChatWrapper {
        return try await getChatWithRequestBuilder(chatId: chatId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get an AI chat by ID
     
     See also:
     REST API Reference for getChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat/
     
     - GET /api/2.0/ai/chats/{chatId}
     - Retrieves the metadata of a single AI chat session, including its title, creation date, and the user who created it.  Only the chat owner can access their own chat sessions.
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
     - parameter chatId: (path) The unique identifier of the AI chat session to retrieve. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChatWrapper> 
     */
    open class func getChatWithRequestBuilder(chatId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChatWrapper> {
        var localVariablePath = "/api/2.0/ai/chats/{chatId}"
        let chatIdPreEscape = "\(APIHelper.mapValueToPathItem(chatId))"
        let chatIdPostEscape = chatIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{chatId}", with: chatIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get available AI models
     
     See also:
     REST API Reference for getChatModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat-models/
     - parameter provider: (query) The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ModelArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getChatModels(provider: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ModelArrayWrapper {
        return try await getChatModelsWithRequestBuilder(provider: provider, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get available AI models
     
     See also:
     REST API Reference for getChatModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat-models/
     
     - GET /api/2.0/ai/chats/models
     - Returns the list of AI models available for chat conversations.  Optionally filters the results to models from a specific provider when the provider query parameter is specified.  Each model entry includes the provider ID, provider display name, and the model identifier.
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
     - parameter provider: (query) The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ModelArrayWrapper> 
     */
    open class func getChatModelsWithRequestBuilder(provider: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ModelArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/chats/models"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "provider": (wrappedValue: provider?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ModelArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get AI chats in a room
     
     See also:
     REST API Reference for getChats Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chats/
     - parameter roomId: (path) The identifier of the room whose AI chat sessions are to be listed.      - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChatArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getChats(roomId: Int, startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChatArrayWrapper {
        return try await getChatsWithRequestBuilder(roomId: roomId, startIndex: startIndex, count: count, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get AI chats in a room
     
     See also:
     REST API Reference for getChats Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chats/
     
     - GET /api/2.0/ai/rooms/{roomId}/chats
     - Returns a paginated list of AI chat sessions that belong to the current user within the specified room.  Supports pagination via the startIndex and count query parameters. The total number of chats is included in the response metadata.
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
     - parameter roomId: (path) The identifier of the room whose AI chat sessions are to be listed. 
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChatArrayWrapper> 
     */
    open class func getChatsWithRequestBuilder(roomId: Int, startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChatArrayWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/chats"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get messages of an AI chat
     
     See also:
     REST API Reference for getMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-messages/
     - parameter chatId: (path) The unique identifier of the AI chat session whose messages are to be listed.      - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: MessageArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMessages(chatId: UUID, startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> MessageArrayWrapper {
        return try await getMessagesWithRequestBuilder(chatId: chatId, startIndex: startIndex, count: count, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get messages of an AI chat
     
     See also:
     REST API Reference for getMessages Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-messages/
     
     - GET /api/2.0/ai/chats/{chatId}/messages
     - Returns a paginated list of messages from an AI chat session owned by the current user.  Each message includes its role (user or assistant), content blocks (text, tool calls, attachments), and timestamp.  Supports pagination via the startIndex and count query parameters. The total number of messages is included in the response metadata.
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
     - parameter chatId: (path) The unique identifier of the AI chat session whose messages are to be listed. 
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<MessageArrayWrapper> 
     */
    open class func getMessagesWithRequestBuilder(chatId: UUID, startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<MessageArrayWrapper> {
        var localVariablePath = "/api/2.0/ai/chats/{chatId}/messages"
        let chatIdPreEscape = "\(APIHelper.mapValueToPathItem(chatId))"
        let chatIdPostEscape = chatIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{chatId}", with: chatIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessageArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get user chat settings for a room
     
     See also:
     REST API Reference for getUserChatsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-chats-settings/
     - parameter roomId: (path) The identifier of the room whose chat settings are to be retrieved. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UserChatSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserChatsSettings(roomId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UserChatSettingsWrapper {
        return try await getUserChatsSettingsWithRequestBuilder(roomId: roomId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user chat settings for a room
     
     See also:
     REST API Reference for getUserChatsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-chats-settings/
     
     - GET /api/2.0/ai/rooms/{roomId}/chats/config
     - Retrieves the current user's personal AI chat preferences for the specified room,  including whether web search is enabled for AI-assisted responses.
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
     - parameter roomId: (path) The identifier of the room whose chat settings are to be retrieved. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UserChatSettingsWrapper> 
     */
    open class func getUserChatsSettingsWithRequestBuilder(roomId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UserChatSettingsWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/chats/config"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserChatSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Submit a tool execution permission decision
     
     See also:
     REST API Reference for providePermission Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/provide-permission/
     - parameter callId: (path) The unique identifier of the pending tool execution call awaiting a permission decision.      - parameter toolDecisionRequestBody: (body) The permission decision parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func providePermission(callId: String, toolDecisionRequestBody: ToolDecisionRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await providePermissionWithRequestBuilder(callId: callId, toolDecisionRequestBody: toolDecisionRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Submit a tool execution permission decision
     
     See also:
     REST API Reference for providePermission Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/provide-permission/
     
     - POST /api/2.0/ai/chats/tool-permissions/{callId}/decision
     - Provides the user's approval or denial decision for a pending MCP (Model Context Protocol) tool execution request.  When an AI assistant attempts to invoke an external tool that requires explicit user consent,  the client receives a permission prompt via the SSE stream. This endpoint is used to submit the user's decision  so that the AI chat session can proceed accordingly.
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
     - parameter callId: (path) The unique identifier of the pending tool execution call awaiting a permission decision. 
     - parameter toolDecisionRequestBody: (body) The permission decision parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func providePermissionWithRequestBuilder(callId: String, toolDecisionRequestBody: ToolDecisionRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/ai/chats/tool-permissions/{callId}/decision"
        let callIdPreEscape = "\(APIHelper.mapValueToPathItem(callId))"
        let callIdPostEscape = callIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{callId}", with: callIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: toolDecisionRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Rename an AI chat
     
     See also:
     REST API Reference for renameChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-chat/
     - parameter chatId: (path) The unique identifier of the AI chat session to rename.      - parameter renameChatBody: (body) The new chat name. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChatWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func renameChat(chatId: UUID, renameChatBody: RenameChatBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChatWrapper {
        return try await renameChatWithRequestBuilder(chatId: chatId, renameChatBody: renameChatBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rename an AI chat
     
     See also:
     REST API Reference for renameChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-chat/
     
     - PUT /api/2.0/ai/chats/{chatId}
     - Updates the display title of an existing AI chat session owned by the current user.  The new name must not exceed 255 characters.
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
     - parameter chatId: (path) The unique identifier of the AI chat session to rename. 
     - parameter renameChatBody: (body) The new chat name. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChatWrapper> 
     */
    open class func renameChatWithRequestBuilder(chatId: UUID, renameChatBody: RenameChatBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChatWrapper> {
        var localVariablePath = "/api/2.0/ai/chats/{chatId}"
        let chatIdPreEscape = "\(APIHelper.mapValueToPathItem(chatId))"
        let chatIdPostEscape = chatIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{chatId}", with: chatIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: renameChatBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update user chat settings for a room
     
     See also:
     REST API Reference for setUserChatsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-user-chats-settings/
     - parameter roomId: (path) The identifier of the room whose chat settings are to be updated.      - parameter setUserChatSettingsRequestBody: (body) The chat settings to apply. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UserChatSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setUserChatsSettings(roomId: Int, setUserChatSettingsRequestBody: SetUserChatSettingsRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UserChatSettingsWrapper {
        return try await setUserChatsSettingsWithRequestBuilder(roomId: roomId, setUserChatSettingsRequestBody: setUserChatSettingsRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update user chat settings for a room
     
     See also:
     REST API Reference for setUserChatsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-user-chats-settings/
     
     - PUT /api/2.0/ai/rooms/{roomId}/chats/config
     - Saves the current user's personal AI chat preferences for the specified room.  Currently supports toggling the web search capability, which allows the AI assistant to search the internet when generating responses.
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
     - parameter roomId: (path) The identifier of the room whose chat settings are to be updated. 
     - parameter setUserChatSettingsRequestBody: (body) The chat settings to apply. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UserChatSettingsWrapper> 
     */
    open class func setUserChatsSettingsWithRequestBuilder(roomId: Int, setUserChatSettingsRequestBody: SetUserChatSettingsRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UserChatSettingsWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/chats/config"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setUserChatSettingsRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserChatSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start a new AI chat
     
     See also:
     REST API Reference for startNewChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-new-chat/
     - parameter roomId: (path) The identifier of the room in which to create the new AI chat session.      - parameter startNewChatBody: (body) The initial message and optional file attachments. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startNewChat(roomId: Int, startNewChatBody: StartNewChatBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await startNewChatWithRequestBuilder(roomId: roomId, startNewChatBody: startNewChatBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start a new AI chat
     
     See also:
     REST API Reference for startNewChat Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-new-chat/
     
     - POST /api/2.0/ai/rooms/{roomId}/chats
     - Creates a new AI chat session within the specified room and sends the initial message to the configured AI provider.  The response is delivered as a Server-Sent Events (SSE) stream containing completion chunks (text deltas, tool calls, tool results, and message lifecycle events)  with periodic keep-alive pings every 5 seconds. File references can be included as context for the AI model.
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
     - parameter roomId: (path) The identifier of the room in which to create the new AI chat session. 
     - parameter startNewChatBody: (body) The initial message and optional file attachments. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func startNewChatWithRequestBuilder(roomId: Int, startNewChatBody: StartNewChatBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/chats"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startNewChatBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
