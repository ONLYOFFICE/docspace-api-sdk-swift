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
     Save the Documents Firebase device token
     
     See also:
     REST API Reference for docRegisterPusnNotificationDevice Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/doc-register-pusn-notification-device/
     - parameter firebaseRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FireBaseUserWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func docRegisterPusnNotificationDevice(firebaseRequestsDto: FirebaseRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FireBaseUserWrapper {
        return try await docRegisterPusnNotificationDeviceWithRequestBuilder(firebaseRequestsDto: firebaseRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the Documents Firebase device token
     
     See also:
     REST API Reference for docRegisterPusnNotificationDevice Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/doc-register-pusn-notification-device/
     
     - POST /api/2.0/settings/push/docregisterdevice
     - Saves the Firebase device token specified in the request for the Documents application.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter firebaseRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FireBaseUserWrapper> 
     */
    open class func docRegisterPusnNotificationDeviceWithRequestBuilder(firebaseRequestsDto: FirebaseRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FireBaseUserWrapper> {
        let localVariablePath = "/api/2.0/settings/push/docregisterdevice"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: firebaseRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FireBaseUserWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Subscribe to Documents push notification
     
     See also:
     REST API Reference for subscribeDocumentsPushNotification Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/subscribe-documents-push-notification/
     - parameter firebaseRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FireBaseUserWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscribeDocumentsPushNotification(firebaseRequestsDto: FirebaseRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FireBaseUserWrapper {
        return try await subscribeDocumentsPushNotificationWithRequestBuilder(firebaseRequestsDto: firebaseRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Subscribe to Documents push notification
     
     See also:
     REST API Reference for subscribeDocumentsPushNotification Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/subscribe-documents-push-notification/
     
     - PUT /api/2.0/settings/push/docsubscribe
     - Subscribes to the Documents push notification.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter firebaseRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FireBaseUserWrapper> 
     */
    open class func subscribeDocumentsPushNotificationWithRequestBuilder(firebaseRequestsDto: FirebaseRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FireBaseUserWrapper> {
        let localVariablePath = "/api/2.0/settings/push/docsubscribe"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: firebaseRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FireBaseUserWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
