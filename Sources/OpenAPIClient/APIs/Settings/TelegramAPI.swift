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
     Check the Telegram connection
     
     See also:
     REST API Reference for checkTelegram Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-telegram/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TelegramStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkTelegram(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TelegramStatusWrapper {
        return try await checkTelegramWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the Telegram connection
     
     See also:
     REST API Reference for checkTelegram Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-telegram/
     
     - GET /api/2.0/settings/telegram/check
     - Reports whether the current user's account is linked to the portal's Telegram bot, and under which Telegram  username. The bot keys must be configured for the portal beforehand with `POST api/2.0/settings/authservice`;  until a bot is configured, linking cannot be completed and the status never reaches the linked state. Any  authenticated user may call it, and only for their own account: there is no way to read another member's  Telegram status. This is a read-only, idempotent call. The returned `status` is published as a number, where  `0` means the account is not linked, `1` means it is linked, and `2` means a registration link has been issued  and the portal is still waiting for the user to open it in Telegram. The `username` field is filled in only in  state `1` and comes back empty in the other two. Start or resume linking with  `GET api/2.0/settings/telegram/link`, and drop an established link with  `DELETE api/2.0/settings/telegram/link`.
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
     - returns: RequestBuilder<TelegramStatusWrapper> 
     */
    open class func checkTelegramWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TelegramStatusWrapper> {
        let localVariablePath = "/api/2.0/settings/telegram/check"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TelegramStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Telegram link
     
     See also:
     REST API Reference for linkTelegram Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/link-telegram/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func linkTelegram(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await linkTelegramWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Telegram link
     
     See also:
     REST API Reference for linkTelegram Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/link-telegram/
     
     - GET /api/2.0/settings/telegram/link
     - Returns the personal `t.me` deep link that connects the current user's account to the portal's Telegram bot,  so that notifications can be delivered to that user in Telegram. The bot keys must be configured for the  portal beforehand with `POST api/2.0/settings/authservice`; without a configured bot name the response comes  back empty. Any authenticated user may call it, and the link always belongs to the caller's own account. The  call mutates state: unless the user still has an outstanding registration token it issues a fresh one, so  calling it twice in a row hands back the same link instead of invalidating the first. That token is  short-lived (20 minutes with the default configuration), and once it has expired the operation has to be  called again for a new link. Linking itself is completed in Telegram, not here, so poll  `GET api/2.0/settings/telegram/check` until its `status` becomes `1`. Remove an established link with  `DELETE api/2.0/settings/telegram/link`.
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
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func linkTelegramWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/settings/telegram/link"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Unlink Telegram
     
     See also:
     REST API Reference for unlinkTelegram Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-telegram/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unlinkTelegram(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await unlinkTelegramWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unlink Telegram
     
     See also:
     REST API Reference for unlinkTelegram Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-telegram/
     
     - DELETE /api/2.0/settings/telegram/link
     - Removes the link between the current user's account and the portal's Telegram bot, so that this user stops  receiving notifications in Telegram. Any authenticated user may call it, and only for their own account: one  member cannot unlink another. Nothing has to be linked beforehand, and the call is destructive but idempotent,  returning `true` both when a link was removed and when there was none to remove, so a retry after a timeout is  safe. Only the portal-side link is dropped: the chat itself stays in the user's Telegram, and the portal's bot  configuration is untouched, so the other members keep their own links. Re-linking is not automatic, request a  new link with `GET api/2.0/settings/telegram/link` and confirm the result with  `GET api/2.0/settings/telegram/check`. Delivery over the other notification channels is unaffected; the  channels enabled for the portal are listed by `GET api/2.0/settings/notification/channels`.
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
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func unlinkTelegramWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/telegram/link"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
