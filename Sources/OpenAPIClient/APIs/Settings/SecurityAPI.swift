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
     Get the enabled modules
     
     See also:
     REST API Reference for getEnabledModules Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEnabledModules(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await getEnabledModulesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the enabled modules
     
     See also:
     REST API Reference for getEnabledModules Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/
     
     - GET /api/2.0/settings/security/modules
     - Returns a list of all the enabled modules.
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
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func getEnabledModulesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        let localVariablePath = "/api/2.0/settings/security/modules"
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
     Check a product administrator
     
     See also:
     REST API Reference for getIsProductAdministrator Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
     - parameter productid: (query) The ID of the product extracted from the query parameters.      - parameter userid: (query) The user ID extracted from the query parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ProductAdministratorWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIsProductAdministrator(productid: UUID, userid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ProductAdministratorWrapper {
        return try await getIsProductAdministratorWithRequestBuilder(productid: productid, userid: userid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check a product administrator
     
     See also:
     REST API Reference for getIsProductAdministrator Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
     
     - GET /api/2.0/settings/security/administrator
     - Checks if the selected user is an administrator of a product with the ID specified in the request.
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
     - parameter productid: (query) The ID of the product extracted from the query parameters. 
     - parameter userid: (query) The user ID extracted from the query parameters. 
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
     Get the password settings
     
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
     Get the password settings
     
     See also:
     REST API Reference for getPasswordSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/
     
     - GET /api/2.0/settings/security/password
     - Returns the portal password settings.
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
     Get the product administrators
     
     See also:
     REST API Reference for getProductAdministrators Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
     - parameter productid: (path) The ID of the product extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProductAdministrators(productid: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeArrayWrapper {
        return try await getProductAdministratorsWithRequestBuilder(productid: productid, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the product administrators
     
     See also:
     REST API Reference for getProductAdministrators Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
     
     - GET /api/2.0/settings/security/administrator/{productid}
     - Returns a list of all the administrators of a product with the ID specified in the request.
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
     - parameter productid: (path) The ID of the product extracted from the route parameters. 
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
     Get the module availability
     
     See also:
     REST API Reference for getWebItemSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
     - parameter id: (path) The ID extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebItemSecurityInfo(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await getWebItemSecurityInfoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the module availability
     
     See also:
     REST API Reference for getWebItemSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
     
     - GET /api/2.0/settings/security/{id}
     - Returns the availability of the module with the ID specified in the request.
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
     - parameter id: (path) The ID extracted from the route parameters. 
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
     Get the security settings
     
     See also:
     REST API Reference for getWebItemSettingsSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
     - parameter ids: (query) The list of module identifiers for which to retrieve the security settings. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SecurityArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebItemSettingsSecurityInfo(ids: [String]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SecurityArrayWrapper {
        return try await getWebItemSettingsSecurityInfoWithRequestBuilder(ids: ids, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the security settings
     
     See also:
     REST API Reference for getWebItemSettingsSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
     
     - GET /api/2.0/settings/security
     - Returns the security settings for the modules specified in the request.
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
     - parameter ids: (query) The list of module identifiers for which to retrieve the security settings. (optional)
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
     Set the security settings to modules
     
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
     Set the security settings to modules
     
     See also:
     REST API Reference for setAccessToWebItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/
     
     - PUT /api/2.0/settings/security/access
     - Sets the security settings to the modules with the IDs specified in the request.
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
     Set a product administrator
     
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
     Set a product administrator
     
     See also:
     REST API Reference for setProductAdministrator Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/
     
     - PUT /api/2.0/settings/security/administrator
     - Sets the selected user as an administrator of a product with the ID specified in the request.
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
     Set the module security settings
     
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
     Set the module security settings
     
     See also:
     REST API Reference for setWebItemSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/
     
     - PUT /api/2.0/settings/security
     - Sets the security settings to the module with the ID specified in the request.
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
     Set the password settings
     
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
     Set the password settings
     
     See also:
     REST API Reference for updatePasswordSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/
     
     - PUT /api/2.0/settings/security/password
     - Sets the portal password settings.
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
