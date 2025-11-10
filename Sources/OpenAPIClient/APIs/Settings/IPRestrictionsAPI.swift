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
     Get the IP portal restrictions
     
     See also:
     REST API Reference for getIpRestrictions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: IPRestrictionArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIpRestrictions(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> IPRestrictionArrayWrapper {
        return try await getIpRestrictionsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the IP portal restrictions
     
     See also:
     REST API Reference for getIpRestrictions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/
     
     - GET /api/2.0/settings/iprestrictions
     - Returns the IP portal restrictions.
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
     - returns: RequestBuilder<IPRestrictionArrayWrapper> 
     */
    open class func getIpRestrictionsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<IPRestrictionArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/iprestrictions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IPRestrictionArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the IP restriction settings
     
     See also:
     REST API Reference for readIpRestrictionsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: IPRestrictionsSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func readIpRestrictionsSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> IPRestrictionsSettingsWrapper {
        return try await readIpRestrictionsSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the IP restriction settings
     
     See also:
     REST API Reference for readIpRestrictionsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/
     
     - GET /api/2.0/settings/iprestrictions/settings
     - Returns the IP restriction settings.
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
     - returns: RequestBuilder<IPRestrictionsSettingsWrapper> 
     */
    open class func readIpRestrictionsSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<IPRestrictionsSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/iprestrictions/settings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IPRestrictionsSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update the IP restrictions
     
     See also:
     REST API Reference for saveIpRestrictions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/
     - parameter ipRestrictionsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: IpRestrictionsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveIpRestrictions(ipRestrictionsDto: IpRestrictionsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> IpRestrictionsWrapper {
        return try await saveIpRestrictionsWithRequestBuilder(ipRestrictionsDto: ipRestrictionsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update the IP restrictions
     
     See also:
     REST API Reference for saveIpRestrictions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/
     
     - PUT /api/2.0/settings/iprestrictions
     - Updates the IP restrictions with the parameters specified in the request.
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
     - parameter ipRestrictionsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<IpRestrictionsWrapper> 
     */
    open class func saveIpRestrictionsWithRequestBuilder(ipRestrictionsDto: IpRestrictionsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<IpRestrictionsWrapper> {
        let localVariablePath = "/api/2.0/settings/iprestrictions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ipRestrictionsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IpRestrictionsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update the IP restriction settings
     
     See also:
     REST API Reference for updateIpRestrictionsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/
     - parameter ipRestrictionsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: IpRestrictionsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateIpRestrictionsSettings(ipRestrictionsDto: IpRestrictionsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> IpRestrictionsWrapper {
        return try await updateIpRestrictionsSettingsWithRequestBuilder(ipRestrictionsDto: ipRestrictionsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update the IP restriction settings
     
     See also:
     REST API Reference for updateIpRestrictionsSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/
     
     - PUT /api/2.0/settings/iprestrictions/settings
     - Updates the IP restriction settings with the parameters specified in the request.
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
     - parameter ipRestrictionsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<IpRestrictionsWrapper> 
     */
    open class func updateIpRestrictionsSettingsWithRequestBuilder(ipRestrictionsDto: IpRestrictionsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<IpRestrictionsWrapper> {
        let localVariablePath = "/api/2.0/settings/iprestrictions/settings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ipRestrictionsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IpRestrictionsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
