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
     Unlock a password-protected link
     
     See also:
     REST API Reference for applyExternalSharePassword Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
     - parameter key: (path) The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.      - parameter externalShareRequestParam: (body) The body of the request, holding the password to check. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExternalShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func applyExternalSharePassword(key: String, externalShareRequestParam: ExternalShareRequestParam, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExternalShareWrapper {
        return try await applyExternalSharePasswordWithRequestBuilder(key: key, externalShareRequestParam: externalShareRequestParam, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unlock a password-protected link
     
     See also:
     REST API Reference for applyExternalSharePassword Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
     
     - POST /api/2.0/files/share/{key}/password
     - Submits the password of a protected external share link and answers with the same resolved link data as  `GET api/2.0/files/share/{key}`, so this operation is called only after that one reported that a password is  required. The token in the path is the `requestToken` of the link, and the password is the one chosen by the  member who shared the entry. The call needs no authentication; a signed-in caller that may already read the  room is let through by the resolve operation itself and does not need the password at all. A correct password  is remembered for the caller, so later requests with the same token resolve without repeating it, and a wrong  one is reported in the `status` field as an invalid password rather than as an HTTP error, while the  remembered password is dropped. Attempts are counted per link and per calling address: once the portal's limit  is reached, further attempts are rejected until the block expires, which makes the operation unsuitable for  trying passwords in a loop. Nothing about the entry is changed by the call itself.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter key: (path) The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand. 
     - parameter externalShareRequestParam: (body) The body of the request, holding the password to check. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ExternalShareWrapper> 
     */
    open class func applyExternalSharePasswordWithRequestBuilder(key: String, externalShareRequestParam: ExternalShareRequestParam, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ExternalShareWrapper> {
        var localVariablePath = "/api/2.0/files/share/{key}/password"
        let keyPreEscape = "\(APIHelper.mapValueToPathItem(key))"
        let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: externalShareRequestParam, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change the room or file owner
     
     See also:
     REST API Reference for changeFileOwner Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/
     - parameter changeOwnerRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeFileOwner(changeOwnerRequestDto: ChangeOwnerRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await changeFileOwnerWithRequestBuilder(changeOwnerRequestDto: changeOwnerRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the room or file owner
     
     See also:
     REST API Reference for changeFileOwner Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/
     
     - POST /api/2.0/files/owner
     - Hands the ownership of the listed rooms and files over to a single account, and returns the entries as they  look afterwards. Among folders only rooms are accepted - take their identifiers from  `GET api/2.0/files/rooms`; a plain folder is refused. A file is accepted only while it lies in the portal's  common section, so a file kept inside a room or in a personal section is refused as well, and so is a file  that is locked or currently open in the editor. The new owner has to be an active account that is allowed to  manage rooms, and a private room additionally requires that this account has already set up its encryption  keys; a deactivated account, a guest or a plain member is rejected. The caller must be the creator of every  listed room, or a portal administrator. The call mutates the entries one at a time and stops at the first item  it may not touch, leaving the entries already processed changed, so a partial answer is possible; an item  whose owner is already the target account is returned untouched, which makes a repeat safe. The previous owner  keeps access to a transferred room as its manager, while a transferred file is saved as a new version authored  by the new owner. An entry that lives on a connected third-party account is quietly left out.
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
     - parameter changeOwnerRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func changeFileOwnerWithRequestBuilder(changeOwnerRequestDto: ChangeOwnerRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        let localVariablePath = "/api/2.0/files/owner"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeOwnerRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file encryption keys
     
     See also:
     REST API Reference for getEncryptionAccess Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEncryptionAccess(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await getEncryptionAccessWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file encryption keys
     
     See also:
     REST API Reference for getEncryptionAccess Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
     
     - GET /api/2.0/files/file/{fileId}/publickeys
     - Answers with the encryption keys that open one file kept in a private room: one entry per member who holds  rights on the file and has published keys, each carrying that member's public key, and the caller's own entry  carrying the encrypted private half as well. The private half of another member is never handed out. A member  who has not published keys yet is left out of the answer altogether, which is how a client tells that this  member cannot open the file until keys are published through `POST api/2.0/privacyroom/keys`; a member who  holds the file only through a group is not reported either, because group entries are skipped. The file has to  lie in a private room or in the encrypted section - a file kept anywhere else carries no keys and is rejected  as an unsupported request. The caller needs read access to the file and is answered with 403 otherwise, and a  file that does not exist is answered as missing. The call is read-only, and the answer changes as soon as a  member publishes or rotates keys, so read it again rather than caching it for a later session.
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
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EncryptionKeyArrayWrapper> 
     */
    open class func getEncryptionAccessWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EncryptionKeyArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/publickeys"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EncryptionKeyArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file encryption keys (third-party storage)
     
     See also:
     REST API Reference for getEncryptionAccess Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEncryptionAccess(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await getEncryptionAccessWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file encryption keys (third-party storage)
     
     See also:
     REST API Reference for getEncryptionAccess Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
     
     - GET /api/2.0/files/file/{fileId}/publickeys
     - Answers with the encryption keys that open one file kept in a private room: one entry per member who holds  rights on the file and has published keys, each carrying that member's public key, and the caller's own entry  carrying the encrypted private half as well. The private half of another member is never handed out. A member  who has not published keys yet is left out of the answer altogether, which is how a client tells that this  member cannot open the file until keys are published through `POST api/2.0/privacyroom/keys`; a member who  holds the file only through a group is not reported either, because group entries are skipped. The file has to  lie in a private room or in the encrypted section - a file kept anywhere else carries no keys and is rejected  as an unsupported request. The caller needs read access to the file and is answered with 403 otherwise, and a  file that does not exist is answered as missing. The call is read-only, and the answer changes as soon as a  member publishes or rotates keys, so read it again rather than caching it for a later session.
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
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EncryptionKeyArrayWrapper> 
     */
    open class func getEncryptionAccessWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EncryptionKeyArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/publickeys"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EncryptionKeyArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Resolve an external share link
     
     See also:
     REST API Reference for getExternalShareData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
     - parameter key: (path) The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.      - parameter fileId: (query) A file inside the room the link points at, echoed back in the answer's entity fields so a client can show what  was opened. The value is ignored when the file does not sit under the link's target, and passing it together  with a folder has no effect - the file wins. (optional)     - parameter folderId: (query) A folder inside the room the link points at, echoed back in the answer's entity fields. It is ignored when the  folder does not sit under the link's target, and when a file is passed as well. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ExternalShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getExternalShareData(key: String, fileId: String? = nil, folderId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ExternalShareWrapper {
        return try await getExternalShareDataWithRequestBuilder(key: key, fileId: fileId, folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resolve an external share link
     
     See also:
     REST API Reference for getExternalShareData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
     
     - GET /api/2.0/files/share/{key}
     - Resolves the token of an external share link into the room or file it points at, and reports the outcome of  validating the link. The token is the `requestToken` of a link returned by the link operations of an entry,  such as `GET api/2.0/files/file/{id}/link` or `GET api/2.0/files/rooms/{id}/link`. The call needs no  authentication and answers a refused link in the `status` field rather than with an HTTP error, so that field  has to be read before anything else: a token that matches no link, and a link whose entry has been archived or  moved to the trash, both resolve as invalid; a link past its expiration date resolves as expired; a  password-protected link resolves as requiring a password, which is then submitted through  `POST api/2.0/files/share/{key}/password`; and a public link resolves as denied when the portal forbids  sharing with people outside it. The call is not read-only: for a signed-in caller the first successful  resolution puts the entry into the account's own lists, and for a visitor without an account it opens an  anonymous session that later requests with the same token reuse. Pass `fileId` or `folderId` to have an entry  inside the link's target echoed back.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter key: (path) The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand. 
     - parameter fileId: (query) A file inside the room the link points at, echoed back in the answer's entity fields so a client can show what  was opened. The value is ignored when the file does not sit under the link's target, and passing it together  with a folder has no effect - the file wins. (optional)
     - parameter folderId: (query) A folder inside the room the link points at, echoed back in the answer's entity fields. It is ignored when the  folder does not sit under the link's target, and when a file is passed as well. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ExternalShareWrapper> 
     */
    open class func getExternalShareDataWithRequestBuilder(key: String, fileId: String? = nil, folderId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ExternalShareWrapper> {
        var localVariablePath = "/api/2.0/files/share/{key}"
        let keyPreEscape = "\(APIHelper.mapValueToPathItem(key))"
        let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fileId": (wrappedValue: fileId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "folderId": (wrappedValue: folderId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file sharing rights
     
     See also:
     REST API Reference for getFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileSecurityInfo(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFileSecurityInfoWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file sharing rights
     
     See also:
     REST API Reference for getFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
     
     - GET /api/2.0/files/file/{id}/share
     - Lists the accounts and groups that hold rights on one file, one entry per subject, with the level each of them  has, whether the caller may still change that level, and which of them owns the file. The owner comes first,  then room managers, groups, ordinary members, guests, and last the accounts that have not accepted their  invitation yet, each of those ranked by access level and by name. External links are left out and are listed  by `GET api/2.0/files/file/{id}/links` instead, while a PDF form kept in a form-filling room also reports the  link of that room, because the form is filled out through it. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. Listing takes  the right to change the sharing of the file, which its creator, the manager of its room and a portal  administrator acting as room manager have, while inside a public room reading the file is enough; a member who  may read but not share is answered with an empty list although the header still counts the subjects, and a  caller with no access, a guest included, is refused. A file that does not exist, or was deleted permanently,  is answered as missing. The call is read-only; for several entries at once use `POST api/2.0/files/share`.
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
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)
     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFileSecurityInfoWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file sharing rights (third-party storage)
     
     See also:
     REST API Reference for getFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileSecurityInfo(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFileSecurityInfoWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file sharing rights (third-party storage)
     
     See also:
     REST API Reference for getFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
     
     - GET /api/2.0/files/file/{id}/share
     - Lists the accounts and groups that hold rights on one file, one entry per subject, with the level each of them  has, whether the caller may still change that level, and which of them owns the file. The owner comes first,  then room managers, groups, ordinary members, guests, and last the accounts that have not accepted their  invitation yet, each of those ranked by access level and by name. External links are left out and are listed  by `GET api/2.0/files/file/{id}/links` instead, while a PDF form kept in a form-filling room also reports the  link of that room, because the form is filled out through it. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. Listing takes  the right to change the sharing of the file, which its creator, the manager of its room and a portal  administrator acting as room manager have, while inside a public room reading the file is enough; a member who  may read but not share is answered with an empty list although the header still counts the subjects, and a  caller with no access, a guest included, is refused. A file that does not exist, or was deleted permanently,  is answered as missing. The call is read-only; for several entries at once use `POST api/2.0/files/share`.
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
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)
     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFileSecurityInfoWithRequestBuilder(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder sharing rights
     
     See also:
     REST API Reference for getFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
     - parameter id: (path) The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter count: (query) How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderSecurityInfo(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFolderSecurityInfoWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder sharing rights
     
     See also:
     REST API Reference for getFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
     
     - GET /api/2.0/files/folder/{id}/share
     - Lists the accounts and groups that hold rights on one folder or room, one entry per subject, with the level  each of them has, whether the caller may still change that level, and which of them owns the entry. The owner  comes first, then room managers, groups, ordinary members, guests, and last the accounts that have not  accepted their invitation yet, each of those ranked by access level and by name. External links are left out  and are listed by `GET api/2.0/files/folder/{id}/links` instead. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. For a room, and  for a folder inside a public room, read access is enough; any other folder is listed only to a caller who may  change its sharing, which the manager of its room and a portal administrator acting as room manager may, and a  member who may only read such a folder is answered with an empty list although the header still counts the  subjects. A caller with no access, a guest included, is refused, and a folder that does not exist is answered  as missing. The call is read-only. For a room prefer `GET api/2.0/files/rooms/{id}/share`, which filters the  same subjects by kind and by name.
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
     - parameter id: (path) The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. 
     - parameter count: (query) How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it. (optional)
     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFolderSecurityInfoWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder sharing rights (third-party storage)
     
     See also:
     REST API Reference for getFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
     - parameter id: (path) The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter count: (query) How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderSecurityInfo(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFolderSecurityInfoWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder sharing rights (third-party storage)
     
     See also:
     REST API Reference for getFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
     
     - GET /api/2.0/files/folder/{id}/share
     - Lists the accounts and groups that hold rights on one folder or room, one entry per subject, with the level  each of them has, whether the caller may still change that level, and which of them owns the entry. The owner  comes first, then room managers, groups, ordinary members, guests, and last the accounts that have not  accepted their invitation yet, each of those ranked by access level and by name. External links are left out  and are listed by `GET api/2.0/files/folder/{id}/links` instead. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. For a room, and  for a folder inside a public room, read access is enough; any other folder is listed only to a caller who may  change its sharing, which the manager of its room and a portal administrator acting as room manager may, and a  member who may only read such a folder is answered with an empty list although the header still counts the  subjects. A caller with no access, a guest included, is refused, and a folder that does not exist is answered  as missing. The call is read-only. For a room prefer `GET api/2.0/files/rooms/{id}/share`, which filters the  same subjects by kind and by name.
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
     - parameter id: (path) The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. 
     - parameter count: (query) How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it. (optional)
     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFolderSecurityInfoWithRequestBuilder(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file access of group members
     
     See also:
     REST API Reference for getGroupsMembersWithFileSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
     - parameter fileId: (path) The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.      - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list.      - parameter count: (query) How many members at most to answer with. (optional)     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupMemberSecurityRequestArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsMembersWithFileSecurity(fileId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupMemberSecurityRequestArrayWrapper {
        return try await getGroupsMembersWithFileSecurityWithRequestBuilder(fileId: fileId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file access of group members
     
     See also:
     REST API Reference for getGroupsMembersWithFileSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
     
     - GET /api/2.0/files/file/{fileId}/group/{groupId}/share
     - Lists the members of one portal group together with the access each of them has on a file that group was  granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on that  member alone, `overridden` says which of the two applies, `owner` marks the member who created the file, and  `canEditAccess` says whether the caller may still change that member's level. Take the group identifier from  the group entries of `GET api/2.0/files/file/{id}/share`. `startIndex` and `count` page through the members,  `filterValue` keeps only those whose first name, last name or email contains the value - the comparison is  made in lower case, so an uppercase value matches nothing - and the number of members is reported in the  response headers. Members come back ordered by first name. A group that holds no rights on this file, a file  the caller cannot read and a file that does not exist are all answered with an empty list rather than an  error, so an empty answer does not mean that the group has no members. A guest is refused. The call is  read-only.
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
     - parameter fileId: (path) The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. 
     - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list. 
     - parameter count: (query) How many members at most to answer with. (optional)
     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)
     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupMemberSecurityRequestArrayWrapper> 
     */
    open class func getGroupsMembersWithFileSecurityWithRequestBuilder(fileId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupMemberSecurityRequestArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/group/{groupId}/share"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupMemberSecurityRequestArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file access of group members (third-party storage)
     
     See also:
     REST API Reference for getGroupsMembersWithFileSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
     - parameter fileId: (path) The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.      - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list.      - parameter count: (query) How many members at most to answer with. (optional)     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupMemberSecurityRequestArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsMembersWithFileSecurity(fileId: String, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupMemberSecurityRequestArrayWrapper {
        return try await getGroupsMembersWithFileSecurityWithRequestBuilder(fileId: fileId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file access of group members (third-party storage)
     
     See also:
     REST API Reference for getGroupsMembersWithFileSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
     
     - GET /api/2.0/files/file/{fileId}/group/{groupId}/share
     - Lists the members of one portal group together with the access each of them has on a file that group was  granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on that  member alone, `overridden` says which of the two applies, `owner` marks the member who created the file, and  `canEditAccess` says whether the caller may still change that member's level. Take the group identifier from  the group entries of `GET api/2.0/files/file/{id}/share`. `startIndex` and `count` page through the members,  `filterValue` keeps only those whose first name, last name or email contains the value - the comparison is  made in lower case, so an uppercase value matches nothing - and the number of members is reported in the  response headers. Members come back ordered by first name. A group that holds no rights on this file, a file  the caller cannot read and a file that does not exist are all answered with an empty list rather than an  error, so an empty answer does not mean that the group has no members. A guest is refused. The call is  read-only.
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
     - parameter fileId: (path) The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. 
     - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list. 
     - parameter count: (query) How many members at most to answer with. (optional)
     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)
     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupMemberSecurityRequestArrayWrapper> 
     */
    open class func getGroupsMembersWithFileSecurityWithRequestBuilder(fileId: String, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupMemberSecurityRequestArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/group/{groupId}/share"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupMemberSecurityRequestArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder access of group members
     
     See also:
     REST API Reference for getGroupsMembersWithFolderSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
     - parameter folderId: (path) The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list.      - parameter count: (query) How many members at most to answer with. (optional)     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupMemberSecurityRequestArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsMembersWithFolderSecurity(folderId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupMemberSecurityRequestArrayWrapper {
        return try await getGroupsMembersWithFolderSecurityWithRequestBuilder(folderId: folderId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder access of group members
     
     See also:
     REST API Reference for getGroupsMembersWithFolderSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
     
     - GET /api/2.0/files/folder/{folderId}/group/{groupId}/share
     - Lists the members of one portal group together with the access each of them has on a folder or room that group  was granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on  that member alone, `overridden` says which of the two applies, `owner` marks the member who created the entry,  and `canEditAccess` says whether the caller may still change that member's level. Take the group identifier  from the group entries of `GET api/2.0/files/folder/{id}/share`. `startIndex` and `count` page through the  members, `filterValue` keeps only those whose first name, last name or email contains the value - the  comparison is made in lower case, so an uppercase value matches nothing - and the number of members is  reported in the response headers. Members come back ordered by first name. A group that holds no rights on  this folder, a folder the caller cannot read and a folder that does not exist are all answered with an empty  list rather than an error, so an empty answer does not mean that the group has no members. A guest is refused.  The call is read-only.
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
     - parameter folderId: (path) The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. 
     - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list. 
     - parameter count: (query) How many members at most to answer with. (optional)
     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)
     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupMemberSecurityRequestArrayWrapper> 
     */
    open class func getGroupsMembersWithFolderSecurityWithRequestBuilder(folderId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupMemberSecurityRequestArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/group/{groupId}/share"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupMemberSecurityRequestArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder access of group members (third-party storage)
     
     See also:
     REST API Reference for getGroupsMembersWithFolderSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
     - parameter folderId: (path) The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list.      - parameter count: (query) How many members at most to answer with. (optional)     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GroupMemberSecurityRequestArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupsMembersWithFolderSecurity(folderId: String, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GroupMemberSecurityRequestArrayWrapper {
        return try await getGroupsMembersWithFolderSecurityWithRequestBuilder(folderId: folderId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder access of group members (third-party storage)
     
     See also:
     REST API Reference for getGroupsMembersWithFolderSecurity Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
     
     - GET /api/2.0/files/folder/{folderId}/group/{groupId}/share
     - Lists the members of one portal group together with the access each of them has on a folder or room that group  was granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on  that member alone, `overridden` says which of the two applies, `owner` marks the member who created the entry,  and `canEditAccess` says whether the caller may still change that member's level. Take the group identifier  from the group entries of `GET api/2.0/files/folder/{id}/share`. `startIndex` and `count` page through the  members, `filterValue` keeps only those whose first name, last name or email contains the value - the  comparison is made in lower case, so an uppercase value matches nothing - and the number of members is  reported in the response headers. Members come back ordered by first name. A group that holds no rights on  this folder, a folder the caller cannot read and a folder that does not exist are all answered with an empty  list rather than an error, so an empty answer does not mean that the group has no members. A guest is refused.  The call is read-only.
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
     - parameter folderId: (path) The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. 
     - parameter groupId: (path) The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list. 
     - parameter count: (query) How many members at most to answer with. (optional)
     - parameter startIndex: (query) How many members to skip before answering, used together with `count` to page through a large group. (optional)
     - parameter filterValue: (query) Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GroupMemberSecurityRequestArrayWrapper> 
     */
    open class func getGroupsMembersWithFolderSecurityWithRequestBuilder(folderId: String, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GroupMemberSecurityRequestArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/group/{groupId}/share"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupMemberSecurityRequestArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get sharing rights in batch
     
     See also:
     REST API Reference for getSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSecurityInfo(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getSecurityInfoWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get sharing rights in batch
     
     See also:
     REST API Reference for getSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/
     
     - POST /api/2.0/files/share
     - Returns who has access to the files and folders listed in the request, merged into one list of subjects, and  is the batch counterpart of `GET api/2.0/files/file/{id}/share` and `GET api/2.0/files/rooms/{id}/share`.  Identifiers come from any listing operation, such as `GET api/2.0/files/{folderId}`. The caller needs read  access to every listed entry: a single entry it cannot read makes the whole call fail instead of dropping that  entry, so the list has to be filtered beforehand. Identifiers that match nothing are skipped without an error,  and an empty list of identifiers gives an empty answer. The call is read-only. Each account or group appears  once: the caller's own record comes first, the owner's record second, and the rest are ordered by display  name. When the same subject holds different rights on the listed entries, its access is reported as the  `Varies` value instead of a real level, which means the entries have to be inspected one by one to see the  difference. Records that describe external links are included only for a caller that is allowed to read the  links of the entry.
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
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getSecurityInfoWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        let localVariablePath = "/api/2.0/files/share"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get users to mention in a file
     
     See also:
     REST API Reference for getSharedUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: MentionWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSharedUsers(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> MentionWrapperArrayWrapper {
        return try await getSharedUsersWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users to mention in a file
     
     See also:
     REST API Reference for getSharedUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
     
     - GET /api/2.0/files/file/{fileId}/sharedusers
     - Lists the portal members who can read the file, which is what an editor client offers when somebody types a  mention. The set holds the readers of the file plus everyone who reads it by role rather than by share - the  portal owner, the DocSpace administrators and the author of the file - while the caller themselves, the  subjects standing behind external links and deactivated accounts are left out. It is ordered by display name  as the portal renders it. A guest receives a single entry, the owner of the file, because a guest is not a  portal member and may not learn who else works on the document. The caller needs read access to the file, and  an unknown file id is reported as missing. The call only reads. A caller who reached the file through an  external link instead of an account is answered with nothing at all. For the users to offer when protecting a  document use `GET api/2.0/files/file/{fileId}/protectusers`.
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
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<MentionWrapperArrayWrapper> 
     */
    open class func getSharedUsersWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<MentionWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/sharedusers"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MentionWrapperArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get users to mention in a file (third-party storage)
     
     See also:
     REST API Reference for getSharedUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: MentionWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSharedUsers(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> MentionWrapperArrayWrapper {
        return try await getSharedUsersWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users to mention in a file (third-party storage)
     
     See also:
     REST API Reference for getSharedUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
     
     - GET /api/2.0/files/file/{fileId}/sharedusers
     - Lists the portal members who can read the file, which is what an editor client offers when somebody types a  mention. The set holds the readers of the file plus everyone who reads it by role rather than by share - the  portal owner, the DocSpace administrators and the author of the file - while the caller themselves, the  subjects standing behind external links and deactivated accounts are left out. It is ordered by display name  as the portal renders it. A guest receives a single entry, the owner of the file, because a guest is not a  portal member and may not learn who else works on the document. The caller needs read access to the file, and  an unknown file id is reported as missing. The call only reads. A caller who reached the file through an  external link instead of an account is answered with nothing at all. For the users to offer when protecting a  document use `GET api/2.0/files/file/{fileId}/protectusers`.
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
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<MentionWrapperArrayWrapper> 
     */
    open class func getSharedUsersWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<MentionWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/sharedusers"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MentionWrapperArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove sharing rights in batch
     
     See also:
     REST API Reference for removeSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func removeSecurityInfo(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await removeSecurityInfoWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove sharing rights in batch
     
     See also:
     REST API Reference for removeSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/
     
     - DELETE /api/2.0/files/share
     - Revokes the access of every account and group on the files and folders listed in the request, and clears the  entries from the caller's own favorites, recent and unread marks. The owner's own record is kept, since  removing it would take the entry away from the account that owns it, and external links survive untouched -  remove those through the link operations of the entry. The caller must be allowed to change the access of each  entry, which means the creator of the room, a portal administrator, or a member with the rights to manage it;  a caller whose only access came through an external link may use this call to drop the entry from its own  list, while a directly invited member or an unrelated account is refused. The answer is always `true` and  identifiers that match nothing are skipped silently, so a successful answer is not proof that anything was  revoked - read the rights back with `POST api/2.0/files/share`. The call is destructive and safe to repeat. To  take the rights of one account away instead of all of them, call `PUT api/2.0/files/share` with that account's  access set to `None`.
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
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func removeSecurityInfoWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/share"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Notify mentioned users
     
     See also:
     REST API Reference for sendEditorNotify Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
     - parameter fileId: (path) The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.      - parameter mentionMessageWrapper: (body) The notification to send. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AceShortWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendEditorNotify(fileId: Int, mentionMessageWrapper: MentionMessageWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AceShortWrapperArrayWrapper {
        return try await sendEditorNotifyWithRequestBuilder(fileId: fileId, mentionMessageWrapper: mentionMessageWrapper, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Notify mentioned users
     
     See also:
     REST API Reference for sendEditorNotify Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
     
     - POST /api/2.0/files/file/{fileId}/sendeditornotify
     - Emails the people named in `emails` that they were mentioned in a file, with a link that opens the file at the  place the mention sits when `actionLink` carries the anchor the editor produced. Only addresses that belong to  portal accounts are notified: an address that belongs to nobody is skipped, and the note is cut to its first  200 characters in the mail, while a `message` longer than the field allows is refused with 400. The answer is  usually empty: the access list of the file comes back when the file is encrypted, or when one of the addresses  belongs to nobody and the caller may share the file - that is then the cue to invite that person with  `PUT api/2.0/files/file/{id}/share`. The caller needs comment rights, which the creator of the file, the  manager of its room and a member invited to comment, review or edit have, while a guest or a member without  access is refused with 403; a file that does not exist answers with 404 and a file in the trash is refused.  The operation is rate-limited and answers 429 once the caller sends too many notifications. A delivery failure  is swallowed, so 200 does not prove that the mail left the portal.
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
     - parameter fileId: (path) The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. 
     - parameter mentionMessageWrapper: (body) The notification to send. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AceShortWrapperArrayWrapper> 
     */
    open class func sendEditorNotifyWithRequestBuilder(fileId: Int, mentionMessageWrapper: MentionMessageWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AceShortWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/sendeditornotify"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mentionMessageWrapper, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AceShortWrapperArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Notify mentioned users (third-party storage)
     
     See also:
     REST API Reference for sendEditorNotify Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
     - parameter fileId: (path) The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.      - parameter mentionMessageWrapper: (body) The notification to send. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AceShortWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendEditorNotify(fileId: String, mentionMessageWrapper: MentionMessageWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AceShortWrapperArrayWrapper {
        return try await sendEditorNotifyWithRequestBuilder(fileId: fileId, mentionMessageWrapper: mentionMessageWrapper, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Notify mentioned users (third-party storage)
     
     See also:
     REST API Reference for sendEditorNotify Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
     
     - POST /api/2.0/files/file/{fileId}/sendeditornotify
     - Emails the people named in `emails` that they were mentioned in a file, with a link that opens the file at the  place the mention sits when `actionLink` carries the anchor the editor produced. Only addresses that belong to  portal accounts are notified: an address that belongs to nobody is skipped, and the note is cut to its first  200 characters in the mail, while a `message` longer than the field allows is refused with 400. The answer is  usually empty: the access list of the file comes back when the file is encrypted, or when one of the addresses  belongs to nobody and the caller may share the file - that is then the cue to invite that person with  `PUT api/2.0/files/file/{id}/share`. The caller needs comment rights, which the creator of the file, the  manager of its room and a member invited to comment, review or edit have, while a guest or a member without  access is refused with 403; a file that does not exist answers with 404 and a file in the trash is refused.  The operation is rate-limited and answers 429 once the caller sends too many notifications. A delivery failure  is swallowed, so 200 does not prove that the mail left the portal.
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
     - parameter fileId: (path) The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. 
     - parameter mentionMessageWrapper: (body) The notification to send. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AceShortWrapperArrayWrapper> 
     */
    open class func sendEditorNotifyWithRequestBuilder(fileId: String, mentionMessageWrapper: MentionMessageWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AceShortWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/sendeditornotify"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mentionMessageWrapper, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AceShortWrapperArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Share a file
     
     See also:
     REST API Reference for setFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
     - parameter id: (path) The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.      - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the file, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileSecurityInfo(id: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setFileSecurityInfoWithRequestBuilder(id: id, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Share a file
     
     See also:
     REST API Reference for setFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
     
     - PUT /api/2.0/files/file/{id}/share
     - Grants, changes or withdraws the rights of the listed accounts and groups on one file, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error, so compare the answer with what was sent. With `notify` set, each  account named is emailed about the access it received and `sharingMessage` is put into that mail with its  markup stripped, while a message longer than the field allows is rejected as an invalid request. The caller  has to be allowed to change the sharing of the file, which its creator, the manager of the room it lies in and  a portal administrator acting as room manager are; anyone else, a guest and a member with read access  included, is refused. The call is mutating and safe to repeat. For several files and folders in one request  use `PUT api/2.0/files/share`.
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
     - parameter id: (path) The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. 
     - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the file, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setFileSecurityInfoWithRequestBuilder(id: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoSimpleRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Share a file (third-party storage)
     
     See also:
     REST API Reference for setFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
     - parameter id: (path) The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.      - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the file, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileSecurityInfo(id: String, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setFileSecurityInfoWithRequestBuilder(id: id, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Share a file (third-party storage)
     
     See also:
     REST API Reference for setFileSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
     
     - PUT /api/2.0/files/file/{id}/share
     - Grants, changes or withdraws the rights of the listed accounts and groups on one file, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error, so compare the answer with what was sent. With `notify` set, each  account named is emailed about the access it received and `sharingMessage` is put into that mail with its  markup stripped, while a message longer than the field allows is rejected as an invalid request. The caller  has to be allowed to change the sharing of the file, which its creator, the manager of the room it lies in and  a portal administrator acting as room manager are; anyone else, a guest and a member with read access  included, is refused. The call is mutating and safe to repeat. For several files and folders in one request  use `PUT api/2.0/files/share`.
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
     - parameter id: (path) The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. 
     - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the file, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setFileSecurityInfoWithRequestBuilder(id: String, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoSimpleRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Share a folder
     
     See also:
     REST API Reference for setFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
     - parameter id: (path) The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the folder, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderSecurityInfo(id: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setFolderSecurityInfoWithRequestBuilder(id: id, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Share a folder
     
     See also:
     REST API Reference for setFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
     
     - PUT /api/2.0/files/folder/{id}/share
     - Grants, changes or withdraws the rights of the listed accounts and groups on one folder, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error. With `notify` set, each account named is emailed about the access  it received and `sharingMessage` is put into that mail with its markup stripped, while a message longer than  the field allows is rejected as an invalid request. The caller has to be allowed to change the sharing of the  folder, which the manager of the room it belongs to and a portal administrator acting as room manager are;  anyone else, a guest and a member with read access included, is refused. The call is mutating and safe to  repeat. For a room use `PUT api/2.0/files/rooms/{id}/share`, which invites people by email as well.
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
     - parameter id: (path) The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. 
     - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the folder, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setFolderSecurityInfoWithRequestBuilder(id: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoSimpleRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Share a folder (third-party storage)
     
     See also:
     REST API Reference for setFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
     - parameter id: (path) The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the folder, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderSecurityInfo(id: String, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setFolderSecurityInfoWithRequestBuilder(id: id, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Share a folder (third-party storage)
     
     See also:
     REST API Reference for setFolderSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
     
     - PUT /api/2.0/files/folder/{id}/share
     - Grants, changes or withdraws the rights of the listed accounts and groups on one folder, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error. With `notify` set, each account named is emailed about the access  it received and `sharingMessage` is put into that mail with its markup stripped, while a message longer than  the field allows is rejected as an invalid request. The caller has to be allowed to change the sharing of the  folder, which the manager of the room it belongs to and a portal administrator acting as room manager are;  anyone else, a guest and a member with read access included, is refused. The call is mutating and safe to  repeat. For a room use `PUT api/2.0/files/rooms/{id}/share`, which invites people by email as well.
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
     - parameter id: (path) The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. 
     - parameter securityInfoSimpleRequestDto: (body) The rights to apply to the folder, and whether to announce them by mail. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setFolderSecurityInfoWithRequestBuilder(id: String, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/share"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoSimpleRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set sharing rights in batch
     
     See also:
     REST API Reference for setSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/
     - parameter securityInfoRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setSecurityInfo(securityInfoRequestDto: SecurityInfoRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await setSecurityInfoWithRequestBuilder(securityInfoRequestDto: securityInfoRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set sharing rights in batch
     
     See also:
     REST API Reference for setSecurityInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/
     
     - PUT /api/2.0/files/share
     - Grants, changes or withdraws the access of the listed accounts and groups on every file and folder named in  the request at once, and returns the resulting rights. Entry identifiers come from a listing operation, and  the accounts and groups come from the portal's own account and group lists; an access of `None` withdraws the  rights instead of granting them. The caller must be allowed to change the access of every listed entry - the  creator of the room, a member with the rights to manage it, or a portal administrator - and a read-only member  or a guest is refused even when the payload changes nothing. A subject the caller is not allowed to share  with, such as a guest that belongs to another member, is skipped without an error, and an empty `share`  collection makes the call do nothing and answer with an empty list. Repeating the same request leaves the same  rights in place. The answer holds one record per listed subject for each entry that was actually processed, so  it is shorter than the request when something was skipped and worth comparing against it. For a single room  prefer `PUT api/2.0/files/rooms/{id}/share`, which also invites members by email.
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
     - parameter securityInfoRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func setSecurityInfoWithRequestBuilder(securityInfoRequestDto: SecurityInfoRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        let localVariablePath = "/api/2.0/files/share"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: securityInfoRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
