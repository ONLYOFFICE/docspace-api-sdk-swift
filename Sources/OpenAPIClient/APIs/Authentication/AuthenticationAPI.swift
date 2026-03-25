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
     - Authenticates the current user by SMS, authenticator app, or without two-factor authentication.
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Authenticate a user by code
     
     See also:
     REST API Reference for authenticateMeFromBodyWithCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/
     - parameter code: (path)       - parameter authWithCodeRequestsDto: (body)  (optional)
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
     - Authenticates the current user by SMS or two-factor authentication code.
     - parameter code: (path)  
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Open confirmation email URL
     
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
     Open confirmation email URL
     
     See also:
     REST API Reference for checkConfirm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/
     
     - POST /api/2.0/authentication/confirm
     - Opens a confirmation email URL to validate a certain action (employee invitation, portal removal, phone activation, etc.).
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Checks if the current user is authenticated or not.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Logs out of the current user account.
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Sets a mobile phone for the current user.
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
     - Sends SMS with an authentication code.
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
