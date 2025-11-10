//
//  Copyright (c) Ascensio System SIA 2025
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
     Get the progress of updating user type
     
     See also:
     REST API Reference for getUserTypeUpdateProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
     - parameter userid: (path) The user ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserTypeUpdateProgress(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await getUserTypeUpdateProgressWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the progress of updating user type
     
     See also:
     REST API Reference for getUserTypeUpdateProgress Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
     
     - GET /api/2.0/people/type/progress/{userid}
     - Returns the progress of updating the user type.
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
     - parameter userid: (path) The user ID. 
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
     REST API Reference for starUserTypetUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/star-user-typet-update/
     - parameter startUpdateUserTypeDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TaskProgressResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func starUserTypetUpdate(startUpdateUserTypeDto: StartUpdateUserTypeDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TaskProgressResponseWrapper {
        return try await starUserTypetUpdateWithRequestBuilder(startUpdateUserTypeDto: startUpdateUserTypeDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start updating user type
     
     See also:
     REST API Reference for starUserTypetUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/star-user-typet-update/
     
     - POST /api/2.0/people/type
     - Starts updating the type of the user or guest when reassigning rooms and shared files.
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
     - parameter startUpdateUserTypeDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TaskProgressResponseWrapper> 
     */
    open class func starUserTypetUpdateWithRequestBuilder(startUpdateUserTypeDto: StartUpdateUserTypeDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TaskProgressResponseWrapper> {
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
     - Terminates the process of updating the type of the user or guest.
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
     - parameter type: (path) The new user type.      - parameter updateMembersRequestDto: (body) The request parameters for updating the user information. 
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
     - Changes a type of the users with the IDs specified in the request.
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
     - parameter type: (path) The new user type. 
     - parameter updateMembersRequestDto: (body) The request parameters for updating the user information. 
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
