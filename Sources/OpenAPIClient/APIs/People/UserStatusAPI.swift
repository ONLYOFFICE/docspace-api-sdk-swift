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
     Get profiles by status
     
     See also:
     REST API Reference for getByStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-by-status/
     - parameter status: (path) The account state to list, taken from the route: `Active` for working accounts, `Terminated` for disabled  ones, `Pending` for open invitations, or `All` for every state.      - parameter filterBy: (query) The only recognised value is `group`, which makes `filterValue` the ID of the group to keep the members of.  Any other value, and omitting the field, applies no group filter. (optional)     - parameter count: (query) The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)     - parameter startIndex: (query) The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)     - parameter sortBy: (query) What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. (optional)     - parameter sortOrder: (query) The direction of the ordering: `Ascending`, which is the default, or `Descending`. (optional)     - parameter filterSeparator: (query) The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. (optional)     - parameter filterValue: (query) The text to match against the name and the email of the account, case-insensitively. Omit it to apply no  text filter. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getByStatus(status: EmployeeStatus, filterBy: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await getByStatusWithRequestBuilder(status: status, filterBy: filterBy, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get profiles by status
     
     See also:
     REST API Reference for getByStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-by-status/
     
     - GET /api/2.0/people/status/{status}
     - Returns a page of the accounts that are in one particular state - the status is taken from the route - with  the full profile of each of them.  The caller has to be a room admin, a DocSpace admin or a People module admin; a member or a guest gets 403.  The call is read-only, paged by `count` and `startIndex`, ordered by `sortBy` and `sortOrder`, and reports  the number of matches in the total count of the response.  Narrow it with `filterValue` on the name and the email; setting `filterBy` to `group` makes the same  `filterValue` the ID of the group to keep the members of, and because the value is then applied as the text  filter as well, that combination normally matches nothing - use `GET api/2.0/people/filter` with `groupId`  to filter by group.  `GET api/2.0/people` is the same operation fixed to the `Active` status.
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
     - parameter status: (path) The account state to list, taken from the route: `Active` for working accounts, `Terminated` for disabled  ones, `Pending` for open invitations, or `All` for every state. 
     - parameter filterBy: (query) The only recognised value is `group`, which makes `filterValue` the ID of the group to keep the members of.  Any other value, and omitting the field, applies no group filter. (optional)
     - parameter count: (query) The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
     - parameter startIndex: (query) The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
     - parameter sortBy: (query) What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. (optional)
     - parameter sortOrder: (query) The direction of the ordering: `Ascending`, which is the default, or `Descending`. (optional)
     - parameter filterSeparator: (query) The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. (optional)
     - parameter filterValue: (query) The text to match against the name and the email of the account, case-insensitively. Omit it to apply no  text filter. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func getByStatusWithRequestBuilder(status: EmployeeStatus, filterBy: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/status/{status}"
        let statusPreEscape = "\(APIHelper.mapValueToPathItem(status))"
        let statusPostEscape = statusPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{status}", with: statusPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filterBy": (wrappedValue: filterBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterSeparator": (wrappedValue: filterSeparator?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set my activation status
     
     See also:
     REST API Reference for updateUserActivationStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-activation-status/
     - parameter activationstatus: (path) The activation state to set on the calling account, taken from the route: `NotActivated`, `Activated`,  `Pending` or `AutoGenerated`.      - parameter updateMembersRequestDto: (body) The account to change. Only `userIds` is read, it has to hold exactly one entry, and that entry has to be the  calling account; `resendAll` is ignored here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserActivationStatus(activationstatus: EmployeeActivationStatus, updateMembersRequestDto: UpdateMembersRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await updateUserActivationStatusWithRequestBuilder(activationstatus: activationstatus, updateMembersRequestDto: updateMembersRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set my activation status
     
     See also:
     REST API Reference for updateUserActivationStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-activation-status/
     
     - PUT /api/2.0/people/activationstatus/{activationstatus}
     - Sets the activation state of the calling account, which is how a person finishes confirming their email  address after following the link they were sent.  The request has to carry the confirmation token from that link rather than an ordinary session, and the  account must be allowed to edit its own profile.  Despite taking a list, it accepts exactly one ID and that ID has to be the calling account: an empty list,  more than one entry, or somebody else's ID is answered with 400, so it cannot be used to activate other  people.  Setting `Activated` on the portal owner sends the administrator welcome email, once per portal.  The change raises a `UserUpdated` webhook, and the answer holds the profile in its new state - or nothing at  all when the account has meanwhile disappeared, which is skipped without an error.  The account status is a different thing and is changed through `PUT api/2.0/people/status/{status}`.
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
     - parameter activationstatus: (path) The activation state to set on the calling account, taken from the route: `NotActivated`, `Activated`,  `Pending` or `AutoGenerated`. 
     - parameter updateMembersRequestDto: (body) The account to change. Only `userIds` is read, it has to hold exactly one entry, and that entry has to be the  calling account; `resendAll` is ignored here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func updateUserActivationStatusWithRequestBuilder(activationstatus: EmployeeActivationStatus, updateMembersRequestDto: UpdateMembersRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/activationstatus/{activationstatus}"
        let activationstatusPreEscape = "\(APIHelper.mapValueToPathItem(activationstatus))"
        let activationstatusPostEscape = activationstatusPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{activationstatus}", with: activationstatusPostEscape, options: .literal, range: nil)
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
     Change a user status
     
     See also:
     REST API Reference for updateUserStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-status/
     - parameter status: (path) The state to put the listed accounts into, taken from the route. Only `Active`, which enables an account,  and `Terminated`, which disables it, are accepted; any other value is rejected with 400.      - parameter updateMembersRequestDto: (body) The accounts to enable or disable. Only `userIds` is read by this operation; `resendAll` belongs to the  invitation operations and is ignored here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserStatus(status: EmployeeStatus, updateMembersRequestDto: UpdateMembersRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullArrayWrapper {
        return try await updateUserStatusWithRequestBuilder(status: status, updateMembersRequestDto: updateMembersRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change a user status
     
     See also:
     REST API Reference for updateUserStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-status/
     
     - PUT /api/2.0/people/status/{status}
     - Enables or disables several portal accounts at once, which is the way to suspend somebody without deleting  them and to bring them back later.  Only `Active` and `Terminated` are accepted in the route; any other status answers 400.  The caller needs the permission to edit users, and the whole list is checked before anything is applied: a  system account, an LDAP account, the portal owner, the caller themselves, or - unless the caller is the  portal owner - a DocSpace administrator rejects the entire call with 403 and changes nothing.  Disabling ends every session of the account and takes its seat back, while enabling takes a seat again and  can therefore answer 402 when the tariff or the user quota has none left; the accounts are then processed one  by one, so a quota failure partway through leaves the earlier ones enabled.  Enabling only affects accounts that were disabled, and an account that had never filled in its name comes  back as `Pending` rather than `Active` when it still has an unused invitation, so read the `status` in the  answer instead of assuming it matches the request.  Each changed account raises a `UserUpdated` webhook, and disabling is what  `DELETE api/2.0/people/{userid}` requires before it will delete an account.
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
     - parameter status: (path) The state to put the listed accounts into, taken from the route. Only `Active`, which enables an account,  and `Terminated`, which disables it, are accepted; any other value is rejected with 400. 
     - parameter updateMembersRequestDto: (body) The accounts to enable or disable. Only `userIds` is read by this operation; `resendAll` belongs to the  invitation operations and is ignored here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullArrayWrapper> 
     */
    open class func updateUserStatusWithRequestBuilder(status: EmployeeStatus, updateMembersRequestDto: UpdateMembersRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullArrayWrapper> {
        var localVariablePath = "/api/2.0/people/status/{status}"
        let statusPreEscape = "\(APIHelper.mapValueToPathItem(status))"
        let statusPostEscape = statusPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{status}", with: statusPostEscape, options: .literal, range: nil)
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
