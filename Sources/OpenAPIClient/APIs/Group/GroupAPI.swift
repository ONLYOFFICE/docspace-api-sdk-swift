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
var fields: String?

    /**
     Add a new group
     
     See also:
     REST API Reference for addGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-group/
     - parameter groupRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addGroup(groupRequestDto: GroupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await addGroupWithRequestBuilder(groupRequestDto: groupRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a new group
     
     See also:
     REST API Reference for addGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-group/
     
     - POST /api/2.0/group
     - Creates a group with the given name and, optionally, a manager and a first set of members.  The caller needs the permissions to edit groups and to add and remove users.  The name is required and cannot be blank, and unlike the operations that add members later, this one checks  every listed account upfront and rejects the whole call with 400 if any of them is unusable - a guest, a  disabled account or an ID that matches nobody.  The call is not idempotent: names are not unique, so repeating it creates a second group with the same name.  Creating a group raises a `GroupCreated` webhook, and the answer holds the new group with its members  included.  Members can be changed afterwards through `PUT api/2.0/group/{id}` or the dedicated member operations.
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
     - parameter groupRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func addGroupWithRequestBuilder(groupRequestDto: GroupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        let localVariablePath = "/api/2.0/group"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: groupRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Add group members
     
     See also:
     REST API Reference for addMembersTo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/
     - parameter id: (path) The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.      - parameter membersRequest: (body) The accounts to add, replace with, or remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addMembersTo(id: UUID, membersRequest: MembersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await addMembersToWithRequestBuilder(id: id, membersRequest: membersRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add group members
     
     See also:
     REST API Reference for addMembersTo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/
     
     - PUT /api/2.0/group/{id}/members
     - Adds the listed accounts to a group, keeping the members it already has.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Accounts that cannot be group members - a guest, a disabled account or an ID that matches nobody - are  silently skipped instead of failing the call, so compare the members in the answer with what was sent to see  what was actually applied.  The call is idempotent for an account that is already a member, and it does not change who manages the group;  use `PUT api/2.0/group/{id}/manager` for that.  The answer is the group with its members after the addition.  To replace the whole list instead of extending it, use `POST api/2.0/group/{id}/members`.
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
     - parameter id: (path) The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. 
     - parameter membersRequest: (body) The accounts to add, replace with, or remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func addMembersToWithRequestBuilder(id: UUID, membersRequest: MembersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        var localVariablePath = "/api/2.0/group/{id}/members"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: membersRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a group
     
     See also:
     REST API Reference for deleteGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/
     - parameter id: (path) The ID of the group to delete, taken from the route. It has to be a group that has not been deleted already,  otherwise the operation answers 404. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteGroup(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteGroupWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a group
     
     See also:
     REST API Reference for deleteGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/
     
     - DELETE /api/2.0/group/{id}
     - Deletes a group and withdraws the access it had been granted to rooms, folders and files.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The removal is permanent and cannot be undone, and it affects sharing: everything that was shared with the  group loses that share, so members who had access only through this group lose it too.  The accounts themselves are kept - only their membership disappears.  The call answers 204 with no body and raises a `GroupDeleted` webhook; a second call with the same ID answers  404 rather than succeeding again.  To empty a group without deleting it, move its members away with  `PUT api/2.0/group/{fromId}/members/{toId}` or remove them through `DELETE api/2.0/group/{id}/members`.
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
     - parameter id: (path) The ID of the group to delete, taken from the route. It has to be a group that has not been deleted already,  otherwise the operation answers 404. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteGroupWithRequestBuilder(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a group
     
     See also:
     REST API Reference for getGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/
     - parameter id: (path) The ID of the group to read, taken from the route. It has to be a group that has not been deleted, otherwise  the operation answers 404.      - parameter includeMembers: (query) Whether to fill in the member list of the group. It defaults to true, so set it to false when only the name  and the manager are needed and the group may be large. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroup(id: UUID, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await getGroupWithRequestBuilder(id: id, includeMembers: includeMembers, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a group
     
     See also:
     REST API Reference for getGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/
     
     - GET /api/2.0/group/{id}
     - Returns one group by its ID, with its name, its manager and - when asked for - the accounts that belong to  it.  The caller needs the permission to read groups, and the ID has to belong to a group that has not been  deleted, otherwise the operation answers 404.  The call is read-only, and the member list is left out unless `includeMembers` is set to true, so ask for it  only when the members are actually needed.  Use `GET api/2.0/group` to look a group up by name or to page through them all.
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
     - parameter id: (path) The ID of the group to read, taken from the route. It has to be a group that has not been deleted, otherwise  the operation answers 404. 
     - parameter includeMembers: (query) Whether to fill in the member list of the group. It defaults to true, so set it to false when only the name  and the manager are needed and the group may be large. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func getGroupWithRequestBuilder(id: UUID, includeMembers: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        var localVariablePath = "/api/2.0/group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "includeMembers": (wrappedValue: includeMembers?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get user groups
     
     See also:
     REST API Reference for getGroupByUserId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/
     - parameter userid: (path) The ID of the account whose groups are listed, taken from the route. An ID that matches no account yields an  empty list rather than 404. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupSummaryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupByUserId(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupSummaryArrayWrapper {
        return try await getGroupByUserIdWithRequestBuilder(userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user groups
     
     See also:
     REST API Reference for getGroupByUserId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/
     
     - GET /api/2.0/group/user/{userid}
     - Returns every group the account with the ID in the route belongs to, as a flat list of ID and name pairs.  The caller needs the permission to read groups.  The call is read-only, is not paged, and answers an empty list both for an account that belongs to no group  and for an ID that matches no account, so an empty answer does not prove the account exists.  The entries are summaries and carry neither the manager nor the members - read `GET api/2.0/group/{id}` for  the full picture of one of them.
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
     - parameter userid: (path) The ID of the account whose groups are listed, taken from the route. An ID that matches no account yields an  empty list rather than 404. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupSummaryArrayWrapper> 
     */
    open class func getGroupByUserIdWithRequestBuilder(userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupSummaryArrayWrapper> {
        var localVariablePath = "/api/2.0/group/user/{userid}"
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

        let localVariableRequestBuilder: RequestBuilder<GroupSummaryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get groups
     
     See also:
     REST API Reference for getGroups Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/
     - parameter userId: (query) Keeps only the groups the account with this ID takes part in. Omit it to search every group of the portal. (optional)     - parameter manager: (query) Narrows `userId` down to the groups that account manages, instead of every group it belongs to. It has no  effect on its own and defaults to false. (optional)     - parameter count: (query) The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)     - parameter startIndex: (query) The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)     - parameter sortBy: (query) What to order the groups by: `Title`, `Manager` or `MembersCount`, compared without regard to case. Any other  value, and omitting the field, orders by title. (optional)     - parameter sortOrder: (query) The direction of the ordering: `Ascending`, which is the default, or `Descending`. (optional)     - parameter filterValue: (query) The text to match against the group name. Omit it to get every group. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroups(userId: UUID? = nil, manager: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupArrayWrapper {
        return try await getGroupsWithRequestBuilder(userId: userId, manager: manager, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get groups
     
     See also:
     REST API Reference for getGroups Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/
     
     - GET /api/2.0/group
     - Returns the groups of the portal, one page at a time, with the summary information about each of them - the  ID, the name and the manager - but without the member list.  The caller needs the permission to read groups.  The call is read-only, and the number of groups that match the filters is reported in the total count of the  response, so a client can page through them with `count` and `startIndex`.  Narrow the result with `filterValue` on the group name, with `userId` to keep only the groups that account  belongs to, and with `manager` set to true to keep only the groups it manages; order it with `sortBy` and  `sortOrder`, and an unknown `sortBy` falls back to sorting by title.  The entries carry no members - read `GET api/2.0/group/{id}` with `includeMembers` for one group, or  `GET api/2.0/group/user/{userid}` to find the groups of a single account.
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
     - parameter userId: (query) Keeps only the groups the account with this ID takes part in. Omit it to search every group of the portal. (optional)
     - parameter manager: (query) Narrows `userId` down to the groups that account manages, instead of every group it belongs to. It has no  effect on its own and defaults to false. (optional)
     - parameter count: (query) The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
     - parameter startIndex: (query) The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)
     - parameter sortBy: (query) What to order the groups by: `Title`, `Manager` or `MembersCount`, compared without regard to case. Any other  value, and omitting the field, orders by title. (optional)
     - parameter sortOrder: (query) The direction of the ordering: `Ascending`, which is the default, or `Descending`. (optional)
     - parameter filterValue: (query) The text to match against the group name. Omit it to get every group. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupArrayWrapper> 
     */
    open class func getGroupsWithRequestBuilder(userId: UUID? = nil, manager: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupArrayWrapper> {
        let localVariablePath = "/api/2.0/group"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": (wrappedValue: userId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "manager": (wrappedValue: manager?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
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

        let localVariableRequestBuilder: RequestBuilder<GroupArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Move group members
     
     See also:
     REST API Reference for moveMembersTo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/
     - parameter fromId: (path) The ID of the group the members are taken from. It is emptied but not deleted, and it has to be a group that  has not been deleted already.      - parameter toId: (path) The ID of the group the members are moved into. It is the group the answer describes, and it has to be a  group that has not been deleted already. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func moveMembersTo(fromId: UUID, toId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await moveMembersToWithRequestBuilder(fromId: fromId, toId: toId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Move group members
     
     See also:
     REST API Reference for moveMembersTo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/
     
     - PUT /api/2.0/group/{fromId}/members/{toId}
     - Moves every member of one group into another group, emptying the first one.  The caller needs the permissions to edit groups and to add and remove users, and both IDs have to belong to  groups that have not been deleted, otherwise the operation answers 404.  The source group is kept, only without members, so delete it separately through  `DELETE api/2.0/group/{id}` if it is no longer needed.  Members that cannot be group members any more are silently skipped rather than failing the call, and an  account that already belongs to the destination is simply left there.  The answer is the destination group with its members, not the source one.  To move a chosen few instead of everybody, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.
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
     - parameter fromId: (path) The ID of the group the members are taken from. It is emptied but not deleted, and it has to be a group that  has not been deleted already. 
     - parameter toId: (path) The ID of the group the members are moved into. It is the group the answer describes, and it has to be a  group that has not been deleted already. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func moveMembersToWithRequestBuilder(fromId: UUID, toId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        var localVariablePath = "/api/2.0/group/{fromId}/members/{toId}"
        let fromIdPreEscape = "\(APIHelper.mapValueToPathItem(fromId))"
        let fromIdPostEscape = fromIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fromId}", with: fromIdPostEscape, options: .literal, range: nil)
        let toIdPreEscape = "\(APIHelper.mapValueToPathItem(toId))"
        let toIdPostEscape = toIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{toId}", with: toIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove group members
     
     See also:
     REST API Reference for removeMembersFrom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/
     - parameter id: (path) The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.      - parameter membersRequest: (body) The accounts to add, replace with, or remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func removeMembersFrom(id: UUID, membersRequest: MembersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await removeMembersFromWithRequestBuilder(id: id, membersRequest: membersRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove group members
     
     See also:
     REST API Reference for removeMembersFrom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/
     
     - DELETE /api/2.0/group/{id}/members
     - Removes the listed accounts from a group, leaving the rest of its members in place.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The accounts themselves are kept; only their membership in this group ends, together with the access they had  through it.  The call is idempotent and forgiving: an ID that is not a member, and one that matches no account at all, are  both skipped without an error, and an empty list simply changes nothing.  The answer is the group with the members that remain.  Emptying a group cannot be done through `POST api/2.0/group/{id}/members`, which needs at least one valid  account, so list every member here, or move them away with `PUT api/2.0/group/{fromId}/members/{toId}`.
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
     - parameter id: (path) The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. 
     - parameter membersRequest: (body) The accounts to add, replace with, or remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func removeMembersFromWithRequestBuilder(id: UUID, membersRequest: MembersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        var localVariablePath = "/api/2.0/group/{id}/members"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: membersRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set a group manager
     
     See also:
     REST API Reference for setGroupManager Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/
     - parameter id: (path) The ID of the group whose manager is set, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.      - parameter setManagerRequest: (body) The account to make the manager of the group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setGroupManager(id: UUID, setManagerRequest: SetManagerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await setGroupManagerWithRequestBuilder(id: id, setManagerRequest: setManagerRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set a group manager
     
     See also:
     REST API Reference for setGroupManager Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/
     
     - PUT /api/2.0/group/{id}/manager
     - Makes an account the manager of a group, replacing whoever managed it before.  The caller needs the permissions to edit groups and to add and remove users.  Both the group and the account have to exist: the operation answers 404 when the ID in the route matches no  live group and also when `userId` matches no account, so the message of the error says which of the two was  not found.  The account is added to the group at the same time, so a manager does not have to be a member beforehand, and  the previous manager stays in the group as an ordinary member.  A group has one manager, which makes the call idempotent when it names the account that manages it already.  The answer is the group with its new manager.  To change the members rather than the manager, use `PUT api/2.0/group/{id}/members`.
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
     - parameter id: (path) The ID of the group whose manager is set, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. 
     - parameter setManagerRequest: (body) The account to make the manager of the group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func setGroupManagerWithRequestBuilder(id: UUID, setManagerRequest: SetManagerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        var localVariablePath = "/api/2.0/group/{id}/manager"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setManagerRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Replace group members
     
     See also:
     REST API Reference for setMembersTo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/
     - parameter id: (path) The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.      - parameter membersRequest: (body) The accounts to add, replace with, or remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setMembersTo(id: UUID, membersRequest: MembersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await setMembersToWithRequestBuilder(id: id, membersRequest: membersRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Replace group members
     
     See also:
     REST API Reference for setMembersTo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/
     
     - POST /api/2.0/group/{id}/members
     - Replaces the whole member list of a group with the accounts given in the request, removing everybody who is  not in that list.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  At least one of the listed accounts has to be usable as a group member, otherwise the call is rejected with  400 and the group is left untouched; the accounts that cannot be members - a guest, a disabled account or an  ID that matches nobody - are then silently skipped while the rest are applied.  The replacement is not atomic: the current members are removed first and the new ones added afterwards, so a  failure in between can leave the group empty.  The answer is the group with the members it ends up with, which is why it should be read instead of assuming  the request was applied verbatim.  To add or remove a few accounts without touching the others, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.
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
     - parameter id: (path) The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. 
     - parameter membersRequest: (body) The accounts to add, replace with, or remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func setMembersToWithRequestBuilder(id: UUID, membersRequest: MembersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        var localVariablePath = "/api/2.0/group/{id}/members"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: membersRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a group
     
     See also:
     REST API Reference for updateGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/
     - parameter id: (path) The ID of the group to update, taken from the route. It has to be a group that has not been deleted,  otherwise the operation answers 404.      - parameter updateGroupRequest: (body) The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateGroup(id: UUID, updateGroupRequest: UpdateGroupRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupWrapper {
        return try await updateGroupWithRequestBuilder(id: id, updateGroupRequest: updateGroupRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a group
     
     See also:
     REST API Reference for updateGroup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/
     
     - PUT /api/2.0/group/{id}
     - Changes the name and the manager of a group and adds or removes members, in one call.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Every field is optional and the ones that are left out are kept: omitting `groupName` keeps the current name,  and omitting `groupManager` keeps the current manager rather than clearing it.  Accounts in `membersToAdd` that cannot be group members - a guest, a disabled account or an ID that matches  nobody - are silently skipped instead of failing the call, so compare the members in the answer with what was  sent to see what was actually applied.  Members are added first and removed afterwards, an account listed in both lists therefore ends up removed,  and removing an account that is not a member changes nothing.  The change raises a `GroupUpdated` webhook, and the answer holds the group as it is after the update.
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
     - parameter id: (path) The ID of the group to update, taken from the route. It has to be a group that has not been deleted,  otherwise the operation answers 404. 
     - parameter updateGroupRequest: (body) The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupWrapper> 
     */
    open class func updateGroupWithRequestBuilder(id: UUID, updateGroupRequest: UpdateGroupRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupWrapper> {
        var localVariablePath = "/api/2.0/group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension GroupAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> GroupAPIApi {
        self.fields = fields
        return self
    }
}
