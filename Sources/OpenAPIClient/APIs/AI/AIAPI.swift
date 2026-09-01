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
     Approve tool call
     
     See also:
     REST API Reference for aiAiApproveToolCall Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/
     - parameter aiAiApproveToolCallRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiChatEvent
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAiApproveToolCall(aiAiApproveToolCallRequest: AiAiApproveToolCallRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent {
        return try await aiAiApproveToolCallWithRequestBuilder(aiAiApproveToolCallRequest: aiAiApproveToolCallRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Approve tool call
     
     See also:
     REST API Reference for aiAiApproveToolCall Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/
     
     - POST /api/2.0/ai/ai/approve-tool-call
     - Resumes a chat round paused on a tool call. The supplied result is persisted onto the assistant message that issued the call and the stream continues with the augmented history.
     - parameter aiAiApproveToolCallRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiChatEvent> 
     */
    open class func aiAiApproveToolCallWithRequestBuilder(aiAiApproveToolCallRequest: AiAiApproveToolCallRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiChatEvent> {
        let localVariablePath = "/api/2.0/ai/ai/approve-tool-call"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAiApproveToolCallRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiChatEvent>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Deny tool call
     
     See also:
     REST API Reference for aiAiDenyToolCall Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/
     - parameter aiAiToolCallData: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiChatEvent
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAiDenyToolCall(aiAiToolCallData: AiAiToolCallData, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent {
        return try await aiAiDenyToolCallWithRequestBuilder(aiAiToolCallData: aiAiToolCallData, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Deny tool call
     
     See also:
     REST API Reference for aiAiDenyToolCall Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/
     
     - POST /api/2.0/ai/ai/deny-tool-call
     - Denies the pending tool call and resumes the chat immediately, with `User deny tool call` standing in for the tool result.
     - parameter aiAiToolCallData: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiChatEvent> 
     */
    open class func aiAiDenyToolCallWithRequestBuilder(aiAiToolCallData: AiAiToolCallData, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiChatEvent> {
        let localVariablePath = "/api/2.0/ai/ai/deny-tool-call"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAiToolCallData, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiChatEvent>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Regenerate stream
     
     See also:
     REST API Reference for aiAiRegenerateStream Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/
     - parameter aiAiRegenerateStreamRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiChatEvent
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAiRegenerateStream(aiAiRegenerateStreamRequest: AiAiRegenerateStreamRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent {
        return try await aiAiRegenerateStreamWithRequestBuilder(aiAiRegenerateStreamRequest: aiAiRegenerateStreamRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Regenerate stream
     
     See also:
     REST API Reference for aiAiRegenerateStream Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/
     
     - POST /api/2.0/ai/ai/regenerate-stream
     - Re-rolls the last assistant reply in an existing thread: every message after the last user message (the previous reply plus any tool-call hops) is dropped and a fresh reply is streamed against the unchanged prompt. The thread must already exist and no title is generated.
     - parameter aiAiRegenerateStreamRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiChatEvent> 
     */
    open class func aiAiRegenerateStreamWithRequestBuilder(aiAiRegenerateStreamRequest: AiAiRegenerateStreamRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiChatEvent> {
        let localVariablePath = "/api/2.0/ai/ai/regenerate-stream"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAiRegenerateStreamRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiChatEvent>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Send
     
     See also:
     REST API Reference for aiAiSend Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/
     - parameter aiAiSendRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiThreadMessageLike
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAiSend(aiAiSendRequest: AiAiSendRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadMessageLike {
        return try await aiAiSendWithRequestBuilder(aiAiSendRequest: aiAiSendRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send
     
     See also:
     REST API Reference for aiAiSend Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/
     
     - POST /api/2.0/ai/ai/send
     - Runs one AI action: the profile bound to `actionType` (falling back to the `Default` slot) is dispatched against a single-message history. Nothing is persisted - no thread, no title generation, no storage writes.
     - parameter aiAiSendRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThreadMessageLike> 
     */
    open class func aiAiSendWithRequestBuilder(aiAiSendRequest: AiAiSendRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThreadMessageLike> {
        let localVariablePath = "/api/2.0/ai/ai/send"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAiSendRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThreadMessageLike>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Send custom
     
     See also:
     REST API Reference for aiAiSendCustom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/
     - parameter aiAiSendCustomRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiThreadMessageLike
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAiSendCustom(aiAiSendCustomRequest: AiAiSendCustomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadMessageLike {
        return try await aiAiSendCustomWithRequestBuilder(aiAiSendCustomRequest: aiAiSendCustomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send custom
     
     See also:
     REST API Reference for aiAiSendCustom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/
     
     - POST /api/2.0/ai/ai/send-custom
     - Runs a free-form one-turn call against a caller-supplied system prompt. No thread, no history and no persistence. The profile is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot.
     - parameter aiAiSendCustomRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiThreadMessageLike> 
     */
    open class func aiAiSendCustomWithRequestBuilder(aiAiSendCustomRequest: AiAiSendCustomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiThreadMessageLike> {
        let localVariablePath = "/api/2.0/ai/ai/send-custom"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAiSendCustomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiThreadMessageLike>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Send with stream
     
     See also:
     REST API Reference for aiAiSendWithStream Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/
     - parameter aiAiSendStreamBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiChatEvent
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAiSendWithStream(aiAiSendStreamBody: AiAiSendStreamBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent {
        return try await aiAiSendWithStreamWithRequestBuilder(aiAiSendStreamBody: aiAiSendStreamBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send with stream
     
     See also:
     REST API Reference for aiAiSendWithStream Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/
     
     - POST /api/2.0/ai/ai/send-with-stream
     - Starts a chat round and streams it back as newline-delimited `ChatEvent` objects. The thread is opened or created, the user message and the reply are persisted, a new thread gets a generated title, and a tool call pauses the round until it is approved or denied.
     - parameter aiAiSendStreamBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiChatEvent> 
     */
    open class func aiAiSendWithStreamWithRequestBuilder(aiAiSendStreamBody: AiAiSendStreamBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiChatEvent> {
        let localVariablePath = "/api/2.0/ai/ai/send-with-stream"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAiSendStreamBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiChatEvent>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Send with stream open ai
     
     See also:
     REST API Reference for aiAiSendWithStreamOpenAI Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/
     - parameter aiAiSendStreamBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiOpenAIStreamChunk
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAiSendWithStreamOpenAI(aiAiSendStreamBody: AiAiSendStreamBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiOpenAIStreamChunk {
        return try await aiAiSendWithStreamOpenAIWithRequestBuilder(aiAiSendStreamBody: aiAiSendStreamBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send with stream open ai
     
     See also:
     REST API Reference for aiAiSendWithStreamOpenAI Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/
     
     - POST /api/2.0/ai/ai/send-with-stream-openai
     - The same chat round as `send-with-stream`, re-encoded as an OpenAI Chat Completions stream of `chat.completion.chunk` objects. Storage, title generation and tool-call pauses are identical - only the wire shape differs; a tool call ends the stream with `finish_reason: tool_calls`.
     - parameter aiAiSendStreamBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiOpenAIStreamChunk> 
     */
    open class func aiAiSendWithStreamOpenAIWithRequestBuilder(aiAiSendStreamBody: AiAiSendStreamBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiOpenAIStreamChunk> {
        let localVariablePath = "/api/2.0/ai/ai/send-with-stream-openai"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAiSendStreamBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiOpenAIStreamChunk>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
