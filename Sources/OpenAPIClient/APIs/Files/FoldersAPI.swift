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
     Check for upload conflicts
     
     See also:
     REST API Reference for checkUpload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
     - parameter folderId: (path) The folder whose contents the names are tested against; take the id from a listing such as  `GET api/2.0/files/@root`.      - parameter checkUploadRequest: (body) The names to test against the files the folder already holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: STRINGArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkUpload(folderId: Int, checkUploadRequest: CheckUploadRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> STRINGArrayWrapper {
        return try await checkUploadWithRequestBuilder(folderId: folderId, checkUploadRequest: checkUploadRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check for upload conflicts
     
     See also:
     REST API Reference for checkUpload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
     
     - POST /api/2.0/files/{folderId}/upload/check
     - Reports which of the submitted titles already belong to a file in the folder, so an upload can decide in  advance whether to overwrite or to ask for another name. Only the clashing titles come back, unordered and  without repetitions, and an empty array means every name is free. Matching is by title and ignores case, so a  name that differs only in capitalisation is still reported; an existing file that is encrypted is left out,  because an upload cannot take it over. The call changes nothing. It needs the same right as the upload itself,  the right to add content to the folder, which room managers and content creators have and readers, editors and  guests do not; an archived room, a section root and a folder the caller cannot write to are all refused, while  an unknown folder is answered as missing. A request without `filesTitle` is rejected as an invalid request, an  empty list is accepted and answers with an empty array.
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
     - parameter folderId: (path) The folder whose contents the names are tested against; take the id from a listing such as  `GET api/2.0/files/@root`. 
     - parameter checkUploadRequest: (body) The names to test against the files the folder already holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<STRINGArrayWrapper> 
     */
    open class func checkUploadWithRequestBuilder(folderId: Int, checkUploadRequest: CheckUploadRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<STRINGArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/upload/check"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkUploadRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<STRINGArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check for upload conflicts (third-party storage)
     
     See also:
     REST API Reference for checkUpload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
     - parameter folderId: (path) The folder whose contents the names are tested against; take the id from a listing such as  `GET api/2.0/files/@root`.      - parameter checkUploadRequest: (body) The names to test against the files the folder already holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: STRINGArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkUpload(folderId: String, checkUploadRequest: CheckUploadRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> STRINGArrayWrapper {
        return try await checkUploadWithRequestBuilder(folderId: folderId, checkUploadRequest: checkUploadRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check for upload conflicts (third-party storage)
     
     See also:
     REST API Reference for checkUpload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
     
     - POST /api/2.0/files/{folderId}/upload/check
     - Reports which of the submitted titles already belong to a file in the folder, so an upload can decide in  advance whether to overwrite or to ask for another name. Only the clashing titles come back, unordered and  without repetitions, and an empty array means every name is free. Matching is by title and ignores case, so a  name that differs only in capitalisation is still reported; an existing file that is encrypted is left out,  because an upload cannot take it over. The call changes nothing. It needs the same right as the upload itself,  the right to add content to the folder, which room managers and content creators have and readers, editors and  guests do not; an archived room, a section root and a folder the caller cannot write to are all refused, while  an unknown folder is answered as missing. A request without `filesTitle` is rejected as an invalid request, an  empty list is accepted and answers with an empty array.
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
     - parameter folderId: (path) The folder whose contents the names are tested against; take the id from a listing such as  `GET api/2.0/files/@root`. 
     - parameter checkUploadRequest: (body) The names to test against the files the folder already holds. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<STRINGArrayWrapper> 
     */
    open class func checkUploadWithRequestBuilder(folderId: String, checkUploadRequest: CheckUploadRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<STRINGArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/upload/check"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkUploadRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<STRINGArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a folder
     
     See also:
     REST API Reference for createFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.      - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFolder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await createFolderWithRequestBuilder(folderId: folderId, createFolder: createFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a folder
     
     See also:
     REST API Reference for createFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
     
     - POST /api/2.0/files/folder/{folderId}
     - Creates a folder inside the folder named in the path and answers with the folder as it was stored. The title  is trimmed, may not be blank and is refused when it is longer than the limit the schema prints; titles are not  required to be unique, so creating the same title twice leaves two folders side by side, which makes the call  mutating and not idempotent. The caller needs the right to create content in the parent, which the room  manager, a content creator and the owner of a personal section have; a member without that right, an archived  parent, and a section root that only holds rooms - Rooms, Forms and AI agents - are all refused, as is a  parent that does not exist. Rooms are not created here: use `POST api/2.0/files/rooms` for those, and this  operation for ordinary folders within them. Members of the room are notified of the new folder. Read the  identifier of the new folder from `id` and fill it with `POST api/2.0/files/{folderId}/upload`.
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
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title. 
     - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func createFolderWithRequestBuilder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a folder (third-party storage)
     
     See also:
     REST API Reference for createFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.      - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFolder(folderId: String, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await createFolderWithRequestBuilder(folderId: folderId, createFolder: createFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a folder (third-party storage)
     
     See also:
     REST API Reference for createFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
     
     - POST /api/2.0/files/folder/{folderId}
     - Creates a folder inside the folder named in the path and answers with the folder as it was stored. The title  is trimmed, may not be blank and is refused when it is longer than the limit the schema prints; titles are not  required to be unique, so creating the same title twice leaves two folders side by side, which makes the call  mutating and not idempotent. The caller needs the right to create content in the parent, which the room  manager, a content creator and the owner of a personal section have; a member without that right, an archived  parent, and a section root that only holds rooms - Rooms, Forms and AI agents - are all refused, as is a  parent that does not exist. Rooms are not created here: use `POST api/2.0/files/rooms` for those, and this  operation for ordinary folders within them. Members of the room are notified of the new folder. Read the  identifier of the new folder from `id` and fill it with `POST api/2.0/files/{folderId}/upload`.
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
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title. 
     - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func createFolderWithRequestBuilder(folderId: String, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create the folder primary external link
     
     See also:
     REST API Reference for createFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
     - parameter id: (path) The folder or room the link belongs to.      - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFolderPrimaryExternalLink(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await createFolderPrimaryExternalLinkWithRequestBuilder(id: id, folderLinkRequest: folderLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create the folder primary external link
     
     See also:
     REST API Reference for createFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
     
     - POST /api/2.0/files/folder/{id}/link
     - Answers with the primary external link of a folder or a room, creating it on the first call and returning the  one that already exists afterwards, so the operation is idempotent in effect: a second call with other  parameters does not reconfigure the existing link, and changing one is the business of  `PUT api/2.0/files/folder/{id}/links`. The parameters therefore only shape the link at the moment it is born -  `access` its rights, `title` its name, `expirationDate` its lifetime, which is unlimited here unless one is  given, `internal` whether only signed-in members may follow it, `denyDownload` whether the contents may only  be viewed, and `password` a secret to be asked for. Sending `access` with the value that grants nothing  creates no link and answers with nothing. The caller needs the right to manage the links of the room the  folder belongs to, which its manager and a portal administrator acting as room manager have, and a member with  content-creator or read access is refused with 403; an unknown folder is answered with 404. Read the address  from `sharedTo.shareLink`.
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
     - parameter id: (path) The folder or room the link belongs to. 
     - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func createFolderPrimaryExternalLinkWithRequestBuilder(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: folderLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create the folder primary external link (third-party storage)
     
     See also:
     REST API Reference for createFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
     - parameter id: (path) The folder or room the link belongs to.      - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFolderPrimaryExternalLink(id: String, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await createFolderPrimaryExternalLinkWithRequestBuilder(id: id, folderLinkRequest: folderLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create the folder primary external link (third-party storage)
     
     See also:
     REST API Reference for createFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
     
     - POST /api/2.0/files/folder/{id}/link
     - Answers with the primary external link of a folder or a room, creating it on the first call and returning the  one that already exists afterwards, so the operation is idempotent in effect: a second call with other  parameters does not reconfigure the existing link, and changing one is the business of  `PUT api/2.0/files/folder/{id}/links`. The parameters therefore only shape the link at the moment it is born -  `access` its rights, `title` its name, `expirationDate` its lifetime, which is unlimited here unless one is  given, `internal` whether only signed-in members may follow it, `denyDownload` whether the contents may only  be viewed, and `password` a secret to be asked for. Sending `access` with the value that grants nothing  creates no link and answers with nothing. The caller needs the right to manage the links of the room the  folder belongs to, which its manager and a portal administrator acting as room manager have, and a member with  content-creator or read access is refused with 403; an unknown folder is answered with 404. Read the address  from `sharedTo.shareLink`.
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
     - parameter id: (path) The folder or room the link belongs to. 
     - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func createFolderPrimaryExternalLinkWithRequestBuilder(id: String, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: folderLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the folder history report generation
     
     See also:
     REST API Reference for createReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
     - parameter folderId: (path) The folder whose history is exported; the report covers the folder itself and the entries inside it.      - parameter format: (query) The shape the report is written in: `Xlsx` produces a spreadsheet that is saved as a file of the portal, while  `Csv` produces a comma-separated text file that is uploaded to My documents without being reported back with  a file identifier. (optional)     - parameter from: (query) The earliest moment an exported entry may have, read in the time zone of the portal; left out, the report  starts at the oldest entry the portal still keeps. (optional)     - parameter to: (query) The latest moment an exported entry may have, read in the time zone of the portal; left out, the report ends  at the newest entry. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createReportFolderHistory(folderId: Int, format: AuditReportFormat? = nil, from: Date? = nil, to: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await createReportFolderHistoryWithRequestBuilder(folderId: folderId, format: format, from: from, to: to, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the folder history report generation
     
     See also:
     REST API Reference for createReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
     
     - POST /api/2.0/files/folder/{folderId}/log/report
     - Queues a background job that renders the history of a folder into a spreadsheet, or into a CSV file when  `format` asks for one, and saves the result in the caller's My documents. The answer is the queued task, not  the report: poll `GET api/2.0/files/folder/{folderId}/log/report` until `isCompleted` is true, then take the  file from `resultFileId`, `resultFileName` and `resultFileUrl`, of which a CSV report fills only the last two.  `from` and `to` limit the exported period; leaving both out exports the whole history. While a report for the  same folder and caller is still running, this call joins it and answers with the running task instead of  starting a second one, so retrying is safe. The caller needs read access to the folder and may not be a guest,  and the portal plan has to include the audit feature - otherwise the call is refused, with 403 for the access  rule and 404 for a folder that does not exist. Only a portal administrator gets the address, browser and  platform columns. Give up a running report with `DELETE api/2.0/files/folder/{folderId}/log/report`.
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
     - parameter folderId: (path) The folder whose history is exported; the report covers the folder itself and the entries inside it. 
     - parameter format: (query) The shape the report is written in: `Xlsx` produces a spreadsheet that is saved as a file of the portal, while  `Csv` produces a comma-separated text file that is uploaded to My documents without being reported back with  a file identifier. (optional)
     - parameter from: (query) The earliest moment an exported entry may have, read in the time zone of the portal; left out, the report  starts at the oldest entry the portal still keeps. (optional)
     - parameter to: (query) The latest moment an exported entry may have, read in the time zone of the portal; left out, the report ends  at the newest entry. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func createReportFolderHistoryWithRequestBuilder(folderId: Int, format: AuditReportFormat? = nil, from: Date? = nil, to: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/log/report"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "format": (wrappedValue: format?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "from": (wrappedValue: from?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "to": (wrappedValue: to?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a folder
     
     See also:
     REST API Reference for deleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
     - parameter folderId: (path) The folder to delete, together with everything it holds.      - parameter deleteFolder: (body) How the deletion is to be carried out. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFolder(folderId: Int, deleteFolder: DeleteFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteFolderWithRequestBuilder(folderId: folderId, deleteFolder: deleteFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a folder
     
     See also:
     REST API Reference for deleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
     
     - DELETE /api/2.0/files/folder/{folderId}
     - Queues the deletion of one folder together with everything inside it, and answers with the file operations of  the caller, the one just created among them. The folder is not gone when the response arrives: poll  `GET api/2.0/files/fileops` until the operation reports `finished`, and read its `error` to learn whether the  deletion succeeded. By default the folder is moved to the Trash section, from where it can be restored;  `immediately=true` discards it for good instead, and inside a room, where there is no Trash, deletion is  always final. `deleteAfter=true` postpones the deletion until the editing sessions on the contents have ended,  so files somebody is working on are not pulled away. The caller needs the right to delete the folder, which  the room manager, a portal administrator acting as room manager and a content creator acting on a folder of  their own have; editing access alone, read access and a guest are refused. The call is destructive. To delete  several items at once use `PUT api/2.0/files/fileops/delete`.
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
     - parameter folderId: (path) The folder to delete, together with everything it holds. 
     - parameter deleteFolder: (body) How the deletion is to be carried out. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteFolderWithRequestBuilder(folderId: Int, deleteFolder: DeleteFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a folder (third-party storage)
     
     See also:
     REST API Reference for deleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
     - parameter folderId: (path) The folder to delete, together with everything it holds.      - parameter deleteFolder: (body) How the deletion is to be carried out. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFolder(folderId: String, deleteFolder: DeleteFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteFolderWithRequestBuilder(folderId: folderId, deleteFolder: deleteFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a folder (third-party storage)
     
     See also:
     REST API Reference for deleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
     
     - DELETE /api/2.0/files/folder/{folderId}
     - Queues the deletion of one folder together with everything inside it, and answers with the file operations of  the caller, the one just created among them. The folder is not gone when the response arrives: poll  `GET api/2.0/files/fileops` until the operation reports `finished`, and read its `error` to learn whether the  deletion succeeded. By default the folder is moved to the Trash section, from where it can be restored;  `immediately=true` discards it for good instead, and inside a room, where there is no Trash, deletion is  always final. `deleteAfter=true` postpones the deletion until the editing sessions on the contents have ended,  so files somebody is working on are not pulled away. The caller needs the right to delete the folder, which  the room manager, a portal administrator acting as room manager and a content creator acting on a folder of  their own have; editing access alone, read access and a guest are refused. The call is destructive. To delete  several items at once use `PUT api/2.0/files/fileops/delete`.
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
     - parameter folderId: (path) The folder to delete, together with everything it holds. 
     - parameter deleteFolder: (body) How the deletion is to be carried out. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteFolderWithRequestBuilder(folderId: String, deleteFolder: DeleteFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Generate XLSX report by folder
     
     See also:
     REST API Reference for generateXlsxByFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx-by-folder/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: XlsxReportResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func generateXlsxByFolder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> XlsxReportResponseWrapper {
        return try await generateXlsxByFolderWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Generate XLSX report by folder
     
     See also:
     REST API Reference for generateXlsxByFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx-by-folder/
     
     - POST /api/2.0/files/folder/{folderId}/xlsx
     - Rebuilds the spreadsheet that gathers the answers submitted to a form, starting from the Complete folder  that holds the filled copies. The answer names the original form the results belong to, says in `isNewFile`  whether the spreadsheet is being created or an existing one rewritten in place, and carries the queued job in  `task`; the file itself is not ready yet, so poll `GET api/2.0/files/file/{fileId}/xlsx` with the identifier  of the form until the task reports completion. The folder has to be the Complete folder of a form-filling  room and has to hold at least one submitted copy whose original form still exists, and the caller needs the  right to maintain that form, which the room manager has. A folder that does not exist, or one that holds  nothing to report on, is answered with 404, and a folder of the wrong kind or a caller without those rights  with 403. The call is mutating: it writes the results file of the form.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<XlsxReportResponseWrapper> 
     */
    open class func generateXlsxByFolderWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<XlsxReportResponseWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/xlsx"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
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
     Get the Favorites section
     
     See also:
     REST API Reference for getFavoritesFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)     - parameter filterValue: (query) The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFavoritesFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentWrapper {
        return try await getFavoritesFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Favorites section
     
     See also:
     REST API Reference for getFavoritesFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
     
     - GET /api/2.0/files/@favorites
     - Returns the caller's own Favorites section: the files and folders this account has marked as favorite,  together with the section folder itself. Favorites are per-account, so the entries another member marked are  not listed here, and a guest sees only their own, usually empty, list. Mark a single file with  `GET api/2.0/files/favorites/{fileId}`, or add and remove batches of files and folders with  `POST api/2.0/files/favorites` and `DELETE api/2.0/files/favorites`. Nothing in the section is modified,  though passing `sortBy` saves the requested order as the default order for this account. Entries the caller  can no longer read, and entries that have been moved to the Trash section, drop out of the listing even  though their favorite mark stays, so the section can shrink without an explicit unmark. `folders` and `files`  hold one page of the section, `total` counts the entries matching the request before `count` and `startIndex`  are applied, and `current` describes the section folder itself.
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
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)
     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)
     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)
     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)
     - parameter filterValue: (query) The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentWrapper> 
     */
    open class func getFavoritesFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentWrapper> {
        let localVariablePath = "/api/2.0/files/@favorites"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get used space of files
     
     See also:
     REST API Reference for getFilesUsedSpace Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: FilesStatisticsResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFilesUsedSpace(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FilesStatisticsResultWrapper {
        return try await getFilesUsedSpaceWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get used space of files
     
     See also:
     REST API Reference for getFilesUsedSpace Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/
     
     - GET /api/2.0/files/filesusedspace
     - Reports how much storage the portal spends on documents, split by section - My documents, Trash, Rooms,  Archive and, where the feature is on, AI agents - each entry naming the section and the space it takes in  bytes. The figures cover the whole portal rather than the calling account, and moving an entry between  sections moves its space with it, which is why deleting a file to the Trash does not free anything until the  Trash is emptied. Only a caller who may change portal settings, that is the owner and the portal  administrators, is allowed here; a room administrator, an ordinary member and a guest are all refused. The  call is read-only, takes no parameters and answers with the sections in a fixed order. The quota of the portal  as a whole, storage outside documents included, is not part of this answer.
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
     - returns: RequestBuilder<FilesStatisticsResultWrapper> 
     */
    open class func getFilesUsedSpaceWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FilesStatisticsResultWrapper> {
        let localVariablePath = "/api/2.0/files/filesusedspace"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FilesStatisticsResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder form filter
     
     See also:
     REST API Reference for getFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FormsItemArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FormsItemArrayWrapper {
        return try await getFolderWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder form filter
     
     See also:
     REST API Reference for getFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
     
     - GET /api/2.0/files/{folderId}/formfilter
     - Lists the fields the completed forms of a form-filling room carry, each of them a key and the kind of value  behind it, so that a client can offer them as filters. Feed a pair from this list back as `formsItemKey` and  `formsItemType` of `GET api/2.0/files/{folderId}` to keep only the completed forms whose field of that name  holds a value. The fields are read from the search index of one of the forms already gathered, so they appear  once indexing has caught up with the first submission. Only the Complete folder of a form-filling room  carries such fields: for any other folder, for a folder that does not exist and for one that has been deleted  the answer is an empty list rather than a refusal, and the same holds while nothing has been submitted yet.  The operation reads the index alone, changes nothing and needs no authorization.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FormsItemArrayWrapper> 
     */
    open class func getFolderWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FormsItemArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/formfilter"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FormsItemArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter folderType
     */
    public enum FolderType_getFolderByFolderId: String, Sendable, CaseIterable {
        case DEFAULT = 0
        case COMMON = 1
        case BUNCH = 2
        case TRASH = 3
        case USER = 5
        case SHARE = 6
        case Projects = 8
        case Favorites = 10
        case Recent = 11
        case Templates = 12
        case Privacy = 13
        case VirtualRooms = 14
        case FillingFormsRoom = 15
        case EditingRoom = 16
        case CustomRoom = 19
        case Archive = 20
        case ThirdpartyBackup = 21
        case PublicRoom = 22
        case ReadyFormFolder = 25
        case InProcessFormFolder = 26
        case FormFillingFolderDone = 27
        case FormFillingFolderInProgress = 28
        case VirtualDataRoom = 29
        case RoomTemplates = 30
        case AiRoom = 31
        case Knowledge = 32
        case ChatOutputs = 33
        case AiAgents = 34
        case DefaultTemplates = 35
        case Forms = 36
    }

    /**
     Get a folder by ID
     
     See also:
     REST API Reference for getFolderByFolderId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
     - parameter folderId: (path) The folder whose contents are listed. Each section root has an operation of its own, such as  `GET api/2.0/files/@my`, and every other folder is opened by the identifier a listing gave for it.      - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)     - parameter sharedBy: (query) Restricts the listing to the entries this member shared, which narrows a shared listing down to what one  person handed out. (optional)     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, spreadsheets, images or one type of room.  Omit it to list every kind the folder holds. (optional)     - parameter roomId: (query) Keeps only the entries that lie in this room, which matters when the listing being read gathers entries from  more than one of them. (optional)     - parameter folderType: (query) Keeps only the folders of these kinds, each given as the number of a folder type; it is how a listing is  narrowed down to, say, the form-filling folders of a room. (optional)     - parameter excludeSubject: (query) Turns `userIdOrGroupId` around: with true the entries of that member or group are the ones left out, with  false they are the only ones kept. (optional)     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)     - parameter withSubFolders: (query) Whether a narrowed request reaches into the subfolders: with true, which is what an omitted parameter means,  matching entries are gathered from the whole subtree, with false only the top level is read. It makes a  difference only once `filterType`, `userIdOrGroupId` or `filterValue` narrows the request, because an  unfiltered listing always shows the top level alone. (optional)     - parameter _extension: (query) Keeps only the files carrying one of these extensions, several of them separated by commas; the leading dot is  optional. (optional)     - parameter searchArea: (query) Which area a listing that spans several of them is taken from - the active rooms, the archive, the room  templates or the form-filling rooms. A folder that belongs to one area only settles the area itself and  ignores the parameter. (optional)     - parameter formsItemKey: (query) Keeps only the completed forms whose form field of this name holds a value. Take the name from  `GET api/2.0/files/{folderId}/formfilter`, and use it in the folder that gathers the completed copies of a  form-filling room. (optional)     - parameter formsItemType: (query) The kind of the form field named by `formsItemKey`, taken from the same list; the two are sent together. (optional)     - parameter count: (query) The size of one page of the listing. Pair it with `startIndex` to walk through the result, and compare the two  with `total` in the response to see when the last page has been read. (optional)     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)     - parameter filterValue: (query) The search string the listing is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the folder unfiltered. (optional)     - parameter location: (query) Where the entries of a tag-based listing have to live to be kept: `Room` keeps what lies in a room,  `Documents` what lies in a personal section, and `Link` what was reached through an external link that is  still valid. It shapes the Favorites and Recent listings and does nothing in an ordinary folder. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderByFolderId(folderId: Int, userIdOrGroupId: UUID? = nil, sharedBy: UUID? = nil, filterType: FilterType? = nil, roomId: Int? = nil, folderType: [FolderType_getFolderByFolderId]? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, withSubFolders: Bool? = nil, _extension: String? = nil, searchArea: SearchArea? = nil, formsItemKey: String? = nil, formsItemType: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, location: Location? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentWrapper {
        return try await getFolderByFolderIdWithRequestBuilder(folderId: folderId, userIdOrGroupId: userIdOrGroupId, sharedBy: sharedBy, filterType: filterType, roomId: roomId, folderType: folderType, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, withSubFolders: withSubFolders, _extension: _extension, searchArea: searchArea, formsItemKey: formsItemKey, formsItemType: formsItemType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, location: location, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a folder by ID
     
     See also:
     REST API Reference for getFolderByFolderId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
     
     - GET /api/2.0/files/{folderId}
     - Returns one page of the contents of a folder - its subfolders in `folders`, its files in `files`, the folder  itself in `current` and the chain of parents in `pathParts` - and is the operation a client browses the file  tree with. `filterType`, `filterValue`, `extension`, `userIdOrGroupId`, `sharedBy` and `folderType` narrow  what is listed, `applyFilterOption` decides whether those filters bite on the files, on the folders or on  both, and `withSubFolders`, which is on unless it is switched off, lets a narrowed request descend through the  whole subtree instead of the top level alone. `filterValue` is matched against titles and against indexed  document content, and indexing is asynchronous, so a file uploaded a moment ago can be missing from a search  for a short while. `count` and `startIndex` page through the result while `total` counts everything that  matches, and `sortBy` with `sortOrder` both order the page and are saved as the default order of the account.  Reading a room or an ordinary folder clears its new-item marks for the caller. A caller who may not read the  folder is answered with 403, and a folder that does not exist with 404.
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
     - parameter folderId: (path) The folder whose contents are listed. Each section root has an operation of its own, such as  `GET api/2.0/files/@my`, and every other folder is opened by the identifier a listing gave for it. 
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)
     - parameter sharedBy: (query) Restricts the listing to the entries this member shared, which narrows a shared listing down to what one  person handed out. (optional)
     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, spreadsheets, images or one type of room.  Omit it to list every kind the folder holds. (optional)
     - parameter roomId: (query) Keeps only the entries that lie in this room, which matters when the listing being read gathers entries from  more than one of them. (optional)
     - parameter folderType: (query) Keeps only the folders of these kinds, each given as the number of a folder type; it is how a listing is  narrowed down to, say, the form-filling folders of a room. (optional)
     - parameter excludeSubject: (query) Turns `userIdOrGroupId` around: with true the entries of that member or group are the ones left out, with  false they are the only ones kept. (optional)
     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)
     - parameter withSubFolders: (query) Whether a narrowed request reaches into the subfolders: with true, which is what an omitted parameter means,  matching entries are gathered from the whole subtree, with false only the top level is read. It makes a  difference only once `filterType`, `userIdOrGroupId` or `filterValue` narrows the request, because an  unfiltered listing always shows the top level alone. (optional)
     - parameter _extension: (query) Keeps only the files carrying one of these extensions, several of them separated by commas; the leading dot is  optional. (optional)
     - parameter searchArea: (query) Which area a listing that spans several of them is taken from - the active rooms, the archive, the room  templates or the form-filling rooms. A folder that belongs to one area only settles the area itself and  ignores the parameter. (optional)
     - parameter formsItemKey: (query) Keeps only the completed forms whose form field of this name holds a value. Take the name from  `GET api/2.0/files/{folderId}/formfilter`, and use it in the folder that gathers the completed copies of a  form-filling room. (optional)
     - parameter formsItemType: (query) The kind of the form field named by `formsItemKey`, taken from the same list; the two are sent together. (optional)
     - parameter count: (query) The size of one page of the listing. Pair it with `startIndex` to walk through the result, and compare the two  with `total` in the response to see when the last page has been read. (optional)
     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)
     - parameter filterValue: (query) The search string the listing is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the folder unfiltered. (optional)
     - parameter location: (query) Where the entries of a tag-based listing have to live to be kept: `Room` keeps what lies in a room,  `Documents` what lies in a personal section, and `Link` what was reached through an external link that is  still valid. It shapes the Favorites and Recent listings and does nothing in an ordinary folder. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentWrapper> 
     */
    open class func getFolderByFolderIdWithRequestBuilder(folderId: Int, userIdOrGroupId: UUID? = nil, sharedBy: UUID? = nil, filterType: FilterType? = nil, roomId: Int? = nil, folderType: [FolderType_getFolderByFolderId]? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, withSubFolders: Bool? = nil, _extension: String? = nil, searchArea: SearchArea? = nil, formsItemKey: String? = nil, formsItemType: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, location: Location? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sharedBy": (wrappedValue: sharedBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "roomId": (wrappedValue: roomId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "folderType": (wrappedValue: folderType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withSubFolders": (wrappedValue: withSubFolders?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "extension": (wrappedValue: _extension?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchArea": (wrappedValue: searchArea?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "formsItemKey": (wrappedValue: formsItemKey?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "formsItemType": (wrappedValue: formsItemType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Location": (wrappedValue: location?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a folder by ID (third-party storage)
     
     See also:
     REST API Reference for getFolderByFolderId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
     - parameter folderId: (path) The folder whose contents are listed. Each section root has an operation of its own, such as  `GET api/2.0/files/@my`, and every other folder is opened by the identifier a listing gave for it.      - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)     - parameter sharedBy: (query) Restricts the listing to the entries this member shared, which narrows a shared listing down to what one  person handed out. (optional)     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, spreadsheets, images or one type of room.  Omit it to list every kind the folder holds. (optional)     - parameter roomId: (query) Keeps only the entries that lie in this room, which matters when the listing being read gathers entries from  more than one of them. (optional)     - parameter folderType: (query) Keeps only the folders of these kinds, each given as the number of a folder type; it is how a listing is  narrowed down to, say, the form-filling folders of a room. (optional)     - parameter excludeSubject: (query) Turns `userIdOrGroupId` around: with true the entries of that member or group are the ones left out, with  false they are the only ones kept. (optional)     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)     - parameter withSubFolders: (query) Whether a narrowed request reaches into the subfolders: with true, which is what an omitted parameter means,  matching entries are gathered from the whole subtree, with false only the top level is read. It makes a  difference only once `filterType`, `userIdOrGroupId` or `filterValue` narrows the request, because an  unfiltered listing always shows the top level alone. (optional)     - parameter _extension: (query) Keeps only the files carrying one of these extensions, several of them separated by commas; the leading dot is  optional. (optional)     - parameter searchArea: (query) Which area a listing that spans several of them is taken from - the active rooms, the archive, the room  templates or the form-filling rooms. A folder that belongs to one area only settles the area itself and  ignores the parameter. (optional)     - parameter formsItemKey: (query) Keeps only the completed forms whose form field of this name holds a value. Take the name from  `GET api/2.0/files/{folderId}/formfilter`, and use it in the folder that gathers the completed copies of a  form-filling room. (optional)     - parameter formsItemType: (query) The kind of the form field named by `formsItemKey`, taken from the same list; the two are sent together. (optional)     - parameter count: (query) The size of one page of the listing. Pair it with `startIndex` to walk through the result, and compare the two  with `total` in the response to see when the last page has been read. (optional)     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)     - parameter filterValue: (query) The search string the listing is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the folder unfiltered. (optional)     - parameter location: (query) Where the entries of a tag-based listing have to live to be kept: `Room` keeps what lies in a room,  `Documents` what lies in a personal section, and `Link` what was reached through an external link that is  still valid. It shapes the Favorites and Recent listings and does nothing in an ordinary folder. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderByFolderId(folderId: String, userIdOrGroupId: UUID? = nil, sharedBy: UUID? = nil, filterType: FilterType? = nil, roomId: String? = nil, folderType: [FolderType_getFolderByFolderId]? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, withSubFolders: Bool? = nil, _extension: String? = nil, searchArea: SearchArea? = nil, formsItemKey: String? = nil, formsItemType: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, location: Location? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderContentWrapper {
        return try await getFolderByFolderIdWithRequestBuilder(folderId: folderId, userIdOrGroupId: userIdOrGroupId, sharedBy: sharedBy, filterType: filterType, roomId: roomId, folderType: folderType, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, withSubFolders: withSubFolders, _extension: _extension, searchArea: searchArea, formsItemKey: formsItemKey, formsItemType: formsItemType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, location: location, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a folder by ID (third-party storage)
     
     See also:
     REST API Reference for getFolderByFolderId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
     
     - GET /api/2.0/files/{folderId}
     - Returns one page of the contents of a folder - its subfolders in `folders`, its files in `files`, the folder  itself in `current` and the chain of parents in `pathParts` - and is the operation a client browses the file  tree with. `filterType`, `filterValue`, `extension`, `userIdOrGroupId`, `sharedBy` and `folderType` narrow  what is listed, `applyFilterOption` decides whether those filters bite on the files, on the folders or on  both, and `withSubFolders`, which is on unless it is switched off, lets a narrowed request descend through the  whole subtree instead of the top level alone. `filterValue` is matched against titles and against indexed  document content, and indexing is asynchronous, so a file uploaded a moment ago can be missing from a search  for a short while. `count` and `startIndex` page through the result while `total` counts everything that  matches, and `sortBy` with `sortOrder` both order the page and are saved as the default order of the account.  Reading a room or an ordinary folder clears its new-item marks for the caller. A caller who may not read the  folder is answered with 403, and a folder that does not exist with 404.
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
     - parameter folderId: (path) The folder whose contents are listed. Each section root has an operation of its own, such as  `GET api/2.0/files/@my`, and every other folder is opened by the identifier a listing gave for it. 
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)
     - parameter sharedBy: (query) Restricts the listing to the entries this member shared, which narrows a shared listing down to what one  person handed out. (optional)
     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, spreadsheets, images or one type of room.  Omit it to list every kind the folder holds. (optional)
     - parameter roomId: (query) Keeps only the entries that lie in this room, which matters when the listing being read gathers entries from  more than one of them. (optional)
     - parameter folderType: (query) Keeps only the folders of these kinds, each given as the number of a folder type; it is how a listing is  narrowed down to, say, the form-filling folders of a room. (optional)
     - parameter excludeSubject: (query) Turns `userIdOrGroupId` around: with true the entries of that member or group are the ones left out, with  false they are the only ones kept. (optional)
     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)
     - parameter withSubFolders: (query) Whether a narrowed request reaches into the subfolders: with true, which is what an omitted parameter means,  matching entries are gathered from the whole subtree, with false only the top level is read. It makes a  difference only once `filterType`, `userIdOrGroupId` or `filterValue` narrows the request, because an  unfiltered listing always shows the top level alone. (optional)
     - parameter _extension: (query) Keeps only the files carrying one of these extensions, several of them separated by commas; the leading dot is  optional. (optional)
     - parameter searchArea: (query) Which area a listing that spans several of them is taken from - the active rooms, the archive, the room  templates or the form-filling rooms. A folder that belongs to one area only settles the area itself and  ignores the parameter. (optional)
     - parameter formsItemKey: (query) Keeps only the completed forms whose form field of this name holds a value. Take the name from  `GET api/2.0/files/{folderId}/formfilter`, and use it in the folder that gathers the completed copies of a  form-filling room. (optional)
     - parameter formsItemType: (query) The kind of the form field named by `formsItemKey`, taken from the same list; the two are sent together. (optional)
     - parameter count: (query) The size of one page of the listing. Pair it with `startIndex` to walk through the result, and compare the two  with `total` in the response to see when the last page has been read. (optional)
     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)
     - parameter filterValue: (query) The search string the listing is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the folder unfiltered. (optional)
     - parameter location: (query) Where the entries of a tag-based listing have to live to be kept: `Room` keeps what lies in a room,  `Documents` what lies in a personal section, and `Link` what was reached through an external link that is  still valid. It shapes the Favorites and Recent listings and does nothing in an ordinary folder. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderContentWrapper> 
     */
    open class func getFolderByFolderIdWithRequestBuilder(folderId: String, userIdOrGroupId: UUID? = nil, sharedBy: UUID? = nil, filterType: FilterType? = nil, roomId: String? = nil, folderType: [FolderType_getFolderByFolderId]? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, withSubFolders: Bool? = nil, _extension: String? = nil, searchArea: SearchArea? = nil, formsItemKey: String? = nil, formsItemType: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, location: Location? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderContentWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sharedBy": (wrappedValue: sharedBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "roomId": (wrappedValue: roomId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "folderType": (wrappedValue: folderType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withSubFolders": (wrappedValue: withSubFolders?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "extension": (wrappedValue: _extension?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchArea": (wrappedValue: searchArea?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "formsItemKey": (wrappedValue: formsItemKey?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "formsItemType": (wrappedValue: formsItemType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Location": (wrappedValue: location?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder history
     
     See also:
     REST API Reference for getFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
     - parameter folderId: (path) The folder whose activity log is read; the log covers the folder itself and the entries inside it.      - parameter fromDate: (query) The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps. (optional)     - parameter toDate: (query) The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry. (optional)     - parameter count: (query) How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body. (optional)     - parameter startIndex: (query) How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: HistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderHistory(folderId: Int, fromDate: Date? = nil, toDate: Date? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> HistoryArrayWrapper {
        return try await getFolderHistoryWithRequestBuilder(folderId: folderId, fromDate: fromDate, toDate: toDate, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder history
     
     See also:
     REST API Reference for getFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
     
     - GET /api/2.0/files/folder/{folderId}/log
     - Lists what has happened to a folder and to the entries inside it - creations, renames, uploads, moves,  deletions and changes of access - each record naming the action, the moment it happened and the member behind  it. Records that belong to one action are grouped, so a batch arrives as a single entry carrying the rest of  itself in `related`, and the list runs from the most recent record backwards. `fromDate` and `toDate` narrow  the period, `startIndex` and `count` page through the result, and the number of records matching the request  is reported in the response headers rather than in the body. Any member who can read the folder may read its  history; a caller without access is answered with 403 and a folder that does not exist with 404. When the  folder is a form-filling folder the caller reached through a filling invitation, the history is narrowed to  what that caller may see. The call is read-only. To take the same history away as a spreadsheet, start a  report with `POST api/2.0/files/folder/{folderId}/log/report`.
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
     - parameter folderId: (path) The folder whose activity log is read; the log covers the folder itself and the entries inside it. 
     - parameter fromDate: (query) The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps. (optional)
     - parameter toDate: (query) The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry. (optional)
     - parameter count: (query) How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body. (optional)
     - parameter startIndex: (query) How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<HistoryArrayWrapper> 
     */
    open class func getFolderHistoryWithRequestBuilder(folderId: Int, fromDate: Date? = nil, toDate: Date? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<HistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/log"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
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
     Get folder information
     
     See also:
     REST API Reference for getFolderInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderInfo(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await getFolderInfoWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder information
     
     See also:
     REST API Reference for getFolderInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
     
     - GET /api/2.0/files/folder/{folderId}
     - Returns one folder as an object - its title, its parent, the moments it was created and last changed, the  access the caller has to it, the number of items that are new for them, and the room settings when the folder  is a room - without listing anything inside it. Use it to resolve a folder identifier into something  displayable, and `GET api/2.0/files/{folderId}` when the contents are what is wanted; unlike that operation,  this one leaves the new-item marks of the folder alone. Any member who can read the folder may call it, and an  anonymous caller only through an external link that grants access, everybody else being refused; a folder that  does not exist is answered as not found. The call is read-only. The chain of parents above the folder is not  part of the answer and is read with `GET api/2.0/files/folder/{folderId}/path`.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func getFolderInfoWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder information (third-party storage)
     
     See also:
     REST API Reference for getFolderInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderInfo(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await getFolderInfoWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder information (third-party storage)
     
     See also:
     REST API Reference for getFolderInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
     
     - GET /api/2.0/files/folder/{folderId}
     - Returns one folder as an object - its title, its parent, the moments it was created and last changed, the  access the caller has to it, the number of items that are new for them, and the room settings when the folder  is a room - without listing anything inside it. Use it to resolve a folder identifier into something  displayable, and `GET api/2.0/files/{folderId}` when the contents are what is wanted; unlike that operation,  this one leaves the new-item marks of the folder alone. Any member who can read the folder may call it, and an  anonymous caller only through an external link that grants access, everybody else being refused; a folder that  does not exist is answered as not found. The call is read-only. The chain of parents above the folder is not  part of the answer and is read with `GET api/2.0/files/folder/{folderId}/path`.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func getFolderInfoWithRequestBuilder(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder external links
     
     See also:
     REST API Reference for getFolderLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
     - parameter id: (path) The folder or room whose external links are listed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderLinks(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFolderLinksWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder external links
     
     See also:
     REST API Reference for getFolderLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
     
     - GET /api/2.0/files/folder/{id}/links
     - Lists the external links of a folder or a room, each with its identifier, title, address, rights, expiration  date, password flag and download restriction, the primary link among them once it exists. At most the first  hundred links are answered and the number returned is reported in the response headers; there are no paging  parameters here. A folder that has never been shared by link answers with an empty list, and so does a member  who may read the folder but not manage its links - the empty answer therefore means nothing to show you  rather than no links exist. A member without access to the room is refused, an anonymous caller is rejected,  and a folder that does not exist is answered as not found. The call is read-only. Take an identifier from here  to `PUT api/2.0/files/folder/{id}/links` to change or remove that link, and read the primary one alone with  `GET api/2.0/files/folder/{id}/link`.
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
     - parameter id: (path) The folder or room whose external links are listed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFolderLinksWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/links"
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

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder external links (third-party storage)
     
     See also:
     REST API Reference for getFolderLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
     - parameter id: (path) The folder or room whose external links are listed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderLinks(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFolderLinksWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder external links (third-party storage)
     
     See also:
     REST API Reference for getFolderLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
     
     - GET /api/2.0/files/folder/{id}/links
     - Lists the external links of a folder or a room, each with its identifier, title, address, rights, expiration  date, password flag and download restriction, the primary link among them once it exists. At most the first  hundred links are answered and the number returned is reported in the response headers; there are no paging  parameters here. A folder that has never been shared by link answers with an empty list, and so does a member  who may read the folder but not manage its links - the empty answer therefore means nothing to show you  rather than no links exist. A member without access to the room is refused, an anonymous caller is rejected,  and a folder that does not exist is answered as not found. The call is read-only. Take an identifier from here  to `PUT api/2.0/files/folder/{id}/links` to change or remove that link, and read the primary one alone with  `GET api/2.0/files/folder/{id}/link`.
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
     - parameter id: (path) The folder or room whose external links are listed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFolderLinksWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/links"
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

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the folder path
     
     See also:
     REST API Reference for getFolderPath Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderPath(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getFolderPathWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the folder path
     
     See also:
     REST API Reference for getFolderPath Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
     
     - GET /api/2.0/files/folder/{folderId}/path
     - Returns the chain of folders that leads to the folder named in the path, ordered from the section root down to  the folder itself, which is the last entry. It is what a breadcrumb trail is built from, and it also tells a  client which section - a room, the personal section, the archive - a bare folder identifier belongs to. Only  the folders the caller may see are part of the chain, so a member who was given access to a folder deep inside  a room gets a shorter path than the room manager does. The caller needs read access to the folder and is  otherwise answered with 403, while a folder that does not exist is answered as not found. The call is  read-only and takes no paging parameters. To go the other way, from a folder down into its contents, call  `GET api/2.0/files/{folderId}`.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getFolderPathWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/path"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the folder path (third-party storage)
     
     See also:
     REST API Reference for getFolderPath Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderPath(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getFolderPathWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the folder path (third-party storage)
     
     See also:
     REST API Reference for getFolderPath Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
     
     - GET /api/2.0/files/folder/{folderId}/path
     - Returns the chain of folders that leads to the folder named in the path, ordered from the section root down to  the folder itself, which is the last entry. It is what a breadcrumb trail is built from, and it also tells a  client which section - a room, the personal section, the archive - a bare folder identifier belongs to. Only  the folders the caller may see are part of the chain, so a member who was given access to a folder deep inside  a room gets a shorter path than the room manager does. The caller needs read access to the folder and is  otherwise answered with 403, while a folder that does not exist is answered as not found. The call is  read-only and takes no paging parameters. To go the other way, from a folder down into its contents, call  `GET api/2.0/files/{folderId}`.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getFolderPathWithRequestBuilder(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/path"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the folder primary external link
     
     See also:
     REST API Reference for getFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
     - parameter id: (path) The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter count: (query) How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderPrimaryExternalLink(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getFolderPrimaryExternalLinkWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the folder primary external link
     
     See also:
     REST API Reference for getFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
     
     - GET /api/2.0/files/folder/{id}/link
     - Answers with the primary external link of a folder or a room - the one the Copy link action of a client  hands out - with its address in `sharedTo.shareLink`, its rights in `access`, and its title, expiration date,  password flag and download restriction beside them. The link is created on the first read if the folder has  none, with read rights, no password and no expiry, so this operation mutates on that first call and is a plain  read afterwards; repeated calls answer with the same link identifier. The caller needs the right to manage the  links of the room the folder belongs to, which its manager and a portal administrator acting as room manager  have; a member with read access alone is refused with 403 and an anonymous caller is rejected, while a link  that was deliberately revoked is answered with 404 rather than being recreated. The paging parameters are  accepted for compatibility and leave the single link answered here unchanged. Every external link of the same  folder is listed by `GET api/2.0/files/folder/{id}/links`.
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
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getFolderPrimaryExternalLinkWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/link"
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
     Get the folder primary external link (third-party storage)
     
     See also:
     REST API Reference for getFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
     - parameter id: (path) The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.      - parameter count: (query) How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it. (optional)     - parameter startIndex: (query) How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderPrimaryExternalLink(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getFolderPrimaryExternalLinkWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the folder primary external link (third-party storage)
     
     See also:
     REST API Reference for getFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
     
     - GET /api/2.0/files/folder/{id}/link
     - Answers with the primary external link of a folder or a room - the one the Copy link action of a client  hands out - with its address in `sharedTo.shareLink`, its rights in `access`, and its title, expiration date,  password flag and download restriction beside them. The link is created on the first read if the folder has  none, with read rights, no password and no expiry, so this operation mutates on that first call and is a plain  read afterwards; repeated calls answer with the same link identifier. The caller needs the right to manage the  links of the room the folder belongs to, which its manager and a portal administrator acting as room manager  have; a member with read access alone is refused with 403 and an anonymous caller is rejected, while a link  that was deliberately revoked is answered with 404 rather than being recreated. The paging parameters are  accepted for compatibility and leave the single link answered here unchanged. Every external link of the same  folder is listed by `GET api/2.0/files/folder/{id}/links`.
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
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getFolderPrimaryExternalLinkWithRequestBuilder(id: String, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/link"
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
     Get subfolders
     
     See also:
     REST API Reference for getFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolders(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getFoldersWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get subfolders
     
     See also:
     REST API Reference for getFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
     
     - GET /api/2.0/files/{folderId}/subfolders
     - Lists the folders that sit directly inside the folder named in the path, ordered by title, without their own  contents and without the files that lie beside them. The whole list arrives at once - there are no paging or  filtering parameters here - so for a large folder, or when the files are wanted as well, use  `GET api/2.0/files/{folderId}`, which pages and filters. A folder that holds no subfolders answers with an  empty list. The caller needs read access to the folder, and only the subfolders they may see are listed, so a  member of a room can get fewer entries than its manager; a caller without access is answered with 403, and a  folder that does not exist, or one that has been deleted for good, is answered as not found. The call is  read-only and leaves the new-item marks of the folder alone.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getFoldersWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/subfolders"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get subfolders (third-party storage)
     
     See also:
     REST API Reference for getFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolders(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getFoldersWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get subfolders (third-party storage)
     
     See also:
     REST API Reference for getFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
     
     - GET /api/2.0/files/{folderId}/subfolders
     - Lists the folders that sit directly inside the folder named in the path, ordered by title, without their own  contents and without the files that lie beside them. The whole list arrives at once - there are no paging or  filtering parameters here - so for a large folder, or when the files are wanted as well, use  `GET api/2.0/files/{folderId}`, which pages and filters. A folder that holds no subfolders answers with an  empty list. The caller needs read access to the folder, and only the subfolders they may see are listed, so a  member of a room can get fewer entries than its manager; a caller without access is answered with 403, and a  folder that does not exist, or one that has been deleted for good, is answered as not found. The call is  read-only and leaves the new-item marks of the folder alone.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getFoldersWithRequestBuilder(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/subfolders"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Forms section
     
     See also:
     REST API Reference for getFormsFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-forms-folder/
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)     - parameter filterValue: (query) The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFormsFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentWrapper {
        return try await getFormsFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Forms section
     
     See also:
     REST API Reference for getFormsFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-forms-folder/
     
     - GET /api/2.0/files/@forms
     - Returns the Forms section: the flat list of form-filling rooms the caller may read. Such rooms are stored  under the Rooms tree but are surfaced only here, so `GET api/2.0/files/rooms` leaves them out of the active  area and lists them when `searchArea` names the forms area instead. The section is not expanded into room  content, so `folders` carries the rooms while `files` comes back empty; to read what is inside one of them,  call `GET api/2.0/files/{folderId}` with the room identifier. Nothing is modified, though passing `sortBy`  saves the requested order as the default order for this account. `filterType`, `filterValue`,  `userIdOrGroupId` and the sorting parameters narrow and order the room list, `count` and `startIndex` page  through it, `total` reports how many rooms match the request in full, and `current` describes the section  folder itself.
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
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)
     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)
     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)
     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)
     - parameter filterValue: (query) The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentWrapper> 
     */
    open class func getFormsFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentWrapper> {
        let localVariablePath = "/api/2.0/files/@forms"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the My documents section
     
     See also:
     REST API Reference for getMyFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)     - parameter filterValue: (query) The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMyFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentWrapper {
        return try await getMyFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, applyFilterOption: applyFilterOption, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the My documents section
     
     See also:
     REST API Reference for getMyFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
     
     - GET /api/2.0/files/@my
     - Returns the contents of the caller's My documents section, the personal storage that belongs to this account  alone and stays invisible to other members until something in it is shared explicitly. Any authenticated  member that has a personal section can read it; guest accounts are not given one, and the call then answers  404. Nothing in the section is modified, though passing `sortBy` saves the requested order as the default  order for this account. Without a filter only the top level of the section is listed; as soon as `filterType`,  `userIdOrGroupId` or `filterValue` narrows the request, the search descends through the whole subtree.  `filterValue` is matched against titles and against indexed document content, and the index is written  asynchronously, so a file uploaded a moment ago can be missing from a search for a short while. `folders` and  `files` hold one page of the result, `total` counts everything that matches before `count` and `startIndex`  are applied, and `current` describes the section folder. To open a folder inside the section, call  `GET api/2.0/files/{folderId}` with its identifier.
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
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)
     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)
     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)
     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)
     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)
     - parameter filterValue: (query) The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentWrapper> 
     */
    open class func getMyFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentWrapper> {
        let localVariablePath = "/api/2.0/files/@my"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get new folder items
     
     See also:
     REST API Reference for getNewFolderItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNewFolderItems(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getNewFolderItemsWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get new folder items
     
     See also:
     REST API Reference for getNewFolderItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
     
     - GET /api/2.0/files/{folderId}/news
     - Lists the entries of a folder that are new for the calling member - the files and folders created or changed  there since they last opened it - ordered from the most recently changed backwards. It is what the badge of a  room is filled from, and it is personal: two members of the same room get different answers. Reading this list  does not clear the marks, so the same entries come back until the folder itself is opened with  `GET api/2.0/files/{folderId}`, which does clear them. A folder with nothing new answers with an empty list,  and marks disappear on their own when the entry behind them is deleted or moved out of reach. The caller needs  read access to the folder and is otherwise answered with 403. The whole list arrives at once, without paging  or filtering, and the call is read-only.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getNewFolderItemsWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/news"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get new folder items (third-party storage)
     
     See also:
     REST API Reference for getNewFolderItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNewFolderItems(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getNewFolderItemsWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get new folder items (third-party storage)
     
     See also:
     REST API Reference for getNewFolderItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
     
     - GET /api/2.0/files/{folderId}/news
     - Lists the entries of a folder that are new for the calling member - the files and folders created or changed  there since they last opened it - ordered from the most recently changed backwards. It is what the badge of a  room is filled from, and it is personal: two members of the same room get different answers. Reading this list  does not clear the marks, so the same entries come back until the folder itself is opened with  `GET api/2.0/files/{folderId}`, which does clear them. A folder with nothing new answers with an empty list,  and marks disappear on their own when the entry behind them is deleted or moved out of reach. The caller needs  read access to the folder and is otherwise answered with 403. The whole list arrives at once, without paging  or filtering, and the call is read-only.
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
     - parameter folderId: (path) The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getNewFolderItemsWithRequestBuilder(folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/news"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Recent section
     
     See also:
     REST API Reference for getRecentFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
     - parameter userIdOrGroupId: (query) Restricts the listing to the files authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list the whole history. (optional)     - parameter filterType: (query) Narrows the listing to a single kind of file, such as documents, spreadsheets or images. Omit it to list every  kind the history holds. (optional)     - parameter excludeSubject: (query) Inverts `userIdOrGroupId`: with `true` the files of that member or group are the ones left out of the listing  instead of the only ones kept. (optional)     - parameter applyFilterOption: (query) Chooses which half of a listing `filterType` and `filterValue` are applied to. The Recent section holds  files only, so the value does not change what comes back. (optional)     - parameter searchArea: (query) The area a listing is taken from. The Recent section is assembled from the caller's own open history rather  than from an area, so the value does not change which files are returned. (optional)     - parameter _extension: (query) The file extensions the listing is limited to, matched against the end of the file name. The leading dot is  optional, and the parameter is repeated once per extension. (optional)     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. The Recent section keeps its own newest-first order, so the value does not  reorder this listing. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. The Recent section keeps its own newest-first order, so the value does not reorder this  listing. (optional)     - parameter filterValue: (query) The search string the history is filtered by: it is matched as a substring of file titles and against the  indexed document content as well. Omit it to list the whole history. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRecentFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, searchArea: SearchArea? = nil, _extension: [String]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentWrapper {
        return try await getRecentFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, searchArea: searchArea, _extension: _extension, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Recent section
     
     See also:
     REST API Reference for getRecentFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
     
     - GET /api/2.0/files/recent
     - Returns the Recent section: the files the calling account has opened lately. The section holds files only,  so `folders` comes back empty, and it is personal, so another member's history is not visible here. A file is  added when it is opened and can also be added explicitly with `POST api/2.0/files/file/{fileId}/recent`;  `DELETE api/2.0/files/recent` clears the whole history, and `PUT api/2.0/files/displayrecent` switches the  section on and off for the account, which also decides whether `GET api/2.0/files/@root` includes it. Nothing  in the section is modified, though passing `sortBy` saves the requested order as the default order for this  account. The listing is ordered by the moment the caller last opened each file, newest first, and `sortBy` and  `sortOrder` do not change that order. `files` holds one page, `total` counts the files matching the request  before `count` and `startIndex` are applied, and `current` describes the section folder itself.
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
     - parameter userIdOrGroupId: (query) Restricts the listing to the files authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list the whole history. (optional)
     - parameter filterType: (query) Narrows the listing to a single kind of file, such as documents, spreadsheets or images. Omit it to list every  kind the history holds. (optional)
     - parameter excludeSubject: (query) Inverts `userIdOrGroupId`: with `true` the files of that member or group are the ones left out of the listing  instead of the only ones kept. (optional)
     - parameter applyFilterOption: (query) Chooses which half of a listing `filterType` and `filterValue` are applied to. The Recent section holds  files only, so the value does not change what comes back. (optional)
     - parameter searchArea: (query) The area a listing is taken from. The Recent section is assembled from the caller's own open history rather  than from an area, so the value does not change which files are returned. (optional)
     - parameter _extension: (query) The file extensions the listing is limited to, matched against the end of the file name. The leading dot is  optional, and the parameter is repeated once per extension. (optional)
     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)
     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. The Recent section keeps its own newest-first order, so the value does not  reorder this listing. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. The Recent section keeps its own newest-first order, so the value does not reorder this  listing. (optional)
     - parameter filterValue: (query) The search string the history is filtered by: it is matched as a substring of file titles and against the  indexed document content as well. Omit it to list the whole history. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentWrapper> 
     */
    open class func getRecentFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, searchArea: SearchArea? = nil, _extension: [String]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentWrapper> {
        let localVariablePath = "/api/2.0/files/recent"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchArea": (wrappedValue: searchArea?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "extension": (wrappedValue: _extension?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the folder history report generation status
     
     See also:
     REST API Reference for getReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-report-folder-history/
     - parameter folderId: (path) The folder whose history report is being polled. It is the folder that was              passed to the operation that started the report. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getReportFolderHistory(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getReportFolderHistoryWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the folder history report generation status
     
     See also:
     REST API Reference for getReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-report-folder-history/
     
     - GET /api/2.0/files/folder/{folderId}/log/report
     - Reports how far the history report of a folder has got, and is the operation to poll after  `POST api/2.0/files/folder/{folderId}/log/report` has queued one. `percentage` climbs to 100, `isCompleted`  turns true when the job is over however it ended, `error` carries the reason when it failed, and  `resultFileId`, `resultFileName` and `resultFileUrl` name the file that was saved in the caller's My  documents - a CSV report leaving the identifier empty. An empty answer means there is no report for this  folder and caller, either because none was started or because a finished one has already been picked up by an  earlier poll. The caller needs read access to the folder and may not be a guest, and the portal plan has to  include the audit feature; a caller who fails the access rule is answered with 403 and a folder that does not  exist with 404. The call is read-only, and each caller sees only their own report.
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
     - parameter folderId: (path) The folder whose history report is being polled. It is the folder that was              passed to the operation that started the report. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func getReportFolderHistoryWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/log/report"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
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
     Get filtered sections
     
     See also:
     REST API Reference for getRootFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)     - parameter filterType: (query) Narrows the content listed inside every returned section to a single kind of entry, such as documents, images  or one type of room. Omit it to list every kind the sections hold. (optional)     - parameter withoutTrash: (query) Set it to `true` to leave the Trash section out of the returned set of sections; with `false`, or when the  parameter is omitted, the section is returned whenever the account has one of its own. (optional)     - parameter count: (query) The size of the content page returned for each section separately, so a value of 1 yields one entry per  section rather than one entry in total. (optional)     - parameter startIndex: (query) The number of matching entries skipped in each section before its page begins; add `count` to it to ask for  the next page of every section. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)     - parameter filterValue: (query) The search string the content of every section is filtered by: it is matched as a substring of entry titles  and, for files, against the indexed document content as well. Omit it to list the sections unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRootFolders(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, withoutTrash: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentArrayWrapper {
        return try await getRootFoldersWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, withoutTrash: withoutTrash, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get filtered sections
     
     See also:
     REST API Reference for getRootFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
     
     - GET /api/2.0/files/@root
     - Returns every top-level section the calling account can see in one response, each of them a full section  object carrying its own first page of content: Favorites, Recent, Shared with me, My documents,  Trash, Rooms, Forms, Archive and, while AI access is enabled for the portal, AI agents. A section is  left out when the account has none of it, which is why a guest gets no personal section, and Recent is  listed only while it is switched on with `PUT api/2.0/files/displayrecent`. Pass `withoutTrash=true` to drop  the Trash section. The filters, `count` and `startIndex` are applied to each section separately, so  `count=1` returns one entry per section and every section reports its own `total`. Because it builds the  content of all of them, this is the most expensive listing in the module: when a single section is enough,  read it directly, for example with `GET api/2.0/files/@my`. The call modifies nothing in the sections and  leaves their new-item badges untouched, though passing `sortBy` saves the requested order as the default order  for this account.
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
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)
     - parameter filterType: (query) Narrows the content listed inside every returned section to a single kind of entry, such as documents, images  or one type of room. Omit it to list every kind the sections hold. (optional)
     - parameter withoutTrash: (query) Set it to `true` to leave the Trash section out of the returned set of sections; with `false`, or when the  parameter is omitted, the section is returned whenever the account has one of its own. (optional)
     - parameter count: (query) The size of the content page returned for each section separately, so a value of 1 yields one entry per  section rather than one entry in total. (optional)
     - parameter startIndex: (query) The number of matching entries skipped in each section before its page begins; add `count` to it to ask for  the next page of every section. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)
     - parameter filterValue: (query) The search string the content of every section is filtered by: it is matched as a substring of entry titles  and, for files, against the indexed document content as well. Omit it to list the sections unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentArrayWrapper> 
     */
    open class func getRootFoldersWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, withoutTrash: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentArrayWrapper> {
        let localVariablePath = "/api/2.0/files/@root"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutTrash": (wrappedValue: withoutTrash?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Trash section
     
     See also:
     REST API Reference for getTrashFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)     - parameter filterValue: (query) The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTrashFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentWrapper {
        return try await getTrashFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, applyFilterOption: applyFilterOption, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Trash section
     
     See also:
     REST API Reference for getTrashFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
     
     - GET /api/2.0/files/@trash
     - Returns the caller's Trash section: the files and folders this account has deleted, kept there until they  are restored or discarded. Each member has a Trash of their own and sees only what they deleted themselves.  Restore an entry by moving it back with `PUT api/2.0/files/fileops/move`, or discard the whole section with  `PUT api/2.0/files/fileops/emptytrash`; both start a background operation that is polled through  `GET api/2.0/files/fileops`. This call itself modifies nothing, though passing `sortBy` saves the requested  order as the default order for this account. Only the top level of the section is listed, so the contents of a  deleted folder are not expanded into it, and `filterValue` is matched against titles alone here rather than  against document content. `folders` and `files` hold one page of the result, `total` counts everything that  matches before `count` and `startIndex` are applied, and `current` describes the section folder. An account  that is given no Trash of its own, an outsider for instance, receives 404.
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
     - parameter userIdOrGroupId: (query) Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read. (optional)
     - parameter filterType: (query) Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds. (optional)
     - parameter applyFilterOption: (query) Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered. (optional)
     - parameter count: (query) The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read. (optional)
     - parameter startIndex: (query) The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page. (optional)
     - parameter sortBy: (query) The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. (optional)
     - parameter sortOrder: (query) The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. (optional)
     - parameter filterValue: (query) The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentWrapper> 
     */
    open class func getTrashFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentWrapper> {
        let localVariablePath = "/api/2.0/files/@trash"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Insert a file
     
     See also:
     REST API Reference for insertFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter insertFileFile: (form) The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins. (optional)     - parameter insertFileTitle: (form) The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored. (optional)     - parameter insertFileCreateNewIfExist: (form) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)     - parameter insertFileKeepConvertStatus: (form) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)     - parameter insertFileStreamCanRead: (form)  (optional)     - parameter insertFileStreamCanWrite: (form)  (optional)     - parameter insertFileStreamCanSeek: (form)  (optional)     - parameter insertFileStreamCanTimeout: (form)  (optional)     - parameter insertFileStreamLength: (form)  (optional)     - parameter insertFileStreamPosition: (form)  (optional)     - parameter insertFileStreamReadTimeout: (form)  (optional)     - parameter insertFileStreamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func insertFile(folderId: Int, insertFileFile: URL? = nil, insertFileTitle: String? = nil, insertFileCreateNewIfExist: Bool? = nil, insertFileKeepConvertStatus: Bool? = nil, insertFileStreamCanRead: Bool? = nil, insertFileStreamCanWrite: Bool? = nil, insertFileStreamCanSeek: Bool? = nil, insertFileStreamCanTimeout: Bool? = nil, insertFileStreamLength: Int64? = nil, insertFileStreamPosition: Int64? = nil, insertFileStreamReadTimeout: Int? = nil, insertFileStreamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await insertFileWithRequestBuilder(folderId: folderId, insertFileFile: insertFileFile, insertFileTitle: insertFileTitle, insertFileCreateNewIfExist: insertFileCreateNewIfExist, insertFileKeepConvertStatus: insertFileKeepConvertStatus, insertFileStreamCanRead: insertFileStreamCanRead, insertFileStreamCanWrite: insertFileStreamCanWrite, insertFileStreamCanSeek: insertFileStreamCanSeek, insertFileStreamCanTimeout: insertFileStreamCanTimeout, insertFileStreamLength: insertFileStreamLength, insertFileStreamPosition: insertFileStreamPosition, insertFileStreamReadTimeout: insertFileStreamReadTimeout, insertFileStreamWriteTimeout: insertFileStreamWriteTimeout, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Insert a file
     
     See also:
     REST API Reference for insertFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
     
     - POST /api/2.0/files/{folderId}/insert
     - Stores a file in the folder named by the path in a single request, taking its name from `title` rather than  from the uploaded part, which is what separates it from `POST api/2.0/files/{folderId}/upload`. The content  may arrive either as a multipart part or as the raw request body. The name is stripped of characters a title  cannot hold and truncated, and `createNewIfExist` settles the clash: false adds a new version to the file that  already carries the name, true keeps both by giving the new one a numeric suffix. The caller needs the right  to add content to the folder, so a reader, an editor and a guest get 403, a section root and an archived room  are refused as well, and an unknown folder gives 404. Formats the portal converts are converted afterwards in  the background; pass `keepConvertStatus` to keep the outcome readable through  `GET api/2.0/files/file/{fileId}/checkconversion`. The answer is the stored file. A large payload belongs in a  chunked session instead.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter insertFileFile: (form) The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins. (optional)
     - parameter insertFileTitle: (form) The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored. (optional)
     - parameter insertFileCreateNewIfExist: (form) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)
     - parameter insertFileKeepConvertStatus: (form) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)
     - parameter insertFileStreamCanRead: (form)  (optional)
     - parameter insertFileStreamCanWrite: (form)  (optional)
     - parameter insertFileStreamCanSeek: (form)  (optional)
     - parameter insertFileStreamCanTimeout: (form)  (optional)
     - parameter insertFileStreamLength: (form)  (optional)
     - parameter insertFileStreamPosition: (form)  (optional)
     - parameter insertFileStreamReadTimeout: (form)  (optional)
     - parameter insertFileStreamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func insertFileWithRequestBuilder(folderId: Int, insertFileFile: URL? = nil, insertFileTitle: String? = nil, insertFileCreateNewIfExist: Bool? = nil, insertFileKeepConvertStatus: Bool? = nil, insertFileStreamCanRead: Bool? = nil, insertFileStreamCanWrite: Bool? = nil, insertFileStreamCanSeek: Bool? = nil, insertFileStreamCanTimeout: Bool? = nil, insertFileStreamLength: Int64? = nil, insertFileStreamPosition: Int64? = nil, insertFileStreamReadTimeout: Int? = nil, insertFileStreamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/insert"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "InsertFile.File": insertFileFile?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Title": insertFileTitle?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.CreateNewIfExist": insertFileCreateNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.KeepConvertStatus": insertFileKeepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanRead": insertFileStreamCanRead?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanWrite": insertFileStreamCanWrite?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanSeek": insertFileStreamCanSeek?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanTimeout": insertFileStreamCanTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.Length": insertFileStreamLength?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.Position": insertFileStreamPosition?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.ReadTimeout": insertFileStreamReadTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.WriteTimeout": insertFileStreamWriteTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Insert a file (third-party storage)
     
     See also:
     REST API Reference for insertFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter insertFileFile: (form) The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins. (optional)     - parameter insertFileTitle: (form) The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored. (optional)     - parameter insertFileCreateNewIfExist: (form) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)     - parameter insertFileKeepConvertStatus: (form) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)     - parameter insertFileStreamCanRead: (form)  (optional)     - parameter insertFileStreamCanWrite: (form)  (optional)     - parameter insertFileStreamCanSeek: (form)  (optional)     - parameter insertFileStreamCanTimeout: (form)  (optional)     - parameter insertFileStreamLength: (form)  (optional)     - parameter insertFileStreamPosition: (form)  (optional)     - parameter insertFileStreamReadTimeout: (form)  (optional)     - parameter insertFileStreamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func insertFile(folderId: String, insertFileFile: URL? = nil, insertFileTitle: String? = nil, insertFileCreateNewIfExist: Bool? = nil, insertFileKeepConvertStatus: Bool? = nil, insertFileStreamCanRead: Bool? = nil, insertFileStreamCanWrite: Bool? = nil, insertFileStreamCanSeek: Bool? = nil, insertFileStreamCanTimeout: Bool? = nil, insertFileStreamLength: Int64? = nil, insertFileStreamPosition: Int64? = nil, insertFileStreamReadTimeout: Int? = nil, insertFileStreamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileWrapper {
        return try await insertFileWithRequestBuilder(folderId: folderId, insertFileFile: insertFileFile, insertFileTitle: insertFileTitle, insertFileCreateNewIfExist: insertFileCreateNewIfExist, insertFileKeepConvertStatus: insertFileKeepConvertStatus, insertFileStreamCanRead: insertFileStreamCanRead, insertFileStreamCanWrite: insertFileStreamCanWrite, insertFileStreamCanSeek: insertFileStreamCanSeek, insertFileStreamCanTimeout: insertFileStreamCanTimeout, insertFileStreamLength: insertFileStreamLength, insertFileStreamPosition: insertFileStreamPosition, insertFileStreamReadTimeout: insertFileStreamReadTimeout, insertFileStreamWriteTimeout: insertFileStreamWriteTimeout, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Insert a file (third-party storage)
     
     See also:
     REST API Reference for insertFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
     
     - POST /api/2.0/files/{folderId}/insert
     - Stores a file in the folder named by the path in a single request, taking its name from `title` rather than  from the uploaded part, which is what separates it from `POST api/2.0/files/{folderId}/upload`. The content  may arrive either as a multipart part or as the raw request body. The name is stripped of characters a title  cannot hold and truncated, and `createNewIfExist` settles the clash: false adds a new version to the file that  already carries the name, true keeps both by giving the new one a numeric suffix. The caller needs the right  to add content to the folder, so a reader, an editor and a guest get 403, a section root and an archived room  are refused as well, and an unknown folder gives 404. Formats the portal converts are converted afterwards in  the background; pass `keepConvertStatus` to keep the outcome readable through  `GET api/2.0/files/file/{fileId}/checkconversion`. The answer is the stored file. A large payload belongs in a  chunked session instead.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter insertFileFile: (form) The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins. (optional)
     - parameter insertFileTitle: (form) The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored. (optional)
     - parameter insertFileCreateNewIfExist: (form) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)
     - parameter insertFileKeepConvertStatus: (form) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)
     - parameter insertFileStreamCanRead: (form)  (optional)
     - parameter insertFileStreamCanWrite: (form)  (optional)
     - parameter insertFileStreamCanSeek: (form)  (optional)
     - parameter insertFileStreamCanTimeout: (form)  (optional)
     - parameter insertFileStreamLength: (form)  (optional)
     - parameter insertFileStreamPosition: (form)  (optional)
     - parameter insertFileStreamReadTimeout: (form)  (optional)
     - parameter insertFileStreamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileWrapper> 
     */
    open class func insertFileWithRequestBuilder(folderId: String, insertFileFile: URL? = nil, insertFileTitle: String? = nil, insertFileCreateNewIfExist: Bool? = nil, insertFileKeepConvertStatus: Bool? = nil, insertFileStreamCanRead: Bool? = nil, insertFileStreamCanWrite: Bool? = nil, insertFileStreamCanSeek: Bool? = nil, insertFileStreamCanTimeout: Bool? = nil, insertFileStreamLength: Int64? = nil, insertFileStreamPosition: Int64? = nil, insertFileStreamReadTimeout: Int? = nil, insertFileStreamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/insert"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "InsertFile.File": insertFileFile?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Title": insertFileTitle?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.CreateNewIfExist": insertFileCreateNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.KeepConvertStatus": insertFileKeepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanRead": insertFileStreamCanRead?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanWrite": insertFileStreamCanWrite?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanSeek": insertFileStreamCanSeek?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanTimeout": insertFileStreamCanTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.Length": insertFileStreamLength?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.Position": insertFileStreamPosition?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.ReadTimeout": insertFileStreamReadTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.WriteTimeout": insertFileStreamWriteTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Insert a file into My documents
     
     See also:
     REST API Reference for insertFileToMyFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
     - parameter file: (form) The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins. (optional)     - parameter title: (form) The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored. (optional)     - parameter createNewIfExist: (form) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)     - parameter keepConvertStatus: (form) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)     - parameter streamCanRead: (form)  (optional)     - parameter streamCanWrite: (form)  (optional)     - parameter streamCanSeek: (form)  (optional)     - parameter streamCanTimeout: (form)  (optional)     - parameter streamLength: (form)  (optional)     - parameter streamPosition: (form)  (optional)     - parameter streamReadTimeout: (form)  (optional)     - parameter streamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func insertFileToMyFromBody(file: URL? = nil, title: String? = nil, createNewIfExist: Bool? = nil, keepConvertStatus: Bool? = nil, streamCanRead: Bool? = nil, streamCanWrite: Bool? = nil, streamCanSeek: Bool? = nil, streamCanTimeout: Bool? = nil, streamLength: Int64? = nil, streamPosition: Int64? = nil, streamReadTimeout: Int? = nil, streamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileWrapper {
        return try await insertFileToMyFromBodyWithRequestBuilder(file: file, title: title, createNewIfExist: createNewIfExist, keepConvertStatus: keepConvertStatus, streamCanRead: streamCanRead, streamCanWrite: streamCanWrite, streamCanSeek: streamCanSeek, streamCanTimeout: streamCanTimeout, streamLength: streamLength, streamPosition: streamPosition, streamReadTimeout: streamReadTimeout, streamWriteTimeout: streamWriteTimeout, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Insert a file into My documents
     
     See also:
     REST API Reference for insertFileToMyFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
     
     - POST /api/2.0/files/@my/insert
     - Stores one file in the caller's own My documents section, the personal storage every portal member has, and  returns the stored file. The destination takes no identifier: it is resolved from the calling account and  created on first use, while a guest account has none and is answered as missing (404). Send the content as a  `multipart/form-data` part or as the raw request body, and name it with `title`, which wins over the name of  the uploaded part and has invalid characters replaced before storing. The call is not idempotent: by default a  file of the same title is overwritten as a new version, while `createNewIfExist=true` stores a separate copy  under a title made unique with a numeric suffix; a title held by a file that is locked or open in the editor  cannot be overwritten either, and a second file appears under the same title. Formats listed in  `extsMustConvert` of `GET api/2.0/files/settings` are converted after the response is sent;  `keepConvertStatus=true` keeps that result readable through `GET api/2.0/files/file/{fileId}/checkconversion`,  which otherwise drops it. Files over the single-request size limit or the account's storage quota are refused:  send those through `POST api/2.0/files/{folderId}/upload/create_session`, and use  `POST api/2.0/files/{folderId}/insert` for any other destination.
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
     - parameter file: (form) The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins. (optional)
     - parameter title: (form) The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored. (optional)
     - parameter createNewIfExist: (form) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)
     - parameter keepConvertStatus: (form) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)
     - parameter streamCanRead: (form)  (optional)
     - parameter streamCanWrite: (form)  (optional)
     - parameter streamCanSeek: (form)  (optional)
     - parameter streamCanTimeout: (form)  (optional)
     - parameter streamLength: (form)  (optional)
     - parameter streamPosition: (form)  (optional)
     - parameter streamReadTimeout: (form)  (optional)
     - parameter streamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileWrapper> 
     */
    open class func insertFileToMyFromBodyWithRequestBuilder(file: URL? = nil, title: String? = nil, createNewIfExist: Bool? = nil, keepConvertStatus: Bool? = nil, streamCanRead: Bool? = nil, streamCanWrite: Bool? = nil, streamCanSeek: Bool? = nil, streamCanTimeout: Bool? = nil, streamLength: Int64? = nil, streamPosition: Int64? = nil, streamReadTimeout: Int? = nil, streamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileWrapper> {
        let localVariablePath = "/api/2.0/files/@my/insert"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Title": title?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "CreateNewIfExist": createNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "KeepConvertStatus": keepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanRead": streamCanRead?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanWrite": streamCanWrite?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanSeek": streamCanSeek?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanTimeout": streamCanTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.Length": streamLength?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.Position": streamPosition?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.ReadTimeout": streamReadTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.WriteTimeout": streamWriteTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Rename a folder
     
     See also:
     REST API Reference for renameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.      - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func renameFolder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await renameFolderWithRequestBuilder(folderId: folderId, createFolder: createFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rename a folder
     
     See also:
     REST API Reference for renameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
     
     - PUT /api/2.0/files/folder/{folderId}
     - Gives a folder a new title and answers with the folder as it now stands. The title is trimmed, may not be  blank and is refused when it is longer than the limit the schema prints; a title that matches the current one  leaves the folder untouched, and titles need not be unique among the neighbours. The caller needs the right to  rename the folder, which the room manager, a content creator acting on a folder of their own and the owner of  a personal section have, while a guest is refused with 403 whatever their access; a folder in the Trash  section or in an archived room cannot be renamed either, and a folder that does not exist is answered as  not found. A room may be renamed here as well, in which case the caller needs the right to edit the  room, and `PUT api/2.0/files/rooms/{id}` is the operation that changes its other settings. The call is  mutating and idempotent; on a folder stored in a connected third-party account the identifier of the folder  may change with the title.
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
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title. 
     - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func renameFolderWithRequestBuilder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Rename a folder (third-party storage)
     
     See also:
     REST API Reference for renameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.      - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func renameFolder(folderId: String, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await renameFolderWithRequestBuilder(folderId: folderId, createFolder: createFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rename a folder (third-party storage)
     
     See also:
     REST API Reference for renameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
     
     - PUT /api/2.0/files/folder/{folderId}
     - Gives a folder a new title and answers with the folder as it now stands. The title is trimmed, may not be  blank and is refused when it is longer than the limit the schema prints; a title that matches the current one  leaves the folder untouched, and titles need not be unique among the neighbours. The caller needs the right to  rename the folder, which the room manager, a content creator acting on a folder of their own and the owner of  a personal section have, while a guest is refused with 403 whatever their access; a folder in the Trash  section or in an archived room cannot be renamed either, and a folder that does not exist is answered as  not found. A room may be renamed here as well, in which case the caller needs the right to edit the  room, and `PUT api/2.0/files/rooms/{id}` is the operation that changes its other settings. The call is  mutating and idempotent; on a folder stored in a connected third-party account the identifier of the folder  may change with the title.
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
     - parameter folderId: (path) The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title. 
     - parameter createFolder: (body) The title carried by the request body. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func renameFolderWithRequestBuilder(folderId: String, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set folder order
     
     See also:
     REST API Reference for setFolderOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
     - parameter folderId: (path) The folder to move.      - parameter orderRequestDto: (body) The position the folder is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderOrder(folderId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderWrapper {
        return try await setFolderOrderWithRequestBuilder(folderId: folderId, orderRequestDto: orderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set folder order
     
     See also:
     REST API Reference for setFolderOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
     
     - PUT /api/2.0/files/folder/{folderId}/order
     - Puts a folder at a given position among the entries of its parent and answers with the folder, its `order`  reporting where it now stands. Positions count from 1, and the entry that held the wanted position, together  with everything after it, is shifted to make room, so the numbering of the parent stays without gaps; a  position beyond the end places the folder last. The value may also be sent as a dotted path, as in 1.2.3, in  which case only its last segment is read. Ordering is what the manual arrangement of a room is built on, and  it only means something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The  caller needs edit access to the folder, which room managers and content creators have, and a member without it  is refused, while a folder that does not exist is answered as not found. The call is mutating and idempotent.  To move several entries in one go use `PUT api/2.0/files/order`.
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
     - parameter folderId: (path) The folder to move. 
     - parameter orderRequestDto: (body) The position the folder is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderWrapper> 
     */
    open class func setFolderOrderWithRequestBuilder(folderId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/order"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: orderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set folder order (third-party storage)
     
     See also:
     REST API Reference for setFolderOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
     - parameter folderId: (path) The folder to move.      - parameter orderRequestDto: (body) The position the folder is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderOrder(folderId: String, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await setFolderOrderWithRequestBuilder(folderId: folderId, orderRequestDto: orderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set folder order (third-party storage)
     
     See also:
     REST API Reference for setFolderOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
     
     - PUT /api/2.0/files/folder/{folderId}/order
     - Puts a folder at a given position among the entries of its parent and answers with the folder, its `order`  reporting where it now stands. Positions count from 1, and the entry that held the wanted position, together  with everything after it, is shifted to make room, so the numbering of the parent stays without gaps; a  position beyond the end places the folder last. The value may also be sent as a dotted path, as in 1.2.3, in  which case only its last segment is read. Ordering is what the manual arrangement of a room is built on, and  it only means something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The  caller needs edit access to the folder, which room managers and content creators have, and a member without it  is refused, while a folder that does not exist is answered as not found. The call is mutating and idempotent.  To move several entries in one go use `PUT api/2.0/files/order`.
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
     - parameter folderId: (path) The folder to move. 
     - parameter orderRequestDto: (body) The position the folder is to take. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func setFolderOrderWithRequestBuilder(folderId: String, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/order"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: orderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the folder external link
     
     See also:
     REST API Reference for setFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
     - parameter id: (path) The folder or room the link belongs to.      - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderPrimaryExternalLink(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setFolderPrimaryExternalLinkWithRequestBuilder(id: id, folderLinkRequest: folderLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the folder external link
     
     See also:
     REST API Reference for setFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
     
     - PUT /api/2.0/files/folder/{id}/links
     - Creates an external link to a folder or a room, or changes or revokes an existing one, and answers with the  link as it now stands. `linkId` decides which: an identifier that is not yet in use, the empty one included,  creates a link, while the identifier of an existing link rewrites it, so the whole set of parameters is  applied every time and a field left out is reset rather than kept. `access` carries the rights the link  grants, and `access` set to the value that denies everything revokes the link instead - the answer is then  empty, and a revoked primary link is not recreated by a later read. `title` names the link for the people who  manage it, `expirationDate` limits its lifetime and is ignored when it lies in the past, `password` asks  visitors for a secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members  alone, and `primary=true` makes it the primary link of the folder. The caller needs the right to manage the  links of the room, which its manager and a portal administrator acting as room manager have; anyone else is  refused and an unknown folder is answered as not found. The call is mutating.
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
     - parameter id: (path) The folder or room the link belongs to. 
     - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setFolderPrimaryExternalLinkWithRequestBuilder(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: folderLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the folder external link (third-party storage)
     
     See also:
     REST API Reference for setFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
     - parameter id: (path) The folder or room the link belongs to.      - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderPrimaryExternalLink(id: String, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setFolderPrimaryExternalLinkWithRequestBuilder(id: id, folderLinkRequest: folderLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the folder external link (third-party storage)
     
     See also:
     REST API Reference for setFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
     
     - PUT /api/2.0/files/folder/{id}/links
     - Creates an external link to a folder or a room, or changes or revokes an existing one, and answers with the  link as it now stands. `linkId` decides which: an identifier that is not yet in use, the empty one included,  creates a link, while the identifier of an existing link rewrites it, so the whole set of parameters is  applied every time and a field left out is reset rather than kept. `access` carries the rights the link  grants, and `access` set to the value that denies everything revokes the link instead - the answer is then  empty, and a revoked primary link is not recreated by a later read. `title` names the link for the people who  manage it, `expirationDate` limits its lifetime and is ignored when it lies in the past, `password` asks  visitors for a secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members  alone, and `primary=true` makes it the primary link of the folder. The caller needs the right to manage the  links of the room, which its manager and a portal administrator acting as room manager have; anyone else is  refused and an unknown folder is answered as not found. The call is mutating.
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
     - parameter id: (path) The folder or room the link belongs to. 
     - parameter folderLinkRequest: (body) The link and the way it is to be shaped. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setFolderPrimaryExternalLinkWithRequestBuilder(id: String, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: folderLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate the folder history report generation
     
     See also:
     REST API Reference for terminateReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-report-folder-history/
     - parameter folderId: (path) The folder whose running history report is to be given up. It is the folder that              was passed to the operation that started the report. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateReportFolderHistory(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateReportFolderHistoryWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the folder history report generation
     
     See also:
     REST API Reference for terminateReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-report-folder-history/
     
     - DELETE /api/2.0/files/folder/{folderId}/log/report
     - Gives up the history report the caller has started for a folder with  `POST api/2.0/files/folder/{folderId}/log/report`. The request only asks the background worker to stop, and  the answer carries no body, so a following `GET api/2.0/files/folder/{folderId}/log/report` is what shows the  task ending as cancelled. Asking to terminate when nothing is running is accepted and changes nothing, which  makes the call safe to repeat. A report that has already finished is not undone by this call and its file  stays in My documents. The caller needs read access to the folder and may not be a guest, and the portal  plan has to include the audit feature; a caller who fails the access rule is answered with 403 and a folder  that does not exist with 404. Each caller can only terminate their own report.
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
     - parameter folderId: (path) The folder whose running history report is to be given up. It is the folder that              was passed to the operation that started the report. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func terminateReportFolderHistoryWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/log/report"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a file
     
     See also:
     REST API Reference for uploadFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter createNewIfExist: (query) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)     - parameter storeOriginalFile: (query) Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has. (optional)     - parameter keepConvertStatus: (query) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)     - parameter file: (form) The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadFile(folderId: Int, createNewIfExist: Bool? = nil, storeOriginalFile: Bool? = nil, keepConvertStatus: Bool? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileArrayWrapper {
        return try await uploadFileWithRequestBuilder(folderId: folderId, createNewIfExist: createNewIfExist, storeOriginalFile: storeOriginalFile, keepConvertStatus: keepConvertStatus, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a file
     
     See also:
     REST API Reference for uploadFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
     
     - POST /api/2.0/files/{folderId}/upload
     - Stores a file in the folder named by the path in a single multipart request, taking its name from the uploaded  part; use `POST api/2.0/files/{folderId}/insert` when the name has to be given separately or the content is  sent as a raw body. The answer is a list that always holds exactly one file. `createNewIfExist` settles the  clash: false adds a new version to the file that already carries the name, true keeps both by giving the new  one a numeric suffix. `storeOriginalFile` reaches further than this call, because it saves the setting on the  calling account, the same one `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later  uploads. The caller needs the right to add content to the folder, so a reader, an editor and a guest get 403,  a section root and an archived room are refused as well, and an unknown folder gives 404. A request without a  file is rejected as invalid, and a payload above the portal upload limit is refused.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter createNewIfExist: (query) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)
     - parameter storeOriginalFile: (query) Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has. (optional)
     - parameter keepConvertStatus: (query) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)
     - parameter file: (form) The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileArrayWrapper> 
     */
    open class func uploadFileWithRequestBuilder(folderId: Int, createNewIfExist: Bool? = nil, storeOriginalFile: Bool? = nil, keepConvertStatus: Bool? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/upload"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "createNewIfExist": (wrappedValue: createNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "storeOriginalFile": (wrappedValue: storeOriginalFile?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "keepConvertStatus": (wrappedValue: keepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a file (third-party storage)
     
     See also:
     REST API Reference for uploadFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter createNewIfExist: (query) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)     - parameter storeOriginalFile: (query) Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has. (optional)     - parameter keepConvertStatus: (query) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)     - parameter file: (form) The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFileArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadFile(folderId: String, createNewIfExist: Bool? = nil, storeOriginalFile: Bool? = nil, keepConvertStatus: Bool? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFileArrayWrapper {
        return try await uploadFileWithRequestBuilder(folderId: folderId, createNewIfExist: createNewIfExist, storeOriginalFile: storeOriginalFile, keepConvertStatus: keepConvertStatus, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a file (third-party storage)
     
     See also:
     REST API Reference for uploadFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
     
     - POST /api/2.0/files/{folderId}/upload
     - Stores a file in the folder named by the path in a single multipart request, taking its name from the uploaded  part; use `POST api/2.0/files/{folderId}/insert` when the name has to be given separately or the content is  sent as a raw body. The answer is a list that always holds exactly one file. `createNewIfExist` settles the  clash: false adds a new version to the file that already carries the name, true keeps both by giving the new  one a numeric suffix. `storeOriginalFile` reaches further than this call, because it saves the setting on the  calling account, the same one `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later  uploads. The caller needs the right to add content to the folder, so a reader, an editor and a guest get 403,  a section root and an archived room are refused as well, and an unknown folder gives 404. A request without a  file is rejected as invalid, and a payload above the portal upload limit is refused.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter createNewIfExist: (query) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)
     - parameter storeOriginalFile: (query) Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has. (optional)
     - parameter keepConvertStatus: (query) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)
     - parameter file: (form) The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFileArrayWrapper> 
     */
    open class func uploadFileWithRequestBuilder(folderId: String, createNewIfExist: Bool? = nil, storeOriginalFile: Bool? = nil, keepConvertStatus: Bool? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFileArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/upload"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "createNewIfExist": (wrappedValue: createNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "storeOriginalFile": (wrappedValue: storeOriginalFile?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "keepConvertStatus": (wrappedValue: keepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFileArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a file to My documents
     
     See also:
     REST API Reference for uploadFileToMy Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
     - parameter createNewIfExist: (query) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)     - parameter storeOriginalFile: (query) Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has. (optional)     - parameter keepConvertStatus: (query) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)     - parameter file: (form) The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadFileToMy(createNewIfExist: Bool? = nil, storeOriginalFile: Bool? = nil, keepConvertStatus: Bool? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileArrayWrapper {
        return try await uploadFileToMyWithRequestBuilder(createNewIfExist: createNewIfExist, storeOriginalFile: storeOriginalFile, keepConvertStatus: keepConvertStatus, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a file to My documents
     
     See also:
     REST API Reference for uploadFileToMy Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
     
     - POST /api/2.0/files/@my/upload
     - Uploads one file into the caller's own My documents section and returns it inside a single-element array; one  request stores exactly one file. The destination takes no identifier: it is resolved from the calling account  and created on first use, while a guest account has none and is answered as missing (404). The body has to be  `multipart/form-data` carrying the file part; a request without it is rejected as invalid, and the stored name  comes from that part, since unlike `POST api/2.0/files/@my/insert` there is no separate title. The call is not  idempotent: by default a file of the same title is overwritten as a new version, while `createNewIfExist=true`  stores a separate copy under a title made unique with a numeric suffix. `storeOriginalFile` is not a  per-request switch: it writes the same account setting as `PUT api/2.0/files/storeoriginal`, which decides  what happens to the formats listed in `extsMustConvert` of `GET api/2.0/files/settings` when they are  converted after the response - false replaces the uploaded file with the converted one, true keeps both;  `keepConvertStatus=true` keeps that conversion result readable through  `GET api/2.0/files/file/{fileId}/checkconversion`. Files over the single-request size limit or the account's  storage quota are refused; send those through `POST api/2.0/files/{folderId}/upload/create_session`.
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
     - parameter createNewIfExist: (query) Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title. (optional)
     - parameter storeOriginalFile: (query) Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has. (optional)
     - parameter keepConvertStatus: (query) Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing. (optional)
     - parameter file: (form) The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileArrayWrapper> 
     */
    open class func uploadFileToMyWithRequestBuilder(createNewIfExist: Bool? = nil, storeOriginalFile: Bool? = nil, keepConvertStatus: Bool? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileArrayWrapper> {
        let localVariablePath = "/api/2.0/files/@my/upload"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "createNewIfExist": (wrappedValue: createNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "storeOriginalFile": (wrappedValue: storeOriginalFile?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "keepConvertStatus": (wrappedValue: keepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension FilesFoldersAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> FilesFoldersAPIApi {
        self.fields = fields
        return self
    }
}
