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
     Start markdown → docx export
     
     See also:
     REST API Reference for aiExportTextToDocx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/
     - parameter aiExportTextToDocxRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiExportTextToDocx200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiExportTextToDocx(aiExportTextToDocxRequest: AiExportTextToDocxRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiExportTextToDocx200Response {
        return try await aiExportTextToDocxWithRequestBuilder(aiExportTextToDocxRequest: aiExportTextToDocxRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start markdown → docx export
     
     See also:
     REST API Reference for aiExportTextToDocx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/
     
     - POST /api/2.0/ai/text-to-docx
     - Starts an asynchronous markdown-to-docx export. The response only acknowledges the task: the AI Worker converts the content and saves the .docx into the target folder (an agent room resolves to its result-storage subfolder), and completion reaches the client as the usual folder-modified socket event.
     - parameter aiExportTextToDocxRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiExportTextToDocx200Response> 
     */
    open class func aiExportTextToDocxWithRequestBuilder(aiExportTextToDocxRequest: AiExportTextToDocxRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiExportTextToDocx200Response> {
        let localVariablePath = "/api/2.0/ai/text-to-docx"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiExportTextToDocxRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiExportTextToDocx200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
