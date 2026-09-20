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
     Get the user type change progress
     
     See also:
     REST API Reference for getUserTypeUpdateProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
     - parameter userid: (path) The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserTypeUpdateProgress(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await getUserTypeUpdateProgressWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the user type change progress
     
     See also:
     REST API Reference for getUserTypeUpdateProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
     
     - GET /api/2.0/people/type/progress/{userid}
     - Returns the current state of the user type change queued for the user with the ID specified in the request.  A conversion must have been queued by `POST api/2.0/people/type` first: when nothing is queued for that user  the operation answers 200 with an empty body.  The caller needs the permission to add and remove users.  The call is read-only and is the polling operation of this flow - repeat it until `isCompleted` is true,  reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/type/terminate` to cancel a conversion that is still running.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter userid: (path) The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TaskProgressResponseWrapper> 
     */
    open class func getUserTypeUpdateProgressWithRequestBuilder(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        var localVariablePath = "/api/2.0/people/type/progress/{userid}"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TaskProgressResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start updating user type
     
     See also:
     REST API Reference for startUserTypeUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-user-type-update/
     - parameter startUpdateUserTypeDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startUserTypeUpdate(startUpdateUserTypeDto: StartUpdateUserTypeDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await startUserTypeUpdateWithRequestBuilder(startUpdateUserTypeDto: startUpdateUserTypeDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start updating user type
     
     See also:
     REST API Reference for startUserTypeUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-user-type-update/
     
     - POST /api/2.0/people/type
     - Queues an asynchronous job that converts one account to `Guest` or `User` and, in the same job, hands the  rooms and the shared files of that account over to another administrator.  Only `Guest` and `User` are accepted here, because they are the types that cannot own rooms; for any other  type use `PUT api/2.0/people/type/{type}`, which converts immediately and transfers nothing.  The caller needs the permission to add and remove users of the requested type, has to be the portal owner to  convert a DocSpace administrator, and converting to `Guest` also requires the portal to allow inviting guests.  The account being converted has to be active and cannot be the caller, and the recipient - `reassignUserId`,  or the caller when it is omitted - has to be an active room admin or DocSpace admin other than that account.  The conversion does not finish within this call: poll `GET api/2.0/people/type/progress/{userid}` with the  converted user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/type/terminate`.  A failure inside the running job is reported in the `error` field of the progress, not as a status code here.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter startUpdateUserTypeDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TaskProgressResponseWrapper> 
     */
    open class func startUserTypeUpdateWithRequestBuilder(startUpdateUserTypeDto: StartUpdateUserTypeDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        let localVariablePath = "/api/2.0/people/type"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startUpdateUserTypeDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TaskProgressResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate updating user type
     
     See also:
     REST API Reference for terminateUserTypeUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/
     - parameter terminateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateUserTypeUpdate(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await terminateUserTypeUpdateWithRequestBuilder(terminateRequestDto: terminateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate updating user type
     
     See also:
     REST API Reference for terminateUserTypeUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/
     
     - PUT /api/2.0/people/type/terminate
     - Cancels the user type change queued for the user with the ID specified in the request.  The caller needs the permission to add and remove users.  The operation is idempotent: when nothing is queued for that user it answers 200 with an empty body, and  repeating it on an already cancelled job changes nothing.  Cancelling removes the job from the queue and does not undo the type change or the transfers it has already  made, and a cancelled job cannot be resumed - start a new one through `POST api/2.0/people/type`.  The returned progress reports `status` as `Canceled` and `isCompleted` as true.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter terminateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TaskProgressResponseWrapper> 
     */
    open class func terminateUserTypeUpdateWithRequestBuilder(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        let localVariablePath = "/api/2.0/people/type/terminate"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: terminateRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TaskProgressResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change a user type
     
     See also:
     REST API Reference for updateUserType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/
     - parameter type: (path) The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat.      - parameter updateMembersRequestDto: (body) The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserType(type: EmployeeType, updateMembersRequestDto: UpdateMembersRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await updateUserTypeWithRequestBuilder(type: type, updateMembersRequestDto: updateMembersRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change a user type
     
     See also:
     REST API Reference for updateUserType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/
     
     - PUT /api/2.0/people/type/{type}
     - Changes the type of the existing portal users listed in `userIds` to the type given in the route, in one call.  The caller needs the permission to add and remove users of the requested type, cannot change their own type or  the type of the portal owner, and cannot use this operation at all while being a guest; changing somebody to  `Guest` additionally requires the portal to allow inviting guests.  Every listed account has to be visible to the caller and must not be disabled.  The change is applied immediately: each converted user gets a notification email and raises a `UserUpdated`  webhook, and the accounts are processed one by one, so a rejection in the middle leaves the users before it  already converted - re-read them before retrying.  The answer streams the converted users with their detailed information, in the order they were processed.  Converting somebody to a paid type takes a paid seat, so the operation answers 402 when the tariff or the  paid-user quota does not allow one more.  This operation only moves the type and leaves the rooms and the shared files of the account where they are -  to hand them over to another admin in the same step, use `POST api/2.0/people/type` instead.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter type: (path) The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat. 
     - parameter updateMembersRequestDto: (body) The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func updateUserTypeWithRequestBuilder(type: EmployeeType, updateMembersRequestDto: UpdateMembersRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/type/{type}"
        let typePreEscape = "\(APIHelper.mapValueToPathItem(type))"
        let typePostEscape = typePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{type}", with: typePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateMembersRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
