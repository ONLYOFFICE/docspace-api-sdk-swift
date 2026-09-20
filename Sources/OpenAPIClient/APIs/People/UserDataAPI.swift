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
     Get the personal folder deletion progress
     
     See also:
     REST API Reference for getDeletePersonalFolderProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-delete-personal-folder-progress/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDeletePersonalFolderProgress(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await getDeletePersonalFolderProgressWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the personal folder deletion progress
     
     See also:
     REST API Reference for getDeletePersonalFolderProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-delete-personal-folder-progress/
     
     - GET /api/2.0/people/delete/personal/progress
     - Returns the current state of the personal folder deletion queued for the authenticated account.  The job must have been queued by `POST api/2.0/people/delete/personal/start` first: when nothing is queued for  the caller the operation answers 200 with an empty body.  It takes no parameters and reports on the caller only, so an administrator cannot watch the folder deletion of  another user through it.  The call is read-only and is the polling operation of this flow - repeat it until `isCompleted` is true, and  read `error` for the message left by a failed job.  A queued personal folder deletion cannot be cancelled, so the only outcome to wait for is its completion.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TaskProgressResponseWrapper> 
     */
    open class func getDeletePersonalFolderProgressWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        let localVariablePath = "/api/2.0/people/delete/personal/progress"
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
     Get the reassignment progress
     
     See also:
     REST API Reference for getReassignProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reassign-progress/
     - parameter userid: (path) The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getReassignProgress(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await getReassignProgressWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the reassignment progress
     
     See also:
     REST API Reference for getReassignProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reassign-progress/
     
     - GET /api/2.0/people/reassign/progress/{userid}
     - Returns the current state of the data reassignment queued for the user with the ID specified in the request.  A reassignment must have been queued by `POST api/2.0/people/reassign/start` first: when nothing is queued for  that user the operation answers 200 with an empty body.  The caller needs the permission to edit users, and only the portal owner may track a reassignment whose source  user is a DocSpace administrator.  The call is read-only and is the polling operation of the reassignment flow - repeat it until `isCompleted` is  true, reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/reassign/terminate` to cancel a job that is still running.
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
    open class func getReassignProgressWithRequestBuilder(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        var localVariablePath = "/api/2.0/people/reassign/progress/{userid}"
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
     Get the deletion progress
     
     See also:
     REST API Reference for getRemoveProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-remove-progress/
     - parameter userid: (path) The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRemoveProgress(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await getRemoveProgressWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the deletion progress
     
     See also:
     REST API Reference for getRemoveProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-remove-progress/
     
     - GET /api/2.0/people/remove/progress/{userid}
     - Returns the current state of the data deletion queued for the user with the ID specified in the request.  A deletion must have been queued by `POST api/2.0/people/remove/start` first: when nothing is queued for that  user the operation answers 200 with an empty body.  The caller needs the permission to edit users.  The call is read-only and is the polling operation of the deletion flow - repeat it until `isCompleted` is  true, reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/remove/terminate` to cancel a job that is still running.
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
    open class func getRemoveProgressWithRequestBuilder(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        var localVariablePath = "/api/2.0/people/remove/progress/{userid}"
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
     Check data for reassignment need
     
     See also:
     REST API Reference for necessaryReassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/necessary-reassign/
     - parameter userId: (query) The ID of the user whose rooms and shared files are checked. (optional)     - parameter type: (query) The type the user is about to be changed to, which decides what counts as data that has to be reassigned:  `RoomAdmin`, `DocSpaceAdmin` and `User` are checked for owned rooms only, while `Guest` is also checked for  files that are still shared. The default is `All`, which checks owned rooms only. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func necessaryReassign(userId: UUID? = nil, type: EmployeeType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await necessaryReassignWithRequestBuilder(userId: userId, type: type, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check data for reassignment need
     
     See also:
     REST API Reference for necessaryReassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/necessary-reassign/
     
     - GET /api/2.0/people/reassign/necessary
     - Reports whether the rooms and the shared files of a user have to be reassigned before that user can be removed  or changed to the type passed in `type`.  Call it before `DELETE api/2.0/people/{userid}` or before a type change to find out whether  `POST api/2.0/people/reassign/start` has to run first.  The caller needs the permission to add and remove users of the requested type, and must be the portal owner  when the checked user is a DocSpace administrator.  The call is read-only and answers true when the user owns at least one room, or - when `type` is `Guest` -  when the user still has shared files.  A false answer means the user can be removed or converted without a reassignment.
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
     - parameter userId: (query) The ID of the user whose rooms and shared files are checked. (optional)
     - parameter type: (query) The type the user is about to be changed to, which decides what counts as data that has to be reassigned:  `RoomAdmin`, `DocSpaceAdmin` and `User` are checked for owned rooms only, while `Guest` is also checked for  files that are still shared. The default is `All`, which checks owned rooms only. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func necessaryReassignWithRequestBuilder(userId: UUID? = nil, type: EmployeeType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/people/reassign/necessary"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "UserId": (wrappedValue: userId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Type": (wrappedValue: type?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Send the deletion instructions
     
     See also:
     REST API Reference for sendInstructionsToDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-instructions-to-delete/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendInstructionsToDelete(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await sendInstructionsToDeleteWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send the deletion instructions
     
     See also:
     REST API Reference for sendInstructionsToDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-instructions-to-delete/
     
     - PUT /api/2.0/people/self/delete
     - Emails the caller a confirmation link that lets them delete their own profile, and is the first step of the  self-service profile removal.  It acts on the authenticated account only and takes no parameters, so it cannot be used to remove somebody  else - an administrator removes another user through `DELETE api/2.0/people/{userid}`.  The caller has to be a regular portal account: the portal owner and an account imported from LDAP are  rejected, because neither can delete itself.  The call sends mail and does not change the profile; the deletion happens later, when the caller follows the  emailed link and the client calls `DELETE api/2.0/people/@self` with the confirmation token from it.  The answer is a ready-to-display message naming the address the link was sent to, and the address is wrapped  in bold HTML markup, so strip the markup before showing it outside a web page.  Repeated calls are throttled, and each one sends a new link.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func sendInstructionsToDeleteWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/people/self/delete"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete the personal folder
     
     See also:
     REST API Reference for startDeletePersonalFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-delete-personal-folder/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startDeletePersonalFolder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await startDeletePersonalFolderWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete the personal folder
     
     See also:
     REST API Reference for startDeletePersonalFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-delete-personal-folder/
     
     - POST /api/2.0/people/delete/personal/start
     - Queues an asynchronous job that empties the personal folder of the authenticated account.  The operation takes no parameters and always acts on the caller, so it cannot be used to empty the folder of  another user.  Only an account whose type is `Guest` may call it; every other type is rejected, because only a guest has a  personal folder that can be emptied this way.  The job does not finish within this call: poll `GET api/2.0/people/delete/personal/progress` until  `isCompleted` is true.  The job deletes the files permanently and cannot be undone or cancelled - there is no terminate operation for  this flow, unlike the user data deletion.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TaskProgressResponseWrapper> 
     */
    open class func startDeletePersonalFolderWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        let localVariablePath = "/api/2.0/people/delete/personal/start"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TaskProgressResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the data reassignment
     
     See also:
     REST API Reference for startReassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-reassign/
     - parameter startReassignRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startReassign(startReassignRequestDto: StartReassignRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await startReassignWithRequestBuilder(startReassignRequestDto: startReassignRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the data reassignment
     
     See also:
     REST API Reference for startReassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-reassign/
     
     - POST /api/2.0/people/reassign/start
     - Queues an asynchronous job that transfers the rooms and the shared files owned by one portal user to another.  The source user must already have the `Terminated` status - disable the account through  `PUT api/2.0/people/status/{status}` before calling this - and the destination user must be an active room  admin or DocSpace admin, so a guest, a system account or a disabled account is rejected.  The caller needs the permission to edit users, cannot reassign their own data, and must be the portal owner to  reassign the data of another DocSpace administrator or of a People module administrator.  The transfer does not finish within this call: poll `GET api/2.0/people/reassign/progress/{userid}` with the  source user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/reassign/terminate`.  Pass `deleteProfile` as true to delete the source profile once the transfer succeeds, otherwise the emptied  profile is kept.  Use `GET api/2.0/people/reassign/necessary` first to find out whether the user owns anything that has to be  reassigned at all.
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
     - parameter startReassignRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TaskProgressResponseWrapper> 
     */
    open class func startReassignWithRequestBuilder(startReassignRequestDto: StartReassignRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        let localVariablePath = "/api/2.0/people/reassign/start"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startReassignRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TaskProgressResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the data deletion
     
     See also:
     REST API Reference for startRemove Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-remove/
     - parameter terminateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startRemove(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await startRemoveWithRequestBuilder(terminateRequestDto: terminateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the data deletion
     
     See also:
     REST API Reference for startRemove Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-remove/
     
     - POST /api/2.0/people/remove/start
     - Queues an asynchronous job that erases the data of the user with the ID specified in the request.  The account must already have the `Terminated` status - disable it through  `PUT api/2.0/people/status/{status}` first - and it cannot be the portal owner or the caller.  The caller needs the permission to edit users, has to be a DocSpace admin to erase the data of a room admin,  and has to be the portal owner to erase the data of another DocSpace admin.  The erasure does not finish within this call: poll `GET api/2.0/people/remove/progress/{userid}` with the same  user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/remove/terminate`.  This operation destroys the data and cannot be undone; to keep the rooms and the shared files of the account  instead, transfer them first through `POST api/2.0/people/reassign/start`.  An unknown ID and a rejected precondition both answer 400 and name the ID they rejected.
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
    open class func startRemoveWithRequestBuilder(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        let localVariablePath = "/api/2.0/people/remove/start"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: terminateRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TaskProgressResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate the data reassignment
     
     See also:
     REST API Reference for terminateReassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-reassign/
     - parameter terminateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateReassign(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await terminateReassignWithRequestBuilder(terminateRequestDto: terminateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the data reassignment
     
     See also:
     REST API Reference for terminateReassign Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-reassign/
     
     - PUT /api/2.0/people/reassign/terminate
     - Cancels the data reassignment queued for the user with the ID specified in the request.  The caller needs the permission to edit users, and only the portal owner may cancel a reassignment whose  source user is a DocSpace administrator.  The operation is idempotent: when nothing is queued for that user it answers 200 with an empty body, and  repeating it on an already cancelled job changes nothing.  Cancelling removes the job from the queue and does not undo the transfers it has already made, and a cancelled  job cannot be resumed - start a new one through `POST api/2.0/people/reassign/start`.  The returned progress reports `status` as `Canceled` and `isCompleted` as true.
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
    open class func terminateReassignWithRequestBuilder(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
        let localVariablePath = "/api/2.0/people/reassign/terminate"
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
     Terminate the data deletion
     
     See also:
     REST API Reference for terminateRemove Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-remove/
     - parameter terminateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateRemove(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateRemoveWithRequestBuilder(terminateRequestDto: terminateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the data deletion
     
     See also:
     REST API Reference for terminateRemove Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-remove/
     
     - PUT /api/2.0/people/remove/terminate
     - Cancels the data deletion queued for the user with the ID specified in the request.  The caller needs the permission to edit users.  The operation is idempotent and returns no body: it drops the job from the queue, and doing so when nothing is  queued, or when the job has already finished, changes nothing and still answers 200.  Cancelling does not restore the data the job has already erased, and a cancelled job cannot be resumed - start  a new one through `POST api/2.0/people/remove/start`.  To find out whether the job is still running, read  `GET api/2.0/people/remove/progress/{userid}` before and after this call.
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
     - returns: RequestBuilder<Void> 
     */
    open class func terminateRemoveWithRequestBuilder(terminateRequestDto: TerminateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/people/remove/terminate"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: terminateRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
