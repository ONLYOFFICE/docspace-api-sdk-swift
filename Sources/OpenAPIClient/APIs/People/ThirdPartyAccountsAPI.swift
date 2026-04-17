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
     Get third-party accounts
     
     See also:
     REST API Reference for getThirdPartyAuthProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/
     - parameter inviteView: (query) Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers. (optional)     - parameter settingsView: (query) Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false). (optional)     - parameter clientCallback: (query) The method that is called after authentication. (optional)     - parameter fromOnly: (query) The provider name if a response is required only from this provider. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AccountInfoArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getThirdPartyAuthProviders(inviteView: Bool? = nil, settingsView: Bool? = nil, clientCallback: String? = nil, fromOnly: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AccountInfoArrayWrapper {
        return try await getThirdPartyAuthProvidersWithRequestBuilder(inviteView: inviteView, settingsView: settingsView, clientCallback: clientCallback, fromOnly: fromOnly, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get third-party accounts
     
     See also:
     REST API Reference for getThirdPartyAuthProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/
     
     - GET /api/2.0/people/thirdparty/providers
     - Returns a list of the available third-party accounts.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter inviteView: (query) Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers. (optional)
     - parameter settingsView: (query) Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false). (optional)
     - parameter clientCallback: (query) The method that is called after authentication. (optional)
     - parameter fromOnly: (query) The provider name if a response is required only from this provider. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AccountInfoArrayWrapper> 
     */
    open class func getThirdPartyAuthProvidersWithRequestBuilder(inviteView: Bool? = nil, settingsView: Bool? = nil, clientCallback: String? = nil, fromOnly: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AccountInfoArrayWrapper> {
        let localVariablePath = "/api/2.0/people/thirdparty/providers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inviteView": (wrappedValue: inviteView?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "settingsView": (wrappedValue: settingsView?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "clientCallback": (wrappedValue: clientCallback?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "fromOnly": (wrappedValue: fromOnly?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountInfoArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Link a third-pary account
     
     See also:
     REST API Reference for linkThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/link-third-party-account/
     - parameter linkAccountRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func linkThirdPartyAccount(linkAccountRequestDto: LinkAccountRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await linkThirdPartyAccountWithRequestBuilder(linkAccountRequestDto: linkAccountRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Link a third-pary account
     
     See also:
     REST API Reference for linkThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/link-third-party-account/
     
     - PUT /api/2.0/people/thirdparty/linkaccount
     - Links a third-party account specified in the request to the user profile.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter linkAccountRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func linkThirdPartyAccountWithRequestBuilder(linkAccountRequestDto: LinkAccountRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/people/thirdparty/linkaccount"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: linkAccountRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a third-pary account
     
     See also:
     REST API Reference for signupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/signup-third-party-account/
     - parameter signupAccountRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func signupThirdPartyAccount(signupAccountRequestDto: SignupAccountRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeWrapper {
        return try await signupThirdPartyAccountWithRequestBuilder(signupAccountRequestDto: signupAccountRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a third-pary account
     
     See also:
     REST API Reference for signupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/signup-third-party-account/
     
     - POST /api/2.0/people/thirdparty/signup
     - Creates a third-party account with the parameters specified in the request.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter signupAccountRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeWrapper> 
     */
    open class func signupThirdPartyAccountWithRequestBuilder(signupAccountRequestDto: SignupAccountRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeWrapper> {
        let localVariablePath = "/api/2.0/people/thirdparty/signup"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: signupAccountRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Unlink a third-pary account
     
     See also:
     REST API Reference for unlinkThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/
     - parameter provider: (query) The provider name. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unlinkThirdPartyAccount(provider: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await unlinkThirdPartyAccountWithRequestBuilder(provider: provider, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unlink a third-pary account
     
     See also:
     REST API Reference for unlinkThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/
     
     - DELETE /api/2.0/people/thirdparty/unlinkaccount
     - Unlinks a third-party account specified in the request from the user profile.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter provider: (query) The provider name. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func unlinkThirdPartyAccountWithRequestBuilder(provider: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/people/thirdparty/unlinkaccount"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "provider": (wrappedValue: provider?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
