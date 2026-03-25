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
var fields: String?

    /**
     Create a webhook
     
     See also:
     REST API Reference for createWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
     - parameter createWebhooksConfigRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksConfigWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createWebhook(createWebhooksConfigRequestsDto: CreateWebhooksConfigRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksConfigWrapper {
        return try await createWebhookWithRequestBuilder(createWebhooksConfigRequestsDto: createWebhooksConfigRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a webhook
     
     See also:
     REST API Reference for createWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
     
     - POST /api/2.0/settings/webhook
     - Creates a new tenant webhook with the parameters specified in the request.
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
     - parameter createWebhooksConfigRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebhooksConfigWrapper> 
     */
    open class func createWebhookWithRequestBuilder(createWebhooksConfigRequestsDto: CreateWebhooksConfigRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksConfigWrapper> {
        let localVariablePath = "/api/2.0/settings/webhook"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createWebhooksConfigRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksConfigWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Enable a webhook
     
     See also:
     REST API Reference for enableWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
     - parameter updateWebhooksConfigRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksConfigWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func enableWebhook(updateWebhooksConfigRequestsDto: UpdateWebhooksConfigRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksConfigWrapper {
        return try await enableWebhookWithRequestBuilder(updateWebhooksConfigRequestsDto: updateWebhooksConfigRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Enable a webhook
     
     See also:
     REST API Reference for enableWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
     
     - PUT /api/2.0/settings/webhook/enable
     - Enables or disables a tenant webhook with the parameters specified in the request.
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
     - parameter updateWebhooksConfigRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebhooksConfigWrapper> 
     */
    open class func enableWebhookWithRequestBuilder(updateWebhooksConfigRequestsDto: UpdateWebhooksConfigRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksConfigWrapper> {
        let localVariablePath = "/api/2.0/settings/webhook/enable"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateWebhooksConfigRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksConfigWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get webhooks
     
     See also:
     REST API Reference for getTenantWebhooks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksConfigWithStatusArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantWebhooks(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksConfigWithStatusArrayWrapper {
        return try await getTenantWebhooksWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get webhooks
     
     See also:
     REST API Reference for getTenantWebhooks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/
     
     - GET /api/2.0/settings/webhook
     - Returns a list of the tenant webhooks.
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
     - returns: RequestBuilder<WebhooksConfigWithStatusArrayWrapper> 
     */
    open class func getTenantWebhooksWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksConfigWithStatusArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/webhook"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksConfigWithStatusArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get webhook triggers
     
     See also:
     REST API Reference for getWebhookTriggers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: GetWebhookTriggers200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebhookTriggers(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GetWebhookTriggers200Response {
        return try await getWebhookTriggersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get webhook triggers
     
     See also:
     REST API Reference for getWebhookTriggers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/
     
     - GET /api/2.0/settings/webhook/triggers
     - Returns a list of triggers for a webhook.
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
     - returns: RequestBuilder<GetWebhookTriggers200Response> 
     */
    open class func getWebhookTriggersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GetWebhookTriggers200Response> {
        let localVariablePath = "/api/2.0/settings/webhook/triggers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetWebhookTriggers200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get webhook logs
     
     See also:
     REST API Reference for getWebhooksLogs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
     - parameter deliveryFrom: (query) The delivery start time for filtering webhook logs. (optional)     - parameter deliveryTo: (query) The delivery end time for filtering webhook logs. (optional)     - parameter hookUri: (query) The destination URL where webhooks are delivered. (optional)     - parameter configId: (query) The webhook configuration identifier. (optional)     - parameter eventId: (query) The unique identifier of the event that triggered the webhook. (optional)     - parameter groupStatus: (query) The status of the webhook delivery group. (optional)     - parameter userId: (query) The identifier of the user associated with the webhook event. (optional)     - parameter trigger: (query) The type of event that triggered the webhook. (optional)     - parameter count: (query) The maximum number of webhook log records to return in the query response. (optional)     - parameter startIndex: (query) Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksLogArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebhooksLogs(deliveryFrom: Date? = nil, deliveryTo: Date? = nil, hookUri: String? = nil, configId: Int? = nil, eventId: Int? = nil, groupStatus: WebhookGroupStatus? = nil, userId: UUID? = nil, trigger: WebhookTrigger? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksLogArrayWrapper {
        return try await getWebhooksLogsWithRequestBuilder(deliveryFrom: deliveryFrom, deliveryTo: deliveryTo, hookUri: hookUri, configId: configId, eventId: eventId, groupStatus: groupStatus, userId: userId, trigger: trigger, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get webhook logs
     
     See also:
     REST API Reference for getWebhooksLogs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
     
     - GET /api/2.0/settings/webhooks/log
     - Returns the logs of the webhook activities.
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
     - parameter deliveryFrom: (query) The delivery start time for filtering webhook logs. (optional)
     - parameter deliveryTo: (query) The delivery end time for filtering webhook logs. (optional)
     - parameter hookUri: (query) The destination URL where webhooks are delivered. (optional)
     - parameter configId: (query) The webhook configuration identifier. (optional)
     - parameter eventId: (query) The unique identifier of the event that triggered the webhook. (optional)
     - parameter groupStatus: (query) The status of the webhook delivery group. (optional)
     - parameter userId: (query) The identifier of the user associated with the webhook event. (optional)
     - parameter trigger: (query) The type of event that triggered the webhook. (optional)
     - parameter count: (query) The maximum number of webhook log records to return in the query response. (optional)
     - parameter startIndex: (query) Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebhooksLogArrayWrapper> 
     */
    open class func getWebhooksLogsWithRequestBuilder(deliveryFrom: Date? = nil, deliveryTo: Date? = nil, hookUri: String? = nil, configId: Int? = nil, eventId: Int? = nil, groupStatus: WebhookGroupStatus? = nil, userId: UUID? = nil, trigger: WebhookTrigger? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksLogArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/webhooks/log"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "deliveryFrom": (wrappedValue: deliveryFrom?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "deliveryTo": (wrappedValue: deliveryTo?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "hookUri": (wrappedValue: hookUri?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "configId": (wrappedValue: configId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "eventId": (wrappedValue: eventId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "groupStatus": (wrappedValue: groupStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "userId": (wrappedValue: userId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "trigger": (wrappedValue: trigger?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksLogArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove a webhook
     
     See also:
     REST API Reference for removeWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/
     - parameter id: (path) The ID extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksConfigWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func removeWebhook(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksConfigWrapper {
        return try await removeWebhookWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove a webhook
     
     See also:
     REST API Reference for removeWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/
     
     - DELETE /api/2.0/settings/webhook/{id}
     - Removes a tenant webhook with the ID specified in the request.
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
     - parameter id: (path) The ID extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebhooksConfigWrapper> 
     */
    open class func removeWebhookWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksConfigWrapper> {
        var localVariablePath = "/api/2.0/settings/webhook/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksConfigWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Retry a webhook
     
     See also:
     REST API Reference for retryWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/
     - parameter id: (path) The ID extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksLogWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func retryWebhook(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksLogWrapper {
        return try await retryWebhookWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Retry a webhook
     
     See also:
     REST API Reference for retryWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/
     
     - PUT /api/2.0/settings/webhook/{id}/retry
     - Retries a webhook with the ID specified in the request.
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
     - parameter id: (path) The ID extracted from the route parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebhooksLogWrapper> 
     */
    open class func retryWebhookWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksLogWrapper> {
        var localVariablePath = "/api/2.0/settings/webhook/{id}/retry"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksLogWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Retry webhooks
     
     See also:
     REST API Reference for retryWebhooks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
     - parameter webhookRetryRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksLogArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func retryWebhooks(webhookRetryRequestsDto: WebhookRetryRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksLogArrayWrapper {
        return try await retryWebhooksWithRequestBuilder(webhookRetryRequestsDto: webhookRetryRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Retry webhooks
     
     See also:
     REST API Reference for retryWebhooks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
     
     - PUT /api/2.0/settings/webhook/retry
     - Retries all the webhooks with the IDs specified in the request.
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
     - parameter webhookRetryRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebhooksLogArrayWrapper> 
     */
    open class func retryWebhooksWithRequestBuilder(webhookRetryRequestsDto: WebhookRetryRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksLogArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/webhook/retry"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: webhookRetryRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksLogArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a webhook
     
     See also:
     REST API Reference for updateWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
     - parameter updateWebhooksConfigRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebhooksConfigWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateWebhook(updateWebhooksConfigRequestsDto: UpdateWebhooksConfigRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebhooksConfigWrapper {
        return try await updateWebhookWithRequestBuilder(updateWebhooksConfigRequestsDto: updateWebhooksConfigRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a webhook
     
     See also:
     REST API Reference for updateWebhook Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
     
     - PUT /api/2.0/settings/webhook
     - Updates a tenant webhook with the parameters specified in the request.
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
     - parameter updateWebhooksConfigRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebhooksConfigWrapper> 
     */
    open class func updateWebhookWithRequestBuilder(updateWebhooksConfigRequestsDto: UpdateWebhooksConfigRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebhooksConfigWrapper> {
        let localVariablePath = "/api/2.0/settings/webhook"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateWebhooksConfigRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebhooksConfigWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension SettingsWebhooksAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> SettingsWebhooksAPIApi {
        self.fields = fields
        return self
    }
}
