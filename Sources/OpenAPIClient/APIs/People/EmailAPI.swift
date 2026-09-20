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
     Change a user email
     
     See also:
     REST API Reference for changeUserEmail Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-email/
     - parameter userid: (path) The ID of the account whose address is set, taken from the route. It has to match the account the  confirmation token was issued for, and the account has to be active.      - parameter changeEmailRequest: (body) The new address, in plain text or in the encrypted form the confirmation link carries. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EmployeeFullWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeUserEmail(userid: UUID, changeEmailRequest: ChangeEmailRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EmployeeFullWrapper {
        return try await changeUserEmailWithRequestBuilder(userid: userid, changeEmailRequest: changeEmailRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change a user email
     
     See also:
     REST API Reference for changeUserEmail Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-email/
     
     - PUT /api/2.0/people/{userid}/email
     - Sets a new email address on an account, which is the step that completes an email change.  The request has to carry the confirmation token from the emailed link rather than an ordinary session, and an  expired or already used token is answered with 401.  The account has to exist and be `Active`, and only the portal owner may change the owner's own address.  Pass the address either in plain text as `email` or, as it arrives inside the confirmation link, encrypted as  `encEmail`; an empty or malformed address answers 400.  An address equal to the current one is accepted and changes nothing, while a new one is stored in lowercase  and marks the account `Activated`, because following the link proves the address works.  The answer is the profile with its new address.  The change is requested through `POST api/2.0/people/email`, which is what sends the link.
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
     - parameter userid: (path) The ID of the account whose address is set, taken from the route. It has to match the account the  confirmation token was issued for, and the account has to be active. 
     - parameter changeEmailRequest: (body) The new address, in plain text or in the encrypted form the confirmation link carries. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EmployeeFullWrapper> 
     */
    open class func changeUserEmailWithRequestBuilder(userid: UUID, changeEmailRequest: ChangeEmailRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EmployeeFullWrapper> {
        var localVariablePath = "/api/2.0/people/{userid}/email"
        let useridPreEscape = "\(APIHelper.mapValueToPathItem(userid))"
        let useridPostEscape = useridPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userid}", with: useridPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeEmailRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EmployeeFullWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Send instructions to change email
     
     See also:
     REST API Reference for sendEmailChangeInstructions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/
     - parameter updateMemberRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendEmailChangeInstructions(updateMemberRequestDto: UpdateMemberRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await sendEmailChangeInstructionsWithRequestBuilder(updateMemberRequestDto: updateMemberRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send instructions to change email
     
     See also:
     REST API Reference for sendEmailChangeInstructions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/
     
     - POST /api/2.0/people/email
     - Starts changing the email address of an account, and what it actually does depends on who calls it.  A caller acting on their own account only gets a confirmation letter sent to the new address, and the address  stays unchanged until that link is followed, which lands on `PUT api/2.0/people/{userid}/email`.  A DocSpace administrator acting on somebody else changes the address immediately instead: the account is  marked as not activated, every session of it is ended, and activation instructions are sent to the new  address - and passing the address the account already has is then rejected with 400.  A caller who is not an administrator may only address their own account, nobody but the owner may change the  owner's address, and only the owner may change the address of another DocSpace administrator.  The target has to be an account that is neither disabled nor a pending invitation, otherwise the operation  answers 404, and an address that already belongs to somebody answers 400.  The answer is a ready-to-display message naming the address the letter was sent to.
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
     - parameter updateMemberRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func sendEmailChangeInstructionsWithRequestBuilder(updateMemberRequestDto: UpdateMemberRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/people/email"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateMemberRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
