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
     Get enabled modules
     
     See also:
     REST API Reference for getEnabledModules Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: EnabledModuleArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEnabledModules(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EnabledModuleArrayWrapper {
        return try await getEnabledModulesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get enabled modules
     
     See also:
     REST API Reference for getEnabledModules Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/
     
     - GET /api/2.0/settings/security/modules
     - Lists the portal modules the calling user can currently open, each as an `id` holding the module's product  class name and a `title` holding its display name, both HTML-encoded. Any signed-in member may call this;  anonymous callers are not admitted. The operation is read-only and takes no parameters, and the list is  specific to the caller: modules hidden for this portal, and modules whose access rules exclude the caller, are  left out, and sub-modules nested under another module are never listed. Entries follow the portal's own module  order rather than an alphabetical one. An empty list means the installation registers no such modules at all -  the case on DocSpace, where the classic modules do not exist - and is not a failure. The identifiers here are  display-oriented class names, not the GUIDs the access-settings operations work with, so do not feed them to  `GET api/2.0/settings/security/{id}`, which expects a module GUID.
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
     - returns: RequestBuilder<EnabledModuleArrayWrapper> 
     */
    open class func getEnabledModulesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EnabledModuleArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/security/modules"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnabledModuleArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check product administrator
     
     See also:
     REST API Reference for getIsProductAdministrator Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
     - parameter productid: (query) The module being asked about, by module GUID. The all-zero GUID asks about the portal itself rather than a  single module.      - parameter userid: (query) The account being asked about, by portal user ID. An ID that names no account is answered as a plain negative  rather than a failure, so a negative answer does not prove the account exists. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ProductAdministratorWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIsProductAdministrator(productid: UUID, userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ProductAdministratorWrapper {
        return try await getIsProductAdministratorWithRequestBuilder(productid: productid, userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check product administrator
     
     See also:
     REST API Reference for getIsProductAdministrator Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
     
     - GET /api/2.0/settings/security/administrator
     - Reports whether one user administers one portal module, as the identifiers asked about plus an `administrator`  flag. Both `productid` and `userid` are query parameters and both are required; the all-zero product GUID asks  about the portal itself rather than about a single module. The caller needs the portal-settings right of a  DocSpace administrator, otherwise the call is refused. The operation is read-only. The flag is `true` when the  user belongs to the DocSpace administrator group or to the module's own group, so a portal-wide administrator  is reported as an administrator of every module, whatever the module identifier says. Identifiers that name no  user and no group are answered with `false` instead of a failure, so a `false` does not prove the user exists.  The verdict is read out of group membership alone and says nothing about whether the module is enabled for  this portal, which `GET api/2.0/settings/security/{id}` reports. Use  `GET api/2.0/settings/security/administrator/{productid}` to list everyone who administers a module, and  `PUT api/2.0/settings/security/administrator` to change the membership.
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
     - parameter productid: (query) The module being asked about, by module GUID. The all-zero GUID asks about the portal itself rather than a  single module. 
     - parameter userid: (query) The account being asked about, by portal user ID. An ID that names no account is answered as a plain negative  rather than a failure, so a negative answer does not prove the account exists. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ProductAdministratorWrapper> 
     */
    open class func getIsProductAdministratorWithRequestBuilder(productid: UUID, userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ProductAdministratorWrapper> {
        let localVariablePath = "/api/2.0/settings/security/administrator"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "productid": (wrappedValue: productid.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "userid": (wrappedValue: userid.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProductAdministratorWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get password settings
     
     See also:
     REST API Reference for getPasswordSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: PasswordSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPasswordSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PasswordSettingsWrapper {
        return try await getPasswordSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get password settings
     
     See also:
     REST API Reference for getPasswordSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/
     
     - GET /api/2.0/settings/security/password
     - Returns the password policy of the current portal: the minimum length together with the flags that demand an  uppercase letter, a digit and a special symbol, plus the regular expressions a client can check a password  against before sending it anywhere. Any signed-in member may read it, and it is also reachable with the  parameters of a confirmation link, so an invited user or one resetting a password can validate the new  password before having a session; a portal whose payment has lapsed still answers. The operation is read-only  and honours `If-Modified-Since`: send back the `Last-Modified` value of an earlier answer and an unchanged  policy comes back as an empty not-modified response rather than a body. A portal nobody has configured  requires 8 characters with all three flags off. Whatever the policy says, the portal refuses a password longer  than 30 characters, a ceiling this answer does not carry. Change the policy with  `PUT api/2.0/settings/security/password`.
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
     - returns: RequestBuilder<PasswordSettingsWrapper> 
     */
    open class func getPasswordSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PasswordSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/security/password"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PasswordSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get product administrators
     
     See also:
     REST API Reference for getProductAdministrators Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
     - parameter productid: (path) The module the operation acts on, by module GUID. The all-zero GUID stands for the portal itself rather than  for a single module, and a GUID that names no module group is answered with an empty result instead of a  failure. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProductAdministrators(productid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeArrayWrapper {
        return try await getProductAdministratorsWithRequestBuilder(productid: productid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get product administrators
     
     See also:
     REST API Reference for getProductAdministrators Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
     
     - GET /api/2.0/settings/security/administrator/{productid}
     - Lists the users who administer the portal module identified by `productid` in the path. The all-zero GUID  stands for the portal itself: the answer then covers the DocSpace administrator group together with every  product group, and includes the portal owner, who administers everything by default. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. `productid` has to be a  GUID, and one that names no group is answered with an empty list rather than a failure. The operation is  read-only and returns whole user profiles, a heavier answer than a membership check, and a user who belongs to  more than one of the groups asked about is listed once per group. Entries arrive in group order, the DocSpace  administrator group first, the list is neither paged nor filterable, and a promotion made through the sibling  `PUT` shows up here at once. Use `GET api/2.0/settings/security/administrator` to test a single user against a  single module, and `PUT api/2.0/settings/security/administrator` to promote or demote somebody.
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
     - parameter productid: (path) The module the operation acts on, by module GUID. The all-zero GUID stands for the portal itself rather than  for a single module, and a GUID that names no module group is answered with an empty result instead of a  failure. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeArrayWrapper> 
     */
    open class func getProductAdministratorsWithRequestBuilder(productid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeArrayWrapper> {
        var localVariablePath = "/api/2.0/settings/security/administrator/{productid}"
        let productidPreEscape = "\(APIHelper.mapValueToPathItem(productid))"
        let productidPostEscape = productidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{productid}", with: productidPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check module availability
     
     See also:
     REST API Reference for getWebItemSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
     - parameter id: (path) The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebItemSecurityInfo(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await getWebItemSecurityInfoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check module availability
     
     See also:
     REST API Reference for getWebItemSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
     
     - GET /api/2.0/settings/security/{id}
     - Answers whether the module with the given identifier is available to the calling user right now, as a single  boolean. `id` is the module GUID and travels in the path; a value that is not a GUID does not match the route  at all. Any signed-in member may call this; anonymous callers are not admitted. The operation is read-only and  its answer is specific to the caller: `true` means a module with that identifier is registered in this portal,  is visible, and the caller is allowed to read it, while `false` covers every other case - the module is not  registered here, it is hidden for this portal, or the caller is outside the users and groups allowed to open  it. A `false` therefore does not tell those apart, and an unknown identifier is reported as unavailable  instead of failing. Read the allow-list behind the decision with `GET api/2.0/settings/security`, list the  modules the caller can actually open with `GET api/2.0/settings/security/modules`, and change access with  `PUT api/2.0/settings/security`.
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
     - parameter id: (path) The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func getWebItemSecurityInfoWithRequestBuilder(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/settings/security/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get module access settings
     
     See also:
     REST API Reference for getWebItemSettingsSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
     - parameter ids: (query) The modules to report on, each given as a GUID and sent as a repeated query value. An entry that is not a  GUID fails the whole request as invalid. Leaving the list out asks about every module registered in the  portal, which on a DocSpace installation is none, so the answer is then empty rather than complete. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SecurityArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebItemSettingsSecurityInfo(ids: [String]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SecurityArrayWrapper {
        return try await getWebItemSettingsSecurityInfoWithRequestBuilder(ids: ids, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get module access settings
     
     See also:
     REST API Reference for getWebItemSettingsSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
     
     - GET /api/2.0/settings/security
     - Reports how access to the portal's own modules is configured: for every module identifier sent in `ids`,  whether access is restricted at all and which users and groups are allowed to open the module. Send the  identifiers as repeated `ids` query values; each one has to be a GUID, and anything else is rejected as an  invalid request. Omitting `ids` asks about every module registered in the portal, which on a DocSpace  installation is none, so the answer is then an empty list rather than a failure. Any signed-in member may call  this; anonymous callers are not admitted. The operation is read-only and answers one entry per identifier, in  the order the identifiers were sent. `enabled` is `false` for a module nobody has ever configured, `groups`  and `users` name the subjects the rule was stored for, and `isSubItem` marks a module that hangs under another  one. Users the caller is not allowed to see are left out of `users`, so the same module can come back with  different lists for different callers. Change any of this with `PUT api/2.0/settings/security`.
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
     - parameter ids: (query) The modules to report on, each given as a GUID and sent as a repeated query value. An entry that is not a  GUID fails the whole request as invalid. Leaving the list out asks about every module registered in the  portal, which on a DocSpace installation is none, so the answer is then empty rather than complete. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SecurityArrayWrapper> 
     */
    open class func getWebItemSettingsSecurityInfoWithRequestBuilder(ids: [String]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SecurityArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/security"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": (wrappedValue: ids?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SecurityArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set access to modules in bulk
     
     See also:
     REST API Reference for setAccessToWebItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/
     - parameter webItemsSecurityRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SecurityArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setAccessToWebItems(webItemsSecurityRequestsDto: WebItemsSecurityRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SecurityArrayWrapper {
        return try await setAccessToWebItemsWithRequestBuilder(webItemsSecurityRequestsDto: webItemsSecurityRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set access to modules in bulk
     
     See also:
     REST API Reference for setAccessToWebItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/
     
     - PUT /api/2.0/settings/security/access
     - Switches several portal modules on or off in one call: `items` carries an entry per module, its `key` the  module GUID and its `value` the new enabled flag. The caller needs the portal-settings right of a DocSpace  administrator, and the call is answered with 403 on an open portal, where everyone is admitted and per-module  rules would mean nothing. Every key has to be a GUID; anything else is rejected as an invalid request, and a  module listed twice is applied once, from its first entry. This operation carries no subject list of its own:  switching a product module on restores the users and groups it was last restricted to, while every other case  is stored as a plain allow or deny for everyone, so use `PUT api/2.0/settings/security` when the allow-list  itself has to change. The batch is recorded in the audit trail as one list update rather than module by  module. The answer is the resulting configuration of every module listed, in the shape  `GET api/2.0/settings/security` returns.
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
     - parameter webItemsSecurityRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SecurityArrayWrapper> 
     */
    open class func setAccessToWebItemsWithRequestBuilder(webItemsSecurityRequestsDto: WebItemsSecurityRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SecurityArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/security/access"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: webItemsSecurityRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SecurityArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set product administrator
     
     See also:
     REST API Reference for setProductAdministrator Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/
     - parameter securityRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ProductAdministratorWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setProductAdministrator(securityRequestsDto: SecurityRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ProductAdministratorWrapper {
        return try await setProductAdministratorWithRequestBuilder(securityRequestsDto: securityRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set product administrator
     
     See also:
     REST API Reference for setProductAdministrator Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/
     
     - PUT /api/2.0/settings/security/administrator
     - Promotes a portal member to administrator of one module, or takes that role away, according to the  `administrator` flag; the all-zero product GUID targets the DocSpace administrator role, which covers the  whole portal. The caller needs the portal-settings right of a DocSpace administrator, and granting the  portal-wide role additionally requires being the portal owner - anyone else is refused with 403. A free cloud  plan does not offer the option at all and answers 402, as does a promotion for which no paid seat is left,  since promoting a guest or a plain member turns them into a paid one. Taking the portal-wide role away also  removes the member from every product group. The change is immediate, portal-wide, recorded in the audit  trail, and sending the same body twice changes nothing further; it never creates a user, so invite the member  first. The answer echoes the identifiers and the flag as stored - re-read membership with  `GET api/2.0/settings/security/administrator`.
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
     - parameter securityRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ProductAdministratorWrapper> 
     */
    open class func setProductAdministratorWithRequestBuilder(securityRequestsDto: SecurityRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ProductAdministratorWrapper> {
        let localVariablePath = "/api/2.0/settings/security/administrator"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProductAdministratorWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set module access
     
     See also:
     REST API Reference for setWebItemSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/
     - parameter webItemSecurityRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SecurityArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setWebItemSecurity(webItemSecurityRequestsDto: WebItemSecurityRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SecurityArrayWrapper {
        return try await setWebItemSecurityWithRequestBuilder(webItemSecurityRequestsDto: webItemSecurityRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set module access
     
     See also:
     REST API Reference for setWebItemSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/
     
     - PUT /api/2.0/settings/security
     - Replaces the access rules of one portal module: `id` names the module, `enabled` says whether it may be  opened, and `subjects` lists the users and groups the rule is stored for. The caller needs the portal-settings  right of a DocSpace administrator, and the call is answered with 403 on an open portal, where everyone is  admitted and per-module rules would mean nothing. `id` has to be a GUID; anything else is rejected as an  invalid request. The rules stored before are dropped rather than extended, so send the full list of subjects  every time. Watch the empty cases: leaving `subjects` out applies `enabled` to everyone, while an empty  `subjects` array is stored as access for everyone whatever `enabled` says. The change is recorded in the audit  trail unless `subjects` was left out entirely. The answer is the module's resulting configuration as a  single-entry list, in the shape `GET api/2.0/settings/security` returns. To switch several modules at once use  `PUT api/2.0/settings/security/access`.
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
     - parameter webItemSecurityRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SecurityArrayWrapper> 
     */
    open class func setWebItemSecurityWithRequestBuilder(webItemSecurityRequestsDto: WebItemSecurityRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SecurityArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/security"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: webItemSecurityRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SecurityArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update password settings
     
     See also:
     REST API Reference for updatePasswordSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/
     - parameter passwordSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PasswordSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updatePasswordSettings(passwordSettingsRequestsDto: PasswordSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PasswordSettingsWrapper {
        return try await updatePasswordSettingsWithRequestBuilder(passwordSettingsRequestsDto: passwordSettingsRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update password settings
     
     See also:
     REST API Reference for updatePasswordSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/
     
     - PUT /api/2.0/settings/security/password
     - Replaces the password policy of the whole portal with the four values sent: `minLength` and the three flags  that demand an uppercase letter, a digit and a special symbol. There is no partial update - a flag left out of  the body is stored as `false` - so read the current policy with `GET api/2.0/settings/security/password` and  send it back with your change applied. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. `minLength` has to sit between the floor the installation is configured with, 8  characters unless it was changed, and the ceiling of 30; anything outside is rejected as an invalid request.  The new policy applies to passwords set from now on: existing passwords keep working until their owners change  them, and nobody is asked to renew. The change is portal-wide, recorded in the audit trail, and sending the  same body twice changes nothing further. The answer is the stored policy with its regular expressions.
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
     - parameter passwordSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PasswordSettingsWrapper> 
     */
    open class func updatePasswordSettingsWithRequestBuilder(passwordSettingsRequestsDto: PasswordSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PasswordSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/security/password"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: passwordSettingsRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PasswordSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
