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
     Get portal capabilities
     
     See also:
     REST API Reference for getPortalCapabilities Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: CapabilitiesWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPortalCapabilities(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CapabilitiesWrapper {
        return try await getPortalCapabilitiesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get portal capabilities
     
     See also:
     REST API Reference for getPortalCapabilities Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/
     
     - GET /api/2.0/capabilities
     - Returns the information about portal capabilities.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CapabilitiesWrapper> 
     */
    open class func getPortalCapabilitiesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CapabilitiesWrapper> {
        let localVariablePath = "/api/2.0/capabilities"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CapabilitiesWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
