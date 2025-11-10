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
var fields: String?

    /**
     Add a user
     
     See also:
     REST API Reference for addMember Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-member/
     - parameter memberRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addMember(memberRequestDto: MemberRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await addMemberWithRequestBuilder(memberRequestDto: memberRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a user
     
     See also:
     REST API Reference for addMember Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-member/
     
     - POST /api/2.0/people
     - Adds a new portal user with the first name, last name, email address, and several optional parameters specified in the request.
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
     - parameter memberRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func addMemberWithRequestBuilder(memberRequestDto: MemberRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        let localVariablePath = "/api/2.0/people"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: memberRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a user
     
     See also:
     REST API Reference for deleteMember Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member/
     - parameter userid: (path) The user ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteMember(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await deleteMemberWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a user
     
     See also:
     REST API Reference for deleteMember Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member/
     
     - DELETE /api/2.0/people/{userid}
     - Deletes a user with the ID specified in the request from the portal.
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
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func deleteMemberWithRequestBuilder(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}"
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

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete my profile
     
     See also:
     REST API Reference for deleteProfile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-profile/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteProfile(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await deleteProfileWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete my profile
     
     See also:
     REST API Reference for deleteProfile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-profile/
     
     - DELETE /api/2.0/people/@self
     - Deletes the current user profile.
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
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func deleteProfileWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        let localVariablePath = "/api/2.0/people/@self"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get profiles
     
     See also:
     REST API Reference for getAllProfiles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-profiles/
     - parameter count: (query) The maximum number of items to be retrieved in the response. (optional)     - parameter startIndex: (query) The zero-based index of the first item to be retrieved in a filtered result set. (optional)     - parameter filterBy: (query) Specifies the filter criteria for user-related queries. (optional)     - parameter sortBy: (query) Specifies the property or field name by which the results should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)     - parameter filterValue: (query) The text value used as an additional filter criterion for profiles retrieval. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllProfiles(count: Int? = nil, startIndex: Int? = nil, filterBy: String? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await getAllProfilesWithRequestBuilder(count: count, startIndex: startIndex, filterBy: filterBy, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get profiles
     
     See also:
     REST API Reference for getAllProfiles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-profiles/
     
     - GET /api/2.0/people
     - Returns a list of profiles for all the portal users.
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
     - parameter count: (query) The maximum number of items to be retrieved in the response. (optional)
     - parameter startIndex: (query) The zero-based index of the first item to be retrieved in a filtered result set. (optional)
     - parameter filterBy: (query) Specifies the filter criteria for user-related queries. (optional)
     - parameter sortBy: (query) Specifies the property or field name by which the results should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterSeparator: (query) The character or string used to separate multiple filter values in a filtering query. (optional)
     - parameter filterValue: (query) The text value used as an additional filter criterion for profiles retrieval. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func getAllProfilesWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, filterBy: String? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        let localVariablePath = "/api/2.0/people"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterBy": (wrappedValue: filterBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get user claims
     
     See also:
     REST API Reference for getClaims Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-claims/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClaims(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await getClaimsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user claims
     
     See also:
     REST API Reference for getClaims Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-claims/
     
     - GET /api/2.0/people/tokendiagnostics
     - Returns the user claims.
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
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func getClaimsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        let localVariablePath = "/api/2.0/people/tokendiagnostics"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a profile by user email
     
     See also:
     REST API Reference for getProfileByEmail Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-email/
     - parameter email: (query) The user email address. (optional)     - parameter culture: (query) Culture (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProfileByEmail(email: String? = nil, culture: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await getProfileByEmailWithRequestBuilder(email: email, culture: culture, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a profile by user email
     
     See also:
     REST API Reference for getProfileByEmail Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-email/
     
     - GET /api/2.0/people/email
     - Returns the detailed information about a profile of the user with the email specified in the request.
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
     - parameter email: (query) The user email address. (optional)
     - parameter culture: (query) Culture (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func getProfileByEmailWithRequestBuilder(email: String? = nil, culture: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        let localVariablePath = "/api/2.0/people/email"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "email": (wrappedValue: email?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "culture": (wrappedValue: culture?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a profile by user ID
     
     See also:
     REST API Reference for getProfileByUserId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-user-id/
     - parameter userid: (path) The user ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProfileByUserId(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await getProfileByUserIdWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a profile by user ID
     
     See also:
     REST API Reference for getProfileByUserId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-user-id/
     
     - GET /api/2.0/people/{userid}
     - Returns the detailed information about a profile of the user with the ID specified in the request.
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
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func getProfileByUserIdWithRequestBuilder(userid: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}"
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

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get my profile
     
     See also:
     REST API Reference for getSelfProfile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-self-profile/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSelfProfile(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await getSelfProfileWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get my profile
     
     See also:
     REST API Reference for getSelfProfile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-self-profile/
     
     - GET /api/2.0/people/@self
     - Returns the detailed information about the current user profile.
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
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func getSelfProfileWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        let localVariablePath = "/api/2.0/people/@self"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Invite users
     
     See also:
     REST API Reference for inviteUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/invite-users/
     - parameter inviteUsersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inviteUsers(inviteUsersRequestDto: InviteUsersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeArrayWrapper {
        return try await inviteUsersWithRequestBuilder(inviteUsersRequestDto: inviteUsersRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Invite users
     
     See also:
     REST API Reference for inviteUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/invite-users/
     
     - POST /api/2.0/people/invite
     - Invites users specified in the request to the current portal.
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
     - parameter inviteUsersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeArrayWrapper> 
     */
    open class func inviteUsersWithRequestBuilder(inviteUsersRequestDto: InviteUsersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeArrayWrapper> {
        let localVariablePath = "/api/2.0/people/invite"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inviteUsersRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete users
     
     See also:
     REST API Reference for removeUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-users/
     - parameter updateMembersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func removeUsers(updateMembersRequestDto: UpdateMembersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await removeUsersWithRequestBuilder(updateMembersRequestDto: updateMembersRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete users
     
     See also:
     REST API Reference for removeUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-users/
     
     - PUT /api/2.0/people/delete
     - Deletes a list of the users with the IDs specified in the request.
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
     - parameter updateMembersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func removeUsersWithRequestBuilder(updateMembersRequestDto: UpdateMembersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        let localVariablePath = "/api/2.0/people/delete"
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

    /**
     Resend activation emails
     
     See also:
     REST API Reference for resendUserInvites Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-user-invites/
     - parameter updateMembersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resendUserInvites(updateMembersRequestDto: UpdateMembersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await resendUserInvitesWithRequestBuilder(updateMembersRequestDto: updateMembersRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resend activation emails
     
     See also:
     REST API Reference for resendUserInvites Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-user-invites/
     
     - PUT /api/2.0/people/invite
     - Resends emails to the users who have not activated their emails.
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
     - parameter updateMembersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func resendUserInvitesWithRequestBuilder(updateMembersRequestDto: UpdateMembersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        let localVariablePath = "/api/2.0/people/invite"
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

    /**
     Send instructions to change email
     
     See also:
     REST API Reference for sendEmailChangeInstructions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/
     - parameter updateMemberRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendEmailChangeInstructions(updateMemberRequestDto: UpdateMemberRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await sendEmailChangeInstructionsWithRequestBuilder(updateMemberRequestDto: updateMemberRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send instructions to change email
     
     See also:
     REST API Reference for sendEmailChangeInstructions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/
     
     - POST /api/2.0/people/email
     - Sends a message to the user email with the instructions to change the email address connected to the portal.
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
     - parameter updateMemberRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func sendEmailChangeInstructionsWithRequestBuilder(updateMemberRequestDto: UpdateMemberRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/people/email"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateMemberRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a user
     
     See also:
     REST API Reference for updateMember Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member/
     - parameter userid: (path) The user ID.      - parameter updateMemberRequestDto: (body) The request parameters for updating the user information. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateMember(userid: String, updateMemberRequestDto: UpdateMemberRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await updateMemberWithRequestBuilder(userid: userid, updateMemberRequestDto: updateMemberRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a user
     
     See also:
     REST API Reference for updateMember Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member/
     
     - PUT /api/2.0/people/{userid}
     - Updates the data for the selected portal user with the first name, last name, email address, and/or optional parameters specified in the request.
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
     - parameter updateMemberRequestDto: (body) The request parameters for updating the user information. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func updateMemberWithRequestBuilder(userid: String, updateMemberRequestDto: UpdateMemberRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateMemberRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a user culture code
     
     See also:
     REST API Reference for updateMemberCulture Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-culture/
     - parameter userid: (path) The user ID.      - parameter culture: (body) The culture code parameters. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateMemberCulture(userid: String, culture: Culture? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await updateMemberCultureWithRequestBuilder(userid: userid, culture: culture, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a user culture code
     
     See also:
     REST API Reference for updateMemberCulture Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-culture/
     
     - PUT /api/2.0/people/{userid}/culture
     - Updates the user culture code with the parameters specified in the request.
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
     - parameter culture: (body) The culture code parameters. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func updateMemberCultureWithRequestBuilder(userid: String, culture: Culture? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}/culture"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: culture, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension PeopleProfilesAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> PeopleProfilesAPIApi {
        self.fields = fields
        return self
    }
}
