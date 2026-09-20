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
     Add a file to Recent
     
     See also:
     REST API Reference for addFileToRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addFileToRecent(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await addFileToRecentWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a file to Recent
     
     See also:
     REST API Reference for addFileToRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
     
     - POST /api/2.0/files/file/{fileId}/recent
     - Stamps the file as just used by the calling account and puts it at the top of that account's Recent section,  then answers with the file as it stands now. The list is personal: no other member sees the change, and the  file itself is untouched. Read access is enough, so a room member with view-only rights and an invited guest  may call it, and a visitor who reaches the file through an external link is recorded against that link. A  caller without read access is refused with 403, and an identifier that resolves to nothing answers 404.  Repeating the call is safe: the file keeps a single entry and only moves back to the top. The section holds  the 1000 newest entries of an account and drops the oldest beyond that on its own; folders never enter it, and  an encrypted file of a private room is answered normally but never recorded. Read the section back with  `GET api/2.0/files/recent` and drop entries with `DELETE api/2.0/files/recent`; whether it is offered among  the sections of `GET api/2.0/files/@root` is decided by `PUT api/2.0/files/displayrecent`.
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
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func addFileToRecentWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/recent"
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

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Add a file to Recent (third-party storage)
     
     See also:
     REST API Reference for addFileToRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addFileToRecent(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await addFileToRecentWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a file to Recent (third-party storage)
     
     See also:
     REST API Reference for addFileToRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
     
     - POST /api/2.0/files/file/{fileId}/recent
     - Stamps the file as just used by the calling account and puts it at the top of that account's Recent section,  then answers with the file as it stands now. The list is personal: no other member sees the change, and the  file itself is untouched. Read access is enough, so a room member with view-only rights and an invited guest  may call it, and a visitor who reaches the file through an external link is recorded against that link. A  caller without read access is refused with 403, and an identifier that resolves to nothing answers 404.  Repeating the call is safe: the file keeps a single entry and only moves back to the top. The section holds  the 1000 newest entries of an account and drops the oldest beyond that on its own; folders never enter it, and  an encrypted file of a private room is answered normally but never recorded. Read the section back with  `GET api/2.0/files/recent` and drop entries with `DELETE api/2.0/files/recent`; whether it is offered among  the sections of `GET api/2.0/files/@root` is decided by `PUT api/2.0/files/displayrecent`.
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
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func addFileToRecentWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/recent"
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Add template files
     
     See also:
     REST API Reference for addTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/
     - parameter templatesRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addTemplates(templatesRequestDto: TemplatesRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await addTemplatesWithRequestBuilder(templatesRequestDto: templatesRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add template files
     
     See also:
     REST API Reference for addTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/
     
     - POST /api/2.0/files/templates
     - Adds the listed files to the personal template list of the calling account, the set the portal offers when a  new document is started from an existing one. The list belongs to the account and no other member sees it.  Every authenticated member type may manage their own list, a guest is refused, and read access to each file is  required. Only formats the portal treats as template documents survive: the accepted extensions arrive in  `extsWebTemplate` of `GET api/2.0/files/settings`, and a file of any other format is dropped silently. Only  numeric ids are accepted, so a file on a connected third-party account cannot become a template. The answer is  `true` whenever the request was understood, which an empty list, an id that does not exist and an unreadable  file all achieve, so it confirms nothing about what was added; no operation of this document reads the list  back. Repeating the call is safe. Use `DELETE api/2.0/files/templates` to drop a file again.
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
     - parameter templatesRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func addTemplatesWithRequestBuilder(templatesRequestDto: TemplatesRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/templates"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: templatesRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change version history
     
     See also:
     REST API Reference for changeVersionHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
     - parameter fileId: (path) The file whose version history is changed.      - parameter changeHistory: (body) The change to make to the revision group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeVersionHistory(fileId: Int, changeHistory: ChangeHistory, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileArrayWrapper {
        return try await changeVersionHistoryWithRequestBuilder(fileId: fileId, changeHistory: changeHistory, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change version history
     
     See also:
     REST API Reference for changeVersionHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
     
     - PUT /api/2.0/files/file/{fileId}/history
     - Closes or reopens a revision group in the version history of a file and answers with every stored version of  that file, newest first. With `continueVersion=false` the named version is completed: its content is stored  again as a fresh version that opens a new revision group, so the editing that follows no longer extends the  previous one. With `continueVersion=true` the last revision group is folded back into the group before it, so  the next save continues that revision instead of becoming a version of its own; a file that has only one group  is left as it is. A `version` of 0 means the current version. The caller needs the right to edit the history  of the file, which the room admin, a DocSpace admin acting as room manager and a member with content-creator  rights have; plain editing access is refused with 403, as are a guest and a member without access to the room.  The call is mutating and not idempotent. A file that is locked, lies in Trash, is open in an editing session  or is kept in a connected third-party storage is refused.
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
     - parameter fileId: (path) The file whose version history is changed. 
     - parameter changeHistory: (body) The change to make to the revision group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileArrayWrapper> 
     */
    open class func changeVersionHistoryWithRequestBuilder(fileId: Int, changeHistory: ChangeHistory, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/history"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeHistory, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change version history (third-party storage)
     
     See also:
     REST API Reference for changeVersionHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
     - parameter fileId: (path) The file whose version history is changed.      - parameter changeHistory: (body) The change to make to the revision group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeVersionHistory(fileId: String, changeHistory: ChangeHistory, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileArrayWrapper {
        return try await changeVersionHistoryWithRequestBuilder(fileId: fileId, changeHistory: changeHistory, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change version history (third-party storage)
     
     See also:
     REST API Reference for changeVersionHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
     
     - PUT /api/2.0/files/file/{fileId}/history
     - Closes or reopens a revision group in the version history of a file and answers with every stored version of  that file, newest first. With `continueVersion=false` the named version is completed: its content is stored  again as a fresh version that opens a new revision group, so the editing that follows no longer extends the  previous one. With `continueVersion=true` the last revision group is folded back into the group before it, so  the next save continues that revision instead of becoming a version of its own; a file that has only one group  is left as it is. A `version` of 0 means the current version. The caller needs the right to edit the history  of the file, which the room admin, a DocSpace admin acting as room manager and a member with content-creator  rights have; plain editing access is refused with 403, as are a guest and a member without access to the room.  The call is mutating and not idempotent. A file that is locked, lies in Trash, is open in an editing session  or is kept in a connected third-party storage is refused.
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
     - parameter fileId: (path) The file whose version history is changed. 
     - parameter changeHistory: (body) The change to make to the revision group. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileArrayWrapper> 
     */
    open class func changeVersionHistoryWithRequestBuilder(fileId: String, changeHistory: ChangeHistory, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/history"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeHistory, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Open a form draft for filling
     
     See also:
     REST API Reference for checkFillFormDraft Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
     - parameter fileId: (path) The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well.      - parameter checkFillFormDraft: (body) The revision of the form to open and what the caller intends to do with it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkFillFormDraft(fileId: Int, checkFillFormDraft: CheckFillFormDraft, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await checkFillFormDraftWithRequestBuilder(fileId: fileId, checkFillFormDraft: checkFillFormDraft, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Open a form draft for filling
     
     See also:
     REST API Reference for checkFillFormDraft Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
     
     - POST /api/2.0/files/masterform/{fileId}/checkfillformdraft
     - Resolves the editor address the caller must open to fill out the given PDF form, and provisions the personal  draft that filling needs. The form has to live in a form-filling room and filling has to be started for it  with `PUT api/2.0/files/file/{fileId}/manageformfilling`; a caller who may edit the form, a form whose filling  has not started, and a request naming `view` or `embedded` as the action are all sent straight to the form  itself. Read access to the form is enough to get an address, fill-forms access is what puts the caller into  the filling flow, and a holder of an external link may call it without signing in, while a caller with neither  a session nor a link key is rejected. In the filling case the call is not read-only: it copies the form into  the room's in-progress folder under the caller's name, clears the new-item badge, closes the editing session  of the original, and answers with the address of that copy. A repeated call reuses that copy, and a call  naming an existing draft adds a discard notice when that draft is no longer valid. The answer is one URL  string that may carry a `#message/...` fragment the editor renders as a notice. For the full editor  configuration use `GET api/2.0/files/file/{fileId}/openedit`. A form the caller cannot open is refused with  403, and one that does not exist is answered as missing.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well. 
     - parameter checkFillFormDraft: (body) The revision of the form to open and what the caller intends to do with it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func checkFillFormDraftWithRequestBuilder(fileId: Int, checkFillFormDraft: CheckFillFormDraft, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/masterform/{fileId}/checkfillformdraft"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkFillFormDraft, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Open a form draft for filling (third-party storage)
     
     See also:
     REST API Reference for checkFillFormDraft Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
     - parameter fileId: (path) The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well.      - parameter checkFillFormDraft: (body) The revision of the form to open and what the caller intends to do with it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkFillFormDraft(fileId: String, checkFillFormDraft: CheckFillFormDraft, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await checkFillFormDraftWithRequestBuilder(fileId: fileId, checkFillFormDraft: checkFillFormDraft, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Open a form draft for filling (third-party storage)
     
     See also:
     REST API Reference for checkFillFormDraft Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
     
     - POST /api/2.0/files/masterform/{fileId}/checkfillformdraft
     - Resolves the editor address the caller must open to fill out the given PDF form, and provisions the personal  draft that filling needs. The form has to live in a form-filling room and filling has to be started for it  with `PUT api/2.0/files/file/{fileId}/manageformfilling`; a caller who may edit the form, a form whose filling  has not started, and a request naming `view` or `embedded` as the action are all sent straight to the form  itself. Read access to the form is enough to get an address, fill-forms access is what puts the caller into  the filling flow, and a holder of an external link may call it without signing in, while a caller with neither  a session nor a link key is rejected. In the filling case the call is not read-only: it copies the form into  the room's in-progress folder under the caller's name, clears the new-item badge, closes the editing session  of the original, and answers with the address of that copy. A repeated call reuses that copy, and a call  naming an existing draft adds a discard notice when that draft is no longer valid. The answer is one URL  string that may carry a `#message/...` fragment the editor renders as a notice. For the full editor  configuration use `GET api/2.0/files/file/{fileId}/openedit`. A form the caller cannot open is refused with  403, and one that does not exist is answered as missing.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well. 
     - parameter checkFillFormDraft: (body) The revision of the form to open and what the caller intends to do with it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func checkFillFormDraftWithRequestBuilder(fileId: String, checkFillFormDraft: CheckFillFormDraft, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/masterform/{fileId}/checkfillformdraft"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkFillFormDraft, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Copy a file
     
     See also:
     REST API Reference for copyFileAs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
     - parameter fileId: (path) The file to copy.      - parameter copyAsJsonElement: (body) The title, the destination and the conversion options of the copy. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func copyFileAs(fileId: Int, copyAsJsonElement: CopyAsJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseWrapper {
        return try await copyFileAsWithRequestBuilder(fileId: fileId, copyAsJsonElement: copyAsJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Copy a file
     
     See also:
     REST API Reference for copyFileAs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
     
     - POST /api/2.0/files/file/{fileId}/copyas
     - Copies one file into another folder under a new title, converting its content when the new title names a  different format, and answers with the copy that was created. The extension of `destTitle` decides what  happens: the same extension as the source copies the bytes as they are, a different one has the document  service convert them first, and `toForm=true` converts a document into a PDF form. `password` unlocks a source  file that is protected by one. `destFolderId` is read as a number for a folder inside the portal and as a  string for a folder in a connected third-party storage; anything else is answered with an empty body and  nothing is copied. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused with 403; a missing file or folder is answered with 404, and a  format that cannot be converted with 400. The call is mutating and not idempotent - each call adds another  copy. To copy many items at once, and without converting, use `PUT api/2.0/files/fileops/copy`.
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
     - parameter fileId: (path) The file to copy. 
     - parameter copyAsJsonElement: (body) The title, the destination and the conversion options of the copy. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseWrapper> 
     */
    open class func copyFileAsWithRequestBuilder(fileId: Int, copyAsJsonElement: CopyAsJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/copyas"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: copyAsJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Copy a file (third-party storage)
     
     See also:
     REST API Reference for copyFileAs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
     - parameter fileId: (path) The file to copy.      - parameter copyAsJsonElement: (body) The title, the destination and the conversion options of the copy. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func copyFileAs(fileId: String, copyAsJsonElement: CopyAsJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseWrapper {
        return try await copyFileAsWithRequestBuilder(fileId: fileId, copyAsJsonElement: copyAsJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Copy a file (third-party storage)
     
     See also:
     REST API Reference for copyFileAs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
     
     - POST /api/2.0/files/file/{fileId}/copyas
     - Copies one file into another folder under a new title, converting its content when the new title names a  different format, and answers with the copy that was created. The extension of `destTitle` decides what  happens: the same extension as the source copies the bytes as they are, a different one has the document  service convert them first, and `toForm=true` converts a document into a PDF form. `password` unlocks a source  file that is protected by one. `destFolderId` is read as a number for a folder inside the portal and as a  string for a folder in a connected third-party storage; anything else is answered with an empty body and  nothing is copied. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused with 403; a missing file or folder is answered with 404, and a  format that cannot be converted with 400. The call is mutating and not idempotent - each call adds another  copy. To copy many items at once, and without converting, use `PUT api/2.0/files/fileops/copy`.
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
     - parameter fileId: (path) The file to copy. 
     - parameter copyAsJsonElement: (body) The title, the destination and the conversion options of the copy. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseWrapper> 
     */
    open class func copyFileAsWithRequestBuilder(fileId: String, copyAsJsonElement: CopyAsJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/copyas"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: copyAsJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create the editing session
     
     See also:
     REST API Reference for createEditSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
     - parameter fileId: (path) The file whose content the session will replace; take the id from a folder listing or from the file itself.      - parameter fileSize: (query) The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseWrapperWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createEditSession(fileId: Int, fileSize: Int64? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseWrapperWrapper {
        return try await createEditSessionWithRequestBuilder(fileId: fileId, fileSize: fileSize, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create the editing session
     
     See also:
     REST API Reference for createEditSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
     
     - POST /api/2.0/files/file/{fileId}/edit_session
     - Opens a chunked session that replaces the content of an existing file, which is how WebDAV clients save over a  document. The answer carries the session id the later calls quote, the address of the standalone chunk  handler, the expiry and the reserved size, and nothing is written until the parts reach  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the session is closed with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`, where `folderId` is the folder the file lives in.  Unlike an upload into a folder, the finished content does not become a new version: it overwrites the current  one, and the file loses its encrypted flag and its stored conversion result in the process. The caller must be  allowed to edit the file, as the owner, a room manager and a member invited with editing rights are; a reader  and a guest get 403. A file that does not exist is answered as missing, and a payload above the portal limit  for chunked uploads is refused before the session is created.
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
     - parameter fileId: (path) The file whose content the session will replace; take the id from a folder listing or from the file itself. 
     - parameter fileSize: (query) The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseWrapperWrapper> 
     */
    open class func createEditSessionWithRequestBuilder(fileId: Int, fileSize: Int64? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseWrapperWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit_session"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fileSize": (wrappedValue: fileSize?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseWrapperWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create the editing session (third-party storage)
     
     See also:
     REST API Reference for createEditSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
     - parameter fileId: (path) The file whose content the session will replace; take the id from a folder listing or from the file itself.      - parameter fileSize: (query) The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyChunkedUploadSessionResponseWrapperWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createEditSession(fileId: String, fileSize: Int64? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyChunkedUploadSessionResponseWrapperWrapper {
        return try await createEditSessionWithRequestBuilder(fileId: fileId, fileSize: fileSize, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create the editing session (third-party storage)
     
     See also:
     REST API Reference for createEditSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
     
     - POST /api/2.0/files/file/{fileId}/edit_session
     - Opens a chunked session that replaces the content of an existing file, which is how WebDAV clients save over a  document. The answer carries the session id the later calls quote, the address of the standalone chunk  handler, the expiry and the reserved size, and nothing is written until the parts reach  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the session is closed with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`, where `folderId` is the folder the file lives in.  Unlike an upload into a folder, the finished content does not become a new version: it overwrites the current  one, and the file loses its encrypted flag and its stored conversion result in the process. The caller must be  allowed to edit the file, as the owner, a room manager and a member invited with editing rights are; a reader  and a guest get 403. A file that does not exist is answered as missing, and a payload above the portal limit  for chunked uploads is refused before the session is created.
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
     - parameter fileId: (path) The file whose content the session will replace; take the id from a folder listing or from the file itself. 
     - parameter fileSize: (query) The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyChunkedUploadSessionResponseWrapperWrapper> 
     */
    open class func createEditSessionWithRequestBuilder(fileId: String, fileSize: Int64? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyChunkedUploadSessionResponseWrapperWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit_session"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fileSize": (wrappedValue: fileSize?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyChunkedUploadSessionResponseWrapperWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a file
     
     See also:
     REST API Reference for createFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
     - parameter folderId: (path) The folder the file is created in.      - parameter createFileJsonElement: (body) The title of the new file and the source of its content. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFile(folderId: Int, createFileJsonElement: CreateFileJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await createFileWithRequestBuilder(folderId: folderId, createFileJsonElement: createFileJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a file
     
     See also:
     REST API Reference for createFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
     
     - POST /api/2.0/files/{folderId}/file
     - Creates a file in the folder named in the route and answers with the stored file. The extension in the title  decides the format: an extension of a known text, spreadsheet or presentation format is rewritten to the  portal's own DOCX, XLSX or PPTX, a title with no extension at all gets DOCX added, while an unknown extension  and the few formats the portal keeps as they are stay untouched; `enableExternalExt=true` stores the title  verbatim and skips that rewriting. The content comes from one of three sources, tried in this order: `formId`  copies a ready form out of the form gallery, `templateId` copies an existing file the caller can read - a  number for a file in the portal, a string for one in a connected third-party storage - and with neither of  them the portal's blank template for that format and the caller's language is used. The caller needs the right  to create files in the folder, and the room roots, Archive and the template sections are refused even to an  admin. The call is mutating and not idempotent. To create the file in the caller's own section use  `POST api/2.0/files/@my/file`.
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
     - parameter folderId: (path) The folder the file is created in. 
     - parameter createFileJsonElement: (body) The title of the new file and the source of its content. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func createFileWithRequestBuilder(folderId: Int, createFileJsonElement: CreateFileJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/file"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFileJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a file (third-party storage)
     
     See also:
     REST API Reference for createFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
     - parameter folderId: (path) The folder the file is created in.      - parameter createFileJsonElement: (body) The title of the new file and the source of its content. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFile(folderId: String, createFileJsonElement: CreateFileJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await createFileWithRequestBuilder(folderId: folderId, createFileJsonElement: createFileJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a file (third-party storage)
     
     See also:
     REST API Reference for createFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
     
     - POST /api/2.0/files/{folderId}/file
     - Creates a file in the folder named in the route and answers with the stored file. The extension in the title  decides the format: an extension of a known text, spreadsheet or presentation format is rewritten to the  portal's own DOCX, XLSX or PPTX, a title with no extension at all gets DOCX added, while an unknown extension  and the few formats the portal keeps as they are stay untouched; `enableExternalExt=true` stores the title  verbatim and skips that rewriting. The content comes from one of three sources, tried in this order: `formId`  copies a ready form out of the form gallery, `templateId` copies an existing file the caller can read - a  number for a file in the portal, a string for one in a connected third-party storage - and with neither of  them the portal's blank template for that format and the caller's language is used. The caller needs the right  to create files in the folder, and the room roots, Archive and the template sections are refused even to an  admin. The call is mutating and not idempotent. To create the file in the caller's own section use  `POST api/2.0/files/@my/file`.
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
     - parameter folderId: (path) The folder the file is created in. 
     - parameter createFileJsonElement: (body) The title of the new file and the source of its content. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func createFileWithRequestBuilder(folderId: String, createFileJsonElement: CreateFileJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/file"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFileJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a file in My documents
     
     See also:
     REST API Reference for createFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/
     - parameter createFileJsonElement: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFileInMyDocuments(createFileJsonElement: CreateFileJsonElement? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await createFileInMyDocumentsWithRequestBuilder(createFileJsonElement: createFileJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a file in My documents
     
     See also:
     REST API Reference for createFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/
     
     - POST /api/2.0/files/@my/file
     - Creates a file in the caller's own My documents section and answers with the stored file. The extension in  the title decides the format: an extension of a known text, spreadsheet or presentation format is rewritten to  the portal's own DOCX, XLSX or PPTX, a title with no extension at all gets DOCX added, while an unknown  extension and the few formats the portal keeps as they are stay untouched; `enableExternalExt=true` stores the  title verbatim and skips that rewriting. The content comes from one of three sources, tried in this order:  `formId` copies a ready form out of the form gallery, `templateId` copies an existing file the caller can read  - a number for a file in the portal, a string for one in a connected third-party storage - and with neither of  them the portal's blank template for that format and the caller's language is used. The call is mutating and  not idempotent: each call adds another file. A guest has no My documents section of their own, so a guest  cannot use this operation at all, and a template the caller cannot read is refused. To create a file in a  room or any other folder use  `POST api/2.0/files/{folderId}/file`.
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
     - parameter createFileJsonElement: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func createFileInMyDocumentsWithRequestBuilder(createFileJsonElement: CreateFileJsonElement? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        let localVariablePath = "/api/2.0/files/@my/file"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFileJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create the file primary external link
     
     See also:
     REST API Reference for createFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
     - parameter id: (path) The file the link points at.      - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFilePrimaryExternalLink(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await createFilePrimaryExternalLinkWithRequestBuilder(id: id, fileLinkRequest: fileLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create the file primary external link
     
     See also:
     REST API Reference for createFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
     
     - POST /api/2.0/files/file/{id}/link
     - Answers with the primary external link of a file, creating it on the first call and returning the one that  already exists afterwards, so the operation is idempotent in effect: a second call with other parameters does  not reconfigure the existing link, and changing one is the business of `PUT api/2.0/files/file/{id}/links`.  The parameters therefore only shape the link at the moment it is born - `access` its rights, `expirationDate`  its lifetime, which for a file in a personal section is unlimited here rather than the default of a few days,  `internal` whether only signed-in members may follow it, `denyDownload` whether the content may only be  viewed, and `password` a secret to be asked for. A PDF form gets the rights it needs for filling out whatever  was asked for, and a form in a form-filling room is answered with the link of the room instead. The caller  needs the right to share the file and is otherwise refused with 403; a link that was deliberately revoked is  not recreated but answered with 404. Read the address from `sharedTo.shareLink`.
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
     - parameter id: (path) The file the link points at. 
     - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func createFilePrimaryExternalLinkWithRequestBuilder(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fileLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create the file primary external link (third-party storage)
     
     See also:
     REST API Reference for createFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
     - parameter id: (path) The file the link points at.      - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFilePrimaryExternalLink(id: String, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await createFilePrimaryExternalLinkWithRequestBuilder(id: id, fileLinkRequest: fileLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create the file primary external link (third-party storage)
     
     See also:
     REST API Reference for createFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
     
     - POST /api/2.0/files/file/{id}/link
     - Answers with the primary external link of a file, creating it on the first call and returning the one that  already exists afterwards, so the operation is idempotent in effect: a second call with other parameters does  not reconfigure the existing link, and changing one is the business of `PUT api/2.0/files/file/{id}/links`.  The parameters therefore only shape the link at the moment it is born - `access` its rights, `expirationDate`  its lifetime, which for a file in a personal section is unlimited here rather than the default of a few days,  `internal` whether only signed-in members may follow it, `denyDownload` whether the content may only be  viewed, and `password` a secret to be asked for. A PDF form gets the rights it needs for filling out whatever  was asked for, and a form in a form-filling room is answered with the link of the room instead. The caller  needs the right to share the file and is otherwise refused with 403; a link that was deliberately revoked is  not recreated but answered with 404. Read the address from `sharedTo.shareLink`.
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
     - parameter id: (path) The file the link points at. 
     - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func createFilePrimaryExternalLinkWithRequestBuilder(id: String, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fileLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create an HTML file
     
     See also:
     REST API Reference for createHtmlFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
     - parameter folderId: (path) The folder the file is created in.      - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createHtmlFile(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await createHtmlFileWithRequestBuilder(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an HTML file
     
     See also:
     REST API Reference for createHtmlFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
     
     - POST /api/2.0/files/{folderId}/html
     - Creates an HTML file in the folder named in the route out of the markup passed as the content, and answers  with the stored file. The `.html` extension is added to the title unless the title already ends with it, and a  request carrying no content is rejected as an invalid request. `createNewIfExist` acts the other way round  than its name reads: with `true` the file that already carries this title is updated, the markup replacing its  content and a version appearing in its history, while with `false`, which is also the default, another file is  created and its title made unique, as in Notes (1).html. Updating needs the existing file to be editable by  the caller, so one that is locked, open in an editing session, encrypted or in Trash is left alone and a new  file appears beside it instead. The caller needs the right to create files in the folder and is otherwise  refused with 403. The call is mutating. To create the file in the caller's own section use  `POST api/2.0/files/@my/html`.
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
     - parameter folderId: (path) The folder the file is created in. 
     - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func createHtmlFileWithRequestBuilder(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/html"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create an HTML file (third-party storage)
     
     See also:
     REST API Reference for createHtmlFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
     - parameter folderId: (path) The folder the file is created in.      - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createHtmlFile(folderId: String, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await createHtmlFileWithRequestBuilder(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an HTML file (third-party storage)
     
     See also:
     REST API Reference for createHtmlFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
     
     - POST /api/2.0/files/{folderId}/html
     - Creates an HTML file in the folder named in the route out of the markup passed as the content, and answers  with the stored file. The `.html` extension is added to the title unless the title already ends with it, and a  request carrying no content is rejected as an invalid request. `createNewIfExist` acts the other way round  than its name reads: with `true` the file that already carries this title is updated, the markup replacing its  content and a version appearing in its history, while with `false`, which is also the default, another file is  created and its title made unique, as in Notes (1).html. Updating needs the existing file to be editable by  the caller, so one that is locked, open in an editing session, encrypted or in Trash is left alone and a new  file appears beside it instead. The caller needs the right to create files in the folder and is otherwise  refused with 403. The call is mutating. To create the file in the caller's own section use  `POST api/2.0/files/@my/html`.
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
     - parameter folderId: (path) The folder the file is created in. 
     - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func createHtmlFileWithRequestBuilder(folderId: String, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/html"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create an HTML file in My documents
     
     See also:
     REST API Reference for createHtmlFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createHtmlFileInMyDocuments(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await createHtmlFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an HTML file in My documents
     
     See also:
     REST API Reference for createHtmlFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/
     
     - POST /api/2.0/files/@my/html
     - Creates an HTML file in the caller's own My documents section out of the markup passed as the content, and  answers with the stored file. The `.html` extension is added to the title unless the title already ends with  it, and a request carrying no content is rejected as invalid. `createNewIfExist` acts the other way round than  its name reads: with `true` the file that already carries this title is updated, the markup replacing its  content and a version appearing in its history, while with `false`, which is also the default, another file is  created and its title made unique, as in Notes (1).html. Updating needs the existing file to be editable by  the caller, so one that is locked, open in an editing session, encrypted or in Trash is left alone and a new  file appears beside it instead. The call is mutating: repeating it with `true` keeps a single file and grows  its history, repeating it with `false` fills the section with numbered copies. A guest has no My documents  section and is refused. To create the file in a room or another folder use  `POST api/2.0/files/{folderId}/html`.
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
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func createHtmlFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        let localVariablePath = "/api/2.0/files/@my/html"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a text file
     
     See also:
     REST API Reference for createTextFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
     - parameter folderId: (path) The folder the file is created in.      - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createTextFile(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await createTextFileWithRequestBuilder(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a text file
     
     See also:
     REST API Reference for createTextFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
     
     - POST /api/2.0/files/{folderId}/text
     - Creates a text file in the folder named in the route out of the text passed as the content, and answers with  the stored file. The extension follows the content rather than the request: `.txt` normally, but `.html` as  soon as the text contains something shaped like an HTML tag, so a snippet of markup sent here ends up as an  HTML file; the extension is added to the title unless the title already ends with it. A request carrying no  content is rejected as an invalid request. `createNewIfExist` acts the other way round than its name reads:  with `true` the file that already carries this title is updated and a version appears in its history, while  with `false`, which is also the default, another file is created and its title made unique, as in Notes  (1).txt. A file that is locked, open in an editing session, encrypted or in Trash is not updated - a new file  appears beside it instead. The caller needs the right to create files in the folder. The call is mutating. To  create the file in the caller's own section use `POST api/2.0/files/@my/text`.
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
     - parameter folderId: (path) The folder the file is created in. 
     - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func createTextFileWithRequestBuilder(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/text"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a text file (third-party storage)
     
     See also:
     REST API Reference for createTextFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
     - parameter folderId: (path) The folder the file is created in.      - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createTextFile(folderId: String, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await createTextFileWithRequestBuilder(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a text file (third-party storage)
     
     See also:
     REST API Reference for createTextFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
     
     - POST /api/2.0/files/{folderId}/text
     - Creates a text file in the folder named in the route out of the text passed as the content, and answers with  the stored file. The extension follows the content rather than the request: `.txt` normally, but `.html` as  soon as the text contains something shaped like an HTML tag, so a snippet of markup sent here ends up as an  HTML file; the extension is added to the title unless the title already ends with it. A request carrying no  content is rejected as an invalid request. `createNewIfExist` acts the other way round than its name reads:  with `true` the file that already carries this title is updated and a version appears in its history, while  with `false`, which is also the default, another file is created and its title made unique, as in Notes  (1).txt. A file that is locked, open in an editing session, encrypted or in Trash is not updated - a new file  appears beside it instead. The caller needs the right to create files in the folder. The call is mutating. To  create the file in the caller's own section use `POST api/2.0/files/@my/text`.
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
     - parameter folderId: (path) The folder the file is created in. 
     - parameter createTextOrHtmlFile: (body) The title, the content and the collision behaviour of the new file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func createTextFileWithRequestBuilder(folderId: String, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/text"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a text file in My documents
     
     See also:
     REST API Reference for createTextFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createTextFileInMyDocuments(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await createTextFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a text file in My documents
     
     See also:
     REST API Reference for createTextFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/
     
     - POST /api/2.0/files/@my/text
     - Creates a text file in the caller's own My documents section out of the text passed as the content, and  answers with the stored file. The extension follows the content rather than the request: `.txt` normally, but  `.html` as soon as the text contains something shaped like an HTML tag, so a snippet of markup sent here ends  up as an HTML file; the extension is added to the title unless the title already ends with it. A request  carrying no content is rejected as invalid. `createNewIfExist` acts the other way round than its name reads:  with `true` the file that already carries this title is updated and a version appears in its history, while  with `false`, which is also the default, another file is created and its title made unique, as in  Notes (1).txt. A file that is locked, open in an editing session, encrypted or in Trash is not updated - a  new file appears beside it instead. The call is mutating. A guest has no My documents section and is  refused. To create the file in a room or another folder use `POST api/2.0/files/{folderId}/text`.
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
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func createTextFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        let localVariablePath = "/api/2.0/files/@my/text"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Queue file thumbnails
     
     See also:
     REST API Reference for createThumbnails Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createThumbnails(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectArrayWrapper {
        return try await createThumbnailsWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Queue file thumbnails
     
     See also:
     REST API Reference for createThumbnails Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/
     
     - POST /api/2.0/files/thumbnails
     - Asks the portal to build preview thumbnails for the listed files, and answers at once with the same file ids  that were sent. That answer echoes the request and does not confirm that anything was queued: the work is  handed over to a background worker, and a failure on the way there is written to the log rather than reported  to the caller. Only the file ids of the body are read - the folder ids are ignored, and a request naming no  files at all is answered with an empty list. Ids of files kept in a connected third-party storage are dropped  as well, because the worker handles portal storage only. Access to the individual files is not checked here;  the caller has to be signed in or to reach the portal through an external share link, and an anonymous caller  without such a link is refused. The call is asynchronous and safe to repeat. The thumbnails themselves are not  in the answer: read `thumbnailStatus` and `thumbnailUrl` of the file, for instance with  `GET api/2.0/files/file/{fileId}`, until the status reports the thumbnail as created.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectArrayWrapper> 
     */
    open class func createThumbnailsWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thumbnails"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a file
     
     See also:
     REST API Reference for deleteFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
     - parameter fileId: (path) The file to delete.      - parameter delete: (body) When and how the file is deleted.      - parameter returnSingleOperation: (query) Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFile(fileId: Int, delete: Delete, returnSingleOperation: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteFileWithRequestBuilder(fileId: fileId, delete: delete, returnSingleOperation: returnSingleOperation, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a file
     
     See also:
     REST API Reference for deleteFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
     
     - DELETE /api/2.0/files/file/{fileId}
     - Queues the deletion of one file and answers with the caller's file operations, the one just created among  them. The file is not gone when the response arrives: poll `GET api/2.0/files/fileops` until the operation  reports `finished`, and read its `error` to learn whether the deletion succeeded. By default the file is moved  to Trash, from where it can be restored; `immediately=true` deletes it for good instead, and inside a room,  where there is no Trash, deletion is always final. `deleteAfter=true` postpones the deletion until the editing  session on the file has ended, so a file somebody is working on is not pulled away.  `returnSingleOperation=true` narrows the answer to this deletion instead of listing every active operation of  the caller. The caller needs the right to delete the file, which the room admin, a DocSpace admin acting as  room manager and a content creator acting on their own file have; editing access alone, read access, a guest  and a member without access to the room are all refused. The call is destructive. To delete several items at  once use `PUT api/2.0/files/fileops/delete`.
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
     - parameter fileId: (path) The file to delete. 
     - parameter delete: (body) When and how the file is deleted. 
     - parameter returnSingleOperation: (query) Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteFileWithRequestBuilder(fileId: Int, delete: Delete, returnSingleOperation: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: delete, codableHelper: apiConfiguration.codableHelper)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ReturnSingleOperation": (wrappedValue: returnSingleOperation?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a file (third-party storage)
     
     See also:
     REST API Reference for deleteFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
     - parameter fileId: (path) The file to delete.      - parameter delete: (body) When and how the file is deleted.      - parameter returnSingleOperation: (query) Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFile(fileId: String, delete: Delete, returnSingleOperation: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteFileWithRequestBuilder(fileId: fileId, delete: delete, returnSingleOperation: returnSingleOperation, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a file (third-party storage)
     
     See also:
     REST API Reference for deleteFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
     
     - DELETE /api/2.0/files/file/{fileId}
     - Queues the deletion of one file and answers with the caller's file operations, the one just created among  them. The file is not gone when the response arrives: poll `GET api/2.0/files/fileops` until the operation  reports `finished`, and read its `error` to learn whether the deletion succeeded. By default the file is moved  to Trash, from where it can be restored; `immediately=true` deletes it for good instead, and inside a room,  where there is no Trash, deletion is always final. `deleteAfter=true` postpones the deletion until the editing  session on the file has ended, so a file somebody is working on is not pulled away.  `returnSingleOperation=true` narrows the answer to this deletion instead of listing every active operation of  the caller. The caller needs the right to delete the file, which the room admin, a DocSpace admin acting as  room manager and a content creator acting on their own file have; editing access alone, read access, a guest  and a member without access to the room are all refused. The call is destructive. To delete several items at  once use `PUT api/2.0/files/fileops/delete`.
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
     - parameter fileId: (path) The file to delete. 
     - parameter delete: (body) When and how the file is deleted. 
     - parameter returnSingleOperation: (query) Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteFileWithRequestBuilder(fileId: String, delete: Delete, returnSingleOperation: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: delete, codableHelper: apiConfiguration.codableHelper)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ReturnSingleOperation": (wrappedValue: returnSingleOperation?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete recent files
     
     See also:
     REST API Reference for deleteRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRecent(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteRecentWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete recent files
     
     See also:
     REST API Reference for deleteRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/
     
     - DELETE /api/2.0/files/recent
     - Removes the listed entries from the Recent section of the calling account, the history of opened files that  `GET api/2.0/files/recent` returns. Nothing is deleted from storage and no other member's history is touched;  access to the entries is not checked at all, so a file the caller can no longer read can still be cleared from  their own history. Only numeric file ids are honoured, so a file on a connected third-party account cannot be  cleared this way, and folder ids are accepted but change nothing because the section lists files only. The  answer carries no body and reports nothing about how many entries were found: an empty request and an id that  was never in the section are accepted alike. Repeating the call is safe, but an entry returns the next time  the file is opened or `POST api/2.0/files/file/{fileId}/recent` is called for it. To hide the whole section  instead, call `PUT api/2.0/files/displayrecent`.
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
     - returns: RequestBuilder<Void> 
     */
    open class func deleteRecentWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/files/recent"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete template files
     
     See also:
     REST API Reference for deleteTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/
     - parameter requestBody: (body) The files to take off the template list, by id; this array is the whole request body. Only a file stored in  the portal itself can be a template, which is why an id here is always numeric. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteTemplates(requestBody: [Int]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await deleteTemplatesWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete template files
     
     See also:
     REST API Reference for deleteTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/
     
     - DELETE /api/2.0/files/templates
     - Takes the listed files off the personal template list of the calling account, leaving the files themselves  untouched: only the template mark is dropped. The body of this request is a bare JSON array of numeric file  ids rather than an object with a field, and a request that carries no array at all is rejected as an invalid  request. Every authenticated member type may manage their own list, a guest is refused, and read access to a  file is required for its mark to be dropped. The answer is `true` whenever the array was understood, which an  empty array, an id that does not exist and a file that was never a template all achieve, so it confirms  nothing about what was removed. Repeating the call is safe. Use `POST api/2.0/files/templates` to put a file  back on the list; that operation expects an object with a `fileIds` field, so the two bodies are not  interchangeable.
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
     - parameter requestBody: (body) The files to take off the template list, by id; this array is the whole request body. Only a file stored in  the portal itself can be a template, which is why an id here is always numeric. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func deleteTemplatesWithRequestBuilder(requestBody: [Int]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/templates"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Generate a form answers report
     
     See also:
     REST API Reference for generateXlsx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: XlsxReportResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func generateXlsx(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> XlsxReportResponseWrapper {
        return try await generateXlsxWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Generate a form answers report
     
     See also:
     REST API Reference for generateXlsx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/
     
     - POST /api/2.0/files/file/{fileId}/xlsx
     - Queues generation of the spreadsheet that collects every answer submitted for a PDF form in a form-filling  room, and answers at once with the queued task, the original form and a flag telling whether the report file  is being created now or an existing one refreshed in place. Either identifier works: the id of the original  form, or the id of an XLSX or CSV result file inside the room's Complete folder, from which the portal  resolves the form behind it. The form must already have been opened for filling with  `PUT api/2.0/files/file/{fileId}/startfilling` and must still live in the form-filling room that started it.  The caller must be allowed to update that form's report. The call is mutating and asynchronous: the  spreadsheet is not ready when the response arrives, so poll `GET api/2.0/files/file/{fileId}/xlsx` with the  original form's id until the task reports completion, then take the produced file from the task. Calling it  again while a run is still going answers with that run instead of starting a second one.
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
     - returns: RequestBuilder<XlsxReportResponseWrapper> 
     */
    open class func generateXlsxWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<XlsxReportResponseWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/xlsx"
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

        let localVariableRequestBuilder: RequestBuilder<XlsxReportResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get form roles
     
     See also:
     REST API Reference for getAllFormRoles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FormRoleArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllFormRoles(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FormRoleArrayWrapper {
        return try await getAllFormRolesWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form roles
     
     See also:
     REST API Reference for getAllFormRoles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
     
     - GET /api/2.0/files/file/{fileId}/formroles
     - Returns the roles of a PDF form together with the state each of them is in, which is how a client shows who is  expected to fill the form next. Every entry carries the name of the role, the account holding it, the sequence  number that decides the turn and a status: the roles of earlier turns are reported as complete, those of later  turns as waiting, and the role whose turn it is as either yours to fill or already in progress, depending on  whether that person has opened the form; when the filling has been stopped, the role it was interrupted at is  reported as stopped instead. A form whose filling was never started answers with an empty list. The file has  to be a PDF form, or the completed copy of one, and anything else is refused. Read access to the form is  enough, so every member of the room sees the roles, while a caller without access to the room and a guest  outside it are refused with 403 and an unknown file is answered with 404. The operation is read-only. The  assignment itself is written by `POST api/2.0/files/file/{fileId}/formrolemapping`.
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
     - returns: RequestBuilder<FormRoleArrayWrapper> 
     */
    open class func getAllFormRolesWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FormRoleArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/formroles"
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

        let localVariableRequestBuilder: RequestBuilder<FormRoleArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get form roles (third-party storage)
     
     See also:
     REST API Reference for getAllFormRoles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FormRoleArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllFormRoles(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FormRoleArrayWrapper {
        return try await getAllFormRolesWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form roles (third-party storage)
     
     See also:
     REST API Reference for getAllFormRoles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
     
     - GET /api/2.0/files/file/{fileId}/formroles
     - Returns the roles of a PDF form together with the state each of them is in, which is how a client shows who is  expected to fill the form next. Every entry carries the name of the role, the account holding it, the sequence  number that decides the turn and a status: the roles of earlier turns are reported as complete, those of later  turns as waiting, and the role whose turn it is as either yours to fill or already in progress, depending on  whether that person has opened the form; when the filling has been stopped, the role it was interrupted at is  reported as stopped instead. A form whose filling was never started answers with an empty list. The file has  to be a PDF form, or the completed copy of one, and anything else is refused. Read access to the form is  enough, so every member of the room sees the roles, while a caller without access to the room and a guest  outside it are refused with 403 and an unknown file is answered with 404. The operation is read-only. The  assignment itself is written by `POST api/2.0/files/file/{fileId}/formrolemapping`.
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
     - returns: RequestBuilder<FormRoleArrayWrapper> 
     */
    open class func getAllFormRolesWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FormRoleArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/formroles"
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

        let localVariableRequestBuilder: RequestBuilder<FormRoleArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get changes URL
     
     See also:
     REST API Reference for getEditDiffUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
     - parameter fileId: (path) The file whose changes are read.      - parameter version: (query) The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEditDiffUrl(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryDataWrapper {
        return try await getEditDiffUrlWithRequestBuilder(fileId: fileId, version: version, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get changes URL
     
     See also:
     REST API Reference for getEditDiffUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
     
     - GET /api/2.0/files/file/{fileId}/edit/diff
     - Answers with everything an editor needs in order to show what changed in one version of a file: the address of  the version itself, its document key and format, the address of the recorded changes, the same trio for the  version it is compared against, and a token that signs the whole answer for the document service. `version`  picks the version, and 0, the default, means the current one. `changesUrl` and `previous` are filled in only  when the portal has stored the changes of that version, which is the case for versions written by an editing  session; for a version uploaded as a whole they stay empty and only the file itself can be shown. The  addresses are meant for the document service and carry their own time-limited keys. The caller needs the right  to read the history of the file, which editing access and above grant: read-only access, commenting access, a  guest and an anonymous caller are all refused, as is a file kept in a connected third-party storage. The  operation is read-only. For the list of versions themselves use  `GET api/2.0/files/file/{fileId}/edit/history`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file whose changes are read. 
     - parameter version: (query) The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryDataWrapper> 
     */
    open class func getEditDiffUrlWithRequestBuilder(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryDataWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit/diff"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EditHistoryDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get changes URL (third-party storage)
     
     See also:
     REST API Reference for getEditDiffUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
     - parameter fileId: (path) The file whose changes are read.      - parameter version: (query) The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEditDiffUrl(fileId: String, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryDataWrapper {
        return try await getEditDiffUrlWithRequestBuilder(fileId: fileId, version: version, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get changes URL (third-party storage)
     
     See also:
     REST API Reference for getEditDiffUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
     
     - GET /api/2.0/files/file/{fileId}/edit/diff
     - Answers with everything an editor needs in order to show what changed in one version of a file: the address of  the version itself, its document key and format, the address of the recorded changes, the same trio for the  version it is compared against, and a token that signs the whole answer for the document service. `version`  picks the version, and 0, the default, means the current one. `changesUrl` and `previous` are filled in only  when the portal has stored the changes of that version, which is the case for versions written by an editing  session; for a version uploaded as a whole they stay empty and only the file itself can be shown. The  addresses are meant for the document service and carry their own time-limited keys. The caller needs the right  to read the history of the file, which editing access and above grant: read-only access, commenting access, a  guest and an anonymous caller are all refused, as is a file kept in a connected third-party storage. The  operation is read-only. For the list of versions themselves use  `GET api/2.0/files/file/{fileId}/edit/history`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file whose changes are read. 
     - parameter version: (query) The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryDataWrapper> 
     */
    open class func getEditDiffUrlWithRequestBuilder(fileId: String, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryDataWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit/diff"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EditHistoryDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get version history
     
     See also:
     REST API Reference for getEditHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEditHistory(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryArrayWrapper {
        return try await getEditHistoryWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get version history
     
     See also:
     REST API Reference for getEditHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
     
     - GET /api/2.0/files/file/{fileId}/edit/history
     - Returns the editing revisions of a file, oldest first, as the document service understands them: each entry  carries the version and the revision group it belongs to, the account that saved it, when it was saved, the  comment left on it, the document key of that revision and, where the portal stored them, the changes it  introduced. Only the revisions a person saved are listed - the autosaves an editing session writes in between  are left out, which is what separates this list from the plain version list of  `GET api/2.0/files/file/{fileId}/history`. The caller needs the right to read the history of the file, which  editing access and above grant: commenting access, read-only access, a guest, a member without access to the  room and an anonymous caller are all refused, and so is a file kept in a connected third-party storage, which  keeps no history in the portal. The operation is read-only. Take one entry to  `GET api/2.0/files/file/{fileId}/edit/diff` to show its changes, or to  `POST api/2.0/files/file/{fileId}/restoreversion` to bring it back.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryArrayWrapper> 
     */
    open class func getEditHistoryWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit/history"
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

        let localVariableRequestBuilder: RequestBuilder<EditHistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get version history (third-party storage)
     
     See also:
     REST API Reference for getEditHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEditHistory(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryArrayWrapper {
        return try await getEditHistoryWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get version history (third-party storage)
     
     See also:
     REST API Reference for getEditHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
     
     - GET /api/2.0/files/file/{fileId}/edit/history
     - Returns the editing revisions of a file, oldest first, as the document service understands them: each entry  carries the version and the revision group it belongs to, the account that saved it, when it was saved, the  comment left on it, the document key of that revision and, where the portal stored them, the changes it  introduced. Only the revisions a person saved are listed - the autosaves an editing session writes in between  are left out, which is what separates this list from the plain version list of  `GET api/2.0/files/file/{fileId}/history`. The caller needs the right to read the history of the file, which  editing access and above grant: commenting access, read-only access, a guest, a member without access to the  room and an anonymous caller are all refused, and so is a file kept in a connected third-party storage, which  keeps no history in the portal. The operation is read-only. Take one entry to  `GET api/2.0/files/file/{fileId}/edit/diff` to show its changes, or to  `POST api/2.0/files/file/{fileId}/restoreversion` to bring it back.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryArrayWrapper> 
     */
    open class func getEditHistoryWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit/history"
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

        let localVariableRequestBuilder: RequestBuilder<EditHistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file encryption information
     
     See also:
     REST API Reference for getEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-info/
     - parameter fileId: (path) The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEncryptionInfoWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEncryptionInfo(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEncryptionInfoWrapper {
        return try await getEncryptionInfoWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file encryption information
     
     See also:
     REST API Reference for getEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-info/
     
     - GET /api/2.0/files/{fileId}/access
     - Returns what the caller needs in order to decrypt one file of an end-to-end encrypted private room: `userKeys`  holds the key pairs of the calling account, the private half of each of them encrypted with that person's own  password, and `fileKeys` holds the file keys that were issued to this account for this file, each naming the  public key it was encrypted for. Only the keys of the calling account are ever returned, never those of the  other people in the room. An account that holds no key pair yet, and a file no key was issued for, answer with  empty lists rather than with an error, so an empty `fileKeys` means the caller cannot open that file rather  than that the file is unencrypted. The caller needs read access to the file; a caller without it, and a file  that does not exist, are both refused with 403. The operation is read-only. Keys are issued by  `PUT api/2.0/files/{fileId}/access`, and the personal key pairs are managed under `api/2.0/privacyroom/keys`.
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
     - parameter fileId: (path) The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEncryptionInfoWrapper> 
     */
    open class func getEncryptionInfoWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEncryptionInfoWrapper> {
        var localVariablePath = "/api/2.0/files/{fileId}/access"
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

        let localVariableRequestBuilder: RequestBuilder<FileEncryptionInfoWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file encryption information (third-party storage)
     
     See also:
     REST API Reference for getEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-info/
     - parameter fileId: (path) The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEncryptionInfoWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEncryptionInfo(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEncryptionInfoWrapper {
        return try await getEncryptionInfoWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file encryption information (third-party storage)
     
     See also:
     REST API Reference for getEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-info/
     
     - GET /api/2.0/files/{fileId}/access
     - Returns what the caller needs in order to decrypt one file of an end-to-end encrypted private room: `userKeys`  holds the key pairs of the calling account, the private half of each of them encrypted with that person's own  password, and `fileKeys` holds the file keys that were issued to this account for this file, each naming the  public key it was encrypted for. Only the keys of the calling account are ever returned, never those of the  other people in the room. An account that holds no key pair yet, and a file no key was issued for, answer with  empty lists rather than with an error, so an empty `fileKeys` means the caller cannot open that file rather  than that the file is unencrypted. The caller needs read access to the file; a caller without it, and a file  that does not exist, are both refused with 403. The operation is read-only. Keys are issued by  `PUT api/2.0/files/{fileId}/access`, and the personal key pairs are managed under `api/2.0/privacyroom/keys`.
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
     - parameter fileId: (path) The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEncryptionInfoWrapper> 
     */
    open class func getEncryptionInfoWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEncryptionInfoWrapper> {
        var localVariablePath = "/api/2.0/files/{fileId}/access"
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

        let localVariableRequestBuilder: RequestBuilder<FileEncryptionInfoWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file history
     
     See also:
     REST API Reference for getFileHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/
     - parameter fileId: (path) The file whose activity log is read; only files stored in the portal itself have one.      - parameter fromDate: (query) The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps. (optional)     - parameter toDate: (query) The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry. (optional)     - parameter count: (query) How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body. (optional)     - parameter startIndex: (query) How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: HistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileHistory(fileId: Int, fromDate: Date? = nil, toDate: Date? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> HistoryArrayWrapper {
        return try await getFileHistoryWithRequestBuilder(fileId: fileId, fromDate: fromDate, toDate: toDate, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file history
     
     See also:
     REST API Reference for getFileHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/
     
     - GET /api/2.0/files/file/{fileId}/log
     - Returns the activity log of a single file - who renamed, moved, shared, converted, locked or edited it, and  when - as the portal recorded it in its audit trail. Entries arrive newest first, and the events that belong  to one action are folded into a single entry whose `related` list carries the rest of them. `fromDate` and  `toDate` are read in the portal's time zone and narrow the range; `startIndex` and `count` page through the  result, and the number of matching entries is reported in the response headers rather than in the body. The  caller needs read access to the file, so a member of the room it lies in, the admin of that room and a  DocSpace admin all see the same log, while a caller without access to the room is refused with 403 and an  unknown id is answered with 404. The operation is read-only. Only files stored in the portal itself have a log  here - a file kept in a connected third-party storage has none. For the log of a folder or a room use  `GET api/2.0/files/folder/{folderId}/log`.
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
     - parameter fileId: (path) The file whose activity log is read; only files stored in the portal itself have one. 
     - parameter fromDate: (query) The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps. (optional)
     - parameter toDate: (query) The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry. (optional)
     - parameter count: (query) How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body. (optional)
     - parameter startIndex: (query) How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<HistoryArrayWrapper> 
     */
    open class func getFileHistoryWithRequestBuilder(fileId: Int, fromDate: Date? = nil, toDate: Date? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<HistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/log"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fromDate": (wrappedValue: fromDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "toDate": (wrappedValue: toDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file information
     
     See also:
     REST API Reference for getFileInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
     - parameter fileId: (path) The file to read.      - parameter version: (query) The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileInfo(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await getFileInfoWithRequestBuilder(fileId: fileId, version: version, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file information
     
     See also:
     REST API Reference for getFileInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
     
     - GET /api/2.0/files/file/{fileId}
     - Returns one file as the portal stores it, together with the state it has for the caller: the title, the folder  it lies in, the size, the current version and revision group, the addresses for viewing and editing it, the  actions the caller is allowed to perform on it, the sharing rights it was reached through, and the thumbnail  state. `version` picks an older version instead of the current one; the default of -1 means the current  version. When the file belongs to another person's own section and the caller cannot read the folder holding  it, the answer reports the Shared with me section as its folder, so that a client can show it in a place the  caller can actually open. The caller needs read access to the file, which any member of the room it lies in  has; a caller without access to the room is refused and an anonymous caller without an external share link is  rejected. The operation is read-only. For every version at once use `GET api/2.0/files/file/{fileId}/history`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file to read. 
     - parameter version: (query) The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func getFileInfoWithRequestBuilder(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file information (third-party storage)
     
     See also:
     REST API Reference for getFileInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
     - parameter fileId: (path) The file to read.      - parameter version: (query) The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileInfo(fileId: String, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await getFileInfoWithRequestBuilder(fileId: fileId, version: version, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file information (third-party storage)
     
     See also:
     REST API Reference for getFileInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
     
     - GET /api/2.0/files/file/{fileId}
     - Returns one file as the portal stores it, together with the state it has for the caller: the title, the folder  it lies in, the size, the current version and revision group, the addresses for viewing and editing it, the  actions the caller is allowed to perform on it, the sharing rights it was reached through, and the thumbnail  state. `version` picks an older version instead of the current one; the default of -1 means the current  version. When the file belongs to another person's own section and the caller cannot read the folder holding  it, the answer reports the Shared with me section as its folder, so that a client can show it in a place the  caller can actually open. The caller needs read access to the file, which any member of the room it lies in  has; a caller without access to the room is refused and an anonymous caller without an external share link is  rejected. The operation is read-only. For every version at once use `GET api/2.0/files/file/{fileId}/history`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file to read. 
     - parameter version: (query) The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func getFileInfoWithRequestBuilder(fileId: String, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file external links
     
     See also:
     REST API Reference for getFileLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileLinks(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFileLinksWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file external links
     
     See also:
     REST API Reference for getFileLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
     
     - GET /api/2.0/files/file/{id}/links
     - Lists the external links of a file, each with its identifier, title, address, rights, expiration date and  download restriction. `startIndex` and `count` page through the list, and the total number of links is  reported in the response headers rather than in the body. A file that has never been shared by link answers  with an empty list; the primary link is part of this list once it exists, and it is the only one that is  created on demand, by `GET api/2.0/files/file/{id}/link`. For a PDF form kept in a form-filling room the link  of the room is appended to the answer, because that is the address through which the form is filled out. The  caller needs the right to share the file, which its creator, the room admin and a DocSpace admin acting as  room manager have; a caller without access to the file is refused and an anonymous caller is rejected. The  operation is read-only. Take an identifier from here to `PUT api/2.0/files/file/{id}/links` to change or  remove that link.
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
    open class func getFileLinksWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/links"
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
     Get file external links (third-party storage)
     
     See also:
     REST API Reference for getFileLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileLinks(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFileLinksWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file external links (third-party storage)
     
     See also:
     REST API Reference for getFileLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
     
     - GET /api/2.0/files/file/{id}/links
     - Lists the external links of a file, each with its identifier, title, address, rights, expiration date and  download restriction. `startIndex` and `count` page through the list, and the total number of links is  reported in the response headers rather than in the body. A file that has never been shared by link answers  with an empty list; the primary link is part of this list once it exists, and it is the only one that is  created on demand, by `GET api/2.0/files/file/{id}/link`. For a PDF form kept in a form-filling room the link  of the room is appended to the answer, because that is the address through which the form is filled out. The  caller needs the right to share the file, which its creator, the room admin and a DocSpace admin acting as  room manager have; a caller without access to the file is refused and an anonymous caller is rejected. The  operation is read-only. Take an identifier from here to `PUT api/2.0/files/file/{id}/links` to change or  remove that link.
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
    open class func getFileLinksWithRequestBuilder(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/links"
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
     Get the file primary external link
     
     See also:
     REST API Reference for getFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFilePrimaryExternalLink(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getFilePrimaryExternalLinkWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the file primary external link
     
     See also:
     REST API Reference for getFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
     
     - GET /api/2.0/files/file/{id}/link
     - Answers with the primary external link of a file - the one the Copy link action of a client hands out - with  its address in `sharedTo.shareLink`, its rights in `access`, and its expiration date, password flag and  download restriction beside them. The link is created on the first read if the file has none, with read  rights, no password and no expiry, so this operation mutates on that first call and is a plain read  afterwards; repeated calls answer with the same link identifier. A PDF form in a form-filling room is answered  with the link of that room, carried over to the form. The caller needs the right to share the file, which its  creator, the room admin and a DocSpace admin acting as room manager have; a caller without access to the file  is refused with 403 and an anonymous caller is rejected, while a link that was deliberately revoked is  answered with 404 rather than being recreated. The custom links of the same file, the primary one excepted,  are listed by `GET api/2.0/files/file/{id}/links`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)
     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getFilePrimaryExternalLinkWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/link"
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

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the file primary external link (third-party storage)
     
     See also:
     REST API Reference for getFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFilePrimaryExternalLink(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getFilePrimaryExternalLinkWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the file primary external link (third-party storage)
     
     See also:
     REST API Reference for getFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
     
     - GET /api/2.0/files/file/{id}/link
     - Answers with the primary external link of a file - the one the Copy link action of a client hands out - with  its address in `sharedTo.shareLink`, its rights in `access`, and its expiration date, password flag and  download restriction beside them. The link is created on the first read if the file has none, with read  rights, no password and no expiry, so this operation mutates on that first call and is a plain read  afterwards; repeated calls answer with the same link identifier. A PDF form in a form-filling room is answered  with the link of that room, carried over to the form. The caller needs the right to share the file, which its  creator, the room admin and a DocSpace admin acting as room manager have; a caller without access to the file  is refused with 403 and an anonymous caller is rejected, while a link that was deliberately revoked is  answered with 404 rather than being recreated. The custom links of the same file, the primary one excepted,  are listed by `GET api/2.0/files/file/{id}/links`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter id: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter count: (query) How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. (optional)
     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getFilePrimaryExternalLinkWithRequestBuilder(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/link"
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

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file versions
     
     See also:
     REST API Reference for getFileVersionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileVersionInfo(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileArrayWrapper {
        return try await getFileVersionInfoWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file versions
     
     See also:
     REST API Reference for getFileVersionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
     
     - GET /api/2.0/files/file/{fileId}/history
     - Returns every stored version of a file, newest first, each of them shaped like the file itself - the version  and the revision group it belongs to, the size, the comment saved with it, the addresses for viewing it, and  the thumbnail and lock state. Unlike the editing revisions of `GET api/2.0/files/file/{fileId}/edit/history`,  this list also holds the autosave revisions an editing session writes, so it is the fuller of the two, and it  is the shape a client already knows how to render. The caller needs the right to read the history of the file,  which is a stricter rule than reading the file: in a room only its managers and content creators may read the  history, and in a personal section editing access is enough, so a member with read access to somebody else's  file, and even a DocSpace admin in that position, are refused, as is an anonymous caller. The operation is  read-only. To restore one of the versions use `POST api/2.0/files/file/{fileId}/restoreversion`, and to close  or reopen a revision group `PUT api/2.0/files/file/{fileId}/history`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileArrayWrapper> 
     */
    open class func getFileVersionInfoWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/history"
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

        let localVariableRequestBuilder: RequestBuilder<FileArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file versions (third-party storage)
     
     See also:
     REST API Reference for getFileVersionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileVersionInfo(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileArrayWrapper {
        return try await getFileVersionInfoWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file versions (third-party storage)
     
     See also:
     REST API Reference for getFileVersionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
     
     - GET /api/2.0/files/file/{fileId}/history
     - Returns every stored version of a file, newest first, each of them shaped like the file itself - the version  and the revision group it belongs to, the size, the comment saved with it, the addresses for viewing it, and  the thumbnail and lock state. Unlike the editing revisions of `GET api/2.0/files/file/{fileId}/edit/history`,  this list also holds the autosave revisions an editing session writes, so it is the fuller of the two, and it  is the shape a client already knows how to render. The caller needs the right to read the history of the file,  which is a stricter rule than reading the file: in a room only its managers and content creators may read the  history, and in a personal section editing access is enough, so a member with read access to somebody else's  file, and even a DocSpace admin in that position, are refused, as is an anonymous caller. The operation is  read-only. To restore one of the versions use `POST api/2.0/files/file/{fileId}/restoreversion`, and to close  or reopen a revision group `PUT api/2.0/files/file/{fileId}/history`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileArrayWrapper> 
     */
    open class func getFileVersionInfoWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/history"
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get form-filling result
     
     See also:
     REST API Reference for getFillResult Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/
     - parameter fillingSessionId: (query) The identifier of the finished filling session, the value the document service reports when the filling ends.  The portal remembers it only for a while afterwards, so an older session is answered as not found. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FillingFormResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFillResult(fillingSessionId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FillingFormResultWrapper {
        return try await getFillResultWithRequestBuilder(fillingSessionId: fillingSessionId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form-filling result
     
     See also:
     REST API Reference for getFillResult Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/
     
     - GET /api/2.0/files/file/fillresult
     - Answers with the outcome of one completed form-filling session: the filled copy of the form, the original form  it was made from, the number this submission was given inside the room, the identifier of the room and the  account that started the filling. `isRoomMember` says whether the caller is a member of that room, which a  client uses to decide whether the room can be offered for opening. The session is named by `fillingSessionId`,  the value the document service reports when the filling ends; the portal remembers it only for a while after  that, so a session that was never completed, one already forgotten and a value of the wrong shape are all  answered as not found, while omitting the parameter is rejected as an invalid request. The operation is  read-only and needs no sign-in: it is meant for the caller that has just finished filling the form through an  external link, and the session identifier is the only secret involved. The filled copy itself is an ordinary  file - read it with `GET api/2.0/files/file/{fileId}`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fillingSessionId: (query) The identifier of the finished filling session, the value the document service reports when the filling ends.  The portal remembers it only for a while afterwards, so an older session is answered as not found. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FillingFormResultWrapper> 
     */
    open class func getFillResultWithRequestBuilder(fillingSessionId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FillingFormResultWrapper> {
        let localVariablePath = "/api/2.0/files/file/fillresult"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fillingSessionId": (wrappedValue: fillingSessionId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FillingFormResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get form submission results
     
     See also:
     REST API Reference for getFormSubmissions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FormSubmissionsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFormSubmissions(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FormSubmissionsWrapper {
        return try await getFormSubmissionsWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form submission results
     
     See also:
     REST API Reference for getFormSubmissions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/
     
     - GET /api/2.0/files/file/{fileId}/submissions
     - Returns everything that has been submitted against one PDF form: `metadata` describes the fields of the form,  in the order they are laid out, and `submissions` carries one record per completed copy, each of them holding  the values that were entered. It is the data behind the results table a client shows for a form, and the same  data the spreadsheet report of `POST api/2.0/files/file/{fileId}/xlsx` is built from. Only the submissions of  the version that is currently being filled are reported. The form has to be a PDF form whose filling has been  started and which is still the original form of its room; a form that was never started, a copy of a form and  a form whose room has been moved away are all refused. Read access to the form is enough, so every member of  the room can read the results, while a caller without access to it is refused with 403. The operation is  read-only. The list of roles and whose turn it is comes from `GET api/2.0/files/file/{fileId}/formroles`  instead.
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
     - returns: RequestBuilder<FormSubmissionsWrapper> 
     */
    open class func getFormSubmissionsWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FormSubmissionsWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/submissions"
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

        let localVariableRequestBuilder: RequestBuilder<FormSubmissionsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a signed download address
     
     See also:
     REST API Reference for getPresignedFileUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileLinkWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPresignedFileUri(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileLinkWrapper {
        return try await getPresignedFileUriWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a signed download address
     
     See also:
     REST API Reference for getPresignedFileUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
     
     - GET /api/2.0/files/file/{fileId}/presigned
     - Returns a direct download address for the current content of the file together with the signature token that  the document service validates, which is what the portal hands over when the editors have to fetch the  document themselves. The address points at the portal's file stream endpoint and is rewritten to the host the  document service can reach, so on a deployment where the editors sit behind a private address it is not the  address a browser should follow. The answer also carries the extension of the stored document, leading dot  included. The caller needs read access to the file, and an unknown file id is reported as missing. The call  only reads, and each call mints a fresh address and token rather than reusing the previous one, so the value  is worth requesting again once a token has expired. For a link meant for a person, a plain address with no  token to put behind a download button, use `GET api/2.0/files/file/{fileId}/presigneduri` instead.
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
     - returns: RequestBuilder<FileLinkWrapper> 
     */
    open class func getPresignedFileUriWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileLinkWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/presigned"
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

        let localVariableRequestBuilder: RequestBuilder<FileLinkWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a signed download address (third-party storage)
     
     See also:
     REST API Reference for getPresignedFileUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileLinkWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPresignedFileUri(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileLinkWrapper {
        return try await getPresignedFileUriWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a signed download address (third-party storage)
     
     See also:
     REST API Reference for getPresignedFileUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
     
     - GET /api/2.0/files/file/{fileId}/presigned
     - Returns a direct download address for the current content of the file together with the signature token that  the document service validates, which is what the portal hands over when the editors have to fetch the  document themselves. The address points at the portal's file stream endpoint and is rewritten to the host the  document service can reach, so on a deployment where the editors sit behind a private address it is not the  address a browser should follow. The answer also carries the extension of the stored document, leading dot  included. The caller needs read access to the file, and an unknown file id is reported as missing. The call  only reads, and each call mints a fresh address and token rather than reusing the previous one, so the value  is worth requesting again once a token has expired. For a link meant for a person, a plain address with no  token to put behind a download button, use `GET api/2.0/files/file/{fileId}/presigneduri` instead.
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
     - returns: RequestBuilder<FileLinkWrapper> 
     */
    open class func getPresignedFileUriWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileLinkWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/presigned"
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

        let localVariableRequestBuilder: RequestBuilder<FileLinkWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file download link
     
     See also:
     REST API Reference for getPresignedUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPresignedUri(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getPresignedUriWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file download link
     
     See also:
     REST API Reference for getPresignedUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
     
     - GET /api/2.0/files/file/{fileId}/presigneduri
     - Builds a download address for the current version of a file and answers with it as a plain string. The address  points at the portal's own file handler and carries the file identifier, the version it was built for and a  time-limited authentication key, so it can be handed to a downloader that cannot sign in to the portal itself;  it stops working once that key has expired, and it keeps naming the version that was current when it was built  rather than following later edits. The caller needs read access to the file: a member of the room it lies in  gets an address, a caller without access to the room is refused, an unknown identifier is answered as not  found and an anonymous caller is rejected. The operation is read-only and safe to repeat, though every call  mints a new key. Nothing is downloaded here - follow the address to fetch the bytes. For the variant the  document service signs, which comes back as an object with the file type and a token, use  `GET api/2.0/files/file/{fileId}/presigned`.
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
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getPresignedUriWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/presigneduri"
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

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file download link (third-party storage)
     
     See also:
     REST API Reference for getPresignedUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPresignedUri(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getPresignedUriWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file download link (third-party storage)
     
     See also:
     REST API Reference for getPresignedUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
     
     - GET /api/2.0/files/file/{fileId}/presigneduri
     - Builds a download address for the current version of a file and answers with it as a plain string. The address  points at the portal's own file handler and carries the file identifier, the version it was built for and a  time-limited authentication key, so it can be handed to a downloader that cannot sign in to the portal itself;  it stops working once that key has expired, and it keeps naming the version that was current when it was built  rather than following later edits. The caller needs read access to the file: a member of the room it lies in  gets an address, a caller without access to the room is refused, an unknown identifier is answered as not  found and an anonymous caller is rejected. The operation is read-only and safe to repeat, though every call  mints a new key. Nothing is downloaded here - follow the address to fetch the bytes. For the variant the  document service signs, which comes back as an object with the file type and a token, use  `GET api/2.0/files/file/{fileId}/presigned`.
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
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getPresignedUriWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/presigneduri"
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

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get users for document protection
     
     See also:
     REST API Reference for getProtectedFileUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: MentionWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProtectedFileUsers(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> MentionWrapperArrayWrapper {
        return try await getProtectedFileUsersWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users for document protection
     
     See also:
     REST API Reference for getProtectedFileUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
     
     - GET /api/2.0/files/file/{fileId}/protectusers
     - Lists the users the file is shared with, which is what a client offers when the author protects a document and  picks who may still edit it. The list is built from the whole access list of the file: every entry that is not  an explicit denial, with groups expanded into their members, the caller themselves and deleted accounts left  out, ordered by display name. Access inherited from the room counts, so a member who never received a share on  the file itself is listed too. A file kept in the legacy project storage always answers with an empty list  rather than with its team. The call only reads. A guest is refused, an anonymous caller is answered with  nothing, and a file id that resolves to nothing is refused as well instead of being reported as missing. For  the readers to offer as mentions inside the editor use `GET api/2.0/files/file/{fileId}/sharedusers`.
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
    open class func getProtectedFileUsersWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<MentionWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/protectusers"
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
     Get users for document protection (third-party storage)
     
     See also:
     REST API Reference for getProtectedFileUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: MentionWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProtectedFileUsers(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> MentionWrapperArrayWrapper {
        return try await getProtectedFileUsersWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users for document protection (third-party storage)
     
     See also:
     REST API Reference for getProtectedFileUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
     
     - GET /api/2.0/files/file/{fileId}/protectusers
     - Lists the users the file is shared with, which is what a client offers when the author protects a document and  picks who may still edit it. The list is built from the whole access list of the file: every entry that is not  an explicit denial, with groups expanded into their members, the caller themselves and deleted accounts left  out, ordered by display name. Access inherited from the room counts, so a member who never received a share on  the file itself is listed too. A file kept in the legacy project storage always answers with an empty list  rather than with its team. The call only reads. A guest is refused, an anonymous caller is answered with  nothing, and a file id that resolves to nothing is refused as well instead of being reported as missing. For  the readers to offer as mentions inside the editor use `GET api/2.0/files/file/{fileId}/sharedusers`.
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
    open class func getProtectedFileUsersWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<MentionWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/protectusers"
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
     Resolve a spreadsheet reference
     
     See also:
     REST API Reference for getReferenceData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/
     - parameter getReferenceDataDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileReferenceWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getReferenceData(getReferenceDataDto: GetReferenceDataDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileReferenceWrapper {
        return try await getReferenceDataWithRequestBuilder(getReferenceDataDto: getReferenceDataDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resolve a spreadsheet reference
     
     See also:
     REST API Reference for getReferenceData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/
     
     - POST /api/2.0/files/file/referencedata
     - Resolves a reference that a formula in one spreadsheet makes to another document, and answers with the  descriptor the document service needs in order to read it: the title, the download address, the file type, the  document key of the co-editing session, the web editor link and the signature token. Three ways of naming the  target are tried in order, and the first that resolves wins: `fileKey` as a file id inside the portal named by  `instanceId`, then `path` looked up among the files sitting next to `sourceFileId`, then `link`, short links  included, from which the file id is read out. A link that points outside this portal is not resolved at all  and comes back unchanged as the address to follow. The caller needs read access to the source file and to its  folder, otherwise the call is refused. The call only reads. A reference that resolves to nothing is still  answered with 200, with the error text filled in and the rest of the descriptor empty, so read the error  before using any other field.
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
     - parameter getReferenceDataDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileReferenceWrapper> 
     */
    open class func getReferenceDataWithRequestBuilder(getReferenceDataDto: GetReferenceDataDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileReferenceWrapper> {
        let localVariablePath = "/api/2.0/files/file/referencedata"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getReferenceDataDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileReferenceWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get form report generation status
     
     See also:
     REST API Reference for getXlsx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-xlsx/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getXlsx(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getXlsxWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form report generation status
     
     See also:
     REST API Reference for getXlsx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-xlsx/
     
     - GET /api/2.0/files/file/{fileId}/xlsx
     - Reports how far the spreadsheet of submitted form answers has got, the one queued by  `POST api/2.0/files/file/{fileId}/xlsx`. A run is kept per portal, per caller and per form, so this reports  the caller's own run and not one started by another member of the room; address it with the id of the original  form rather than with the id of the produced spreadsheet. The answer carries the completion flag, the progress  percentage, the error text when the run failed, and the id, name and address of the produced file once it is  there. Nothing at all comes back when no run is on record for this caller and form, which is the normal answer  before the first run and not an error. The call only reads and is meant to be polled until completion is  reported. Any authenticated caller may ask; whether the report may be built is decided when the run is queued,  not here.
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
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func getXlsxWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/xlsx"
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

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check the PDF file
     
     See also:
     REST API Reference for isFormPDF Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func isFormPDF(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await isFormPDFWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the PDF file
     
     See also:
     REST API Reference for isFormPDF Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
     
     - GET /api/2.0/files/file/{fileId}/isformpdf
     - Tells whether a file is a PDF form that can be filled out in the portal, and answers with a single boolean.  The check is by content, not by extension: the beginning of the file is read and the answer is `true` only  when it carries the marker the editors write into the forms they produce, so an ordinary PDF, and a PDF form  made in other software, both answer `false`. A file whose name is not a PDF at all answers `false` without  being read. Use it before offering the form-filling operations on a file, because a document that answers  `false` cannot be started for filling. The caller needs read access to the file, and read access is enough - a  member of the room with read-only rights gets the answer; a caller without access to the room is refused and  an anonymous caller is rejected. The operation is read-only and idempotent. It says nothing about the state of  the filling - for that read `GET api/2.0/files/file/{fileId}/formroles`.
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
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func isFormPDFWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/isformpdf"
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

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check the PDF file (third-party storage)
     
     See also:
     REST API Reference for isFormPDF Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func isFormPDF(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await isFormPDFWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the PDF file (third-party storage)
     
     See also:
     REST API Reference for isFormPDF Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
     
     - GET /api/2.0/files/file/{fileId}/isformpdf
     - Tells whether a file is a PDF form that can be filled out in the portal, and answers with a single boolean.  The check is by content, not by extension: the beginning of the file is read and the answer is `true` only  when it carries the marker the editors write into the forms they produce, so an ordinary PDF, and a PDF form  made in other software, both answer `false`. A file whose name is not a PDF at all answers `false` without  being read. Use it before offering the form-filling operations on a file, because a document that answers  `false` cannot be started for filling. The caller needs read access to the file, and read access is enough - a  member of the room with read-only rights gets the answer; a caller without access to the room is refused and  an anonymous caller is rejected. The operation is read-only and idempotent. It says nothing about the state of  the filling - for that read `GET api/2.0/files/file/{fileId}/formroles`.
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
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func isFormPDFWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/isformpdf"
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

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Lock a file
     
     See also:
     REST API Reference for lockFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
     - parameter fileId: (path) The file to lock or unlock.      - parameter lockFileParameters: (body) The lock state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func lockFile(fileId: Int, lockFileParameters: LockFileParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await lockFileWithRequestBuilder(fileId: fileId, lockFileParameters: lockFileParameters, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Lock a file
     
     See also:
     REST API Reference for lockFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
     
     - PUT /api/2.0/files/file/{fileId}/lock
     - Locks a file so that nobody else can change it, or releases that lock, and answers with the file as it now  stands. With `lockFile=true` the lock is put on the file and everybody else who is editing it at that moment  is dropped out of the session, the caller excepted; the lock then blocks editing, renaming and deleting for  everybody but the account that set it and the room admins. With `lockFile=false` the lock is removed and a  note about the unlocking is appended to the current version comment, unless the file lives in a connected  third-party storage. Locking a file that is already locked, or unlocking one that is not, changes nothing and  still answers with the file, so the call is idempotent in effect while remaining a mutating one. The caller  needs the right to lock the file, which the room admin, a DocSpace admin acting as room manager and a member  with content-creator rights have; a member without access to the room and a guest are refused, and so is a  file in Trash. A lock set by somebody else can only be released by a room manager.
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
     - parameter fileId: (path) The file to lock or unlock. 
     - parameter lockFileParameters: (body) The lock state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func lockFileWithRequestBuilder(fileId: Int, lockFileParameters: LockFileParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/lock"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: lockFileParameters, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Lock a file (third-party storage)
     
     See also:
     REST API Reference for lockFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
     - parameter fileId: (path) The file to lock or unlock.      - parameter lockFileParameters: (body) The lock state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func lockFile(fileId: String, lockFileParameters: LockFileParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await lockFileWithRequestBuilder(fileId: fileId, lockFileParameters: lockFileParameters, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Lock a file (third-party storage)
     
     See also:
     REST API Reference for lockFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
     
     - PUT /api/2.0/files/file/{fileId}/lock
     - Locks a file so that nobody else can change it, or releases that lock, and answers with the file as it now  stands. With `lockFile=true` the lock is put on the file and everybody else who is editing it at that moment  is dropped out of the session, the caller excepted; the lock then blocks editing, renaming and deleting for  everybody but the account that set it and the room admins. With `lockFile=false` the lock is removed and a  note about the unlocking is appended to the current version comment, unless the file lives in a connected  third-party storage. Locking a file that is already locked, or unlocking one that is not, changes nothing and  still answers with the file, so the call is idempotent in effect while remaining a mutating one. The caller  needs the right to lock the file, which the room admin, a DocSpace admin acting as room manager and a member  with content-creator rights have; a member without access to the room and a guest are refused, and so is a  file in Trash. A lock set by somebody else can only be released by a room manager.
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
     - parameter fileId: (path) The file to lock or unlock. 
     - parameter lockFileParameters: (body) The lock state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func lockFileWithRequestBuilder(fileId: String, lockFileParameters: LockFileParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/lock"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: lockFileParameters, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Perform form filling action
     
     See also:
     REST API Reference for manageFormFilling Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/
     - parameter fileId: (path) The form the action applies to. Send the same value as the `formId` of the request body, which is the one the handler reads.      - parameter manageFormFillingDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func manageFormFilling(fileId: String, manageFormFillingDto: ManageFormFillingDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await manageFormFillingWithRequestBuilder(fileId: fileId, manageFormFillingDto: manageFormFillingDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Perform form filling action
     
     See also:
     REST API Reference for manageFormFilling Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/
     
     - PUT /api/2.0/files/file/{fileId}/manageformfilling
     - Drives the filling of a PDF form through its states, the action deciding which way. Action 2 starts the  filling: in a form-filling room the form is opened for filling, the members whose rights are limited to  filling forms are let in, and a form that has been changed since it was last started has the drafts of its  previous round dropped. Action 0 stops it, which in a virtual data room records who interrupted it and at  which role and notifies the people who held the other roles, and in a form-filling room closes the form for  filling. Action 1 resumes a filling that was stopped, clearing that record. Action 3 puts the form back into  editing, closing it for filling and remembering the version it was edited from. The file has to be a PDF form  lying in a room. Starting needs the right to start the filling, which the room admin and a member with  content-creator rights have, while stopping a filling that somebody else started belongs to room managers  alone, so a content creator is refused with 403 there. The call is mutating; the state that resulted is read  with `GET api/2.0/files/file/{fileId}/formroles`.
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
     - parameter fileId: (path) The form the action applies to. Send the same value as the `formId` of the request body, which is the one the handler reads. 
     - parameter manageFormFillingDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func manageFormFillingWithRequestBuilder(fileId: String, manageFormFillingDto: ManageFormFillingDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/manageformfilling"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: manageFormFillingDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the editor configuration
     
     See also:
     REST API Reference for openEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
     - parameter fileId: (path) The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`.      - parameter version: (query) Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file. (optional)     - parameter view: (query) Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow. (optional)     - parameter editorType: (query) Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page. (optional)     - parameter edit: (query) Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling. (optional)     - parameter fill: (query) Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConfigurationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func openEditFile(fileId: Int, version: Int? = nil, view: Bool? = nil, editorType: EditorType? = nil, edit: Bool? = nil, fill: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConfigurationWrapper {
        return try await openEditFileWithRequestBuilder(fileId: fileId, version: version, view: view, editorType: editorType, edit: edit, fill: fill, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the editor configuration
     
     See also:
     REST API Reference for openEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
     
     - GET /api/2.0/files/file/{fileId}/openedit
     - Builds everything an editor client needs to open the file: the document descriptor with its download address,  title, type and document key, the editor configuration with the mode, the caller's permissions, the user and  the customization, the callback the editors report back to, and the signature token the document service  validates. `version` opens one entry of the file history and requires access to that history; left out, the  current revision is opened. `view`, `edit` and `fill` say what the client intends to do, and `editorType`  picks the desktop, mobile or embedded layout. For a PDF form the room decides the outcome and may overrule the  request: a form-filling room, a virtual data room, a public room and a user folder each produce their own  mode, and a form opened from the templates folder is read-only and, outside the mobile layout, framed as  embedded. When the portal is over its storage quota the configuration comes back read-only with the exceeded  scope named. In a private room the caller's encryption keys are added to the editor configuration. Payment is  not required and an anonymous caller opens through an external link.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`. 
     - parameter version: (query) Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file. (optional)
     - parameter view: (query) Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow. (optional)
     - parameter editorType: (query) Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page. (optional)
     - parameter edit: (query) Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling. (optional)
     - parameter fill: (query) Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConfigurationWrapper> 
     */
    open class func openEditFileWithRequestBuilder(fileId: Int, version: Int? = nil, view: Bool? = nil, editorType: EditorType? = nil, edit: Bool? = nil, fill: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConfigurationWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/openedit"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "view": (wrappedValue: view?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "editorType": (wrappedValue: editorType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "edit": (wrappedValue: edit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "fill": (wrappedValue: fill?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConfigurationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the editor configuration (third-party storage)
     
     See also:
     REST API Reference for openEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
     - parameter fileId: (path) The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`.      - parameter version: (query) Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file. (optional)     - parameter view: (query) Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow. (optional)     - parameter editorType: (query) Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page. (optional)     - parameter edit: (query) Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling. (optional)     - parameter fill: (query) Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyConfigurationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func openEditFile(fileId: String, version: Int? = nil, view: Bool? = nil, editorType: EditorType? = nil, edit: Bool? = nil, fill: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyConfigurationWrapper {
        return try await openEditFileWithRequestBuilder(fileId: fileId, version: version, view: view, editorType: editorType, edit: edit, fill: fill, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the editor configuration (third-party storage)
     
     See also:
     REST API Reference for openEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
     
     - GET /api/2.0/files/file/{fileId}/openedit
     - Builds everything an editor client needs to open the file: the document descriptor with its download address,  title, type and document key, the editor configuration with the mode, the caller's permissions, the user and  the customization, the callback the editors report back to, and the signature token the document service  validates. `version` opens one entry of the file history and requires access to that history; left out, the  current revision is opened. `view`, `edit` and `fill` say what the client intends to do, and `editorType`  picks the desktop, mobile or embedded layout. For a PDF form the room decides the outcome and may overrule the  request: a form-filling room, a virtual data room, a public room and a user folder each produce their own  mode, and a form opened from the templates folder is read-only and, outside the mobile layout, framed as  embedded. When the portal is over its storage quota the configuration comes back read-only with the exceeded  scope named. In a private room the caller's encryption keys are added to the editor configuration. Payment is  not required and an anonymous caller opens through an external link.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`. 
     - parameter version: (query) Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file. (optional)
     - parameter view: (query) Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow. (optional)
     - parameter editorType: (query) Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page. (optional)
     - parameter edit: (query) Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling. (optional)
     - parameter fill: (query) Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyConfigurationWrapper> 
     */
    open class func openEditFileWithRequestBuilder(fileId: String, version: Int? = nil, view: Bool? = nil, editorType: EditorType? = nil, edit: Bool? = nil, fill: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyConfigurationWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/openedit"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "view": (wrappedValue: view?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "editorType": (wrappedValue: editorType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "edit": (wrappedValue: edit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "fill": (wrappedValue: fill?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyConfigurationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Restore a file version
     
     See also:
     REST API Reference for restoreFileVersion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
     - parameter fileId: (path) The file whose version is restored.      - parameter version: (query) The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one. (optional)     - parameter url: (query) The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restoreFileVersion(fileId: Int, version: Int? = nil, url: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryArrayWrapper {
        return try await restoreFileVersionWithRequestBuilder(fileId: fileId, version: version, url: url, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Restore a file version
     
     See also:
     REST API Reference for restoreFileVersion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
     
     - POST /api/2.0/files/file/{fileId}/restoreversion
     - Brings an earlier version of a file back and answers with the editing revisions of the file after the restore.  Nothing is overwritten: the content of the chosen version is stored again as a new version on top of the  history, carrying a comment that says which version it was reverted to, so the intervening versions stay  readable. `url` changes the source - with it the content is fetched from that address, which is how the  document service returns a document with a set of changes rolled back, and the new version records that  instead. Any links that pointed at drafts of the file are dropped, and the file is marked as new for the other  people who can read it. `version` has to name an existing version and is refused with 400 when it is missing  or already the current one. The caller needs the right to edit the history of the file and is otherwise  refused with 403, an anonymous caller included. The call is mutating and not idempotent. A locked file, one in  Trash, one being edited, an encrypted one and one kept in a connected third-party storage are all refused.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file whose version is restored. 
     - parameter version: (query) The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one. (optional)
     - parameter url: (query) The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryArrayWrapper> 
     */
    open class func restoreFileVersionWithRequestBuilder(fileId: Int, version: Int? = nil, url: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/restoreversion"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "url": (wrappedValue: url?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EditHistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Restore a file version (third-party storage)
     
     See also:
     REST API Reference for restoreFileVersion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
     - parameter fileId: (path) The file whose version is restored.      - parameter version: (query) The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one. (optional)     - parameter url: (query) The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restoreFileVersion(fileId: String, version: Int? = nil, url: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryArrayWrapper {
        return try await restoreFileVersionWithRequestBuilder(fileId: fileId, version: version, url: url, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Restore a file version (third-party storage)
     
     See also:
     REST API Reference for restoreFileVersion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
     
     - POST /api/2.0/files/file/{fileId}/restoreversion
     - Brings an earlier version of a file back and answers with the editing revisions of the file after the restore.  Nothing is overwritten: the content of the chosen version is stored again as a new version on top of the  history, carrying a comment that says which version it was reverted to, so the intervening versions stay  readable. `url` changes the source - with it the content is fetched from that address, which is how the  document service returns a document with a set of changes rolled back, and the new version records that  instead. Any links that pointed at drafts of the file are dropped, and the file is marked as new for the other  people who can read it. `version` has to name an existing version and is refused with 400 when it is missing  or already the current one. The caller needs the right to edit the history of the file and is otherwise  refused with 403, an anonymous caller included. The call is mutating and not idempotent. A locked file, one in  Trash, one being edited, an encrypted one and one kept in a connected third-party storage are all refused.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file whose version is restored. 
     - parameter version: (query) The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one. (optional)
     - parameter url: (query) The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryArrayWrapper> 
     */
    open class func restoreFileVersionWithRequestBuilder(fileId: String, version: Int? = nil, url: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/restoreversion"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "url": (wrappedValue: url?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EditHistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save edited file content
     
     See also:
     REST API Reference for saveEditingFileFromForm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
     - parameter fileId: (path) The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it.      - parameter downloadUri: (query) An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given. (optional)     - parameter fileExtension: (form) The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed. (optional)     - parameter file: (form) The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file. (optional)     - parameter forcesave: (form) Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveEditingFileFromForm(fileId: Int, downloadUri: String? = nil, fileExtension: String? = nil, file: URL? = nil, forcesave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await saveEditingFileFromFormWithRequestBuilder(fileId: fileId, downloadUri: downloadUri, fileExtension: fileExtension, file: file, forcesave: forcesave, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save edited file content
     
     See also:
     REST API Reference for saveEditingFileFromForm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
     
     - PUT /api/2.0/files/file/{fileId}/saveediting
     - Replaces the content of an existing file with an edited copy and answers with the file as it now stands. The  content is the `File` part of a `multipart/form-data` body, and when no such part is sent the raw request body  is saved instead, so an empty body empties the file. The `DownloadUri` query parameter does not supply content  here; it is only read for the extension when `FileExtension` is empty. `fileExtension` names the format of the  content being sent, and when it differs from the stored format the portal converts the content, or keeps it  under a renamed copy when a third-party storage cannot convert it. The caller needs edit access to the file.  The call is mutating and not idempotent: an ordinary call adds a version to the file history, while  `forcesave=true` records an editor autosave, which overwrites the previous autosave revision instead of adding  another version and leaves a running editing session in place. It is refused with 403 when the file is locked,  lies in Trash, or is open in an editing session started by somebody else, and an unknown file id is reported  as missing. For content too large to post in one request use `POST api/2.0/files/file/{fileId}/edit_session`.
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
     - parameter fileId: (path) The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it. 
     - parameter downloadUri: (query) An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given. (optional)
     - parameter fileExtension: (form) The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed. (optional)
     - parameter file: (form) The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file. (optional)
     - parameter forcesave: (form) Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func saveEditingFileFromFormWithRequestBuilder(fileId: Int, downloadUri: String? = nil, fileExtension: String? = nil, file: URL? = nil, forcesave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/saveediting"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "FileExtension": fileExtension?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Forcesave": forcesave?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "DownloadUri": (wrappedValue: downloadUri?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save edited file content (third-party storage)
     
     See also:
     REST API Reference for saveEditingFileFromForm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
     - parameter fileId: (path) The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it.      - parameter downloadUri: (query) An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given. (optional)     - parameter fileExtension: (form) The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed. (optional)     - parameter file: (form) The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file. (optional)     - parameter forcesave: (form) Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveEditingFileFromForm(fileId: String, downloadUri: String? = nil, fileExtension: String? = nil, file: URL? = nil, forcesave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await saveEditingFileFromFormWithRequestBuilder(fileId: fileId, downloadUri: downloadUri, fileExtension: fileExtension, file: file, forcesave: forcesave, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save edited file content (third-party storage)
     
     See also:
     REST API Reference for saveEditingFileFromForm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
     
     - PUT /api/2.0/files/file/{fileId}/saveediting
     - Replaces the content of an existing file with an edited copy and answers with the file as it now stands. The  content is the `File` part of a `multipart/form-data` body, and when no such part is sent the raw request body  is saved instead, so an empty body empties the file. The `DownloadUri` query parameter does not supply content  here; it is only read for the extension when `FileExtension` is empty. `fileExtension` names the format of the  content being sent, and when it differs from the stored format the portal converts the content, or keeps it  under a renamed copy when a third-party storage cannot convert it. The caller needs edit access to the file.  The call is mutating and not idempotent: an ordinary call adds a version to the file history, while  `forcesave=true` records an editor autosave, which overwrites the previous autosave revision instead of adding  another version and leaves a running editing session in place. It is refused with 403 when the file is locked,  lies in Trash, or is open in an editing session started by somebody else, and an unknown file id is reported  as missing. For content too large to post in one request use `POST api/2.0/files/file/{fileId}/edit_session`.
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
     - parameter fileId: (path) The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it. 
     - parameter downloadUri: (query) An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given. (optional)
     - parameter fileExtension: (form) The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed. (optional)
     - parameter file: (form) The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file. (optional)
     - parameter forcesave: (form) Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func saveEditingFileFromFormWithRequestBuilder(fileId: String, downloadUri: String? = nil, fileExtension: String? = nil, file: URL? = nil, forcesave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/saveediting"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "FileExtension": fileExtension?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Forcesave": forcesave?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "DownloadUri": (wrappedValue: downloadUri?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save a file as PDF
     
     See also:
     REST API Reference for saveFileAsPdf Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
     - parameter id: (path) The file to convert; it is left untouched.      - parameter saveAsPdf: (body) The destination folder and the name of the PDF. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveFileAsPdf(id: Int, saveAsPdf: SaveAsPdf, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await saveFileAsPdfWithRequestBuilder(id: id, saveAsPdf: saveAsPdf, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save a file as PDF
     
     See also:
     REST API Reference for saveFileAsPdf Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
     
     - POST /api/2.0/files/file/{id}/saveaspdf
     - Converts a file into a PDF, stores that PDF as a new file in the folder named in the body, and answers with  the file that was created. The source is left untouched, so the two files then live side by side. `title`  names the result without an extension - the `.pdf` extension is added to it - and an empty title reuses the  name of the source with its extension replaced. The conversion is done by the document service while the  request waits, so the call takes as long as the document needs and answers with the finished file rather than  with a queue entry. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused; a source file or a destination folder that does not exist is  answered with 404. The call is mutating and not idempotent: each call adds another PDF, its title made unique  when one of that name is already there. The result is marked as new for the room, and for a form the portal  recognises it is stored as a PDF form. To convert in place instead use  `PUT api/2.0/files/file/{fileId}/checkconversion`.
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
     - parameter id: (path) The file to convert; it is left untouched. 
     - parameter saveAsPdf: (body) The destination folder and the name of the PDF. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func saveFileAsPdfWithRequestBuilder(id: Int, saveAsPdf: SaveAsPdf, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/saveaspdf"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: saveAsPdf, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save a file as PDF (third-party storage)
     
     See also:
     REST API Reference for saveFileAsPdf Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
     - parameter id: (path) The file to convert; it is left untouched.      - parameter thirdPartySaveAsPdf: (body) The destination folder and the name of the PDF. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveFileAsPdf(id: String, thirdPartySaveAsPdf: ThirdPartySaveAsPdf, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await saveFileAsPdfWithRequestBuilder(id: id, thirdPartySaveAsPdf: thirdPartySaveAsPdf, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save a file as PDF (third-party storage)
     
     See also:
     REST API Reference for saveFileAsPdf Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
     
     - POST /api/2.0/files/file/{id}/saveaspdf
     - Converts a file into a PDF, stores that PDF as a new file in the folder named in the body, and answers with  the file that was created. The source is left untouched, so the two files then live side by side. `title`  names the result without an extension - the `.pdf` extension is added to it - and an empty title reuses the  name of the source with its extension replaced. The conversion is done by the document service while the  request waits, so the call takes as long as the document needs and answers with the finished file rather than  with a queue entry. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused; a source file or a destination folder that does not exist is  answered with 404. The call is mutating and not idempotent: each call adds another PDF, its title made unique  when one of that name is already there. The result is marked as new for the room, and for a form the portal  recognises it is stored as a PDF form. To convert in place instead use  `PUT api/2.0/files/file/{fileId}/checkconversion`.
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
     - parameter id: (path) The file to convert; it is left untouched. 
     - parameter thirdPartySaveAsPdf: (body) The destination folder and the name of the PDF. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func saveFileAsPdfWithRequestBuilder(id: String, thirdPartySaveAsPdf: ThirdPartySaveAsPdf, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/saveaspdf"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: thirdPartySaveAsPdf, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save form role mapping
     
     See also:
     REST API Reference for saveFormRoleMapping Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/
     - parameter fileId: (path) The form the role mapping belongs to. Send the same value as the `formId` of the request body, which is the one the handler reads.      - parameter saveFormRoleMappingDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveFormRoleMapping(fileId: String, saveFormRoleMappingDto: SaveFormRoleMappingDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await saveFormRoleMappingWithRequestBuilder(fileId: fileId, saveFormRoleMappingDto: saveFormRoleMappingDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save form role mapping
     
     See also:
     REST API Reference for saveFormRoleMapping Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/
     
     - POST /api/2.0/files/file/{fileId}/formrolemapping
     - Assigns the roles of a PDF form to the people who are to fill them in, and starts the filling: the form is  marked as being filled out, the account that called is recorded as the one who started it, everybody named in  a role is notified, and the form becomes visible to the members whose room rights are limited to filling  forms. Each role carries its name, the account that takes it and the sequence number that decides the turn, so  the same sequence means the roles may be filled in parallel and different ones make a queue. Sending an empty  role list resets the filling instead, dropping the assignment altogether. The whole set is replaced on every  call, so the call is idempotent for a given set of roles but not additive. The file has to be a PDF form lying  in a room; the caller needs the right to start the filling of that form, which the room admin and a member  with content-creator rights have, and is otherwise refused with 403. Read back what was stored with  `GET api/2.0/files/file/{fileId}/formroles`.
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
     - parameter fileId: (path) The form the role mapping belongs to. Send the same value as the `formId` of the request body, which is the one the handler reads. 
     - parameter saveFormRoleMappingDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func saveFormRoleMappingWithRequestBuilder(fileId: String, saveFormRoleMappingDto: SaveFormRoleMappingDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/formrolemapping"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: saveFormRoleMappingDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the Custom Filter editing mode
     
     See also:
     REST API Reference for setCustomFilterTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
     - parameter fileId: (path) The spreadsheet whose Custom Filter mode is switched.      - parameter customFilterParameters: (body) The Custom Filter state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setCustomFilterTag(fileId: Int, customFilterParameters: CustomFilterParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await setCustomFilterTagWithRequestBuilder(fileId: fileId, customFilterParameters: customFilterParameters, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the Custom Filter editing mode
     
     See also:
     REST API Reference for setCustomFilterTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
     
     - PUT /api/2.0/files/file/{fileId}/customfilter
     - Turns the Custom Filter editing mode of a spreadsheet on or off and answers with the file as it now stands. In  that mode the sorting and filtering one person applies to the sheet is visible to that person alone, so that  several people can work on the same data without moving the rows under each other; with the mode off,  filtering is shared again, as everywhere else. Turning it on also drops everybody else out of the running  editing session, the caller excepted, because the mode has to be established before the sheet is opened. Only  formats that support the mode are accepted; anything else is rejected as an invalid request. The caller needs  the right to use the mode in the room, which the room admin and a DocSpace admin acting as room manager have;  read-only access, a member without access to the room and an anonymous caller are refused. Once the mode has  been switched on by one person, only that person, a room manager or a DocSpace admin can switch it off again.  The call is mutating and, called twice with the same value, changes nothing the second time.
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
     - parameter fileId: (path) The spreadsheet whose Custom Filter mode is switched. 
     - parameter customFilterParameters: (body) The Custom Filter state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func setCustomFilterTagWithRequestBuilder(fileId: Int, customFilterParameters: CustomFilterParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/customfilter"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customFilterParameters, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the Custom Filter editing mode (third-party storage)
     
     See also:
     REST API Reference for setCustomFilterTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
     - parameter fileId: (path) The spreadsheet whose Custom Filter mode is switched.      - parameter customFilterParameters: (body) The Custom Filter state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setCustomFilterTag(fileId: String, customFilterParameters: CustomFilterParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await setCustomFilterTagWithRequestBuilder(fileId: fileId, customFilterParameters: customFilterParameters, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the Custom Filter editing mode (third-party storage)
     
     See also:
     REST API Reference for setCustomFilterTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
     
     - PUT /api/2.0/files/file/{fileId}/customfilter
     - Turns the Custom Filter editing mode of a spreadsheet on or off and answers with the file as it now stands. In  that mode the sorting and filtering one person applies to the sheet is visible to that person alone, so that  several people can work on the same data without moving the rows under each other; with the mode off,  filtering is shared again, as everywhere else. Turning it on also drops everybody else out of the running  editing session, the caller excepted, because the mode has to be established before the sheet is opened. Only  formats that support the mode are accepted; anything else is rejected as an invalid request. The caller needs  the right to use the mode in the room, which the room admin and a DocSpace admin acting as room manager have;  read-only access, a member without access to the room and an anonymous caller are refused. Once the mode has  been switched on by one person, only that person, a room manager or a DocSpace admin can switch it off again.  The call is mutating and, called twice with the same value, changes nothing the second time.
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
     - parameter fileId: (path) The spreadsheet whose Custom Filter mode is switched. 
     - parameter customFilterParameters: (body) The Custom Filter state to reach. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func setCustomFilterTagWithRequestBuilder(fileId: String, customFilterParameters: CustomFilterParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/customfilter"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customFilterParameters, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set file encryption information
     
     See also:
     REST API Reference for setEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-encryption-info/
     - parameter fileId: (path) The file the keys are issued for; it has to lie in a private room.      - parameter accessRequestKeyDto: (body) One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setEncryptionInfo(fileId: Int, accessRequestKeyDto: [AccessRequestKeyDto]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await setEncryptionInfoWithRequestBuilder(fileId: fileId, accessRequestKeyDto: accessRequestKeyDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set file encryption information
     
     See also:
     REST API Reference for setEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-encryption-info/
     
     - PUT /api/2.0/files/{fileId}/access
     - Issues the file keys that let the named people open one file of an end-to-end encrypted private room. Each  entry of the body names the account the key is for, the public key it was encrypted with and the encrypted key  itself, so the plain key never reaches the portal: the client encrypts it once per recipient with the public  key that `GET api/2.0/files/file/{fileId}/publickeys` reports for them. The keys of the accounts named in the  request are replaced, and the keys of everybody else are left as they are, which makes the call idempotent for  a given set of recipients while remaining a mutating one; sending no entry for a person does not revoke that  person's key. The file has to lie in a private room, and every account named in the request has to have read  access to it. The caller needs read access to the file and the right to create content in that room, which its  members with editing rights and its admins have; a caller without those rights, a file outside a private room  and a file that does not exist are all refused with 403. Read the result back with  `GET api/2.0/files/{fileId}/access`.
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
     - parameter fileId: (path) The file the keys are issued for; it has to lie in a private room. 
     - parameter accessRequestKeyDto: (body) One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func setEncryptionInfoWithRequestBuilder(fileId: Int, accessRequestKeyDto: [AccessRequestKeyDto]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/{fileId}/access"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: accessRequestKeyDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set file encryption information (third-party storage)
     
     See also:
     REST API Reference for setEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-encryption-info/
     - parameter fileId: (path) The file the keys are issued for; it has to lie in a private room.      - parameter accessRequestKeyDto: (body) One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setEncryptionInfo(fileId: String, accessRequestKeyDto: [AccessRequestKeyDto]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await setEncryptionInfoWithRequestBuilder(fileId: fileId, accessRequestKeyDto: accessRequestKeyDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set file encryption information (third-party storage)
     
     See also:
     REST API Reference for setEncryptionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-encryption-info/
     
     - PUT /api/2.0/files/{fileId}/access
     - Issues the file keys that let the named people open one file of an end-to-end encrypted private room. Each  entry of the body names the account the key is for, the public key it was encrypted with and the encrypted key  itself, so the plain key never reaches the portal: the client encrypts it once per recipient with the public  key that `GET api/2.0/files/file/{fileId}/publickeys` reports for them. The keys of the accounts named in the  request are replaced, and the keys of everybody else are left as they are, which makes the call idempotent for  a given set of recipients while remaining a mutating one; sending no entry for a person does not revoke that  person's key. The file has to lie in a private room, and every account named in the request has to have read  access to it. The caller needs read access to the file and the right to create content in that room, which its  members with editing rights and its admins have; a caller without those rights, a file outside a private room  and a file that does not exist are all refused with 403. Read the result back with  `GET api/2.0/files/{fileId}/access`.
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
     - parameter fileId: (path) The file the keys are issued for; it has to lie in a private room. 
     - parameter accessRequestKeyDto: (body) One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func setEncryptionInfoWithRequestBuilder(fileId: String, accessRequestKeyDto: [AccessRequestKeyDto]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/{fileId}/access"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: accessRequestKeyDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set a file external link
     
     See also:
     REST API Reference for setFileExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
     - parameter id: (path) The file the link points at.      - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileExternalLink(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setFileExternalLinkWithRequestBuilder(id: id, fileLinkRequest: fileLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set a file external link
     
     See also:
     REST API Reference for setFileExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
     
     - PUT /api/2.0/files/file/{id}/links
     - Creates an external link to a file, or changes or revokes an existing one, and answers with the link as it now  stands. `linkId` decides which: an identifier that is not yet in use, the empty one included, creates a link,  while the identifier of an existing link rewrites it, so the whole set of parameters is applied every time and  a field left out is reset rather than kept. `access` carries the rights the link grants, and `access` set to  the value that denies everything revokes the link instead - the answer is then empty, and a revoked primary  link is not recreated by a later read. `title` names the link for the people who manage it, `expirationDate`  limits its lifetime and is refused when it lies more than a few years ahead, `password` asks visitors for a  secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members alone, and  `primary=true` makes it the primary link of the file. The caller needs the right to share the file and is  otherwise refused, an unknown file being answered as not found. The call is mutating.
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
     - parameter id: (path) The file the link points at. 
     - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setFileExternalLinkWithRequestBuilder(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fileLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set a file external link (third-party storage)
     
     See also:
     REST API Reference for setFileExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
     - parameter id: (path) The file the link points at.      - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileExternalLink(id: String, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setFileExternalLinkWithRequestBuilder(id: id, fileLinkRequest: fileLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set a file external link (third-party storage)
     
     See also:
     REST API Reference for setFileExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
     
     - PUT /api/2.0/files/file/{id}/links
     - Creates an external link to a file, or changes or revokes an existing one, and answers with the link as it now  stands. `linkId` decides which: an identifier that is not yet in use, the empty one included, creates a link,  while the identifier of an existing link rewrites it, so the whole set of parameters is applied every time and  a field left out is reset rather than kept. `access` carries the rights the link grants, and `access` set to  the value that denies everything revokes the link instead - the answer is then empty, and a revoked primary  link is not recreated by a later read. `title` names the link for the people who manage it, `expirationDate`  limits its lifetime and is refused when it lies more than a few years ahead, `password` asks visitors for a  secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members alone, and  `primary=true` makes it the primary link of the file. The caller needs the right to share the file and is  otherwise refused, an unknown file being answered as not found. The call is mutating.
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
     - parameter id: (path) The file the link points at. 
     - parameter fileLinkRequest: (body) The settings of the link. They are applied in full, so a field left out is reset rather than kept. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setFileExternalLinkWithRequestBuilder(id: String, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fileLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set file order
     
     See also:
     REST API Reference for setFileOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
     - parameter fileId: (path) The file to move.      - parameter orderRequestDto: (body) The position the file is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileOrder(fileId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await setFileOrderWithRequestBuilder(fileId: fileId, orderRequestDto: orderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set file order
     
     See also:
     REST API Reference for setFileOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
     
     - PUT /api/2.0/files/{fileId}/order
     - Puts a file at a given position inside its folder and answers with the file, its `order` reporting where it  now stands. Positions count from 1, and the file that held the wanted position, together with everything after  it, is shifted to make room, so the numbering of a folder stays without gaps; a position beyond the end of the  folder places the file last. The value may also be sent as a dotted path, as in 1.2.3, in which case only  its last segment is read. Ordering is what the manual sorting of a room is built on, and it only means  something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The caller needs  edit access to the file, which room managers, content creators and members with editing rights have; a member  acting on somebody else's file, a guest and an anonymous caller are refused with 403, and an unknown file is  answered with 404. The call is mutating and idempotent. To move several items in one go use  `PUT api/2.0/files/order`.
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
     - parameter fileId: (path) The file to move. 
     - parameter orderRequestDto: (body) The position the file is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func setFileOrderWithRequestBuilder(fileId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/{fileId}/order"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: orderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set file order (third-party storage)
     
     See also:
     REST API Reference for setFileOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
     - parameter fileId: (path) The file to move.      - parameter orderRequestDto: (body) The position the file is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileOrder(fileId: String, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await setFileOrderWithRequestBuilder(fileId: fileId, orderRequestDto: orderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set file order (third-party storage)
     
     See also:
     REST API Reference for setFileOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
     
     - PUT /api/2.0/files/{fileId}/order
     - Puts a file at a given position inside its folder and answers with the file, its `order` reporting where it  now stands. Positions count from 1, and the file that held the wanted position, together with everything after  it, is shifted to make room, so the numbering of a folder stays without gaps; a position beyond the end of the  folder places the file last. The value may also be sent as a dotted path, as in 1.2.3, in which case only  its last segment is read. Ordering is what the manual sorting of a room is built on, and it only means  something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The caller needs  edit access to the file, which room managers, content creators and members with editing rights have; a member  acting on somebody else's file, a guest and an anonymous caller are refused with 403, and an unknown file is  answered with 404. The call is mutating and idempotent. To move several items in one go use  `PUT api/2.0/files/order`.
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
     - parameter fileId: (path) The file to move. 
     - parameter orderRequestDto: (body) The position the file is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func setFileOrderWithRequestBuilder(fileId: String, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/{fileId}/order"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: orderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set order of files
     
     See also:
     REST API Reference for setFilesOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/
     - parameter ordersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFilesOrder(ordersRequestDto: OrdersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryArrayWrapper {
        return try await setFilesOrderWithRequestBuilder(ordersRequestDto: ordersRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set order of files
     
     See also:
     REST API Reference for setFilesOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/
     
     - PUT /api/2.0/files/order
     - Puts several files and folders at given positions in one go and answers with the entries that were moved, each  with the position it now holds. Every item of `items` names an entry by its identifier and its kind - a file  or a folder - and the position it is to take, counting from 1; a position may also be sent as a dotted path,  as in 1.2.3, of which only the last segment is read. The items are applied one after another in the order  they are sent, and each of them shifts its neighbours, so the result depends on that order; the whole request  is not one transaction, and a failure in the middle leaves the items before it moved. Every item has to lie in  a room the caller may administer, which the room admin and a DocSpace admin acting as room manager do:  read-only access, a guest and an anonymous caller are refused, and an identifier that matches nothing is  answered as not found. Ordering only means something in rooms whose contents are indexed. The call is  mutating. For a single file use `PUT api/2.0/files/{fileId}/order`.
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
     - parameter ordersRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryArrayWrapper> 
     */
    open class func setFilesOrderWithRequestBuilder(ordersRequestDto: OrdersRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryArrayWrapper> {
        let localVariablePath = "/api/2.0/files/order"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ordersRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Open an editing session
     
     See also:
     REST API Reference for startEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
     - parameter fileId: (path) The file to open the editing session on. The caller needs edit access to it.      - parameter startEdit: (body) The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startEditFile(fileId: Int, startEdit: StartEdit, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await startEditFileWithRequestBuilder(fileId: fileId, startEdit: startEdit, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Open an editing session
     
     See also:
     REST API Reference for startEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
     
     - POST /api/2.0/files/file/{fileId}/startedit
     - Opens an editing session on the file and answers with the document key that identifies it, the value an editor  client passes to the document service in order to join the co-editing session for that exact revision. The  file is marked as being edited for as long as the session lasts, which keeps it from being deleted or moved.  With `editingAlone=false` the portal builds the editor configuration, requires write mode plus at least one of  the edit, review, comment, form-filling or filter permissions, and asks the document service to start tracking  the document. With `editingAlone=true` the caller claims the file for itself, and the call is refused with 403  when anybody is already editing it. The caller needs edit access: a member with read access, a guest and an  anonymous caller whose external link does not grant editing are all refused. The call is mutating and not  idempotent. Keep the session alive with `GET api/2.0/files/file/{fileId}/trackeditfile`, and end it by calling  that operation with `isFinish=true`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file to open the editing session on. The caller needs edit access to it. 
     - parameter startEdit: (body) The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func startEditFileWithRequestBuilder(fileId: Int, startEdit: StartEdit, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/startedit"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startEdit, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Open an editing session (third-party storage)
     
     See also:
     REST API Reference for startEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
     - parameter fileId: (path) The file to open the editing session on. The caller needs edit access to it.      - parameter startEdit: (body) The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startEditFile(fileId: String, startEdit: StartEdit, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await startEditFileWithRequestBuilder(fileId: fileId, startEdit: startEdit, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Open an editing session (third-party storage)
     
     See also:
     REST API Reference for startEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
     
     - POST /api/2.0/files/file/{fileId}/startedit
     - Opens an editing session on the file and answers with the document key that identifies it, the value an editor  client passes to the document service in order to join the co-editing session for that exact revision. The  file is marked as being edited for as long as the session lasts, which keeps it from being deleted or moved.  With `editingAlone=false` the portal builds the editor configuration, requires write mode plus at least one of  the edit, review, comment, form-filling or filter permissions, and asks the document service to start tracking  the document. With `editingAlone=true` the caller claims the file for itself, and the call is refused with 403  when anybody is already editing it. The caller needs edit access: a member with read access, a guest and an  anonymous caller whose external link does not grant editing are all refused. The call is mutating and not  idempotent. Keep the session alive with `GET api/2.0/files/file/{fileId}/trackeditfile`, and end it by calling  that operation with `isFinish=true`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file to open the editing session on. The caller needs edit access to it. 
     - parameter startEdit: (body) The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func startEditFileWithRequestBuilder(fileId: String, startEdit: StartEdit, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/startedit"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startEdit, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start filling a form
     
     See also:
     REST API Reference for startFillingFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
     - parameter fileId: (path) The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startFillingFile(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await startFillingFileWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start filling a form
     
     See also:
     REST API Reference for startFillingFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
     
     - PUT /api/2.0/files/file/{fileId}/startfilling
     - Marks a PDF form in a form-filling room as open for filling out and answers with the form file. The portal  stores the filling properties on it - the room it belongs to, its title, the account that started it and the  id it keeps as the original form - so that later submissions are collected against this form. The file has to  be a PDF whose parent folder is a form-filling room; anything else is answered unchanged and nothing is  stored. Access follows room membership rather than portal role: a member holding only form-filling access on  the room may not start filling, and a caller with no access to the room at all is refused with 403 unless they  can manage it, which the room owner, a room administrator and a DocSpace administrator can. The call is  mutating and safe to repeat, since a repeat rewrites the same properties. Once a form is started, the answers  submitted for it can be collected into a spreadsheet with `POST api/2.0/files/file/{fileId}/xlsx`.
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
     - parameter fileId: (path) The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func startFillingFileWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/startfilling"
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

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start filling a form (third-party storage)
     
     See also:
     REST API Reference for startFillingFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
     - parameter fileId: (path) The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startFillingFile(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await startFillingFileWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start filling a form (third-party storage)
     
     See also:
     REST API Reference for startFillingFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
     
     - PUT /api/2.0/files/file/{fileId}/startfilling
     - Marks a PDF form in a form-filling room as open for filling out and answers with the form file. The portal  stores the filling properties on it - the room it belongs to, its title, the account that started it and the  id it keeps as the original form - so that later submissions are collected against this form. The file has to  be a PDF whose parent folder is a form-filling room; anything else is answered unchanged and nothing is  stored. Access follows room membership rather than portal role: a member holding only form-filling access on  the room may not start filling, and a caller with no access to the room at all is refused with 403 unless they  can manage it, which the room owner, a room administrator and a DocSpace administrator can. The call is  mutating and safe to repeat, since a repeat rewrites the same properties. Once a form is started, the answers  submitted for it can be collected into a spreadsheet with `POST api/2.0/files/file/{fileId}/xlsx`.
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
     - parameter fileId: (path) The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func startFillingFileWithRequestBuilder(fileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/startfilling"
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the file favorite status
     
     See also:
     REST API Reference for toggleFileFavorite Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter favorite: (query) Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func toggleFileFavorite(fileId: Int, favorite: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await toggleFileFavoriteWithRequestBuilder(fileId: fileId, favorite: favorite, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the file favorite status
     
     See also:
     REST API Reference for toggleFileFavorite Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
     
     - GET /api/2.0/files/favorites/{fileId}
     - Sets or clears the favorite mark of one file for the calling account: `true` adds the file to the favorites,  `false` takes it out again. The call changes stored state even though it is a GET, so it is not one to issue  speculatively; repeating it with the same value changes nothing further. The mark is personal, no other member  sees it, and the file stays where it is stored. Read access is enough, so a room member with view-only rights  and a guest may call it. The answer only echoes the value that was asked for: an identifier that resolves to  nothing and a file the caller cannot read are skipped without a word, an encrypted file of a private room is  never marked, and the requested value still comes back, so read the outcome from  `GET api/2.0/files/@favorites` instead. A file moved to the Trash keeps its mark and is left out of that  listing until it is restored. To mark several entries at once, or to mark folders, use  `POST api/2.0/files/favorites` and `DELETE api/2.0/files/favorites`.
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
     - parameter favorite: (query) Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func toggleFileFavoriteWithRequestBuilder(fileId: Int, favorite: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/favorites/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "favorite": (wrappedValue: favorite?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the file favorite status (third-party storage)
     
     See also:
     REST API Reference for toggleFileFavorite Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
     - parameter fileId: (path) The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.      - parameter favorite: (query) Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func toggleFileFavorite(fileId: String, favorite: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await toggleFileFavoriteWithRequestBuilder(fileId: fileId, favorite: favorite, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the file favorite status (third-party storage)
     
     See also:
     REST API Reference for toggleFileFavorite Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
     
     - GET /api/2.0/files/favorites/{fileId}
     - Sets or clears the favorite mark of one file for the calling account: `true` adds the file to the favorites,  `false` takes it out again. The call changes stored state even though it is a GET, so it is not one to issue  speculatively; repeating it with the same value changes nothing further. The mark is personal, no other member  sees it, and the file stays where it is stored. Read access is enough, so a room member with view-only rights  and a guest may call it. The answer only echoes the value that was asked for: an identifier that resolves to  nothing and a file the caller cannot read are skipped without a word, an encrypted file of a private room is  never marked, and the requested value still comes back, so read the outcome from  `GET api/2.0/files/@favorites` instead. A file moved to the Trash keeps its mark and is left out of that  listing until it is restored. To mark several entries at once, or to mark folders, use  `POST api/2.0/files/favorites` and `DELETE api/2.0/files/favorites`.
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
     - parameter favorite: (query) Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func toggleFileFavoriteWithRequestBuilder(fileId: String, favorite: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/favorites/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "favorite": (wrappedValue: favorite?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Track an editing session
     
     See also:
     REST API Reference for trackEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
     - parameter fileId: (path) The file whose editing session is being tracked.      - parameter tabId: (query) The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor. (optional)     - parameter docKeyForTrack: (query) The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused. (optional)     - parameter isFinish: (query) Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ItemKeyValuePairBooleanStringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func trackEditFile(fileId: Int, tabId: UUID? = nil, docKeyForTrack: String? = nil, isFinish: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ItemKeyValuePairBooleanStringWrapper {
        return try await trackEditFileWithRequestBuilder(fileId: fileId, tabId: tabId, docKeyForTrack: docKeyForTrack, isFinish: isFinish, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Track an editing session
     
     See also:
     REST API Reference for trackEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
     
     - GET /api/2.0/files/file/{fileId}/trackeditfile
     - Keeps an editing session on the file alive, or ends it; an editor client calls it repeatedly while a document  is open. `docKeyForTrack` has to be the document key of the file as it currently stands, the value  `POST api/2.0/files/file/{fileId}/startedit` returned, and a key matching neither the current revision nor the  one being edited is refused with 403. `tabId` names the client tab that holds the session, so several tabs and  several users are tracked on one file independently. Refreshing an entry requires one of the editing rights on  the file - editing, reviewing, commenting, filling or filter editing - so a reader is refused. With  `isFinish=false` the entry is refreshed and the file stays marked as being edited; with `isFinish=true` the  entry for that tab is dropped and the other clients are told that editing has stopped. The call changes the  tracking state and never the document, and repeating it is safe. It answers `key` true with an empty `value`  whenever it succeeds, so a failure arrives as an error rather than as a false key. An anonymous caller is  accepted only through an external share link.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file whose editing session is being tracked. 
     - parameter tabId: (query) The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor. (optional)
     - parameter docKeyForTrack: (query) The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused. (optional)
     - parameter isFinish: (query) Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ItemKeyValuePairBooleanStringWrapper> 
     */
    open class func trackEditFileWithRequestBuilder(fileId: Int, tabId: UUID? = nil, docKeyForTrack: String? = nil, isFinish: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ItemKeyValuePairBooleanStringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/trackeditfile"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tabId": (wrappedValue: tabId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "docKeyForTrack": (wrappedValue: docKeyForTrack?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isFinish": (wrappedValue: isFinish?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ItemKeyValuePairBooleanStringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Track an editing session (third-party storage)
     
     See also:
     REST API Reference for trackEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
     - parameter fileId: (path) The file whose editing session is being tracked.      - parameter tabId: (query) The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor. (optional)     - parameter docKeyForTrack: (query) The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused. (optional)     - parameter isFinish: (query) Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ItemKeyValuePairBooleanStringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func trackEditFile(fileId: String, tabId: UUID? = nil, docKeyForTrack: String? = nil, isFinish: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ItemKeyValuePairBooleanStringWrapper {
        return try await trackEditFileWithRequestBuilder(fileId: fileId, tabId: tabId, docKeyForTrack: docKeyForTrack, isFinish: isFinish, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Track an editing session (third-party storage)
     
     See also:
     REST API Reference for trackEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
     
     - GET /api/2.0/files/file/{fileId}/trackeditfile
     - Keeps an editing session on the file alive, or ends it; an editor client calls it repeatedly while a document  is open. `docKeyForTrack` has to be the document key of the file as it currently stands, the value  `POST api/2.0/files/file/{fileId}/startedit` returned, and a key matching neither the current revision nor the  one being edited is refused with 403. `tabId` names the client tab that holds the session, so several tabs and  several users are tracked on one file independently. Refreshing an entry requires one of the editing rights on  the file - editing, reviewing, commenting, filling or filter editing - so a reader is refused. With  `isFinish=false` the entry is refreshed and the file stays marked as being edited; with `isFinish=true` the  entry for that tab is dropped and the other clients are told that editing has stopped. The call changes the  tracking state and never the document, and repeating it is safe. It answers `key` true with an empty `value`  whenever it succeeds, so a failure arrives as an error rather than as a false key. An anonymous caller is  accepted only through an external share link.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file whose editing session is being tracked. 
     - parameter tabId: (query) The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor. (optional)
     - parameter docKeyForTrack: (query) The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused. (optional)
     - parameter isFinish: (query) Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ItemKeyValuePairBooleanStringWrapper> 
     */
    open class func trackEditFileWithRequestBuilder(fileId: String, tabId: UUID? = nil, docKeyForTrack: String? = nil, isFinish: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ItemKeyValuePairBooleanStringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/trackeditfile"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tabId": (wrappedValue: tabId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "docKeyForTrack": (wrappedValue: docKeyForTrack?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isFinish": (wrappedValue: isFinish?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ItemKeyValuePairBooleanStringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a file
     
     See also:
     REST API Reference for updateFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
     - parameter fileId: (path) The file to update.      - parameter updateFile: (body) The new title and the version to restore. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateFile(fileId: Int, updateFile: UpdateFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await updateFileWithRequestBuilder(fileId: fileId, updateFile: updateFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a file
     
     See also:
     REST API Reference for updateFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
     
     - PUT /api/2.0/files/file/{fileId}
     - Renames a file, restores one of its versions, or both at once, and answers with the file as it now stands. A  non-empty `title` renames the file, keeping the stored extension whatever the new title says, so a rename  cannot change the format; an empty or missing title leaves the name alone. A `lastVersion` above 0 restores  that version the way `POST api/2.0/files/file/{fileId}/restoreversion` does, storing its content again on top  of the history, while 0 or less leaves the versions untouched and answers with the file as it is - which makes  this operation a read of the file when both fields are left out. The caller needs edit access, and renaming  somebody else's file additionally needs room-manager rights: a member or room admin with plain editing access,  read-only access, a guest and a DocSpace admin who is not a member of the room are all refused with 403, while  a content creator may rename a file of their own. The call is mutating. Renaming marks the file as new for  everybody else who can read it.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file to update. 
     - parameter updateFile: (body) The new title and the version to restore. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func updateFileWithRequestBuilder(fileId: Int, updateFile: UpdateFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a file (third-party storage)
     
     See also:
     REST API Reference for updateFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
     - parameter fileId: (path) The file to update.      - parameter updateFile: (body) The new title and the version to restore. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateFile(fileId: String, updateFile: UpdateFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await updateFileWithRequestBuilder(fileId: fileId, updateFile: updateFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a file (third-party storage)
     
     See also:
     REST API Reference for updateFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
     
     - PUT /api/2.0/files/file/{fileId}
     - Renames a file, restores one of its versions, or both at once, and answers with the file as it now stands. A  non-empty `title` renames the file, keeping the stored extension whatever the new title says, so a rename  cannot change the format; an empty or missing title leaves the name alone. A `lastVersion` above 0 restores  that version the way `POST api/2.0/files/file/{fileId}/restoreversion` does, storing its content again on top  of the history, while 0 or less leaves the versions untouched and answers with the file as it is - which makes  this operation a read of the file when both fields are left out. The caller needs edit access, and renaming  somebody else's file additionally needs room-manager rights: a member or room admin with plain editing access,  read-only access, a guest and a DocSpace admin who is not a member of the room are all refused with 403, while  a content creator may rename a file of their own. The call is mutating. Renaming marks the file as new for  everybody else who can read it.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter fileId: (path) The file to update. 
     - parameter updateFile: (body) The new title and the version to restore. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func updateFileWithRequestBuilder(fileId: String, updateFile: UpdateFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
