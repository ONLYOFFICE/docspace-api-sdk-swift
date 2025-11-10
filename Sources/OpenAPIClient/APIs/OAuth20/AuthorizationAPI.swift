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

    /**
     OAuth2 authorization endpoint
     
     See also:
     REST API Reference for authorizeOAuth Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-oauth/
     - parameter responseType: (query) The OAuth 2.0 response type, must be &#39;code&#39; for authorization code flow.      - parameter clientId: (query) The client identifier issued to the client during registration.      - parameter redirectUri: (query) The URL to redirect to after authorization is complete.      - parameter scope: (query) The space-separated list of requested scope permissions. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authorizeOAuth(responseType: String, clientId: String, redirectUri: String, scope: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await authorizeOAuthWithRequestBuilder(responseType: responseType, clientId: clientId, redirectUri: redirectUri, scope: scope, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     OAuth2 authorization endpoint
     
     See also:
     REST API Reference for authorizeOAuth Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-oauth/
     
     - GET /oauth2/authorize
     - Initiates the OAuth2 authorization flow.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter responseType: (query) The OAuth 2.0 response type, must be &#39;code&#39; for authorization code flow. 
     - parameter clientId: (query) The client identifier issued to the client during registration. 
     - parameter redirectUri: (query) The URL to redirect to after authorization is complete. 
     - parameter scope: (query) The space-separated list of requested scope permissions. 
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
     OAuth2 token endpoint
     
     See also:
     REST API Reference for exchangeToken Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
     - parameter grantType: (form) The OAuth2 grant type, must be &#39;authorization_code&#39; for the authorization code flow. (optional)     - parameter code: (form) A temporary authorization code that is sent to the client to be exchanged for a token. (optional)     - parameter redirectUri: (form) The URL where the user will be redirected after successful or unsuccessful authentication. (optional)     - parameter clientId: (form) The client identifier issued to the client during registration. (optional)     - parameter clientSecret: (form) The client secret issued to the client during registration. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExchangeToken200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func exchangeToken(grantType: String? = nil, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, clientSecret: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExchangeToken200Response {
        return try await exchangeTokenWithRequestBuilder(grantType: grantType, code: code, redirectUri: redirectUri, clientId: clientId, clientSecret: clientSecret, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     OAuth2 token endpoint
     
     See also:
     REST API Reference for exchangeToken Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
     
     - POST /oauth2/token
     - Exchanges an authorization code specified in the request for the access token.
     - parameter grantType: (form) The OAuth2 grant type, must be &#39;authorization_code&#39; for the authorization code flow. (optional)
     - parameter code: (form) A temporary authorization code that is sent to the client to be exchanged for a token. (optional)
     - parameter redirectUri: (form) The URL where the user will be redirected after successful or unsuccessful authentication. (optional)
     - parameter clientId: (form) The client identifier issued to the client during registration. (optional)
     - parameter clientSecret: (form) The client secret issued to the client during registration. (optional)
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
     OAuth2 consent endpoint
     
     See also:
     REST API Reference for submitConsent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
     - parameter clientId: (form) The client identifier issued to the client during registration. (optional)     - parameter state: (form) The random string used to solve the CSRF vulnerability problem. (optional)     - parameter scope: (form) The space-separated list of requested scope permissions. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func submitConsent(clientId: String? = nil, state: String? = nil, scope: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await submitConsentWithRequestBuilder(clientId: clientId, state: state, scope: scope, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     OAuth2 consent endpoint
     
     See also:
     REST API Reference for submitConsent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
     
     - POST /oauth2/authorize
     - Sends a consent request with the specified parameters.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (form) The client identifier issued to the client during registration. (optional)
     - parameter state: (form) The random string used to solve the CSRF vulnerability problem. (optional)
     - parameter scope: (form) The space-separated list of requested scope permissions. (optional)
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
