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
     Get notification channels
     
     See also:
     REST API Reference for getNotificationChannels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-channels/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: NotificationChannelStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNotificationChannels(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NotificationChannelStatusWrapper {
        return try await getNotificationChannelsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get notification channels
     
     See also:
     REST API Reference for getNotificationChannels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-channels/
     
     - GET /api/2.0/settings/notification/channels
     - Returns a list of notification channels.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<NotificationChannelStatusWrapper> 
     */
    open class func getNotificationChannelsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NotificationChannelStatusWrapper> {
        let localVariablePath = "/api/2.0/settings/notification/channels"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NotificationChannelStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check notification availability
     
     See also:
     REST API Reference for getNotificationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/
     - parameter type: (path) The type of notification to query, specified in the route. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: NotificationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNotificationSettings(type: NotificationType, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NotificationSettingsWrapper {
        return try await getNotificationSettingsWithRequestBuilder(type: type, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check notification availability
     
     See also:
     REST API Reference for getNotificationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/
     
     - GET /api/2.0/settings/notification/{type}
     - Checks if the notification type specified in the request is enabled or not.
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
     - parameter type: (path) The type of notification to query, specified in the route. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<NotificationSettingsWrapper> 
     */
    open class func getNotificationSettingsWithRequestBuilder(type: NotificationType, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NotificationSettingsWrapper> {
        var localVariablePath = "/api/2.0/settings/notification/{type}"
        let typePreEscape = "\(APIHelper.mapValueToPathItem(type))"
        let typePostEscape = typePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{type}", with: typePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NotificationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room notification settings
     
     See also:
     REST API Reference for getRoomsNotificationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-notification-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomsNotificationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsNotificationSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomsNotificationSettingsWrapper {
        return try await getRoomsNotificationSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room notification settings
     
     See also:
     REST API Reference for getRoomsNotificationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-notification-settings/
     
     - GET /api/2.0/settings/notification/rooms
     - Returns a list of rooms with the disabled notifications.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomsNotificationSettingsWrapper> 
     */
    open class func getRoomsNotificationSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomsNotificationSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/notification/rooms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomsNotificationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Enable notifications
     
     See also:
     REST API Reference for setNotificationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-notification-settings/
     - parameter notificationSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: NotificationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setNotificationSettings(notificationSettingsRequestsDto: NotificationSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NotificationSettingsWrapper {
        return try await setNotificationSettingsWithRequestBuilder(notificationSettingsRequestsDto: notificationSettingsRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Enable notifications
     
     See also:
     REST API Reference for setNotificationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-notification-settings/
     
     - POST /api/2.0/settings/notification
     - Enables the notification type specified in the request.
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
     - parameter notificationSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<NotificationSettingsWrapper> 
     */
    open class func setNotificationSettingsWithRequestBuilder(notificationSettingsRequestsDto: NotificationSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NotificationSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/notification"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: notificationSettingsRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NotificationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set room notification status
     
     See also:
     REST API Reference for setRoomsNotificationStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-rooms-notification-status/
     - parameter roomsNotificationsSettingsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RoomsNotificationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRoomsNotificationStatus(roomsNotificationsSettingsRequestDto: RoomsNotificationsSettingsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RoomsNotificationSettingsWrapper {
        return try await setRoomsNotificationStatusWithRequestBuilder(roomsNotificationsSettingsRequestDto: roomsNotificationsSettingsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set room notification status
     
     See also:
     REST API Reference for setRoomsNotificationStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-rooms-notification-status/
     
     - POST /api/2.0/settings/notification/rooms
     - Sets a notification status for a room with the ID specified in the request.
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
     - parameter roomsNotificationsSettingsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RoomsNotificationSettingsWrapper> 
     */
    open class func setRoomsNotificationStatusWithRequestBuilder(roomsNotificationsSettingsRequestDto: RoomsNotificationsSettingsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RoomsNotificationSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/notification/rooms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: roomsNotificationsSettingsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RoomsNotificationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
