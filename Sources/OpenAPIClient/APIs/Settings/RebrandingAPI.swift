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
     Delete the additional white label settings
     
     See also:
     REST API Reference for deleteAdditionalWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-additional-white-label-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AdditionalWhiteLabelSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteAdditionalWhiteLabelSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AdditionalWhiteLabelSettingsWrapper {
        return try await deleteAdditionalWhiteLabelSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete the additional white label settings
     
     See also:
     REST API Reference for deleteAdditionalWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-additional-white-label-settings/
     
     - DELETE /api/2.0/settings/rebranding/additional
     - Deletes the additional white label settings.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AdditionalWhiteLabelSettingsWrapper> 
     */
    open class func deleteAdditionalWhiteLabelSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AdditionalWhiteLabelSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/rebranding/additional"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AdditionalWhiteLabelSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete the company white label settings
     
     See also:
     REST API Reference for deleteCompanyWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-company-white-label-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: CompanyWhiteLabelSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteCompanyWhiteLabelSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CompanyWhiteLabelSettingsWrapper {
        return try await deleteCompanyWhiteLabelSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete the company white label settings
     
     See also:
     REST API Reference for deleteCompanyWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-company-white-label-settings/
     
     - DELETE /api/2.0/settings/rebranding/company
     - Deletes the company white label settings.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CompanyWhiteLabelSettingsWrapper> 
     */
    open class func deleteCompanyWhiteLabelSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CompanyWhiteLabelSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/rebranding/company"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CompanyWhiteLabelSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the additional white label settings
     
     See also:
     REST API Reference for getAdditionalWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-additional-white-label-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AdditionalWhiteLabelSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAdditionalWhiteLabelSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AdditionalWhiteLabelSettingsWrapper {
        return try await getAdditionalWhiteLabelSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the additional white label settings
     
     See also:
     REST API Reference for getAdditionalWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-additional-white-label-settings/
     
     - GET /api/2.0/settings/rebranding/additional
     - Returns the additional white label settings.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AdditionalWhiteLabelSettingsWrapper> 
     */
    open class func getAdditionalWhiteLabelSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AdditionalWhiteLabelSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/rebranding/additional"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AdditionalWhiteLabelSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the company white label settings
     
     See also:
     REST API Reference for getCompanyWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-company-white-label-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: CompanyWhiteLabelSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCompanyWhiteLabelSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CompanyWhiteLabelSettingsWrapper {
        return try await getCompanyWhiteLabelSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the company white label settings
     
     See also:
     REST API Reference for getCompanyWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-company-white-label-settings/
     
     - GET /api/2.0/settings/rebranding/company
     - Returns the company white label settings.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CompanyWhiteLabelSettingsWrapper> 
     */
    open class func getCompanyWhiteLabelSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CompanyWhiteLabelSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/rebranding/company"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CompanyWhiteLabelSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check the white label availability
     
     See also:
     REST API Reference for getEnableWhitelabel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enable-whitelabel/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEnableWhitelabel(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await getEnableWhitelabelWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the white label availability
     
     See also:
     REST API Reference for getEnableWhitelabel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enable-whitelabel/
     
     - GET /api/2.0/settings/enablewhitelabel
     - Checks if the white label is enabled or not.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func getEnableWhitelabelWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/enablewhitelabel"
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
     Check the default white label logo text
     
     See also:
     REST API Reference for getIsDefaultWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logo-text/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: IsDefaultWhiteLabelLogosWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIsDefaultWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> IsDefaultWhiteLabelLogosWrapper {
        return try await getIsDefaultWhiteLabelLogoTextWithRequestBuilder(isDark: isDark, isDefault: isDefault, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the default white label logo text
     
     See also:
     REST API Reference for getIsDefaultWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logo-text/
     
     - GET /api/2.0/settings/whitelabel/logotext/isdefault
     - Specifies if the white label logo text is default or not.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<IsDefaultWhiteLabelLogosWrapper> 
     */
    open class func getIsDefaultWhiteLabelLogoTextWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<IsDefaultWhiteLabelLogosWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logotext/isdefault"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IsDefaultWhiteLabelLogosWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check the default white label logos
     
     See also:
     REST API Reference for getIsDefaultWhiteLabelLogos Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logos/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: IsDefaultWhiteLabelLogosArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIsDefaultWhiteLabelLogos(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> IsDefaultWhiteLabelLogosArrayWrapper {
        return try await getIsDefaultWhiteLabelLogosWithRequestBuilder(isDark: isDark, isDefault: isDefault, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the default white label logos
     
     See also:
     REST API Reference for getIsDefaultWhiteLabelLogos Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logos/
     
     - GET /api/2.0/settings/whitelabel/logos/isdefault
     - Specifies if the white label logos are default or not.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<IsDefaultWhiteLabelLogosArrayWrapper> 
     */
    open class func getIsDefaultWhiteLabelLogosWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<IsDefaultWhiteLabelLogosArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logos/isdefault"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IsDefaultWhiteLabelLogosArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the licensor data
     
     See also:
     REST API Reference for getLicensorData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-licensor-data/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: CompanyWhiteLabelSettingsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLicensorData(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CompanyWhiteLabelSettingsArrayWrapper {
        return try await getLicensorDataWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the licensor data
     
     See also:
     REST API Reference for getLicensorData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-licensor-data/
     
     - GET /api/2.0/settings/companywhitelabel
     - Returns the licensor data.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CompanyWhiteLabelSettingsArrayWrapper> 
     */
    open class func getLicensorDataWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CompanyWhiteLabelSettingsArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/companywhitelabel"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CompanyWhiteLabelSettingsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the white label logo text
     
     See also:
     REST API Reference for getWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logo-text/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getWhiteLabelLogoTextWithRequestBuilder(isDark: isDark, isDefault: isDefault, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the white label logo text
     
     See also:
     REST API Reference for getWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logo-text/
     
     - GET /api/2.0/settings/whitelabel/logotext
     - Returns the white label logo text.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getWhiteLabelLogoTextWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logotext"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the white label logos
     
     See also:
     REST API Reference for getWhiteLabelLogos Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logos/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WhiteLabelItemArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWhiteLabelLogos(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WhiteLabelItemArrayWrapper {
        return try await getWhiteLabelLogosWithRequestBuilder(isDark: isDark, isDefault: isDefault, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the white label logos
     
     See also:
     REST API Reference for getWhiteLabelLogos Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logos/
     
     - GET /api/2.0/settings/whitelabel/logos
     - Returns the white label logos.
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WhiteLabelItemArrayWrapper> 
     */
    open class func getWhiteLabelLogosWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WhiteLabelItemArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logos"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WhiteLabelItemArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Restore the white label logo text
     
     See also:
     REST API Reference for restoreWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logo-text/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restoreWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await restoreWhiteLabelLogoTextWithRequestBuilder(isDark: isDark, isDefault: isDefault, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Restore the white label logo text
     
     See also:
     REST API Reference for restoreWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logo-text/
     
     - PUT /api/2.0/settings/whitelabel/logotext/restore
     - Restores the white label logo text.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func restoreWhiteLabelLogoTextWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logotext/restore"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Restore the white label logos
     
     See also:
     REST API Reference for restoreWhiteLabelLogos Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logos/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restoreWhiteLabelLogos(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await restoreWhiteLabelLogosWithRequestBuilder(isDark: isDark, isDefault: isDefault, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Restore the white label logos
     
     See also:
     REST API Reference for restoreWhiteLabelLogos Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logos/
     
     - PUT /api/2.0/settings/whitelabel/logos/restore
     - Restores the white label logos.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func restoreWhiteLabelLogosWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logos/restore"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the additional white label settings
     
     See also:
     REST API Reference for saveAdditionalWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-additional-white-label-settings/
     - parameter additionalWhiteLabelSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveAdditionalWhiteLabelSettings(additionalWhiteLabelSettingsWrapper: AdditionalWhiteLabelSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await saveAdditionalWhiteLabelSettingsWithRequestBuilder(additionalWhiteLabelSettingsWrapper: additionalWhiteLabelSettingsWrapper, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the additional white label settings
     
     See also:
     REST API Reference for saveAdditionalWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-additional-white-label-settings/
     
     - POST /api/2.0/settings/rebranding/additional
     - Saves the additional white label settings specified in the request.
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
     - parameter additionalWhiteLabelSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func saveAdditionalWhiteLabelSettingsWithRequestBuilder(additionalWhiteLabelSettingsWrapper: AdditionalWhiteLabelSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/rebranding/additional"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: additionalWhiteLabelSettingsWrapper, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the company white label settings
     
     See also:
     REST API Reference for saveCompanyWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-company-white-label-settings/
     - parameter companyWhiteLabelSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveCompanyWhiteLabelSettings(companyWhiteLabelSettingsWrapper: CompanyWhiteLabelSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await saveCompanyWhiteLabelSettingsWithRequestBuilder(companyWhiteLabelSettingsWrapper: companyWhiteLabelSettingsWrapper, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the company white label settings
     
     See also:
     REST API Reference for saveCompanyWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-company-white-label-settings/
     
     - POST /api/2.0/settings/rebranding/company
     - Saves the company white label settings specified in the request.
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
     - parameter companyWhiteLabelSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func saveCompanyWhiteLabelSettingsWithRequestBuilder(companyWhiteLabelSettingsWrapper: CompanyWhiteLabelSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/rebranding/company"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: companyWhiteLabelSettingsWrapper, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the white label logo text settings
     
     See also:
     REST API Reference for saveWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-logo-text/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)     - parameter whiteLabelRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, whiteLabelRequestsDto: WhiteLabelRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await saveWhiteLabelLogoTextWithRequestBuilder(isDark: isDark, isDefault: isDefault, whiteLabelRequestsDto: whiteLabelRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the white label logo text settings
     
     See also:
     REST API Reference for saveWhiteLabelLogoText Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-logo-text/
     
     - POST /api/2.0/settings/whitelabel/logotext/save
     - Saves the white label logo text specified in the request.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter whiteLabelRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func saveWhiteLabelLogoTextWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, whiteLabelRequestsDto: WhiteLabelRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logotext/save"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: whiteLabelRequestsDto, codableHelper: apiConfiguration.codableHelper)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the white label logos
     
     See also:
     REST API Reference for saveWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)     - parameter whiteLabelRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveWhiteLabelSettings(isDark: Bool? = nil, isDefault: Bool? = nil, whiteLabelRequestsDto: WhiteLabelRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await saveWhiteLabelSettingsWithRequestBuilder(isDark: isDark, isDefault: isDefault, whiteLabelRequestsDto: whiteLabelRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the white label logos
     
     See also:
     REST API Reference for saveWhiteLabelSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings/
     
     - POST /api/2.0/settings/whitelabel/logos/save
     - Saves the white label logos specified in the request.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter whiteLabelRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func saveWhiteLabelSettingsWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, whiteLabelRequestsDto: WhiteLabelRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logos/save"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: whiteLabelRequestsDto, codableHelper: apiConfiguration.codableHelper)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the white label logos from files
     
     See also:
     REST API Reference for saveWhiteLabelSettingsFromFiles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings-from-files/
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveWhiteLabelSettingsFromFiles(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await saveWhiteLabelSettingsFromFilesWithRequestBuilder(isDark: isDark, isDefault: isDefault, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the white label logos from files
     
     See also:
     REST API Reference for saveWhiteLabelSettingsFromFiles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings-from-files/
     
     - POST /api/2.0/settings/whitelabel/logos/savefromfiles
     - Saves the white label logos from files.
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
     - parameter isDark: (query) Specifies if the white label logo is for the dark theme or not. (optional)
     - parameter isDefault: (query) Specifies if the logo is for a default tenant or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func saveWhiteLabelSettingsFromFilesWithRequestBuilder(isDark: Bool? = nil, isDefault: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/whitelabel/logos/savefromfiles"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IsDark": (wrappedValue: isDark?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "IsDefault": (wrappedValue: isDefault?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
