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
     - Adds a new group with the group manager, name, and members specified in the request.
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
     - parameter id: (path) The group ID.      - parameter membersRequest: (body) The member request. 
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
     - Adds new group members to the group with the ID specified in the request.
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
     - parameter id: (path) The group ID. 
     - parameter membersRequest: (body) The member request. 
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
     - parameter id: (path) The group ID. 
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
     - Deletes a group with the ID specified in the request from the list of groups on the portal.
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
     - parameter id: (path) The group ID. 
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
     - parameter id: (path) The group ID.      - parameter includeMembers: (query) Specifies whether to include the group members or not. (optional)
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
     - Returns the detailed information about the selected group.
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
     - parameter id: (path) The group ID. 
     - parameter includeMembers: (query) Specifies whether to include the group members or not. (optional)
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
     - parameter userid: (path) The user ID. 
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
     - Returns a list of groups for the user with the ID specified in the request.
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
     - parameter userid: (path) The user ID. 
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
     - parameter userId: (query) The user ID. (optional)     - parameter manager: (query) Specifies if the user is a manager or not. (optional)     - parameter count: (query) The number of records to retrieve. (optional)     - parameter startIndex: (query) The starting index for paginated results. (optional)     - parameter sortBy: (query) Specifies the property used to sort the query results. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text used for filtering or searching group data. (optional)
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
     - Returns the general information about all the groups, such as group ID and group manager.
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
     - parameter userId: (query) The user ID. (optional)
     - parameter manager: (query) Specifies if the user is a manager or not. (optional)
     - parameter count: (query) The number of records to retrieve. (optional)
     - parameter startIndex: (query) The starting index for paginated results. (optional)
     - parameter sortBy: (query) Specifies the property used to sort the query results. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text used for filtering or searching group data. (optional)
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
     - parameter fromId: (path) The group ID to move from.      - parameter toId: (path) The group ID to move to. 
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
     - Moves all the members from the selected group to another one specified in the request.
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
     - parameter fromId: (path) The group ID to move from. 
     - parameter toId: (path) The group ID to move to. 
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
     - parameter id: (path) The group ID.      - parameter membersRequest: (body) The member request. 
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
     - Removes the group members specified in the request from the selected group.
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
     - parameter id: (path) The group ID. 
     - parameter membersRequest: (body) The member request. 
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
     - parameter id: (path) The group ID.      - parameter setManagerRequest: (body) The request for setting a group manager. 
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
     - Sets a user with the ID specified in the request as a group manager.
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
     - parameter id: (path) The group ID. 
     - parameter setManagerRequest: (body) The request for setting a group manager. 
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
     - parameter id: (path) The group ID.      - parameter membersRequest: (body) The member request. 
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
     - Replaces the group members with those specified in the request.
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
     - parameter id: (path) The group ID. 
     - parameter membersRequest: (body) The member request. 
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
     - parameter id: (path) The group ID.      - parameter updateGroupRequest: (body) The request for updating a group. 
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
     - Updates the existing group changing the group manager, name, and/or members.
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
     - parameter id: (path) The group ID. 
     - parameter updateGroupRequest: (body) The request for updating a group. 
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
