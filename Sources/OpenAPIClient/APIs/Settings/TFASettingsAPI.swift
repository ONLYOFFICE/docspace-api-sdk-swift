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
     Get the TFA backup codes
     
     See also:
     REST API Reference for getTfaAppCodes Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-app-codes/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TfaAppCodeArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTfaAppCodes(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TfaAppCodeArrayWrapper {
        return try await getTfaAppCodesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the TFA backup codes
     
     See also:
     REST API Reference for getTfaAppCodes Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-app-codes/
     
     - GET /api/2.0/settings/tfaappcodes
     - Returns the one-time backup codes of the current user's authenticator-application credential, each with the  flag that says whether it has been spent. A backup code is accepted in place of a code from the application  when signing in, and every code works exactly once, so this list is what a member falls back on after losing  access to their authenticator. Any authenticated member may call it, always for their own account: there is no  way to read someone else's codes. The authenticator method has to be enabled on the portal and an application  has to be linked to the account already, otherwise the call answers 405; link one through  `GET api/2.0/settings/tfaapp/confirm` and `POST api/2.0/settings/tfaapp/validate`. Accounts flagged as  outsiders are refused. This is a read-only, idempotent call: the codes are generated once, when the  application is first linked, and the whole set is replaced by `PUT api/2.0/settings/tfaappnewcodes`. The  default configuration issues five codes of six characters, and a portal may be configured for a different  number and length.
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
     - returns: RequestBuilder<TfaAppCodeArrayWrapper> 
     */
    open class func getTfaAppCodesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TfaAppCodeArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaappcodes"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TfaAppCodeArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get TFA confirmation data
     
     See also:
     REST API Reference for getTfaConfirmData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-confirm-data/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TfaConfirmDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTfaConfirmData(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TfaConfirmDataWrapper {
        return try await getTfaConfirmDataWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get TFA confirmation data
     
     See also:
     REST API Reference for getTfaConfirmData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-confirm-data/
     
     - GET /api/2.0/settings/tfaapp/confirm
     - Returns the confirmation link the current user has to follow to pass the portal's two-factor authentication  step, together with the confirmation cookie that link depends on. Any authenticated member may call it, always  for their own account, and TFA has to be required for that account by the portal policy already, otherwise the  response body is empty. Which link comes back depends on the method. With the SMS method it is a phone  activation link while the account has no activated mobile number and a phone authorization link afterwards,  and only `url` is filled in. With the authenticator-application method the response also carries `cookieName`  and `cookieValue`, and the call mutates state by issuing a fresh confirmation key and setting that cookie; the  link then points at activation while no application is linked, or after the previous link was reset, and at  re-verification once one is linked. Hand the code obtained through that flow to  `POST api/2.0/settings/tfaapp/validate`. The portal-wide policy behind all of this is read with  `GET api/2.0/settings/tfaapp`.
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
     - returns: RequestBuilder<TfaConfirmDataWrapper> 
     */
    open class func getTfaConfirmDataWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TfaConfirmDataWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaapp/confirm"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TfaConfirmDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the TFA settings
     
     See also:
     REST API Reference for getTfaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TfaSettingsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTfaSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TfaSettingsArrayWrapper {
        return try await getTfaSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the TFA settings
     
     See also:
     REST API Reference for getTfaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-settings/
     
     - GET /api/2.0/settings/tfaapp
     - Lists the two-factor authentication methods this portal offers, with the state of each one. The list carries  at most two entries: `sms`, present only when the SMS method is enabled in the portal's configuration, and  `app`, present only when the authenticator-application method is enabled there, so an empty list means neither  method is offered here. Any authenticated member may call it, and what it returns is the portal-wide policy,  not the caller's own linked credential. This is a read-only, idempotent call. For every entry `enabled` says  whether that method is the current policy, `available` says whether it can actually be switched on (for `sms`  that also requires a configured SMS provider), `trustedIps` lists the addresses and ranges exempt from the  challenge, and `mandatoryUsers` and `mandatoryGroups` list the accounts that have to pass it even from a  trusted address. Change the policy with `PUT api/2.0/settings/tfaapp`, and read the caller's own backup codes  with `GET api/2.0/settings/tfaappcodes`.
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
     - returns: RequestBuilder<TfaSettingsArrayWrapper> 
     */
    open class func getTfaSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TfaSettingsArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaapp"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TfaSettingsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Generate the TFA setup code
     
     See also:
     REST API Reference for tfaAppGenerateSetupCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-app-generate-setup-code/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TfaSetupCodeWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func tfaAppGenerateSetupCode(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TfaSetupCodeWrapper {
        return try await tfaAppGenerateSetupCodeWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Generate the TFA setup code
     
     See also:
     REST API Reference for tfaAppGenerateSetupCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-app-generate-setup-code/
     
     - GET /api/2.0/settings/tfaapp/setup
     - Issues the secret the current user has to enter in an authenticator application before the  authenticator-application method can be used, both as a scannable QR-code image and as a key for manual entry.  The call is reachable only with a confirmation token carrying the `TfaActivation` role, obtained from  `GET api/2.0/settings/tfaapp/confirm` or from the login flow; an ordinary bearer token is refused. The  authenticator method has to be enabled on the portal and be its current policy, and the account must have no  application linked yet: for an already-linked account the call answers 405, so reset the credential first with  `PUT api/2.0/settings/tfaappnewapp`. Accounts flagged as outsiders are refused. Repeating the call is safe and  hands back the same secret for the account, so the QR code and the manual key always describe one and the same  credential. `qrCodeSetupImageUrl` is a base64 `data:` URL of a PNG image, and `account` is the label the  application will show. Finish the setup by sending a code from the application to  `POST api/2.0/settings/tfaapp/validate`.
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
     - returns: RequestBuilder<TfaSetupCodeWrapper> 
     */
    open class func tfaAppGenerateSetupCodeWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TfaSetupCodeWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaapp/setup"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TfaSetupCodeWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Validate the TFA code
     
     See also:
     REST API Reference for tfaValidateAuthCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-validate-auth-code/
     - parameter tfaValidateRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func tfaValidateAuthCode(tfaValidateRequestsDto: TfaValidateRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await tfaValidateAuthCodeWithRequestBuilder(tfaValidateRequestsDto: tfaValidateRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Validate the TFA code
     
     See also:
     REST API Reference for tfaValidateAuthCode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-validate-auth-code/
     
     - POST /api/2.0/settings/tfaapp/validate
     - Verifies a two-factor authentication code for the account named in the confirmation link being used, and  completes that account's pending TFA step. The call is reachable only with a confirmation token carrying the  `TfaActivation` or `TfaAuth` role, issued by `GET api/2.0/settings/tfaapp/confirm` or by the login flow; an  ordinary bearer token is refused. Both a code from the authenticator application and one of the account's  unused backup codes are accepted, and a backup code is spent by the check. The call mutates state: it signs  the account in, clears the confirmation cookie so the link cannot be replayed, and on the very first  activation it generates the backup codes later returned by `GET api/2.0/settings/tfaappcodes`. Pass  `session=true` to keep that sign-in for the browser session only instead of a persistent one. It answers  `true` only for that first activation and `false` when an application was already linked. A wrong code is  rejected as an invalid request, and further attempts are refused once the portal's login attempt limit is  reached. The call also works while the portal's payment is overdue.
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
     - parameter tfaValidateRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func tfaValidateAuthCodeWithRequestBuilder(tfaValidateRequestsDto: TfaValidateRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaapp/validate"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tfaValidateRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Unlink the TFA application
     
     See also:
     REST API Reference for unlinkTfaApp Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-tfa-app/
     - parameter tfaRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unlinkTfaApp(tfaRequestsDto: TfaRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await unlinkTfaAppWithRequestBuilder(tfaRequestsDto: tfaRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unlink the TFA application
     
     See also:
     REST API Reference for unlinkTfaApp Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-tfa-app/
     
     - PUT /api/2.0/settings/tfaappnewapp
     - Detaches the authenticator application from an account, so that the account has to link a new one before it  can sign in again. `id` has to name an existing account: an empty or unknown value is refused. Passing the  caller's own ID resets their own credential and returns the activation link they should follow next; passing  another member's ID is allowed for the portal owner only, and every other caller, a DocSpace administrator  included, is refused. The account has to have an application linked and the authenticator method has to be  enabled on the portal, otherwise the call answers 405. The call is destructive: the account's backup codes are  dropped together with the credential and all of its sessions are signed out. For another member the portal  also emails them that their TFA was reset, and the answer is then an empty string. The portal-wide policy is  not touched, so TFA stays required and the account sets up an application again through  `GET api/2.0/settings/tfaapp/confirm`; lift the requirement for everyone with `PUT api/2.0/settings/tfaapp`.
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
     - parameter tfaRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func unlinkTfaAppWithRequestBuilder(tfaRequestsDto: TfaRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaappnewapp"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tfaRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Regenerate the TFA backup codes
     
     See also:
     REST API Reference for updateTfaAppCodes Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-app-codes/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TfaAppCodeArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateTfaAppCodes(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TfaAppCodeArrayWrapper {
        return try await updateTfaAppCodesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Regenerate the TFA backup codes
     
     See also:
     REST API Reference for updateTfaAppCodes Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-app-codes/
     
     - PUT /api/2.0/settings/tfaappnewcodes
     - Replaces the current user's one-time backup codes with a freshly generated set and returns it. Use it once the  previous codes have been spent or may have leaked: the whole old set stops being accepted the moment this call  succeeds, so store the new codes before leaving the response. Any authenticated member may call it, always for  their own account. The authenticator method has to be enabled on the portal and an application has to be  linked to the account already, otherwise the call answers 405, and accounts flagged as outsiders are refused.  The call mutates state and is not idempotent: every invocation issues another set and discards the one before  it, so a retry after a timeout returns codes different from those the first attempt generated. The codes come  back unused, five of them of six characters with the default configuration, and a portal may be configured for  a different number and length. Read the current set without changing it through  `GET api/2.0/settings/tfaappcodes`. The authenticator secret itself is untouched, so the linked application  keeps working.
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
     - returns: RequestBuilder<TfaAppCodeArrayWrapper> 
     */
    open class func updateTfaAppCodesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TfaAppCodeArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaappnewcodes"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TfaAppCodeArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update the TFA settings
     
     See also:
     REST API Reference for updateTfaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings/
     - parameter tfaRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateTfaSettings(tfaRequestsDto: TfaRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await updateTfaSettingsWithRequestBuilder(tfaRequestsDto: tfaRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update the TFA settings
     
     See also:
     REST API Reference for updateTfaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings/
     
     - PUT /api/2.0/settings/tfaapp
     - Sets the portal-wide two-factor authentication policy: `type` `1` switches on the SMS method, `2` switches on  the authenticator application, and `0` turns TFA off, as does any unknown value. The two methods are mutually  exclusive, so switching one on switches the other off. The caller has to be the portal owner or a DocSpace  administrator; other members are refused, and a request that names the owner's account in `id` or in  `mandatoryUsers` is refused unless `id` carries the caller's own account. `trustedIps` takes single addresses,  inclusive ranges and CIDR blocks, and an unparseable entry is rejected as an invalid request; accounts listed  in `mandatoryUsers` or `mandatoryGroups` still have to pass the challenge even from a trusted address.  Switching a method on is disruptive: it resets the portal's authentication cookies, so every session on the  portal, the caller's own included, has to sign in again. The answer is `true` when a method was switched on  and `false` when TFA was turned off. Use `PUT api/2.0/settings/tfaappwithlink` instead to receive the caller's  own confirmation link in the same step.
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
     - parameter tfaRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func updateTfaSettingsWithRequestBuilder(tfaRequestsDto: TfaRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaapp"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tfaRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update TFA settings with a link
     
     See also:
     REST API Reference for updateTfaSettingsLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings-link/
     - parameter tfaRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateTfaSettingsLink(tfaRequestsDto: TfaRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await updateTfaSettingsLinkWithRequestBuilder(tfaRequestsDto: tfaRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update TFA settings with a link
     
     See also:
     REST API Reference for updateTfaSettingsLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings-link/
     
     - PUT /api/2.0/settings/tfaappwithlink
     - Applies the same portal-wide two-factor authentication change as `PUT api/2.0/settings/tfaapp` and  additionally returns the confirmation link the caller needs to pass the new challenge, so an administrator who  has just switched TFA on can go straight to setting it up for themselves. The caller has to be the portal  owner or a DocSpace administrator, and a request that names the owner's account in `id` or in `mandatoryUsers`  is refused unless `id` carries the caller's own account. Every effect of the plain call applies here too: the  methods are mutually exclusive, `type` `0` turns TFA off, `trustedIps` and the two mandatory lists behave the  same way, and switching a method on resets the portal's authentication cookies, so all sessions have to sign  in again. The answer is an empty string whenever there is no link to hand out: when the request turned TFA  off, and when the caller is exempt from the challenge, most often because their own address is in the  `trustedIps` list of that very request. The cookie the link depends on is not returned here, read it with  `GET api/2.0/settings/tfaapp/confirm`.
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
     - parameter tfaRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func updateTfaSettingsLinkWithRequestBuilder(tfaRequestsDto: TfaRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/settings/tfaappwithlink"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tfaRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
