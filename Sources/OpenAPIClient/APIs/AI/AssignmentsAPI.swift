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
     Bind a profile to an action
     
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
     Bind a profile to an action
     
     See also:
     REST API Reference for aiAssignmentsAssign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/
     
     - PUT /api/2.0/ai/assignments/assign
     - Binds a profile to one AI action portal-wide, creating the assignment or replacing it in place, and returns the result. Both `actionType` and `profileId` are required. The profile's declared capabilities are checked against the action, so a model that cannot generate images cannot be bound to `ImageGeneration` - the `Default` slot is exempt, because it stands in for every action. There is no room-scoped form of this write: a room's own binding is created by the agent that owns it, while reads accept an `entityId`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Bulk assign
     
     See also:
     REST API Reference for aiAssignmentsBulkAssign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/
     - parameter requestBody: (body) A map of action type to profile ID. Every key has to be a known action type and every value a profile ID; one bad entry rejects the whole map. 
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
     - Applies many action-to-profile bindings in one write, which is how a settings screen saves the whole set. The body is a plain map of action type to profile ID, and every entry is validated before anything is written: one unknown action or one non-string profile ID rejects the request whole, so the set is never left half-applied. Each entry behaves as the single assign operation does, capability checks included. The answer carries the resulting assignment set.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter requestBody: (body) A map of action type to profile ID. Every key has to be a known action type and every value a profile ID; one bad entry rejects the whole map. 
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Cascade profile delete
     
     See also:
     REST API Reference for aiAssignmentsCascadeProfileDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
     - parameter aiAssignmentsCascadeProfileDeleteRequest: (body) The profile to detach from every assignment. May be sent as the `profileId` query parameter instead of in the body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAssignmentsCascadeProfileDelete(aiAssignmentsCascadeProfileDeleteRequest: AiAssignmentsCascadeProfileDeleteRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiAssignmentsCascadeProfileDeleteWithRequestBuilder(aiAssignmentsCascadeProfileDeleteRequest: aiAssignmentsCascadeProfileDeleteRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Cascade profile delete
     
     See also:
     REST API Reference for aiAssignmentsCascadeProfileDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
     
     - DELETE /api/2.0/ai/assignments/cascade-profile-delete
     - Detaches a profile from every assignment that points at it, which is the cleanup step before the profile itself is removed. The `Default` slot is promoted to the first remaining profile, or dropped when none is left, and every other slot holding the profile is cleared. `profileId` is required and may be sent in the body or as a query parameter. `DELETE api/2.0/ai/profiles/delete` already does this, so call it directly only when the profile is being removed by some other means.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiAssignmentsCascadeProfileDeleteRequest: (body) The profile to detach from every assignment. May be sent as the `profileId` query parameter instead of in the body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiAssignmentsCascadeProfileDeleteWithRequestBuilder(aiAssignmentsCascadeProfileDeleteRequest: AiAssignmentsCascadeProfileDeleteRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/assignments/cascade-profile-delete"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAssignmentsCascadeProfileDeleteRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Returns every action-to-profile binding of a scope as one map, which is what a settings screen loads. `entityId` narrows it to a room and has to name one the caller can open; a room that is not an agent room degrades to the portal-wide set rather than answering empty, and omitting the parameter reads the portal-wide set directly. Actions with no binding are simply absent from the map. The `Default` slot is reported as an entry of its own rather than being folded into the others.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Returns the profile bound to one AI action, without applying the `Default` fallback - an empty answer means this action has no profile of its own, not that nothing is configured. `actionType` is required and is read from the query. Use `GET api/2.0/ai/assignments/resolve-for-action` to learn which profile would actually serve the action. This reads the portal-wide binding and accepts no `entityId`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Returns the profile that will serve one AI action, falling back to the `Default` slot when the action has no profile of its own. `actionType` is required and has to be one of the known actions - an unknown or misspelled value is rejected rather than resolved to the default. `entityId` narrows the lookup to a room, and a room with no assignment of its own degrades to the portal-wide one. This fails when neither slot is set or the bound profile is gone, so use `GET api/2.0/ai/assignments/try-resolve-for-action` when an unconfigured portal should answer empty instead.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Returns the profile that will serve one AI action, exactly as `GET api/2.0/ai/assignments/resolve-for-action` does, but answers with an empty result rather than failing when nothing is configured. `actionType` is required and is validated the same way, and `entityId` narrows the lookup to a room. This is the operation to call when the absence of a profile is a normal state to render - a settings screen, or a feature that hides itself. Both operations are read-only.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Clear an action's profile
     
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
     Clear an action's profile
     
     See also:
     REST API Reference for aiAssignmentsUnassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/
     
     - DELETE /api/2.0/ai/assignments/unassign
     - Clears the portal-wide binding of one AI action, after which the action falls back to the `Default` slot. `actionType` is required and may be sent in the body or as a query parameter. An action whose slot is already empty is not reported as an error - the call answers success either way, so it is safe to repeat. Clearing `Default` itself leaves the actions that relied on it unresolvable.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
