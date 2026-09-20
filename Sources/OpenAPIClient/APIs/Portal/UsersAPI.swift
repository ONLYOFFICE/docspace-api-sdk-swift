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
     Create an invitation link
     
     See also:
     REST API Reference for createInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-invitation-link/
     - parameter invitationLinkCreateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: InvitationLinkWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createInvitationLink(invitationLinkCreateRequestDto: InvitationLinkCreateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> InvitationLinkWrapper {
        return try await createInvitationLinkWithRequestBuilder(invitationLinkCreateRequestDto: invitationLinkCreateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an invitation link
     
     See also:
     REST API Reference for createInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-invitation-link/
     
     - POST /api/2.0/portal/users/invitationlink
     - Creates the portal's invitation link for one role and returns it together with the URL to share. A portal  keeps at most one link per role, so a call for a role that already has one is refused - read the existing link  with `GET api/2.0/portal/users/invitationlink/{employeeType}` and change it with  `PUT api/2.0/portal/users/invitationlink` instead. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`), `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or `User`,  and `expiration`, when given, has to lie in the future and is read in the portal time zone. The caller needs  the right to add users of that role, only the portal owner may create the DocSpace administrator link, and a  link for a paying role additionally needs a free paid seat in the portal quota. The call is mutating and not  idempotent. The answer carries the `id` needed to update or delete the link, the shortened `url`,  `maxUseCount` and `currentUseCount`, `expiration` in the portal time zone - empty for a link that never  expires - and `isExpired`.
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
     - parameter invitationLinkCreateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<InvitationLinkWrapper> 
     */
    open class func createInvitationLinkWithRequestBuilder(invitationLinkCreateRequestDto: InvitationLinkCreateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<InvitationLinkWrapper> {
        let localVariablePath = "/api/2.0/portal/users/invitationlink"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: invitationLinkCreateRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvitationLinkWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete an invitation link
     
     See also:
     REST API Reference for deleteInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-invitation-link/
     - parameter invitationLinkDeleteRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteInvitationLink(invitationLinkDeleteRequestDto: InvitationLinkDeleteRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await deleteInvitationLinkWithRequestBuilder(invitationLinkDeleteRequestDto: invitationLinkDeleteRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete an invitation link
     
     See also:
     REST API Reference for deleteInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-invitation-link/
     
     - DELETE /api/2.0/portal/users/invitationlink
     - Deletes the portal's invitation link with the given `id`, so the URL shared from it stops letting anyone in;  accounts that already joined through it are not touched. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and the link has to exist - a second call with the same `id` is  answered as not found. The caller needs the right to add users of the link's role, and only the portal owner  may delete the DocSpace administrator link. The call is destructive and cannot be undone: a link for the same  role has to be created again with `POST api/2.0/portal/users/invitationlink`, and it gets a new `id`, a new  URL and a `currentUseCount` that starts from zero. Nothing is returned in the body. To stop invitations  without losing the links, switch inviting members off for the whole portal with  `PUT api/2.0/settings/invitationsettings` - the links then stay stored but are refused until it is switched on  again.
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
     - parameter invitationLinkDeleteRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func deleteInvitationLinkWithRequestBuilder(invitationLinkDeleteRequestDto: InvitationLinkDeleteRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/portal/users/invitationlink"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: invitationLinkDeleteRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a legacy invitation link
     
     See also:
     REST API Reference for getInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
     - parameter employeeType: (path) The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInvitationLink(employeeType: EmployeeType, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getInvitationLinkWithRequestBuilder(employeeType: employeeType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a legacy invitation link
     
     See also:
     REST API Reference for getInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
     
     - GET /api/2.0/portal/users/invite/{employeeType}
     - Deprecated - use `POST api/2.0/portal/users/invitationlink` and the neighbouring operations under that path,  which store the link and let it be read, changed and revoked. Builds a shortened URL that lets whoever opens  it join this portal with the role given in the path, and returns it as a bare string; nothing is stored, so  the link can afterwards be neither listed nor withdrawn. Inviting members has to be enabled for the portal -  `GET api/2.0/settings/invitationsettings` reports that - otherwise the call is refused. The caller needs the  right to add users of the requested role and only the portal owner may ask for a DocSpace administrator link;  a caller without that right gets an empty string instead of an error, so treat an empty answer as a refusal.  The call changes nothing on the portal and may be repeated, each time returning an equivalent link. The URL  carries a confirmation key bound to the calling account and the portal alias; it has no use limit and stops  being accepted once the portal's e-mail key lifetime has passed, seven days by default - neither of the two  can be set per link, which is what the replacement operations add.
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
     - parameter employeeType: (path) The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
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
     Get an invitation link by role
     
     See also:
     REST API Reference for getInvitationLinkByEmployeeType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link-by-employee-type/
     - parameter employeeType: (path) The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: InvitationLinkWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInvitationLinkByEmployeeType(employeeType: EmployeeType, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> InvitationLinkWrapper {
        return try await getInvitationLinkByEmployeeTypeWithRequestBuilder(employeeType: employeeType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get an invitation link by role
     
     See also:
     REST API Reference for getInvitationLinkByEmployeeType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link-by-employee-type/
     
     - GET /api/2.0/portal/users/invitationlink/{employeeType}
     - Returns the portal's invitation link for one role - the URL to share, how long it lasts and how often it has  already been used. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or  `User`; the caller needs the right to add users of that role, only the portal owner may read the DocSpace  administrator link, and a link for a paying role is shown only while the portal quota still has a free paid  seat. The call is read-only and idempotent, but the `url` it returns is signed for the calling account, so two  administrators are handed two different URLs for one and the same link. A role that has no link yet is  answered with an empty body and 200 rather than a 404 - create the link with  `POST api/2.0/portal/users/invitationlink`. `expiration` is in the portal time zone and empty for a link  without a deadline, `isExpired` says whether that deadline has passed, and `currentUseCount` counts how many  accounts have already joined through the link.
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
     - parameter employeeType: (path) The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<InvitationLinkWrapper> 
     */
    open class func getInvitationLinkByEmployeeTypeWithRequestBuilder(employeeType: EmployeeType, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<InvitationLinkWrapper> {
        var localVariablePath = "/api/2.0/portal/users/invitationlink/{employeeType}"
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

        let localVariableRequestBuilder: RequestBuilder<InvitationLinkWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

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
     - Returns how many accounts this portal currently has in the active state, whatever their role, so a client can  show the seat usage next to the allowance. Accounts that were invited but have not joined yet and accounts  that were disabled or removed are not counted. The caller needs the portal-settings right and is refused  without it; the call is read-only and idempotent, and the number moves as soon as an account joins, is  disabled or is deleted. The answer is a plain number, not an object. Compare it with `countUser` and  `countPaidUser` from `GET api/2.0/portal/quota` to see how much of the allowance is left, and with  `GET api/2.0/portal/quota/right` for the smallest quota that would still hold everyone. When the accounts  themselves are needed, and not only how many there are, list them with the People API instead - this operation  cannot filter by role, group or status.
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
     Get a portal user
     
     See also:
     REST API Reference for getUserById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
     - parameter userID: (path) The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. An ID belonging to  no account of this portal and an ID of an internal system account are both answered as not found. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UserInfoWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserById(userID: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UserInfoWrapper {
        return try await getUserByIdWithRequestBuilder(userID: userID, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a portal user
     
     See also:
     REST API Reference for getUserById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
     
     - GET /api/2.0/portal/users/{userID}
     - Returns one user of this portal, addressed by ID, in the shape the portal stores the account: display name,  e-mail, contacts, role and status flags, and the dates of the profile. Nothing has to be called first, and the  call is read-only and idempotent. Who may be read is decided per pair of accounts: a caller always reads their  own profile, a DocSpace administrator reads anyone, a room administrator reads anyone except a guest they have  no relation with, and a user or a guest reads nobody but themselves - a pair that is not allowed is refused.  An ID that belongs to no account of this portal and an ID of a system account are both answered as not found,  so a 404 does not tell the two apart. `userID` in the path has to be a GUID; the calling user's own profile is  easier to fetch with `GET api/2.0/people/@self`. This operation hands back the internal user record - use  `GET api/2.0/people/{userid}` for the same user in the People format, with the group, quota and access  information a client usually needs.
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
     - parameter userID: (path) The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. An ID belonging to  no account of this portal and an ID of an internal system account are both answered as not found. 
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
     - Marks the open-source gift message - the notice a server installation shows about its free edition - as read  for the calling user, so the client stops displaying it. Any signed-in user may call it and nothing has to be  called first. The flag is stored per user, so marking it read for one account leaves it unread for everybody  else on the portal. The call is mutating but idempotent: repeating it changes nothing. It never fails on the  caller's behalf - a storage error is written to the portal log and the operation still answers with a success,  so the answer is no proof that the flag was saved. Nothing is returned in the body, and no operation reads the  flag back or clears it again, which makes the change effectively permanent for that user. It touches only this  one notice: portal-wide announcements and the letters the portal sends are unaffected, and other per-user  settings are stored through the operations under `api/2.0/settings`.
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
     - parameter userid: (query) The account the welcome letter is addressed to, by portal user ID. The key in `key` has to have been issued  for this same account, so the pair is what authorises the call.      - parameter key: (query) The confirmation key from the sign-in link the portal issued for that account, which stands in for a token  here. It is accepted for one hour after it was created; a wrong, foreign or expired key answers 403 and sends  nothing. 
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
     - Sends the welcome letter that follows the registration of a new portal to the account named by `userid` and  switches on the second authentication factor the installation is configured to require after registration; on  a hosted portal in custom mode the registration data is mailed to the sales address as well. Open to  unauthenticated callers: in place of a token it needs `key`, the confirmation key of the sign-in link the  portal issued for that account, and that key is accepted for one hour after it was created - a wrong, foreign  or expired key answers 403 and sends nothing. Both parameters go in the query string. The call is meant to be  made once, right after registration; it is not idempotent, and every call within that hour sends the letters  again. When the installation asks for SMS or an authenticator app after registration, this call is what  enables that method for the whole portal, unless the new account is an internal test address. Nothing is  returned in the body and there is no operation that reports afterwards whether the letters were delivered.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter userid: (query) The account the welcome letter is addressed to, by portal user ID. The key in `key` has to have been issued  for this same account, so the pair is what authorises the call. 
     - parameter key: (query) The confirmation key from the sign-in link the portal issued for that account, which stands in for a token  here. It is accepted for one hour after it was created; a wrong, foreign or expired key answers 403 and sends  nothing. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update an invitation link
     
     See also:
     REST API Reference for updateInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-link/
     - parameter invitationLinkUpdateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: InvitationLinkWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateInvitationLink(invitationLinkUpdateRequestDto: InvitationLinkUpdateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> InvitationLinkWrapper {
        return try await updateInvitationLinkWithRequestBuilder(invitationLinkUpdateRequestDto: invitationLinkUpdateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an invitation link
     
     See also:
     REST API Reference for updateInvitationLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-link/
     
     - PUT /api/2.0/portal/users/invitationlink
     - Changes the deadline and the use limit of an existing invitation link, addressed by its `id`. The role of a  link cannot be changed - delete it and create a link for the other role instead. Inviting members has to be  enabled for the portal (`GET api/2.0/settings/invitationsettings`), the link has to exist, and `maxUseCount`  may not be lower than the number of uses the link already has, which  `GET api/2.0/portal/users/invitationlink/{employeeType}` reports as `currentUseCount`. An `expiration` in the  past is refused; the body is applied as a whole, so omitting `expiration` clears the deadline and omitting  `maxUseCount` removes the use limit. The caller needs the right to add users of the link's role and only the  portal owner may change the DocSpace administrator link. The call is mutating, and repeating it with the same  body leaves the link as it is. The whole link comes back as it now stands, with `url` signed for the calling  account - the URL therefore differs between administrators while the link behind it is the same.
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
     - parameter invitationLinkUpdateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<InvitationLinkWrapper> 
     */
    open class func updateInvitationLinkWithRequestBuilder(invitationLinkUpdateRequestDto: InvitationLinkUpdateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<InvitationLinkWrapper> {
        let localVariablePath = "/api/2.0/portal/users/invitationlink"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: invitationLinkUpdateRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvitationLinkWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
