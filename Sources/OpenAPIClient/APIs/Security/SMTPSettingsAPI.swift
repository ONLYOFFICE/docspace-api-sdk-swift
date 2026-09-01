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
     Get the SMTP testing process status
     
     See also:
     REST API Reference for getSmtpOperationStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-operation-status/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SmtpOperationStatusRequestsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSmtpOperationStatus(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SmtpOperationStatusRequestsWrapper {
        return try await getSmtpOperationStatusWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the SMTP testing process status
     
     See also:
     REST API Reference for getSmtpOperationStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-operation-status/
     
     - GET /api/2.0/smtpsettings/smtp/test/status
     - Returns the status of the SMTP testing process.
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
     - returns: RequestBuilder<SmtpOperationStatusRequestsWrapper> 
     */
    open class func getSmtpOperationStatusWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SmtpOperationStatusRequestsWrapper> {
        let localVariablePath = "/api/2.0/smtpsettings/smtp/test/status"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SmtpOperationStatusRequestsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the SMTP settings
     
     See also:
     REST API Reference for getSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SmtpSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSmtpSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SmtpSettingsWrapper {
        return try await getSmtpSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the SMTP settings
     
     See also:
     REST API Reference for getSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-settings/
     
     - GET /api/2.0/smtpsettings/smtp
     - Returns the current portal SMTP settings.
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
     - returns: RequestBuilder<SmtpSettingsWrapper> 
     */
    open class func getSmtpSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SmtpSettingsWrapper> {
        let localVariablePath = "/api/2.0/smtpsettings/smtp"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SmtpSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reset the SMTP settings
     
     See also:
     REST API Reference for resetSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-smtp-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SmtpSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resetSmtpSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SmtpSettingsWrapper {
        return try await resetSmtpSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reset the SMTP settings
     
     See also:
     REST API Reference for resetSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-smtp-settings/
     
     - DELETE /api/2.0/smtpsettings/smtp
     - Resets the SMTP settings of the current portal.
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
     - returns: RequestBuilder<SmtpSettingsWrapper> 
     */
    open class func resetSmtpSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SmtpSettingsWrapper> {
        let localVariablePath = "/api/2.0/smtpsettings/smtp"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SmtpSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the SMTP settings
     
     See also:
     REST API Reference for saveSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-smtp-settings/
     - parameter smtpSettingsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SmtpSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveSmtpSettings(smtpSettingsDto: SmtpSettingsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SmtpSettingsWrapper {
        return try await saveSmtpSettingsWithRequestBuilder(smtpSettingsDto: smtpSettingsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the SMTP settings
     
     See also:
     REST API Reference for saveSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-smtp-settings/
     
     - POST /api/2.0/smtpsettings/smtp
     - Saves the SMTP settings for the current portal.
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
     - parameter smtpSettingsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SmtpSettingsWrapper> 
     */
    open class func saveSmtpSettingsWithRequestBuilder(smtpSettingsDto: SmtpSettingsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SmtpSettingsWrapper> {
        let localVariablePath = "/api/2.0/smtpsettings/smtp"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smtpSettingsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SmtpSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Test the SMTP settings
     
     See also:
     REST API Reference for testSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/test-smtp-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SmtpOperationStatusRequestsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func testSmtpSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SmtpOperationStatusRequestsWrapper {
        return try await testSmtpSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Test the SMTP settings
     
     See also:
     REST API Reference for testSmtpSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/test-smtp-settings/
     
     - GET /api/2.0/smtpsettings/smtp/test
     - Tests the SMTP settings for the current portal (sends test message to the user email).
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
     - returns: RequestBuilder<SmtpOperationStatusRequestsWrapper> 
     */
    open class func testSmtpSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SmtpOperationStatusRequestsWrapper> {
        let localVariablePath = "/api/2.0/smtpsettings/smtp/test"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SmtpOperationStatusRequestsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
