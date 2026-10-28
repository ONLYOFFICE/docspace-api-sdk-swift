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

open class AIOpenAIPassthroughAPIApi {

    /**
     OpenAI chat completions passthrough
     
     See also:
     REST API Reference for aiOpenaiChatCompletions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/
     - parameter profileId: (path) The AI provider profile identifier.      - parameter aiOpenaiChatCompletionsRequest: (body) An OpenAI Chat Completions request, forwarded to the provider as sent. The shape is the provider's, not this API's, so consult the provider's own reference. The credentials come from the profile in the path and must not be sent here; the profile's model is used when the body names none, and a `model` in the body takes precedence. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: JSONValue?]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiOpenaiChatCompletions(profileId: String, aiOpenaiChatCompletionsRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue?] {
        return try await aiOpenaiChatCompletionsWithRequestBuilder(profileId: profileId, aiOpenaiChatCompletionsRequest: aiOpenaiChatCompletionsRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     OpenAI chat completions passthrough
     
     See also:
     REST API Reference for aiOpenaiChatCompletions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/
     
     - POST /api/2.0/ai/openai/{profileId}/v1/chat/completions
     - OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider as sent - the payload is owned by the plugin's SDK on one end and the provider on the other - except that a JSON body which names no `model` gets the profile's model filled in; a `model` the body carries wins. The provider's 4xx answers are relayed with their status and body, so a 429 and the provider's own error envelope surface as they stand; a 5xx from the provider or from the hop in front of it is not relayed - its detail stays in the server log and the call answers a fixed 502 envelope. A client disconnect cancels the provider call.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter profileId: (path) The AI provider profile identifier. 
     - parameter aiOpenaiChatCompletionsRequest: (body) An OpenAI Chat Completions request, forwarded to the provider as sent. The shape is the provider's, not this API's, so consult the provider's own reference. The credentials come from the profile in the path and must not be sent here; the profile's model is used when the body names none, and a `model` in the body takes precedence. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: JSONValue?]> 
     */
    open class func aiOpenaiChatCompletionsWithRequestBuilder(profileId: String, aiOpenaiChatCompletionsRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: JSONValue?]> {
        var localVariablePath = "/api/2.0/ai/openai/{profileId}/v1/chat/completions"
        let profileIdPreEscape = "\(APIHelper.mapValueToPathItem(profileId))"
        let profileIdPostEscape = profileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{profileId}", with: profileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiOpenaiChatCompletionsRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: JSONValue?]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     OpenAI image generation passthrough
     
     See also:
     REST API Reference for aiOpenaiImagesGenerations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/
     - parameter profileId: (path) The AI provider profile identifier.      - parameter aiOpenaiImagesGenerationsRequest: (body) An OpenAI image-generation request, forwarded to the provider as sent once its documented fields pass a type check. The shape is the provider's, not this API's, and the credentials come from the profile in the path. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: JSONValue]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiOpenaiImagesGenerations(profileId: String, aiOpenaiImagesGenerationsRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue] {
        return try await aiOpenaiImagesGenerationsWithRequestBuilder(profileId: profileId, aiOpenaiImagesGenerationsRequest: aiOpenaiImagesGenerationsRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     OpenAI image generation passthrough
     
     See also:
     REST API Reference for aiOpenaiImagesGenerations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/
     
     - POST /api/2.0/ai/openai/{profileId}/v1/images/generations
     - OpenAI-compatible image generation for the document editor's AI plugin, working as the chat-completions passthrough does: the profile named by `profileId` is resolved server-side, its credentials are attached, and the body reaches the provider as sent. The documented OpenAI fields are checked first - `prompt` has to be a non-empty string, `n` a positive integer, `model`, `size`, `quality`, `style` and `response_format` strings when present - and a body failing that answers 400 instead of whatever the provider would have made of it; fields outside that set are passed on untouched. The provider's 4xx status and body are relayed, so its 429 and its own error envelope surface as they stand; a 5xx is replaced by a fixed 502 envelope with the detail kept in the server log. A body larger than this route accepts is refused before it is forwarded. A client disconnect aborts the provider call.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter profileId: (path) The AI provider profile identifier. 
     - parameter aiOpenaiImagesGenerationsRequest: (body) An OpenAI image-generation request, forwarded to the provider as sent once its documented fields pass a type check. The shape is the provider's, not this API's, and the credentials come from the profile in the path. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: JSONValue]> 
     */
    open class func aiOpenaiImagesGenerationsWithRequestBuilder(profileId: String, aiOpenaiImagesGenerationsRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: JSONValue]> {
        var localVariablePath = "/api/2.0/ai/openai/{profileId}/v1/images/generations"
        let profileIdPreEscape = "\(APIHelper.mapValueToPathItem(profileId))"
        let profileIdPostEscape = profileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{profileId}", with: profileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiOpenaiImagesGenerationsRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: JSONValue]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
