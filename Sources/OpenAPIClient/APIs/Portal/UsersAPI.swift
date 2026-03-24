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
     Get an invitation link
     
     See also:
     REST API Reference for getInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
     - parameter employeeType: (path) The type of employee role for the invitation link (All, RoomAdmin, Guest, DocSpaceAdmin, User). 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInvitationLink(employeeType: EmployeeType, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getInvitationLinkWithRequestBuilder(employeeType: employeeType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get an invitation link
     
     See also:
     REST API Reference for getInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
     
     - GET /api/2.0/portal/users/invite/{employeeType}
     - Returns an invitation link for joining the portal.
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
     - parameter employeeType: (path) The type of employee role for the invitation link (All, RoomAdmin, Guest, DocSpaceAdmin, User). 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getInvitationLinkWithRequestBuilder(employeeType: EmployeeType, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/portal/users/invite/{employeeType}"
        let employeeTypePreEscape = "\(APIHelper.mapValueToPathItem(employeeType))"
        let employeeTypePostEscape = employeeTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{employeeType}", with: employeeTypePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a number of portal users
     
     See also:
     REST API Reference for getPortalUsersCount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-users-count/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Int64Wrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPortalUsersCount(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Int64Wrapper {
        return try await getPortalUsersCountWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a number of portal users
     
     See also:
     REST API Reference for getPortalUsersCount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-users-count/
     
     - GET /api/2.0/portal/userscount
     - Returns a number of portal users.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Int64Wrapper> 
     */
    open class func getPortalUsersCountWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Int64Wrapper> {
        let localVariablePath = "/api/2.0/portal/userscount"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Int64Wrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a user by ID
     
     See also:
     REST API Reference for getUserById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
     - parameter userID: (path) The user ID extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UserInfoWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserById(userID: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UserInfoWrapper {
        return try await getUserByIdWithRequestBuilder(userID: userID, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a user by ID
     
     See also:
     REST API Reference for getUserById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
     
     - GET /api/2.0/portal/users/{userID}
     - Returns a user with the ID specified in the request from the current portal.
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
     - parameter userID: (path) The user ID extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UserInfoWrapper> 
     */
    open class func getUserByIdWithRequestBuilder(userID: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UserInfoWrapper> {
        var localVariablePath = "/api/2.0/portal/users/{userID}"
        let userIDPreEscape = "\(APIHelper.mapValueToPathItem(userID))"
        let userIDPostEscape = userIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userID}", with: userIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserInfoWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Mark a gift message as read
     
     See also:
     REST API Reference for markGiftMessageAsRead Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-gift-message-as-read/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func markGiftMessageAsRead(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await markGiftMessageAsReadWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Mark a gift message as read
     
     See also:
     REST API Reference for markGiftMessageAsRead Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-gift-message-as-read/
     
     - POST /api/2.0/portal/present/mark
     - Marks a gift message as read.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func markGiftMessageAsReadWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/portal/present/mark"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Send congratulations
     
     See also:
     REST API Reference for sendCongratulations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/
     - parameter userid: (query) The user ID to receive the congratulatory message.      - parameter key: (query) The template identifier or email configuration key. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendCongratulations(userid: UUID, key: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await sendCongratulationsWithRequestBuilder(userid: userid, key: key, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send congratulations
     
     See also:
     REST API Reference for sendCongratulations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/
     
     - POST /api/2.0/portal/sendcongratulations
     - Sends congratulations to the user after registering a portal.
     - parameter userid: (query) The user ID to receive the congratulatory message. 
     - parameter key: (query) The template identifier or email configuration key. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func sendCongratulationsWithRequestBuilder(userid: UUID, key: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/portal/sendcongratulations"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Userid": (wrappedValue: userid.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Key": (wrappedValue: key.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
