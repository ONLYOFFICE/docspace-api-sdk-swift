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
     Authenticate a user
     
     See also:
     REST API Reference for authenticateMe Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/
     - parameter authRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AuthenticationTokenWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authenticateMe(authRequestsDto: AuthRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AuthenticationTokenWrapper {
        return try await authenticateMeWithRequestBuilder(authRequestsDto: authRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Authenticate a user
     
     See also:
     REST API Reference for authenticateMe Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/
     
     - POST /api/2.0/authentication
     - Signs a user in to the current portal and either issues the authentication token or reports which second  factor is still missing. Credentials go in the body as `userName` with `password` or `passwordHash`, as the  key of a confirmation link in `confirmData`, or as a third-party account (`provider` with `accessToken`, or  `serializedProfile`), which only a standalone installation or a tariff with third-party sign-in allows. Open  to unauthenticated callers, mutating and not  idempotent: it writes a login event, sets the portal cookies and counts every failure against the brute-force  limit. When a second factor is required for this user the answer carries no `token` but `sms` with the masked  phone number - or a `confirmUrl` pointing at `POST api/2.0/authentication/setphone` while no number is  activated yet - or `tfa` with the setup key while the authenticator app is not connected; submit the code to  `POST api/2.0/authentication/{code}` to finish such a sign-in. Otherwise the answer carries `token` for the  `Authorization` header and `expires`, which is omitted when `session=true` ties the token to the browser  session. An unknown user fails with 404, rejected credentials with 401, a disabled or blocked user with 403.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter authRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AuthenticationTokenWrapper> 
     */
    open class func authenticateMeWithRequestBuilder(authRequestsDto: AuthRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AuthenticationTokenWrapper> {
        let localVariablePath = "/api/2.0/authentication"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthenticationTokenWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Authenticate a user by code
     
     See also:
     REST API Reference for authenticateMeFromBodyWithCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/
     - parameter code: (path) The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads.      - parameter authWithCodeRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AuthenticationTokenWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authenticateMeFromBodyWithCode(code: String, authWithCodeRequestsDto: AuthWithCodeRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AuthenticationTokenWrapper {
        return try await authenticateMeFromBodyWithCodeWithRequestBuilder(code: code, authWithCodeRequestsDto: authWithCodeRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Authenticate a user by code
     
     See also:
     REST API Reference for authenticateMeFromBodyWithCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/
     
     - POST /api/2.0/authentication/{code}
     - Finishes a two-factor sign-in: checks the one-time code and, when it matches, issues the authentication token.  Call it only after `POST api/2.0/authentication` answered with `sms` or `tfa` set, and repeat the same  credentials in the body next to `code` - the code alone does not identify the user. The code comes from the  SMS the portal sent, which `POST api/2.0/authentication/sendsms` resends, or from the authenticator app;  whichever second factor the portal has enabled for this user is the one checked here. Open to unauthenticated  callers, mutating and not idempotent: a code is single-use, the sign-in is written to the login history, and  the first code accepted from an authenticator app also connects that app to the user. The answer carries  `token` for the `Authorization` header, `expires` unless `session=true` tied the token to the browser session,  and either `sms` with the masked phone number or `tfa`. A wrong, empty or expired code fails with 401 and  counts against the brute-force limit, which then refuses further attempts with 403.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter code: (path) The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads. 
     - parameter authWithCodeRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AuthenticationTokenWrapper> 
     */
    open class func authenticateMeFromBodyWithCodeWithRequestBuilder(code: String, authWithCodeRequestsDto: AuthWithCodeRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AuthenticationTokenWrapper> {
        var localVariablePath = "/api/2.0/authentication/{code}"
        let codePreEscape = "\(APIHelper.mapValueToPathItem(code))"
        let codePostEscape = codePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{code}", with: codePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authWithCodeRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthenticationTokenWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check a confirmation link
     
     See also:
     REST API Reference for checkConfirm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/
     - parameter emailValidationKeyModel: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConfirmWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkConfirm(emailValidationKeyModel: EmailValidationKeyModel? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConfirmWrapper {
        return try await checkConfirmWithRequestBuilder(emailValidationKeyModel: emailValidationKeyModel, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check a confirmation link
     
     See also:
     REST API Reference for checkConfirm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/
     
     - POST /api/2.0/authentication/confirm
     - Checks the key of a confirmation link that the portal sent by email and reports whether the action behind that  link can still be carried out - an employee invitation, phone activation, a password change, portal removal  and so on. Take `key` and `type` from the query string of the link; when `key` is left empty, the key saved in  the confirmation cookie of the same `type` is used instead. Open to unauthenticated callers and read-only: it  neither accepts the invitation nor signs anyone in. `result` is `Ok` when the link may be used, `Invalid` when  the key does not match the type or the email, `Expired` when it is too old, and `TariffLimit`, `UserExisted`,  `UserExcluded` or `QuotaFailed` when the key is sound but the invitation behind it cannot be accepted. Only  `Ok` should be followed by the operation that performs the action - `POST api/2.0/people` with  `fromInviteLink` for an invitation, `POST api/2.0/authentication` with `confirmData` for a sign-in link - and  for an invitation to a room the answer also carries the identifier and the title of that room.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter emailValidationKeyModel: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConfirmWrapper> 
     */
    open class func checkConfirmWithRequestBuilder(emailValidationKeyModel: EmailValidationKeyModel? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConfirmWrapper> {
        let localVariablePath = "/api/2.0/authentication/confirm"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: emailValidationKeyModel, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConfirmWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check authentication
     
     See also:
     REST API Reference for getIsAuthentificated Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIsAuthentificated(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await getIsAuthentificatedWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check authentication
     
     See also:
     REST API Reference for getIsAuthentificated Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/
     
     - GET /api/2.0/authentication
     - Reports whether the credentials that came with this very request identify a signed-in user of the current  portal - the authentication cookie, or the token in the `Authorization` header. Nothing has to be called  first: the operation is open to unauthenticated callers, who simply get `false`, it is read-only and  idempotent, and it answers even while the portal's payment has lapsed. The result is a bare boolean that  carries no reason, so `false` covers a missing, malformed, expired and revoked token alike; the way to recover  from it is to sign in again with `POST api/2.0/authentication`. It says nothing about who the caller is or how  long the session still lasts - read `GET api/2.0/people/@self` for the profile behind the token.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func getIsAuthentificatedWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/authentication"
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
     Log out
     
     See also:
     REST API Reference for logout Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func logout(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await logoutWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Log out
     
     See also:
     REST API Reference for logout Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/
     
     - POST /api/2.0/authentication/logout
     - Ends the session the request itself was made with: the login event behind the authentication cookie is closed,  the sockets opened for it are disconnected, the portal cookies are cleared and a logout event is written to  the login history. Send it with the cookie or token of the session that is to be closed; an anonymous call is  accepted and closes nothing. The operation is mutating and idempotent - the same session cannot be closed  twice - and it touches only that one session: the other sessions of the same user stay alive and are ended by  `PUT api/2.0/security/activeconnections/logoutallexceptthis` or  `PUT api/2.0/security/activeconnections/logout/{loginEventId}`. The answer is a single logout URL when the  user signed in through SSO and the portal has an SLO endpoint configured, and the client has to open that URL  to end the session on the identity provider as well; for everyone else it is empty and nothing more is needed.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func logoutWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/authentication/logout"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set a mobile phone
     
     See also:
     REST API Reference for saveMobilePhone Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mobile-phone/
     - parameter mobileRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AuthenticationTokenWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveMobilePhone(mobileRequestsDto: MobileRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AuthenticationTokenWrapper {
        return try await saveMobilePhoneWithRequestBuilder(mobileRequestsDto: mobileRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set a mobile phone
     
     See also:
     REST API Reference for saveMobilePhone Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mobile-phone/
     
     - POST /api/2.0/authentication/setphone
     - Stores the mobile phone number of a user who is going through phone activation and sends the first SMS  authentication code to it. It is reachable only with the phone-activation confirmation link that  `POST api/2.0/authentication` returns in `confirmUrl` when SMS two-factor is required and the user has no  activated number yet: that link authorizes the call in place of an authentication token, and no token is  issued here. The operation is mutating and not idempotent - it saves the number as not activated, writes an  audit event and sends a message - and an already activated number is not replaced this way, the stored number  has to be erased first. The answer carries `sms`, the masked number and `expires`, the moment the code stops  being accepted. Submit that code to `POST api/2.0/authentication/{code}`, which signs the user in and marks  the number activated, or ask for another one with `POST api/2.0/authentication/sendsms`.
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
     - parameter mobileRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AuthenticationTokenWrapper> 
     */
    open class func saveMobilePhoneWithRequestBuilder(mobileRequestsDto: MobileRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AuthenticationTokenWrapper> {
        let localVariablePath = "/api/2.0/authentication/setphone"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mobileRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthenticationTokenWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Send SMS code
     
     See also:
     REST API Reference for sendSmsCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/
     - parameter authRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AuthenticationTokenWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendSmsCode(authRequestsDto: AuthRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AuthenticationTokenWrapper {
        return try await sendSmsCodeWithRequestBuilder(authRequestsDto: authRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send SMS code
     
     See also:
     REST API Reference for sendSmsCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/
     
     - POST /api/2.0/authentication/sendsms
     - Sends a new SMS authentication code to the phone number stored for the user and reports when that code  expires. The credentials in the body are checked exactly as by `POST api/2.0/authentication`, so use this  operation to resend the code after that call answered with `sms`; the user needs SMS two-factor enabled and a  phone number already stored, which `POST api/2.0/authentication/setphone` registers. Open to unauthenticated  callers, mutating and not idempotent: every call sends a message, is counted in the portal's SMS usage and  spends one of the few codes a number is allowed within the code lifetime (ten minutes by default), after which  the call fails until those codes expire. Codes sent earlier stay valid, so a resent code does not invalidate  them, and the first one to be accepted invalidates all of them. The answer carries `sms`, the masked number  and `expires`, and no token - submit the code to `POST api/2.0/authentication/{code}`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter authRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AuthenticationTokenWrapper> 
     */
    open class func sendSmsCodeWithRequestBuilder(authRequestsDto: AuthRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AuthenticationTokenWrapper> {
        let localVariablePath = "/api/2.0/authentication/sendsms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthenticationTokenWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
