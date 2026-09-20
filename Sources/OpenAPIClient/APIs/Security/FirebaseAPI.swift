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
     Register a push device
     
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
     Register a push device
     
     See also:
     REST API Reference for docRegisterPusnNotificationDevice Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/doc-register-pusn-notification-device/
     
     - POST /api/2.0/settings/push/docregisterdevice
     - Registers one mobile device of the calling user for the push notifications of the Documents application, by  storing the Firebase token that device was issued together with the initial `isSubscribed` state. The token is  handed out by Firebase to the mobile client, so obtain it there before calling: nothing here checks it, and it  is kept as an opaque string of up to 255 characters. Every signed-in member registers its own devices,  whatever its role - owner, administrator, user or guest - and a registration is bound to the caller and the  current portal, so another member's devices cannot be touched. The call is safe to repeat, but it is not an  update: a token already registered comes back as it stands and `isSubscribed` from the request is ignored, so  switch an existing registration on or off with `PUT api/2.0/settings/push/docsubscribe` instead. What comes  back is the stored registration, with `application` always `doc` and `isSubscribed` as stored. Only a  subscribed device is sent the room activity messages, such as an invitation to a room, a role change, an  archived room or a new document in a room, and only while the installation itself is configured with Firebase  credentials.
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
     Set push subscription
     
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
     Set push subscription
     
     See also:
     REST API Reference for subscribeDocumentsPushNotification Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/subscribe-documents-push-notification/
     
     - PUT /api/2.0/settings/push/docsubscribe
     - Switches the push notifications of the Documents application on or off for one already registered device of  the calling user: send that device's Firebase token together with `isSubscribed` true to let the messages  through or false to stop them. The device has to be registered first with  `POST api/2.0/settings/push/docregisterdevice`, and only the subscription state is written - the token is  matched, never changed. Every signed-in member manages its own devices, whatever its role - owner,  administrator, user or guest - and a token that belongs to another member or to another portal is not matched  at all, so nothing of theirs can be switched. Repeating the call with the same pair leaves the registration as  it is. What comes back is the updated registration, while an empty response means no registration of the  caller carries that token and nothing was stored - register the device and call again. A device switched off  keeps its token stored but is left out of the delivery, and the other devices of the same member are  unaffected. Which kinds of notification the account receives at all is a separate setting, read with  `GET api/2.0/settings/notification/{type}`.
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
