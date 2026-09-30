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
     Get login settings
     
     See also:
     REST API Reference for getLoginSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: LoginSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLoginSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginSettingsWrapper {
        return try await getLoginSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get login settings
     
     See also:
     REST API Reference for getLoginSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/
     
     - GET /api/2.0/settings/security/loginsettings
     - Returns the brute-force protection of the sign-in form for the current portal: how many failed attempts are  tolerated, how long the window they are counted in lasts, and how long an offender stays blocked. The caller  needs the portal-settings right of a DocSpace administrator; members without it are refused, and anonymous  callers are not admitted. The operation is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and unchanged settings come back as an empty not-modified response  rather than a body. `checkPeriod` and `blockTime` are counted in seconds. A portal nobody has configured  tolerates 5 failed attempts inside a window of 60 seconds and blocks for 60 seconds, and reports `isDefault`  true; the flag turns false as soon as any of the three values differs from that. The answer describes the  portal-wide policy only: it does not say which accounts or addresses are blocked at the moment, while a  lockout that has already happened is recorded in the login history and can be read with  `GET api/2.0/security/audit/login/filter`. Change the numbers with  `PUT api/2.0/settings/security/loginsettings`, or put them back with  `DELETE api/2.0/settings/security/loginsettings`.
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
     - returns: RequestBuilder<LoginSettingsWrapper> 
     */
    open class func getLoginSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<LoginSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/security/loginsettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LoginSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reset login settings
     
     See also:
     REST API Reference for setDefaultLoginSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: LoginSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setDefaultLoginSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginSettingsWrapper {
        return try await setDefaultLoginSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reset login settings
     
     See also:
     REST API Reference for setDefaultLoginSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/
     
     - DELETE /api/2.0/settings/security/loginsettings
     - Puts the brute-force protection of the sign-in form back to what the portal shipped with: 5 tolerated failed  attempts, a counting window of 60 seconds and a block of 60 seconds. The caller needs the portal-settings  right of a DocSpace administrator, otherwise the call is refused. The operation takes no parameters and  overwrites whatever was configured before without asking, so read the current numbers with  `GET api/2.0/settings/security/loginsettings` first if they are worth keeping. Only the setting is reset:  sign-ins already blocked stay blocked until the block they were given runs out, and the attempt counters  running for other users are left alone. The reset is portal-wide, applies to attempts made from now on, is  recorded in the audit trail, and calling it twice changes nothing further. The restored numbers also decide  when the sign-in form starts asking for a captcha, which it does one attempt before the block. The answer is  the restored settings, with `isDefault` true. Store numbers of your own with  `PUT api/2.0/settings/security/loginsettings`.
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
     - returns: RequestBuilder<LoginSettingsWrapper> 
     */
    open class func setDefaultLoginSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<LoginSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/security/loginsettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LoginSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update login settings
     
     See also:
     REST API Reference for updateLoginSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/
     - parameter loginSettingsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: LoginSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateLoginSettings(loginSettingsRequestDto: LoginSettingsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginSettingsWrapper {
        return try await updateLoginSettingsWithRequestBuilder(loginSettingsRequestDto: loginSettingsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update login settings
     
     See also:
     REST API Reference for updateLoginSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/
     
     - PUT /api/2.0/settings/security/loginsettings
     - Replaces the brute-force protection of the sign-in form for the whole portal: `attemptCount` failed attempts  inside a rolling window of `checkPeriod` seconds, after which the offender is blocked for `blockTime` seconds.  All three values are replaced together and each has to be between 1 and 9999, so read the current ones with  `GET api/2.0/settings/security/loginsettings` before changing only one of them; a value outside the range is  rejected as an invalid request. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Failed attempts are counted per user name and client address, so one member's  lockout leaves the rest of the portal signing in normally, and a blocked pair is refused even once the  password is finally correct. The new numbers apply to attempts made from now on and leave counters and blocks  already running as they are. The change is recorded in the audit trail, and the answer is the stored settings  with the flag that says whether they still match the shipped defaults.
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
     - parameter loginSettingsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<LoginSettingsWrapper> 
     */
    open class func updateLoginSettingsWithRequestBuilder(loginSettingsRequestDto: LoginSettingsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<LoginSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/security/loginsettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: loginSettingsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LoginSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
