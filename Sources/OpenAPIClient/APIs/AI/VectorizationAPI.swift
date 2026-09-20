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
     Start a vectorization task
     
     See also:
     REST API Reference for aiVectorizationStartTask Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/
     - parameter aiVectorizationStartTaskRequest: (body) The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiVectorizationStartTask200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiVectorizationStartTask(aiVectorizationStartTaskRequest: AiVectorizationStartTaskRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiVectorizationStartTask200Response {
        return try await aiVectorizationStartTaskWithRequestBuilder(aiVectorizationStartTaskRequest: aiVectorizationStartTaskRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start a vectorization task
     
     See also:
     REST API Reference for aiVectorizationStartTask Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/
     
     - POST /api/2.0/ai/vectorization/tasks
     - Queues the indexing of the portal files named in the body so their contents can be retrieved during a chat round. The body is proxied unchanged to the DocSpace AI service, which validates it and owns the job. Indexing is asynchronous and fire-and-forget: the answer acknowledges the request without carrying a job handle, so there is nothing to poll and progress is not reported here. The embedding provider used is the one in `GET api/2.0/ai/config/vectorization`, and changing that setting does not re-index anything already indexed - queue it again for that.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiVectorizationStartTaskRequest: (body) The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiVectorizationStartTask200Response> 
     */
    open class func aiVectorizationStartTaskWithRequestBuilder(aiVectorizationStartTaskRequest: AiVectorizationStartTaskRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiVectorizationStartTask200Response> {
        let localVariablePath = "/api/2.0/ai/vectorization/tasks"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiVectorizationStartTaskRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiVectorizationStartTask200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
