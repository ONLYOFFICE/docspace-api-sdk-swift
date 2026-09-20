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
     Get third-party providers
     
     See also:
     REST API Reference for getThirdPartyAuthProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/
     - parameter inviteView: (query) Set it to true when the list is rendered on an invitation page: the providers that cannot be used to accept an  invitation, `twitter` and `appleid`, are then left out. It defaults to false, which returns every enabled  provider. (optional)     - parameter settingsView: (query) Set it to true when the list is rendered on a settings page, to get login URLs that open in a popup window.  With the default false the URL still opens in a popup for a desktop browser, and switches to a redirect only  for a mobile browser or for the DocSpace desktop application. (optional)     - parameter clientCallback: (query) The name of the client-side function the popup calls back when the provider authorization finishes. It is  placed into the returned URLs as they are, and it is only used by the popup mode. (optional)     - parameter fromOnly: (query) Keeps only the named provider, compared case-insensitively against the lowercase provider names such as  `google` or `microsoft`; the special value `openid` selects `google`. Omit it to get every enabled provider. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AccountInfoArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getThirdPartyAuthProviders(inviteView: Bool? = nil, settingsView: Bool? = nil, clientCallback: String? = nil, fromOnly: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AccountInfoArrayWrapper {
        return try await getThirdPartyAuthProvidersWithRequestBuilder(inviteView: inviteView, settingsView: settingsView, clientCallback: clientCallback, fromOnly: fromOnly, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get third-party providers
     
     See also:
     REST API Reference for getThirdPartyAuthProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/
     
     - GET /api/2.0/people/thirdparty/providers
     - Returns the third-party identity providers this portal has enabled, each with the URL that starts the login  with it, so a client can render the social sign-in buttons.  It needs no authentication and is the operation to call before showing a login or an invitation page; an  empty list means the portal has no provider configured, not that the call failed.  The call is read-only, and `linked` says whether the provider is already connected to the calling profile -  for an anonymous caller there is nothing to compare against, so every entry comes back with false.  The order is fixed by the portal, except that a caller located in China gets `weixin` first.  Pass `fromOnly` to keep a single provider, `inviteView` to leave out the providers that cannot be used on an  invitation page, and `settingsView` or `clientCallback` to get URLs that open in a popup instead of  redirecting the desktop application.  Use `PUT api/2.0/people/thirdparty/linkaccount` to connect one of these providers to an existing profile and  `POST api/2.0/people/thirdparty/signup` to create a profile through one.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter inviteView: (query) Set it to true when the list is rendered on an invitation page: the providers that cannot be used to accept an  invitation, `twitter` and `appleid`, are then left out. It defaults to false, which returns every enabled  provider. (optional)
     - parameter settingsView: (query) Set it to true when the list is rendered on a settings page, to get login URLs that open in a popup window.  With the default false the URL still opens in a popup for a desktop browser, and switches to a redirect only  for a mobile browser or for the DocSpace desktop application. (optional)
     - parameter clientCallback: (query) The name of the client-side function the popup calls back when the provider authorization finishes. It is  placed into the returned URLs as they are, and it is only used by the popup mode. (optional)
     - parameter fromOnly: (query) Keeps only the named provider, compared case-insensitively against the lowercase provider names such as  `google` or `microsoft`; the special value `openid` selects `google`. Omit it to get every enabled provider. (optional)
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Link a third-party account
     
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
     Link a third-party account
     
     See also:
     REST API Reference for linkThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/link-third-party-account/
     
     - PUT /api/2.0/people/thirdparty/linkaccount
     - Connects a third-party identity to the calling profile, so that the account can afterwards sign in through  that provider.  The profile has to come from a completed provider authorization: pass the serialized `LoginProfile` the login  flow started from `GET api/2.0/people/thirdparty/providers` handed back, not a hand-written object.  It acts on the authenticated account only, and the portal has to be a standalone installation or have a  tariff that includes third-party authorization, otherwise the operation answers 403.  The call returns no body and is not idempotent: one third-party identity can be linked to a single portal  profile, so repeating it, or linking an identity somebody else already uses, answers 400.  A profile whose authorization was cancelled by the user is accepted and ignored, so a cancelled login also  answers 200 and links nothing - read `GET api/2.0/people/thirdparty/providers` afterwards and check `linked`  to find out whether the link exists.  Use `DELETE api/2.0/people/thirdparty/unlinkaccount` to remove a link.
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
     Sign up with a provider
     
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
     Sign up with a provider
     
     See also:
     REST API Reference for signupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/signup-third-party-account/
     
     - POST /api/2.0/people/thirdparty/signup
     - Creates a portal profile from a third-party identity and joins the invitation the `key` belongs to, which is  how a person accepts an invitation by signing in with a provider instead of setting a password.  It needs no authentication, but it does need a valid invitation: `key` has to be the key of a live invitation  link, and `serializedProfile` has to be the profile a completed provider authorization produced.  The resulting type comes from the invitation link itself, and `employeeType` only says which type to look the  link up as, defaulting to `RoomAdmin`.  When the identity or its email already belongs to a portal profile, that existing profile is returned and the  provider is linked to it instead of a second account being created, so the call can be repeated safely.  The answer is the profile the caller ends up with - and it is empty, still with status 200, when the provider  authorization was cancelled or when the profile could not be created, so check for an empty body instead of  relying on the status alone.  A `weixin` or `nextcloud` identity carries no email address, so the portal generates one and the profile stays  in the `AutoGenerated` activation state; every other provider has to supply an email.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Unlink a third-party account
     
     See also:
     REST API Reference for unlinkThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/
     - parameter provider: (query) The name of the provider to unlink, in the lowercase form `GET api/2.0/people/thirdparty/providers` returns,  such as `google` or `microsoft`. A name that is not linked to the calling profile is accepted and changes  nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unlinkThirdPartyAccount(provider: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await unlinkThirdPartyAccountWithRequestBuilder(provider: provider, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unlink a third-party account
     
     See also:
     REST API Reference for unlinkThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/
     
     - DELETE /api/2.0/people/thirdparty/unlinkaccount
     - Removes the link between the calling profile and the named third-party provider, so that the account can no  longer sign in through it.  It acts on the authenticated account only and takes the provider name in the query, using the same lowercase  values `GET api/2.0/people/thirdparty/providers` returns, such as `google` or `microsoft`.  The call returns no body and is idempotent: unlinking a provider that is not linked answers 200 and changes  nothing.  The portal profile itself is kept, together with its password, so the account stays usable through the  ordinary sign-in; only the third-party route is removed.  Link the provider again through `PUT api/2.0/people/thirdparty/linkaccount`.
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
     - parameter provider: (query) The name of the provider to unlink, in the lowercase form `GET api/2.0/people/thirdparty/providers` returns,  such as `google` or `microsoft`. A name that is not linked to the calling profile is accepted and changes  nothing. (optional)
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
