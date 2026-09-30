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
     Start the authorization flow
     
     See also:
     REST API Reference for authorizeOAuth Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-oauth/
     - parameter responseType: (query) The OAuth 2.0 response type. Only code is supported: this server issues an authorization code, never a token, from this endpoint.      - parameter clientId: (query) The identifier the client was given when it was registered. It selects both the client shown on the consent screen and the set of redirect URIs the request is checked against.      - parameter redirectUri: (query) Where to send the user once authorization is complete. It has to be one of the redirect URIs registered for the client, otherwise the request is refused.      - parameter scope: (query) The permissions being asked for, as a space-separated list. Every scope has to be one the client is registered for, and the consent screen lists exactly these. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authorizeOAuth(responseType: String, clientId: String, redirectUri: String, scope: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await authorizeOAuthWithRequestBuilder(responseType: responseType, clientId: clientId, redirectUri: redirectUri, scope: scope, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the authorization flow
     
     See also:
     REST API Reference for authorizeOAuth Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-oauth/
     
     - GET /oauth2/authorize
     - Starts the OAuth2 authorization code flow for the client named by client_id. The caller has to present the portal signature cookie, and a request without a valid one is not refused with 401 or 403 but redirected to the portal login page, carrying the client ID so the flow can resume after signing in. When the user has not yet consented to the requested scopes the browser is redirected to the consent page; once the consent exists the browser is redirected to the client's redirect URI with the authorization code and, when one was sent, the original state. A caller that cannot follow redirects may send the X-Disable-Redirect header, and then the response is 200 with an empty body and the target URL in the X-Redirect-URI header. The code returned here is exchanged for tokens at the token endpoint.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter responseType: (query) The OAuth 2.0 response type. Only code is supported: this server issues an authorization code, never a token, from this endpoint. 
     - parameter clientId: (query) The identifier the client was given when it was registered. It selects both the client shown on the consent screen and the set of redirect URIs the request is checked against. 
     - parameter redirectUri: (query) Where to send the user once authorization is complete. It has to be one of the redirect URIs registered for the client, otherwise the request is refused. 
     - parameter scope: (query) The permissions being asked for, as a space-separated list. Every scope has to be one the client is registered for, and the consent screen lists exactly these. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func authorizeOAuthWithRequestBuilder(responseType: String, clientId: String, redirectUri: String, scope: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/oauth2/authorize"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "response_type": (wrappedValue: responseType.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "client_id": (wrappedValue: clientId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "redirect_uri": (wrappedValue: redirectUri.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "scope": (wrappedValue: scope.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Exchange the authorization code
     
     See also:
     REST API Reference for exchangeToken Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
     - parameter grantType: (form) Which exchange is being performed: authorization_code to redeem a code, refresh_token to renew an access token. (optional)     - parameter code: (form) The authorization code returned by the authorization endpoint. It may be redeemed once. (optional)     - parameter redirectUri: (form) The same redirect URI that was used to obtain the code. The exchange fails when it differs. (optional)     - parameter clientId: (form) The identifier of the client redeeming the code. (optional)     - parameter clientSecret: (form) The secret of the client redeeming the code. It is omitted by a public client, which proves itself with a PKCE code verifier instead. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExchangeToken200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func exchangeToken(grantType: String? = nil, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, clientSecret: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExchangeToken200Response {
        return try await exchangeTokenWithRequestBuilder(grantType: grantType, code: code, redirectUri: redirectUri, clientId: clientId, clientSecret: clientSecret, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Exchange the authorization code
     
     See also:
     REST API Reference for exchangeToken Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
     
     - POST /oauth2/token
     - Exchanges an authorization code for an access token. The request is form-encoded and has to carry the grant type, the code, the same redirect URI that was used to obtain the code, and the client credentials: the client authenticates itself here rather than through the portal signature cookie the authorization endpoint uses. The response carries the access token, its type and its lifetime in seconds, plus a refresh token when the client is configured for the refresh token grant. Client authentication that fails is answered with 401, while a malformed, unknown or expired code is answered with 400. The code is single use, so replaying it fails.
     - parameter grantType: (form) Which exchange is being performed: authorization_code to redeem a code, refresh_token to renew an access token. (optional)
     - parameter code: (form) The authorization code returned by the authorization endpoint. It may be redeemed once. (optional)
     - parameter redirectUri: (form) The same redirect URI that was used to obtain the code. The exchange fails when it differs. (optional)
     - parameter clientId: (form) The identifier of the client redeeming the code. (optional)
     - parameter clientSecret: (form) The secret of the client redeeming the code. It is omitted by a public client, which proves itself with a PKCE code verifier instead. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ExchangeToken200Response> 
     */
    open class func exchangeTokenWithRequestBuilder(grantType: String? = nil, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, clientSecret: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ExchangeToken200Response> {
        let localVariablePath = "/oauth2/token"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "grant_type": grantType?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "code": code?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "redirect_uri": redirectUri?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "client_id": clientId?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "client_secret": clientSecret?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/x-www-form-urlencoded",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExchangeToken200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Submit the consent decision
     
     See also:
     REST API Reference for submitConsent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
     - parameter clientId: (form) The client the consent is being given to. It has to be the same client the authorization request named. (optional)     - parameter state: (form) The opaque value carried through from the authorization request, returned unchanged on the redirect so the client can match the answer to its request. (optional)     - parameter scope: (form) The scopes the user agreed to, as a space-separated list. Anything the user declined is left out, so this may be narrower than what was requested. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func submitConsent(clientId: String? = nil, state: String? = nil, scope: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await submitConsentWithRequestBuilder(clientId: clientId, state: state, scope: scope, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Submit the consent decision
     
     See also:
     REST API Reference for submitConsent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
     
     - POST /oauth2/authorize
     - Submits the user's consent decision for the scopes an authorization request asked for. It is the form post the consent page makes, so it carries the client ID, the state and the agreed scopes as multipart form data, along with the same portal signature cookie the authorization request needed. On success the browser is redirected to the client's redirect URI with an authorization code, or, when the request carries the X-Disable-Redirect header, answered 200 with that URL in the X-Redirect-URI header. The consent is stored per user and client, so a later authorization request for the same scopes no longer stops at the consent page.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (form) The client the consent is being given to. It has to be the same client the authorization request named. (optional)
     - parameter state: (form) The opaque value carried through from the authorization request, returned unchanged on the redirect so the client can match the answer to its request. (optional)
     - parameter scope: (form) The scopes the user agreed to, as a space-separated list. Anything the user declined is left out, so this may be narrower than what was requested. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func submitConsentWithRequestBuilder(clientId: String? = nil, state: String? = nil, scope: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/oauth2/authorize"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "client_id": clientId?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "state": state?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "scope": scope?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
