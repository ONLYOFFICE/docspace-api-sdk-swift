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
     - Resumes a chat round that a tool call has paused, and streams the continuation as newline-delimited `ChatEvent` objects. The result supplied in the request is persisted onto the assistant message that issued the call, so the tool is not executed here - the caller runs it and reports the outcome. The round continues against the augmented history and may pause again on a further tool call. Call `POST api/2.0/ai/ai/deny-tool-call` instead to refuse the call and let the model answer without it.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Refuses the tool call a chat round is paused on and resumes it immediately, streaming the continuation as newline-delimited `ChatEvent` objects. The literal `User deny tool call` is persisted in place of the tool result, so the model sees an explicit refusal rather than a missing answer and may reply without the tool or ask for something else. Nothing is executed and no result is accepted from the caller. Use `POST api/2.0/ai/ai/approve-tool-call` to supply a result instead.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Re-rolls the last assistant reply of an existing thread: every message after the last user message - the previous reply and any tool-call hops - is dropped, and a fresh reply is streamed as newline-delimited `ChatEvent` objects against the unchanged prompt. The thread has to exist already, `threadId` is required, and no title is generated. The dropped messages are gone for good, so this is a destructive operation on the thread's tail rather than a retry that keeps both answers. Unlike `send-with-stream` the profile is not verified before the stream opens, so an unusable model surfaces as an error frame inside the 200 rather than as a 4xx.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Run an AI action
     
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
     Run an AI action
     
     See also:
     REST API Reference for aiAiSend Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/
     
     - POST /api/2.0/ai/ai/send
     - Runs one AI action and returns the whole answer as a single JSON document. The model is the profile bound to `actionType`, falling back to the `Default` assignment slot, so this operation accepts no `profileId` of its own. Nothing is persisted - no thread is opened, no message is stored and no title is generated - which makes it the one to use for a stand-alone completion rather than for a conversation. `entityId` and `contextEntityId` set the scope of the round, which decides the workspace context and the custom MCP servers it may reach. For a conversation that keeps its history, use `POST api/2.0/ai/ai/send-with-stream` instead.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Runs a free-form one-turn call against a system prompt supplied in the request, with no thread, no history and nothing persisted. The model is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot. The shape of the answer depends on the body rather than on the route: with `isStream` set it arrives as a newline-delimited stream of chat events, and without it as a single JSON document, so a client has to handle both. Use `POST api/2.0/ai/ai/send` when the prompt should come from the portal's own action configuration instead of from the caller.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Runs one chat round and streams it back as newline-delimited `ChatEvent` objects. Omitting `threadId` opens a new thread, which requires that `entityId` names a room the caller can open and that a profile resolves for it; the user message and the reply are persisted either way, and a new thread also gets a generated title. The model is settled in a fixed order - an agent's assignment in scope overrides everything, then the explicit `profileId`, then the one stored on the thread, then the `Chat` assignment - and the effective profile is checked before the stream opens, so an unknown one fails with 400 rather than as an error buried in a 200. A tool call pauses the round and ends the stream; resume it with `POST api/2.0/ai/ai/approve-tool-call` or `POST api/2.0/ai/ai/deny-tool-call`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Stream a chat in OpenAI format
     
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
     Stream a chat in OpenAI format
     
     See also:
     REST API Reference for aiAiSendWithStreamOpenAI Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/
     
     - POST /api/2.0/ai/ai/send-with-stream-openai
     - The same chat round as `send-with-stream`, re-encoded as a server-sent-events stream of OpenAI `chat.completion.chunk` objects terminated by a `[DONE]` sentinel. Thread handling, persistence, title generation and the profile pre-flight are identical, and a tool call ends the stream with `finish_reason: tool_calls` instead of a pause event - resume it through the same approve and deny operations. Unlike `send-with-stream` it does not reject an empty user message and does not enforce the per-kind attachment cap, so validate both before calling. Choose this route only for a client that already speaks the OpenAI wire format; `POST api/2.0/ai/ai/send-with-stream` is the native one.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
