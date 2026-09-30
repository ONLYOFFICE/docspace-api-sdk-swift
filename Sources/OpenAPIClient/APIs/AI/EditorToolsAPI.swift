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
     Call an editor tool
     
     See also:
     REST API Reference for aiEditorToolsCall Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-call/
     - parameter aiEditorToolsCallRequest: (body) The tool to run: `name` from `GET api/2.0/ai/editor-tools/list`, `arguments` matching that tool's input schema, and an optional `entityId` for the room to run it in. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiEditorToolsCall200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiEditorToolsCall(aiEditorToolsCallRequest: AiEditorToolsCallRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiEditorToolsCall200Response {
        return try await aiEditorToolsCallWithRequestBuilder(aiEditorToolsCallRequest: aiEditorToolsCallRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Call an editor tool
     
     See also:
     REST API Reference for aiEditorToolsCall Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-call/
     
     - POST /api/2.0/ai/editor-tools/call
     - Executes one DocSpace tool on behalf of the document editor's AI plugin, server-side and under the caller's own credentials, so the browser never holds the transport. `name` has to be one of the tools `GET api/2.0/ai/editor-tools/list` reports; anything else, including a tool the editor is not allowed to reach, is refused. The result is always returned as a string - a structured result is serialised - because the plugin relays it to the model verbatim. A tool that fails does so inside that string as an error payload rather than as an HTTP status, so check the content before trusting it.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiEditorToolsCallRequest: (body) The tool to run: `name` from `GET api/2.0/ai/editor-tools/list`, `arguments` matching that tool's input schema, and an optional `entityId` for the room to run it in. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiEditorToolsCall200Response> 
     */
    open class func aiEditorToolsCallWithRequestBuilder(aiEditorToolsCallRequest: AiEditorToolsCallRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiEditorToolsCall200Response> {
        let localVariablePath = "/api/2.0/ai/editor-tools/call"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiEditorToolsCallRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiEditorToolsCall200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List editor tools
     
     See also:
     REST API Reference for aiEditorToolsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-list/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiEditorToolsList200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiEditorToolsList(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiEditorToolsList200Response {
        return try await aiEditorToolsListWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List editor tools
     
     See also:
     REST API Reference for aiEditorToolsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-list/
     
     - GET /api/2.0/ai/editor-tools/list
     - Returns the catalogue of DocSpace tools the document editor's AI plugin may offer the model - the same composed set the DocSpace chat sees, minus the two web-search tools the editor already reaches through its own passthrough. `entityId` scopes the catalogue to a room, which decides the room-specific tools it contains. Each entry carries exactly four fields: the tool name, its description, its input schema, and whether calling it requires an approval dialog; nothing else is exposed, because the raw listings of system servers carry transport details that must not reach a browser. The approval flag follows the same policy the chat engine applies, and a read-only tool comes back needing none - execute a tool with `POST api/2.0/ai/editor-tools/call`, which accepts only the names this catalogue reports.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiEditorToolsList200Response> 
     */
    open class func aiEditorToolsListWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiEditorToolsList200Response> {
        let localVariablePath = "/api/2.0/ai/editor-tools/list"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiEditorToolsList200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
