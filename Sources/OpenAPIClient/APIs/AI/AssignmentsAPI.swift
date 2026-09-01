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
     Assign
     
     See also:
     REST API Reference for aiAssignmentsAssign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/
     - parameter aiAssignmentsAssignRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAssignmentMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsAssign(aiAssignmentsAssignRequest: AiAssignmentsAssignRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAssignmentMutationResult {
        return try await aiAssignmentsAssignWithRequestBuilder(aiAssignmentsAssignRequest: aiAssignmentsAssignRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Assign
     
     See also:
     REST API Reference for aiAssignmentsAssign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/
     
     - PUT /api/2.0/ai/assignments/assign
     - Binds a profile to an AI action, creating the assignment or updating it in place. The profile's declared capabilities are validated against the action, except for the `Default` slot.
     - parameter aiAssignmentsAssignRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAssignmentMutationResult> 
     */
    open class func aiAssignmentsAssignWithRequestBuilder(aiAssignmentsAssignRequest: AiAssignmentsAssignRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAssignmentMutationResult> {
        let localVariablePath = "/api/2.0/ai/assignments/assign"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAssignmentsAssignRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiAssignmentMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Bulk assign
     
     See also:
     REST API Reference for aiAssignmentsBulkAssign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiBulkAssignmentResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsBulkAssign(requestBody: [String: String], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiBulkAssignmentResult {
        return try await aiAssignmentsBulkAssignWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Bulk assign
     
     See also:
     REST API Reference for aiAssignmentsBulkAssign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/
     
     - PUT /api/2.0/ai/assignments/bulk-assign
     - Applies many action-to-profile bindings at once. Every entry is validated first and nothing is written if any of them fails, so the assignment set is never left half-written.
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiBulkAssignmentResult> 
     */
    open class func aiAssignmentsBulkAssignWithRequestBuilder(requestBody: [String: String], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiBulkAssignmentResult> {
        let localVariablePath = "/api/2.0/ai/assignments/bulk-assign"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiBulkAssignmentResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Cascade profile delete
     
     See also:
     REST API Reference for aiAssignmentsCascadeProfileDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsCascadeProfileDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAssignmentsCascadeProfileDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Cascade profile delete
     
     See also:
     REST API Reference for aiAssignmentsCascadeProfileDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
     
     - DELETE /api/2.0/ai/assignments/cascade-profile-delete
     - Cleans up the assignments pointing at a profile that is about to be deleted: the `Default` slot is promoted to the first remaining profile (or dropped when none is left), and every other slot holding that profile is unbound.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiAssignmentsCascadeProfileDeleteWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/assignments/cascade-profile-delete"
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
     Get all assignments
     
     See also:
     REST API Reference for aiAssignmentsGetAllAssignments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-all-assignments/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: String]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsGetAllAssignments(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: String] {
        return try await aiAssignmentsGetAllAssignmentsWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get all assignments
     
     See also:
     REST API Reference for aiAssignmentsGetAllAssignments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-all-assignments/
     
     - GET /api/2.0/ai/assignments/get-all-assignments
     - Returns the full action-to-profile assignment map of the scope.
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: String]> 
     */
    open class func aiAssignmentsGetAllAssignmentsWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: String]> {
        let localVariablePath = "/api/2.0/ai/assignments/get-all-assignments"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: String]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get assignment
     
     See also:
     REST API Reference for aiAssignmentsGetAssignment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-assignment/
     - parameter actionType: (query) The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsGetAssignment(actionType: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> String {
        return try await aiAssignmentsGetAssignmentWithRequestBuilder(actionType: actionType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get assignment
     
     See also:
     REST API Reference for aiAssignmentsGetAssignment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-assignment/
     
     - GET /api/2.0/ai/assignments/get-assignment
     - Returns the profile bound to one AI action, without the `Default` fallback.
     - parameter actionType: (query) The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<String> 
     */
    open class func aiAssignmentsGetAssignmentWithRequestBuilder(actionType: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<String> {
        let localVariablePath = "/api/2.0/ai/assignments/get-assignment"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "actionType": (wrappedValue: actionType.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Resolve for action
     
     See also:
     REST API Reference for aiAssignmentsResolveForAction Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-resolve-for-action/
     - parameter actionType: (query) The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.      - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiResolvedAssignment
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsResolveForAction(actionType: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiResolvedAssignment {
        return try await aiAssignmentsResolveForActionWithRequestBuilder(actionType: actionType, entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resolve for action
     
     See also:
     REST API Reference for aiAssignmentsResolveForAction Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-resolve-for-action/
     
     - GET /api/2.0/ai/assignments/resolve-for-action
     - Resolves the profile bound to an AI action, falling back to the `Default` slot when the action itself has none. Fails when neither slot is set or the bound profile no longer exists - use `try-resolve-for-action` for an empty answer instead.
     - parameter actionType: (query) The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision. 
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiResolvedAssignment> 
     */
    open class func aiAssignmentsResolveForActionWithRequestBuilder(actionType: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiResolvedAssignment> {
        let localVariablePath = "/api/2.0/ai/assignments/resolve-for-action"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "actionType": (wrappedValue: actionType.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiResolvedAssignment>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Try resolve for action
     
     See also:
     REST API Reference for aiAssignmentsTryResolveForAction Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-try-resolve-for-action/
     - parameter actionType: (query) The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.      - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiResolvedAssignment
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsTryResolveForAction(actionType: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiResolvedAssignment {
        return try await aiAssignmentsTryResolveForActionWithRequestBuilder(actionType: actionType, entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Try resolve for action
     
     See also:
     REST API Reference for aiAssignmentsTryResolveForAction Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-try-resolve-for-action/
     
     - GET /api/2.0/ai/assignments/try-resolve-for-action
     - Resolves the profile bound to an AI action exactly like `resolve-for-action`, but answers with an empty result instead of failing when nothing is configured.
     - parameter actionType: (query) The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision. 
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiResolvedAssignment> 
     */
    open class func aiAssignmentsTryResolveForActionWithRequestBuilder(actionType: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiResolvedAssignment> {
        let localVariablePath = "/api/2.0/ai/assignments/try-resolve-for-action"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "actionType": (wrappedValue: actionType.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiResolvedAssignment>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Unassign
     
     See also:
     REST API Reference for aiAssignmentsUnassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsUnassign(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAssignmentsUnassignWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unassign
     
     See also:
     REST API Reference for aiAssignmentsUnassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/
     
     - DELETE /api/2.0/ai/assignments/unassign
     - Removes the profile binding of an AI action. Does nothing when that slot is already empty.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiAssignmentsUnassignWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/assignments/unassign"
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
}
