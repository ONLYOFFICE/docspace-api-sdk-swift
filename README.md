# DocSpaceApiSDK

The ONLYOFFICE DocSpace SDK for Swift6 is a library that provides tools for integrating and managing DocSpace features within your applications. It simplifies interaction with the DocSpace API by offering ready-to-use methods and models.

For more information, please visit [https://helpdesk.onlyoffice.com/hc/en-us](https://helpdesk.onlyoffice.com/hc/en-us)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`


## Documentation For Authorization


Authentication schemes defined for the API:
<a id="asc_auth_key"></a>
### asc_auth_key

- **Type**: API key
- **API key parameter name**: asc_auth_key
- **Location**: Cookie

<a id="Basic"></a>
### Basic

- **Type**: HTTP basic authentication

<a id="Bearer"></a>
### Bearer

- **Type**: HTTP Bearer Token authentication (JWT)

<a id="ApiKeyBearer"></a>
### ApiKeyBearer

- **Type**: API key
- **API key parameter name**: ApiKeyBearer
- **Location**: HTTP header

<a id="OAuth2"></a>
### OAuth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: {{authBaseUrl}}/oauth2/authorize
- **Token Url**: {{authBaseUrl}}/oauth2/token
- **Scopes**: 
 - **read**: Read access to protected resources
 - **write**: Write access to protected resources

<a id="OpenId"></a>
### OpenId

- **Type**: OpenId Connect
- **OpenId Connect URL**: {{authBaseUrl}}/.well-known/openid-configuration

<a id="x-signature"></a>
### x-signature

- **Type**: API key
- **API key parameter name**: x-signature
- **Location**: Cookie


All URIs are relative to *https://your-docspace.onlyoffice.com*

### API Endoints tables:

<details>
  <summary>AIAgentsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AIAgentsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#createagent"><strong>createAgent</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/agents</td>
        <td>Create an ai agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#deleteagent"><strong>deleteAgent</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/agents/{id}</td>
        <td>Remove an ai agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#getagentinfo"><strong>getAgentInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/agents/{id}</td>
        <td>Return an ai agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#getagents"><strong>getAgents</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/agents</td>
        <td>Get ai agents</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#getagentsnewitems"><strong>getAgentsNewItems</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/agents/news</td>
        <td>Get the room new items</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#resetagentsquota"><strong>resetAgentsQuota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/agents/resetquota</td>
        <td>Reset the AI agents quota limit</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#updateagent"><strong>updateAgent</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/agents/{id}</td>
        <td>Update an ai agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsAPI.md#updateagentsquota"><strong>updateAgentsQuota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/agents/agentquota</td>
        <td>Change the AI agent quota limit</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>AIChatAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AIChatAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#continuechat"><strong>continueChat</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/chats/{chatId}/messages</td>
        <td>Send a message to an existing AI chat</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#deletechat"><strong>deleteChat</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/chats/{chatId}</td>
        <td>Delete an AI chat</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#exportchat"><strong>exportChat</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/chats/{chatId}/messages/export</td>
        <td>Export AI chat messages to a file</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#getchat"><strong>getChat</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/chats/{chatId}</td>
        <td>Get an AI chat by ID</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#getchatmodels"><strong>getChatModels</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/chats/models</td>
        <td>Get available AI models</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#getchats"><strong>getChats</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/rooms/{roomId}/chats</td>
        <td>Get AI chats in a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#getmessages"><strong>getMessages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/chats/{chatId}/messages</td>
        <td>Get messages of an AI chat</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#getuserchatssettings"><strong>getUserChatsSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/rooms/{roomId}/chats/config</td>
        <td>Get user chat settings for a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#providepermission"><strong>providePermission</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/chats/tool-permissions/{callId}/decision</td>
        <td>Submit a tool execution permission decision</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#renamechat"><strong>renameChat</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/chats/{chatId}</td>
        <td>Rename an AI chat</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#setuserchatssettings"><strong>setUserChatsSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/rooms/{roomId}/chats/config</td>
        <td>Update user chat settings for a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIChatAPI.md#startnewchat"><strong>startNewChat</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/rooms/{roomId}/chats</td>
        <td>Start a new AI chat</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>AIMCPAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AIMCPAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#addroomservers"><strong>addRoomServers</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/rooms/{roomId}/servers</td>
        <td>Assign MCP servers to a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#addserver"><strong>addServer</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/servers</td>
        <td>Register a custom MCP server</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#connectserver"><strong>connectServer</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/rooms/{roomId}/servers/{serverId}/connect</td>
        <td>Connect an OAuth-based MCP server in a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#deleteroomservers"><strong>deleteRoomServers</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/rooms/{roomId}/servers</td>
        <td>Remove MCP servers from a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#deleteserver"><strong>deleteServer</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/servers</td>
        <td>Delete MCP servers</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#disconnectserver"><strong>disconnectServer</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/rooms/{roomId}/servers/{serverId}/disconnect</td>
        <td>Disconnect an MCP server in a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#getavailableservers"><strong>getAvailableServers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/servers/available</td>
        <td>Get available MCP servers</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#getroomservers"><strong>getRoomServers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/rooms/{roomId}/servers</td>
        <td>Get MCP servers assigned to a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#getserver"><strong>getServer</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/servers/{id}</td>
        <td>Get an MCP server by ID</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#getservers"><strong>getServers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/servers</td>
        <td>Get all MCP servers</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#gettools"><strong>getTools</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools</td>
        <td>Get MCP server tools in a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#setserverstatus"><strong>setServerStatus</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/servers/{id}/status</td>
        <td>Enable or disable an MCP server</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#settools"><strong>setTools</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools</td>
        <td>Configure MCP server tools in a room</td>
      </tr>
      <tr>
        <td><a href="docs/AIMCPAPI.md#updateserver"><strong>updateServer</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/servers/{id}</td>
        <td>Update a custom MCP server</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>AIMessagesAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AIMessagesAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIMessagesAPI.md#exportmessage"><strong>exportMessage</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/messages/{messageId}/export</td>
        <td>Export a single AI message to a document</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>AIProvidersAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AIProvidersAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIProvidersAPI.md#addprovider"><strong>addProvider</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/providers</td>
        <td>Add an AI provider</td>
      </tr>
      <tr>
        <td><a href="docs/AIProvidersAPI.md#deleteproviders"><strong>deleteProviders</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/providers</td>
        <td>Delete AI providers</td>
      </tr>
      <tr>
        <td><a href="docs/AIProvidersAPI.md#getavailableproviders"><strong>getAvailableProviders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/providers/available</td>
        <td>Get available AI provider types</td>
      </tr>
      <tr>
        <td><a href="docs/AIProvidersAPI.md#getdefaultprovider"><strong>getDefaultProvider</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/providers/default</td>
        <td>Get the default AI provider</td>
      </tr>
      <tr>
        <td><a href="docs/AIProvidersAPI.md#getproviders"><strong>getProviders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/providers</td>
        <td>Get AI providers</td>
      </tr>
      <tr>
        <td><a href="docs/AIProvidersAPI.md#setdefaultprovider"><strong>setDefaultProvider</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/providers/default</td>
        <td>Set the default AI provider</td>
      </tr>
      <tr>
        <td><a href="docs/AIProvidersAPI.md#updateprovider"><strong>updateProvider</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/providers/{id}</td>
        <td>Update an AI provider</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>AISettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AISettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsAPI.md#getaisettings"><strong>getAiSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/config</td>
        <td>Get AI settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsAPI.md#getvectorizationsettings"><strong>getVectorizationSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/config/vectorization</td>
        <td>Get vectorization settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsAPI.md#getwebsearchsettings"><strong>getWebSearchSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/config/web-search</td>
        <td>Get web search settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsAPI.md#setvectorizationsettings"><strong>setVectorizationSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/config/vectorization</td>
        <td>Update vectorization settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsAPI.md#setwebsearchsettings"><strong>setWebSearchSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/config/web-search</td>
        <td>Update web search settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>AIVectorizationAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AIVectorizationAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIVectorizationAPI.md#starttask"><strong>startTask</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/vectorization/tasks</td>
        <td>Start a vectorization task</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>ApiKeysAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>ApiKeysAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysAPI.md#createapikey"><strong>createApiKey</strong></a></td>
        <td><strong>POST</strong> /api/2.0/keys</td>
        <td>Create a user API key</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysAPI.md#deleteapikey"><strong>deleteApiKey</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/keys/{keyId}</td>
        <td>Delete a user API key</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysAPI.md#getallpermissions"><strong>getAllPermissions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/keys/permissions</td>
        <td>Get API key permissions</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysAPI.md#getapikey"><strong>getApiKey</strong></a></td>
        <td><strong>GET</strong> /api/2.0/keys/@self</td>
        <td>Get current user's API key</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysAPI.md#getapikeys"><strong>getApiKeys</strong></a></td>
        <td><strong>GET</strong> /api/2.0/keys</td>
        <td>Get current user's API keys</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysAPI.md#updateapikey"><strong>updateApiKey</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/keys/{keyId}</td>
        <td>Update an API key</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>AuthenticationAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AuthenticationAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationAPI.md#authenticateme"><strong>authenticateMe</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication</td>
        <td>Authenticate a user</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationAPI.md#authenticatemefrombodywithcode"><strong>authenticateMeFromBodyWithCode</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/{code}</td>
        <td>Authenticate a user by code</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationAPI.md#checkconfirm"><strong>checkConfirm</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/confirm</td>
        <td>Open confirmation email URL</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationAPI.md#getisauthentificated"><strong>getIsAuthentificated</strong></a></td>
        <td><strong>GET</strong> /api/2.0/authentication</td>
        <td>Check authentication</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationAPI.md#logout"><strong>logout</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/logout</td>
        <td>Log out</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationAPI.md#savemobilephone"><strong>saveMobilePhone</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/setphone</td>
        <td>Set a mobile phone</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationAPI.md#sendsmscode"><strong>sendSmsCode</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/sendsms</td>
        <td>Send SMS code</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>BackupAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>BackupAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#cancelbackup"><strong>cancelBackup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/cancelbackup</td>
        <td>Cancel current backup</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#createbackupschedule"><strong>createBackupSchedule</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/createbackupschedule</td>
        <td>Create the backup schedule</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#deletebackup"><strong>deleteBackup</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/backup/deletebackup/{id}</td>
        <td>Delete the backup</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#deletebackuphistory"><strong>deleteBackupHistory</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/backup/deletebackuphistory</td>
        <td>Delete the backup history</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#deletebackupschedule"><strong>deleteBackupSchedule</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/backup/deletebackupschedule</td>
        <td>Delete the backup schedule</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#getbackuphistory"><strong>getBackupHistory</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackuphistory</td>
        <td>Get the backup history</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#getbackupprogress"><strong>getBackupProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackupprogress</td>
        <td>Get the backup progress</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#getbackupschedule"><strong>getBackupSchedule</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackupschedule</td>
        <td>Get the backup schedule</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#getbackupscount"><strong>getBackupsCount</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackupscount</td>
        <td>Get the number of backups</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#getbackupsservicestate"><strong>getBackupsServiceState</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getservicestate</td>
        <td>Get the backup service state</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#getrestoreprogress"><strong>getRestoreProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getrestoreprogress</td>
        <td>Get the restoring progress</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#startbackup"><strong>startBackup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/startbackup</td>
        <td>Start the backup</td>
      </tr>
      <tr>
        <td><a href="docs/BackupAPI.md#startbackuprestore"><strong>startBackupRestore</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/startrestore</td>
        <td>Start the restoring process</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>CapabilitiesAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>CapabilitiesAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/CapabilitiesAPI.md#getportalcapabilities"><strong>getPortalCapabilities</strong></a></td>
        <td><strong>GET</strong> /api/2.0/capabilities</td>
        <td>Get portal capabilities</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>FilesFilesAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>FilesFilesAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#addfiletorecent"><strong>addFileToRecent</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/recent</td>
        <td>Add a file to the Recent section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#addtemplates"><strong>addTemplates</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/templates</td>
        <td>Add template files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#changeversionhistory"><strong>changeVersionHistory</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/history</td>
        <td>Change version history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#checkfillformdraft"><strong>checkFillFormDraft</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/masterform/{fileId}/checkfillformdraft</td>
        <td>Check the form draft filling</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#copyfileas"><strong>copyFileAs</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/copyas</td>
        <td>Copy a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createeditsession"><strong>createEditSession</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/edit_session</td>
        <td>Create the editing session</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createfile"><strong>createFile</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/file</td>
        <td>Create a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createfileinmydocuments"><strong>createFileInMyDocuments</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/file</td>
        <td>Create a file in the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createfileprimaryexternallink"><strong>createFilePrimaryExternalLink</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{id}/link</td>
        <td>Create primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createhtmlfile"><strong>createHtmlFile</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/html</td>
        <td>Create an HTML file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createhtmlfileinmydocuments"><strong>createHtmlFileInMyDocuments</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/html</td>
        <td>Create an HTML file in the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createtextfile"><strong>createTextFile</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/text</td>
        <td>Create a text file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createtextfileinmydocuments"><strong>createTextFileInMyDocuments</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/text</td>
        <td>Create a text file in the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#createthumbnails"><strong>createThumbnails</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/thumbnails</td>
        <td>Create file thumbnails</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#deletefile"><strong>deleteFile</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/file/{fileId}</td>
        <td>Delete a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#deleterecent"><strong>deleteRecent</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/recent</td>
        <td>Delete recent files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#deletetemplates"><strong>deleteTemplates</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/templates</td>
        <td>Delete template files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#generatexlsx"><strong>generateXlsx</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/xlsx</td>
        <td>Generate XLSX report</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getallformroles"><strong>getAllFormRoles</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/formroles</td>
        <td>Get form roles</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#geteditdiffurl"><strong>getEditDiffUrl</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/edit/diff</td>
        <td>Get changes URL</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getedithistory"><strong>getEditHistory</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/edit/history</td>
        <td>Get version history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getfilehistory"><strong>getFileHistory</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/log</td>
        <td>Get file history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getfileinfo"><strong>getFileInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}</td>
        <td>Get file information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getfilelinks"><strong>getFileLinks</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{id}/links</td>
        <td>Get file external links</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getfileprimaryexternallink"><strong>getFilePrimaryExternalLink</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{id}/link</td>
        <td>Get primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getfileversioninfo"><strong>getFileVersionInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/history</td>
        <td>Get file versions</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getfillresult"><strong>getFillResult</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/fillresult</td>
        <td>Get form-filling result</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getformsubmissions"><strong>getFormSubmissions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/submissions</td>
        <td>Get form submission results</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getpresignedfileuri"><strong>getPresignedFileUri</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/presigned</td>
        <td>Get file download link asynchronously</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getpresigneduri"><strong>getPresignedUri</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/presigneduri</td>
        <td>Get file download link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getprotectedfileusers"><strong>getProtectedFileUsers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/protectusers</td>
        <td>Get users access rights to the protected file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#getreferencedata"><strong>getReferenceData</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/referencedata</td>
        <td>Get reference data</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#isformpdf"><strong>isFormPDF</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/isformpdf</td>
        <td>Check the PDF file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#lockfile"><strong>lockFile</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/lock</td>
        <td>Lock a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#manageformfilling"><strong>manageFormFilling</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/manageformfilling</td>
        <td>Perform form filling action</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#openeditfile"><strong>openEditFile</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/openedit</td>
        <td>Open a file configuration</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#restorefileversion"><strong>restoreFileVersion</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/restoreversion</td>
        <td>Restore a file version</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#saveeditingfilefromform"><strong>saveEditingFileFromForm</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/saveediting</td>
        <td>Save file edits</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#savefileaspdf"><strong>saveFileAsPdf</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{id}/saveaspdf</td>
        <td>Save a file as PDF</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#saveformrolemapping"><strong>saveFormRoleMapping</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/formrolemapping</td>
        <td>Save form role mapping</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#setcustomfiltertag"><strong>setCustomFilterTag</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/customfilter</td>
        <td>Set the Custom Filter editing mode</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#setfileexternallink"><strong>setFileExternalLink</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{id}/links</td>
        <td>Set an external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#setfileorder"><strong>setFileOrder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/{fileId}/order</td>
        <td>Set file order</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#setfilesorder"><strong>setFilesOrder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/order</td>
        <td>Set order of files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#starteditfile"><strong>startEditFile</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/startedit</td>
        <td>Start file editing</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#startfillingfile"><strong>startFillingFile</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/startfilling</td>
        <td>Start file filling</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#togglefilefavorite"><strong>toggleFileFavorite</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/favorites/{fileId}</td>
        <td>Change the file favorite status</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#trackeditfile"><strong>trackEditFile</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/trackeditfile</td>
        <td>Track file editing</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesAPI.md#updatefile"><strong>updateFile</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}</td>
        <td>Update a file</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>FilesFoldersAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>FilesFoldersAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#checkupload"><strong>checkUpload</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/upload/check</td>
        <td>Check file uploads</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#createfolder"><strong>createFolder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Create a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#createfolderprimaryexternallink"><strong>createFolderPrimaryExternalLink</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/folder/{id}/link</td>
        <td>Create primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#createreportfolderhistory"><strong>createReportFolderHistory</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/folder/{folderId}/log/report</td>
        <td>Generates folder history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#deletefolder"><strong>deleteFolder</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Delete a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfavoritesfolder"><strong>getFavoritesFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@favorites</td>
        <td>Get the Favorites section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfilesusedspace"><strong>getFilesUsedSpace</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/filesusedspace</td>
        <td>Get used space of files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolder"><strong>getFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}/formfilter</td>
        <td>Get folder form filter</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolderbyfolderid"><strong>getFolderByFolderId</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}</td>
        <td>Get a folder by ID</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolderhistory"><strong>getFolderHistory</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}/log</td>
        <td>Get folder history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolderinfo"><strong>getFolderInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Get folder information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolderlinks"><strong>getFolderLinks</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{id}/links</td>
        <td>Get the folder links</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolderpath"><strong>getFolderPath</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}/path</td>
        <td>Get the folder path</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolderprimaryexternallink"><strong>getFolderPrimaryExternalLink</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{id}/link</td>
        <td>Get primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getfolders"><strong>getFolders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}/subfolders</td>
        <td>Get subfolders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getmyfolder"><strong>getMyFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@my</td>
        <td>Get the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getnewfolderitems"><strong>getNewFolderItems</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}/news</td>
        <td>Get new folder items</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getprivacyfolder"><strong>getPrivacyFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@privacy</td>
        <td>Get the Private Room section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getrecentfolder"><strong>getRecentFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/recent</td>
        <td>Get the Recent section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#getrootfolders"><strong>getRootFolders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@root</td>
        <td>Get filtered sections</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#gettrashfolder"><strong>getTrashFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@trash</td>
        <td>Get the Trash section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#insertfile"><strong>insertFile</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/insert</td>
        <td>Insert a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#insertfiletomyfrombody"><strong>insertFileToMyFromBody</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/insert</td>
        <td>Insert a file to the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#renamefolder"><strong>renameFolder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Rename a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#setfolderorder"><strong>setFolderOrder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{folderId}/order</td>
        <td>Set folder order</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#setfolderprimaryexternallink"><strong>setFolderPrimaryExternalLink</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{id}/links</td>
        <td>Set the folder external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#uploadfile"><strong>uploadFile</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/upload</td>
        <td>Upload a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersAPI.md#uploadfiletomy"><strong>uploadFileToMy</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/upload</td>
        <td>Upload a file to the My documents section</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>FilesOperationsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>FilesOperationsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#abortuploadsession"><strong>abortUploadSession</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/{folderId}/session/{sessionId}</td>
        <td>Aborts an in-progress file upload session.</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#addfavorites"><strong>addFavorites</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/favorites</td>
        <td>Add favorite files and folders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#bulkdownload"><strong>bulkDownload</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/bulkdownload</td>
        <td>Bulk download</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#checkconversionstatus"><strong>checkConversionStatus</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/checkconversion</td>
        <td>Get conversion status</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#checkmoveorcopybatchitems"><strong>checkMoveOrCopyBatchItems</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops/move</td>
        <td>Move or copy files to a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#checkmoveorcopydestfolder"><strong>checkMoveOrCopyDestFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops/checkdestfolder</td>
        <td>Check for moving or copying files to a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#copybatchitems"><strong>copyBatchItems</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/copy</td>
        <td>Copy to the folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#createuploadsession"><strong>createUploadSession</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/upload/create_session</td>
        <td>Chunked upload</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#createuploadsessioninfolder"><strong>createUploadSessionInFolder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/session</td>
        <td>Creates a session for uploading a file to a specific folder in chunks.</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#deletebatchitems"><strong>deleteBatchItems</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/delete</td>
        <td>Delete files and folders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#deletefavoritesfrombody"><strong>deleteFavoritesFromBody</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/favorites</td>
        <td>Delete favorite files and folders (using body parameters)</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#deletefileversions"><strong>deleteFileVersions</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/deleteversion</td>
        <td>Delete file versions</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#duplicatebatchitems"><strong>duplicateBatchItems</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/duplicate</td>
        <td>Duplicate files and folders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#emptytrash"><strong>emptyTrash</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/emptytrash</td>
        <td>Empty the Trash folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#finalizesession"><strong>finalizeSession</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/{folderId}/session/{sessionId}/finalize</td>
        <td>Finalize an upload session</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#getoperationstatuses"><strong>getOperationStatuses</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops</td>
        <td>Get active file operations</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#getoperationstatusesbytype"><strong>getOperationStatusesByType</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops/{operationType}</td>
        <td>Get file operation statuses</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#markasread"><strong>markAsRead</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/markasread</td>
        <td>Mark as read</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#movebatchitems"><strong>moveBatchItems</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/move</td>
        <td>Move or copy to a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#startfileconversion"><strong>startFileConversion</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/checkconversion</td>
        <td>Start file conversion</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#terminatetasks"><strong>terminateTasks</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/terminate/{id}</td>
        <td>Finish active operations</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#updatefilecomment"><strong>updateFileComment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/comment</td>
        <td>Update a comment</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#uploadasyncsession"><strong>uploadAsyncSession</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/session/{sessionId}/upload</td>
        <td>Handles the upload of a chunk for an existing upload session.</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsAPI.md#uploadsession"><strong>uploadSession</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/session/{sessionId}</td>
        <td>Resumes an ongoing file upload session for uploading additional chunks of data.</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>FilesQuotaAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>FilesQuotaAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesQuotaAPI.md#resetroomquota"><strong>resetRoomQuota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/resetquota</td>
        <td>Reset the room quota limit</td>
      </tr>
      <tr>
        <td><a href="docs/FilesQuotaAPI.md#updateroomsquota"><strong>updateRoomsQuota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/roomquota</td>
        <td>Change the room quota limit</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>FilesSettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>FilesSettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#changeaccesstothirdparty"><strong>changeAccessToThirdparty</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/thirdparty</td>
        <td>Change the third-party settings access</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#changeautomaticallycleanup"><strong>changeAutomaticallyCleanUp</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/autocleanup</td>
        <td>Update the trash bin auto-clearing setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#changedefaultaccessrights"><strong>changeDefaultAccessRights</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/dafaultaccessrights</td>
        <td>Change the default access rights</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#changedeleteconfirm"><strong>changeDeleteConfirm</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/changedeleteconfrim</td>
        <td>Confirm the file deletion</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#changedownloadzipfrombody"><strong>changeDownloadZipFromBody</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/downloadtargz</td>
        <td>Change the archive format (using body parameters)</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#checkdocserviceurl"><strong>checkDocServiceUrl</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/docservice</td>
        <td>Check the document service URL</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#displayfileextension"><strong>displayFileExtension</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/displayfileextension</td>
        <td>Display a file extension</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#displayrecent"><strong>displayRecent</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/displayrecent</td>
        <td>Display the Recent folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#externalshare"><strong>externalShare</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/external</td>
        <td>Change the external sharing ability</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#externalsharesocialmedia"><strong>externalShareSocialMedia</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/externalsocialmedia</td>
        <td>Change the external sharing ability on social networks</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#forcesave"><strong>forcesave</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/forcesave</td>
        <td>Change the forcesaving ability</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#getautomaticallycleanup"><strong>getAutomaticallyCleanUp</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/settings/autocleanup</td>
        <td>Get the trash bin auto-clearing setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#getdefaulttemplates"><strong>getDefaultTemplates</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Get the default template setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#getdocserviceurl"><strong>getDocServiceUrl</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/docservice</td>
        <td>Get the document service URL</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#getfilesmodule"><strong>getFilesModule</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/info</td>
        <td>Get the Documents information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#getfilessettings"><strong>getFilesSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/settings</td>
        <td>Get file settings</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#hideconfirmcanceloperation"><strong>hideConfirmCancelOperation</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/hideconfirmcanceloperation</td>
        <td>Hide confirmation dialog when canceling operations</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#hideconfirmconvert"><strong>hideConfirmConvert</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/hideconfirmconvert</td>
        <td>Hide the confirmation dialog when converting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#hideconfirmroomlifetime"><strong>hideConfirmRoomLifetime</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/hideconfirmroomlifetime</td>
        <td>Hide confirmation dialog when changing room lifetime settings</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#isavailableprivacyroomsettings"><strong>isAvailablePrivacyRoomSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@privacy/available</td>
        <td>Check the Private Room availability</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#keepnewfilename"><strong>keepNewFileName</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/keepnewfilename</td>
        <td>Ask a new file name</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#resetdefaulttemplate"><strong>resetDefaultTemplate</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Reset the default template setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#setdefaulttemplate"><strong>setDefaultTemplate</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Change the default template setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#setopeneditorinsametab"><strong>setOpenEditorInSameTab</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/openeditorinsametab</td>
        <td>Open document in the same browser tab</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#setorganizeroomsgrouping"><strong>setOrganizeRoomsGrouping</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/organizegrouping</td>
        <td>Organize rooms grouping</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#storeforcesave"><strong>storeForcesave</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/storeforcesave</td>
        <td>Change the ability to store the forcesaved files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#storeoriginal"><strong>storeOriginal</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/storeoriginal</td>
        <td>Change the ability to upload original formats</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#updatefileifexist"><strong>updateFileIfExist</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/updateifexist</td>
        <td>Update a file version if it exists</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsAPI.md#uploaddefaulttemplate"><strong>uploadDefaultTemplate</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Upload a file as the default template setting</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>FilesSharingAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>FilesSharingAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#applyexternalsharepassword"><strong>applyExternalSharePassword</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/share/{key}/password</td>
        <td>Apply external data password</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#changefileowner"><strong>changeFileOwner</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/owner</td>
        <td>Change the file owner</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#getexternalsharedata"><strong>getExternalShareData</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/share/{key}</td>
        <td>Get the external data</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#getfilesecurityinfo"><strong>getFileSecurityInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{id}/share</td>
        <td>Get the shared file information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#getfoldersecurityinfo"><strong>getFolderSecurityInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{id}/share</td>
        <td>Get the shared folder information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#getgroupsmemberswithfilesecurity"><strong>getGroupsMembersWithFileSecurity</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/group/{groupId}/share</td>
        <td>Get file group members with security information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#getgroupsmemberswithfoldersecurity"><strong>getGroupsMembersWithFolderSecurity</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}/group/{groupId}/share</td>
        <td>Get folder group members with security information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#getsecurityinfo"><strong>getSecurityInfo</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/share</td>
        <td>Get the sharing rights</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#getsharedusers"><strong>getSharedUsers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/sharedusers</td>
        <td>Get user access rights by file ID</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#removesecurityinfo"><strong>removeSecurityInfo</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/share</td>
        <td>Remove the sharing rights</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#sendeditornotify"><strong>sendEditorNotify</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/sendeditornotify</td>
        <td>Send the mention message</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#setfilesecurityinfo"><strong>setFileSecurityInfo</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/share</td>
        <td>Share a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#setfoldersecurityinfo"><strong>setFolderSecurityInfo</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{folderId}/share</td>
        <td>Share a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingAPI.md#setsecurityinfo"><strong>setSecurityInfo</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/share</td>
        <td>Set the sharing rights</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>FilesThirdPartyIntegrationAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>FilesThirdPartyIntegrationAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#deletethirdparty"><strong>deleteThirdParty</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/thirdparty/{providerId}</td>
        <td>Remove a third-party account</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#getallproviders"><strong>getAllProviders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/providers</td>
        <td>Get all providers</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#getbackupthirdpartyaccount"><strong>getBackupThirdPartyAccount</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/backup</td>
        <td>Get a third-party account backup</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#getcapabilities"><strong>getCapabilities</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/capabilities</td>
        <td>Get providers</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#getcommonthirdpartyfolders"><strong>getCommonThirdPartyFolders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/common</td>
        <td>Get the common third-party services</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#getthirdpartyaccounts"><strong>getThirdPartyAccounts</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty</td>
        <td>Get the third-party accounts</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#savethirdparty"><strong>saveThirdParty</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/thirdparty</td>
        <td>Save a third-party account</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationAPI.md#savethirdpartybackup"><strong>saveThirdPartyBackup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/thirdparty/backup</td>
        <td>Save a third-party account backup</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>GroupAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>GroupAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#addgroup"><strong>addGroup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/group</td>
        <td>Add a new group</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#addmembersto"><strong>addMembersTo</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{id}/members</td>
        <td>Add group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#deletegroup"><strong>deleteGroup</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/group/{id}</td>
        <td>Delete a group</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#getgroup"><strong>getGroup</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/{id}</td>
        <td>Get a group</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#getgroupbyuserid"><strong>getGroupByUserId</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/user/{userid}</td>
        <td>Get user groups</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#getgroups"><strong>getGroups</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group</td>
        <td>Get groups</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#movemembersto"><strong>moveMembersTo</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{fromId}/members/{toId}</td>
        <td>Move group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#removemembersfrom"><strong>removeMembersFrom</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/group/{id}/members</td>
        <td>Remove group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#setgroupmanager"><strong>setGroupManager</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{id}/manager</td>
        <td>Set a group manager</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#setmembersto"><strong>setMembersTo</strong></a></td>
        <td><strong>POST</strong> /api/2.0/group/{id}/members</td>
        <td>Replace group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupAPI.md#updategroup"><strong>updateGroup</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{id}</td>
        <td>Update a group</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>GroupSearchAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>GroupSearchAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/GroupSearchAPI.md#getgroupswithfilesshared"><strong>getGroupsWithFilesShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/file/{id}</td>
        <td>Get groups with file sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/GroupSearchAPI.md#getgroupswithfoldersshared"><strong>getGroupsWithFoldersShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/folder/{id}</td>
        <td>Get groups with folder sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/GroupSearchAPI.md#getgroupswithroomsshared"><strong>getGroupsWithRoomsShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/room/{id}</td>
        <td>Get groups with room sharing settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>MigrationAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>MigrationAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#cancelmigration"><strong>cancelMigration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/cancel</td>
        <td>Cancel migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#clearmigration"><strong>clearMigration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/clear</td>
        <td>Clear migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#finishmigration"><strong>finishMigration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/finish</td>
        <td>Finish migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#getmigrationlogs"><strong>getMigrationLogs</strong></a></td>
        <td><strong>GET</strong> /api/2.0/migration/logs</td>
        <td>Get migration logs</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#getmigrationstatus"><strong>getMigrationStatus</strong></a></td>
        <td><strong>GET</strong> /api/2.0/migration/status</td>
        <td>Get migration status</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#listmigrations"><strong>listMigrations</strong></a></td>
        <td><strong>GET</strong> /api/2.0/migration/list</td>
        <td>Get migrations</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#startmigration"><strong>startMigration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/migrate</td>
        <td>Start migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationAPI.md#uploadandinitializemigration"><strong>uploadAndInitializeMigration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/init/{migratorName}</td>
        <td>Upload and initialize migration</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>OAuth20AuthorizationAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20AuthorizationAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20AuthorizationAPI.md#authorizeoauth"><strong>authorizeOAuth</strong></a></td>
        <td><strong>GET</strong> /oauth2/authorize</td>
        <td>OAuth2 authorization endpoint</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20AuthorizationAPI.md#exchangetoken"><strong>exchangeToken</strong></a></td>
        <td><strong>POST</strong> /oauth2/token</td>
        <td>OAuth2 token endpoint</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20AuthorizationAPI.md#submitconsent"><strong>submitConsent</strong></a></td>
        <td><strong>POST</strong> /oauth2/authorize</td>
        <td>OAuth2 consent endpoint</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>OAuth20ClientManagementAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20ClientManagementAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementAPI.md#changeactivation"><strong>changeActivation</strong></a></td>
        <td><strong>PATCH</strong> /api/2.0/clients/{clientId}/activation</td>
        <td>Change the client activation status</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementAPI.md#createclient"><strong>createClient</strong></a></td>
        <td><strong>POST</strong> /api/2.0/clients</td>
        <td>Create a new OAuth2 client</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementAPI.md#deleteclient"><strong>deleteClient</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/clients/{clientId}</td>
        <td>Delete an OAuth2 client</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementAPI.md#regeneratesecret"><strong>regenerateSecret</strong></a></td>
        <td><strong>PATCH</strong> /api/2.0/clients/{clientId}/regenerate</td>
        <td>Regenerate the client secret</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementAPI.md#revokeuserclient"><strong>revokeUserClient</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/clients/{clientId}/revoke</td>
        <td>Revoke client consent</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementAPI.md#updateclient"><strong>updateClient</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/clients/{clientId}</td>
        <td>Update an existing OAuth2 client</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>OAuth20ClientQueryingAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20ClientQueryingAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingAPI.md#getclient"><strong>getClient</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/{clientId}</td>
        <td>Get client details</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingAPI.md#getclientinfo"><strong>getClientInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/{clientId}/info</td>
        <td>Get detailed client information</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingAPI.md#getclients"><strong>getClients</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients</td>
        <td>Get clients</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingAPI.md#getclientsinfo"><strong>getClientsInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/info</td>
        <td>Get detailed information of clients</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingAPI.md#getconsents"><strong>getConsents</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/consents</td>
        <td>Get user consents</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingAPI.md#getpublicclientinfo"><strong>getPublicClientInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/{clientId}/public/info</td>
        <td>Get public client information</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>OAuth20ScopeManagementAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20ScopeManagementAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ScopeManagementAPI.md#getscopes"><strong>getScopes</strong></a></td>
        <td><strong>GET</strong> /api/2.0/scopes</td>
        <td>Get available OAuth2 scopes</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleEmailAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleEmailAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleEmailAPI.md#changeuseremail"><strong>changeUserEmail</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/email</td>
        <td>Change a user email</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleEmailAPI.md#sendemailchangeinstructions"><strong>sendEmailChangeInstructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/email</td>
        <td>Send instructions to change email</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleGuestsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleGuestsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleGuestsAPI.md#approveguestsharelink"><strong>approveGuestShareLink</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/guests/share/approve</td>
        <td>Approve a guest sharing link</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleGuestsAPI.md#deleteguests"><strong>deleteGuests</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/guests</td>
        <td>Delete guests</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeoplePasswordAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeoplePasswordAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePasswordAPI.md#changeuserpassword"><strong>changeUserPassword</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/password</td>
        <td>Change a user password</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePasswordAPI.md#senduserpassword"><strong>sendUserPassword</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/password</td>
        <td>Remind a user password</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeoplePhotosAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeoplePhotosAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosAPI.md#creatememberphotothumbnails"><strong>createMemberPhotoThumbnails</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/{userid}/photo/thumbnails</td>
        <td>Create photo thumbnails</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosAPI.md#deletememberphoto"><strong>deleteMemberPhoto</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/{userid}/photo</td>
        <td>Delete a user photo</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosAPI.md#getmemberphoto"><strong>getMemberPhoto</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/{userid}/photo</td>
        <td>Get a user photo</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosAPI.md#updatememberphoto"><strong>updateMemberPhoto</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/photo</td>
        <td>Update a user photo</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosAPI.md#uploadmemberphoto"><strong>uploadMemberPhoto</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/{userid}/photo</td>
        <td>Upload a user photo</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleProfilesAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleProfilesAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#addmember"><strong>addMember</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people</td>
        <td>Add a user</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#checkuserexistsbyemail"><strong>checkUserExistsByEmail</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/exists</td>
        <td>Check if a user exists by email</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#deletemember"><strong>deleteMember</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/{userid}</td>
        <td>Delete a user</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#deleteprofile"><strong>deleteProfile</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/@self</td>
        <td>Delete my profile</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#getallprofiles"><strong>getAllProfiles</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people</td>
        <td>Get profiles</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#getclaims"><strong>getClaims</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/tokendiagnostics</td>
        <td>Get user claims</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#getprofilebyemail"><strong>getProfileByEmail</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/email</td>
        <td>Get a profile by user email</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#getprofilebyuserid"><strong>getProfileByUserId</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/{userid}</td>
        <td>Get a profile by user ID</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#getselfprofile"><strong>getSelfProfile</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/@self</td>
        <td>Get my profile</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#inviteusers"><strong>inviteUsers</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/invite</td>
        <td>Invite users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#removeusers"><strong>removeUsers</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/delete</td>
        <td>Delete users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#resenduserinvites"><strong>resendUserInvites</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/invite</td>
        <td>Resend activation emails</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#updatemember"><strong>updateMember</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}</td>
        <td>Update a user</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesAPI.md#updatememberculture"><strong>updateMemberCulture</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/culture</td>
        <td>Update a user culture</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleQuotaAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleQuotaAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleQuotaAPI.md#resetusersquota"><strong>resetUsersQuota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/resetquota</td>
        <td>Reset a user quota limit</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleQuotaAPI.md#updateuserquota"><strong>updateUserQuota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/userquota</td>
        <td>Change a user quota limit</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleSearchAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleSearchAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getaccountsentrieswithfilesshared"><strong>getAccountsEntriesWithFilesShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/accounts/file/{id}/search</td>
        <td>Get account entries with file sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getaccountsentrieswithfoldersshared"><strong>getAccountsEntriesWithFoldersShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/accounts/folder/{id}/search</td>
        <td>Get account entries with folder sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getaccountsentrieswithroomsshared"><strong>getAccountsEntriesWithRoomsShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/accounts/room/{id}/search</td>
        <td>Get account entries</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getsearch"><strong>getSearch</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/@search/{query}</td>
        <td>Search users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getsimplebyfilter"><strong>getSimpleByFilter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/simple/filter</td>
        <td>Search users by extended filter</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getuserswithfilesshared"><strong>getUsersWithFilesShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/file/{id}</td>
        <td>Get users with file sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getuserswithfoldersshared"><strong>getUsersWithFoldersShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/folder/{id}</td>
        <td>Get users with folder sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#getuserswithroomshared"><strong>getUsersWithRoomShared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/room/{id}</td>
        <td>Get users with room sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#searchusersbyextendedfilter"><strong>searchUsersByExtendedFilter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/filter</td>
        <td>Search users with detailed information by extended filter</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#searchusersbyquery"><strong>searchUsersByQuery</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/search</td>
        <td>Search users (using query parameters)</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchAPI.md#searchusersbystatus"><strong>searchUsersByStatus</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/status/{status}/search</td>
        <td>Search users by status filter</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleThemeAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleThemeAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThemeAPI.md#changeportaltheme"><strong>changePortalTheme</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/theme</td>
        <td>Change the portal theme</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThemeAPI.md#getportaltheme"><strong>getPortalTheme</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/theme</td>
        <td>Get the portal theme</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleThirdPartyAccountsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleThirdPartyAccountsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsAPI.md#getthirdpartyauthproviders"><strong>getThirdPartyAuthProviders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/thirdparty/providers</td>
        <td>Get third-party accounts</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsAPI.md#linkthirdpartyaccount"><strong>linkThirdPartyAccount</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/thirdparty/linkaccount</td>
        <td>Link a third-pary account</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsAPI.md#signupthirdpartyaccount"><strong>signupThirdPartyAccount</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/thirdparty/signup</td>
        <td>Create a third-pary account</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsAPI.md#unlinkthirdpartyaccount"><strong>unlinkThirdPartyAccount</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/thirdparty/unlinkaccount</td>
        <td>Unlink a third-pary account</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleUserDataAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleUserDataAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#getdeletepersonalfolderprogress"><strong>getDeletePersonalFolderProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/delete/personal/progress</td>
        <td>Get the progress of deleting the personal folder</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#getreassignprogress"><strong>getReassignProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/reassign/progress/{userid}</td>
        <td>Get the reassignment progress</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#getremoveprogress"><strong>getRemoveProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/remove/progress/{userid}</td>
        <td>Get the deletion progress</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#necessaryreassign"><strong>necessaryReassign</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/reassign/necessary</td>
        <td>Check data for reassignment need</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#sendinstructionstodelete"><strong>sendInstructionsToDelete</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/self/delete</td>
        <td>Send the deletion instructions</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#startdeletepersonalfolder"><strong>startDeletePersonalFolder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/delete/personal/start</td>
        <td>Delete the personal folder</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#startreassign"><strong>startReassign</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/reassign/start</td>
        <td>Start the data reassignment</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#startremove"><strong>startRemove</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/remove/start</td>
        <td>Start the data deletion</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#terminatereassign"><strong>terminateReassign</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/reassign/terminate</td>
        <td>Terminate the data reassignment</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataAPI.md#terminateremove"><strong>terminateRemove</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/remove/terminate</td>
        <td>Terminate the data deletion</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleUserStatusAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleUserStatusAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserStatusAPI.md#getbystatus"><strong>getByStatus</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/status/{status}</td>
        <td>Get profiles by status</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserStatusAPI.md#updateuseractivationstatus"><strong>updateUserActivationStatus</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/activationstatus/{activationstatus}</td>
        <td>Set an activation status to the users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserStatusAPI.md#updateuserstatus"><strong>updateUserStatus</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/status/{status}</td>
        <td>Change a user status</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PeopleUserTypeAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PeopleUserTypeAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeAPI.md#getusertypeupdateprogress"><strong>getUserTypeUpdateProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/type/progress/{userid}</td>
        <td>Get the progress of updating user type</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeAPI.md#startusertypeupdate"><strong>startUserTypeUpdate</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/type</td>
        <td>Start updating user type</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeAPI.md#terminateusertypeupdate"><strong>terminateUserTypeUpdate</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/type/terminate</td>
        <td>Terminate updating user type</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeAPI.md#updateusertype"><strong>updateUserType</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/type/{type}</td>
        <td>Change a user type</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PortalGuestsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PortalGuestsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalGuestsAPI.md#getguestsharinglink"><strong>getGuestSharingLink</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/guests/{userid}/share</td>
        <td>Get a guest sharing link</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PortalPaymentAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PortalPaymentAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#buywalletservice"><strong>buyWalletService</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/buywalletservice</td>
        <td>Purchases a wallet service with the specified quantity.</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#calculatewalletpayment"><strong>calculateWalletPayment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/calculatewallet</td>
        <td>Calculate the wallet payment amount</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#changetenantwalletservicestate"><strong>changeTenantWalletServiceState</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/servicestate</td>
        <td>Change tenant wallet service state</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#createcustomeroperationsreport"><strong>createCustomerOperationsReport</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/customer/operationsreport</td>
        <td>Start the customer operations report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getaiprices"><strong>getAiPrices</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/ai-prices</td>
        <td>Get AI model prices</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getcheckoutsetupurl"><strong>getCheckoutSetupUrl</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/checkoutsetupurl</td>
        <td>Get the checkout setup page URL</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getcustomerbalance"><strong>getCustomerBalance</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/balance</td>
        <td>Get the customer balance</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getcustomerinfo"><strong>getCustomerInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customerinfo</td>
        <td>Get the customer information</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getcustomeroperations"><strong>getCustomerOperations</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/operations</td>
        <td>Get the customer operations</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getcustomeroperationsreport"><strong>getCustomerOperationsReport</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/operationsreport</td>
        <td>Get the status of the customer operations report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getcustomerservicequota"><strong>getCustomerServiceQuota</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/servicequota</td>
        <td>Get the service quota</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getpaymentaccount"><strong>getPaymentAccount</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/account</td>
        <td>Get the payment account</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getpaymentcurrencies"><strong>getPaymentCurrencies</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/currencies</td>
        <td>Get currencies</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getpaymentquotas"><strong>getPaymentQuotas</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/quotas</td>
        <td>Get quotas</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getpaymenturl"><strong>getPaymentUrl</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/url</td>
        <td>Get the payment page URL</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getportalprices"><strong>getPortalPrices</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/prices</td>
        <td>Get prices</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getquotapaymentinformation"><strong>getQuotaPaymentInformation</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/quota</td>
        <td>Get quota payment information</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getrestrictedaimodels"><strong>getRestrictedAiModels</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/ai-model/restrictions</td>
        <td>Get restricted AI models</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#gettenantwalletservicesettings"><strong>getTenantWalletServiceSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/servicessettings</td>
        <td>Gets the wallet service settings for the tenant.</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#gettenantwalletsettings"><strong>getTenantWalletSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/topupsettings</td>
        <td>Gets the tenant wallet auto top up settings</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getwalletservice"><strong>getWalletService</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/walletservice</td>
        <td>Get wallet service</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#getwalletservices"><strong>getWalletServices</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/walletservices</td>
        <td>Get wallet services</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#sendpaymentrequest"><strong>sendPaymentRequest</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/request</td>
        <td>Send a payment request</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#setrestrictedaimodels"><strong>setRestrictedAiModels</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/ai-model/restrictions</td>
        <td>Set restricted AI models</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#settenantwalletsettings"><strong>setTenantWalletSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/topupsettings</td>
        <td>Set the wallet auto top up settings</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#terminatecustomeroperationsreport"><strong>terminateCustomerOperationsReport</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/payment/customer/operationsreport</td>
        <td>Terminate the customer operations report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#topupdeposit"><strong>topUpDeposit</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/deposit</td>
        <td>Put money on deposit</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#updatepayment"><strong>updatePayment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/update</td>
        <td>Update the payment quantity</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentAPI.md#updatewalletpayment"><strong>updateWalletPayment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/updatewallet</td>
        <td>Update the wallet payment quantity</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PortalQuotaAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PortalQuotaAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaAPI.md#getportalquota"><strong>getPortalQuota</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/quota</td>
        <td>Get a portal quota</td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaAPI.md#getportaltariff"><strong>getPortalTariff</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/tariff</td>
        <td>Get a portal tariff</td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaAPI.md#getportalusedspace"><strong>getPortalUsedSpace</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/usedspace</td>
        <td>Get the portal used space</td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaAPI.md#getrightquota"><strong>getRightQuota</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/quota/right</td>
        <td>Get the recommended quota</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PortalSettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PortalSettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsAPI.md#continueportal"><strong>continuePortal</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/continue</td>
        <td>Restore a portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsAPI.md#deleteportal"><strong>deletePortal</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/delete</td>
        <td>Delete a portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsAPI.md#getportalinformation"><strong>getPortalInformation</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal</td>
        <td>Get a portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsAPI.md#getportalpath"><strong>getPortalPath</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/path</td>
        <td>Get a path to the portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsAPI.md#senddeleteinstructions"><strong>sendDeleteInstructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/delete</td>
        <td>Send removal instructions</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsAPI.md#sendsuspendinstructions"><strong>sendSuspendInstructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/suspend</td>
        <td>Send suspension instructions</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsAPI.md#suspendportal"><strong>suspendPortal</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/suspend</td>
        <td>Deactivate a portal</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>PortalUsersAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>PortalUsersAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#createinvitationlink"><strong>createInvitationLink</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/users/invitationlink</td>
        <td>Create an invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#deleteinvitationlink"><strong>deleteInvitationLink</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/users/invitationlink</td>
        <td>Deletes an invitation link.</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#getinvitationlink"><strong>getInvitationLink</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/users/invite/{employeeType}</td>
        <td>Get an invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#getinvitationlinkbyemployeetype"><strong>getInvitationLinkByEmployeeType</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/users/invitationlink/{employeeType}</td>
        <td>Get an invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#getportaluserscount"><strong>getPortalUsersCount</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/userscount</td>
        <td>Get a number of portal users</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#getuserbyid"><strong>getUserById</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/users/{userID}</td>
        <td>Get a user by ID</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#markgiftmessageasread"><strong>markGiftMessageAsRead</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/present/mark</td>
        <td>Mark a gift message as read</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#sendcongratulations"><strong>sendCongratulations</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/sendcongratulations</td>
        <td>Send congratulations</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersAPI.md#updateinvitationlink"><strong>updateInvitationLink</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/users/invitationlink</td>
        <td>Update an invitation link</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>RoomsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>RoomsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#addroomtags"><strong>addRoomTags</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/tags</td>
        <td>Add the room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#archiveroom"><strong>archiveRoom</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/archive</td>
        <td>Archive a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#changeroomcover"><strong>changeRoomCover</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/cover</td>
        <td>Change the room cover</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#createroom"><strong>createRoom</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms</td>
        <td>Create a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#createroomfromtemplate"><strong>createRoomFromTemplate</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/fromtemplate</td>
        <td>Create a room from the template</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#createroomlogo"><strong>createRoomLogo</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/logo</td>
        <td>Create a room logo</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#createroomtag"><strong>createRoomTag</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/tags</td>
        <td>Create a room tag</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#createroomtemplate"><strong>createRoomTemplate</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/roomtemplate</td>
        <td>Start creating room template</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#createroomthirdparty"><strong>createRoomThirdParty</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/thirdparty/{id}</td>
        <td>Create a third-party room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#deletecustomtags"><strong>deleteCustomTags</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/tags</td>
        <td>Delete the custom room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#deleteroom"><strong>deleteRoom</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/{id}</td>
        <td>Remove a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#deleteroomlogo"><strong>deleteRoomLogo</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/{id}/logo</td>
        <td>Remove a room logo</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#deleteroomtags"><strong>deleteRoomTags</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/{id}/tags</td>
        <td>Remove the room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getnewroomitems"><strong>getNewRoomItems</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/news</td>
        <td>Get the new room items</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getpublicsettings"><strong>getPublicSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/roomtemplate/{id}/public</td>
        <td>Get public settings</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomcovers"><strong>getRoomCovers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/covers</td>
        <td>Get covers</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomcreatingstatus"><strong>getRoomCreatingStatus</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/fromtemplate/status</td>
        <td>Get the room creation progress</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomindexexport"><strong>getRoomIndexExport</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/indexexport</td>
        <td>Get the room index export</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroominfo"><strong>getRoomInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}</td>
        <td>Get room information</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomlinks"><strong>getRoomLinks</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/links</td>
        <td>Get the room links</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomsecurityinfo"><strong>getRoomSecurityInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/share</td>
        <td>Get the room access rights</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomtagsinfo"><strong>getRoomTagsInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/tags</td>
        <td>Get the room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomtemplatecreatingstatus"><strong>getRoomTemplateCreatingStatus</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/roomtemplate/status</td>
        <td>Get status of room template creation</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomsfolder"><strong>getRoomsFolder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms</td>
        <td>Get rooms</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomsnewitems"><strong>getRoomsNewItems</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/news</td>
        <td>Get the room new items</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#getroomsprimaryexternallink"><strong>getRoomsPrimaryExternalLink</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/link</td>
        <td>Get the room primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#hastaglinks"><strong>hasTagLinks</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/tags/{tagName}/haslinks</td>
        <td>Has tag links</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#pinroom"><strong>pinRoom</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/pin</td>
        <td>Pin a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#reorderroom"><strong>reorderRoom</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/reorder</td>
        <td>Reorder the room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#resendemailinvitations"><strong>resendEmailInvitations</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/resend</td>
        <td>Resend the room invitations</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#setpublicsettings"><strong>setPublicSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/roomtemplate/public</td>
        <td>Set public settings</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#setroomlink"><strong>setRoomLink</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/links</td>
        <td>Set the room external or invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#setroomsecurity"><strong>setRoomSecurity</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/share</td>
        <td>Set the room access rights</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#startroomindexexport"><strong>startRoomIndexExport</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/indexexport</td>
        <td>Start the room index export</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#terminateroomindexexport"><strong>terminateRoomIndexExport</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/indexexport</td>
        <td>Terminate the room index export</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#unarchiveroom"><strong>unarchiveRoom</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/unarchive</td>
        <td>Unarchive a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#unpinroom"><strong>unpinRoom</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/unpin</td>
        <td>Unpin a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#updateroom"><strong>updateRoom</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}</td>
        <td>Update a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#updateroomtag"><strong>updateRoomTag</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/tags</td>
        <td>Update tag</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsAPI.md#uploadroomlogo"><strong>uploadRoomLogo</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/logos</td>
        <td>Upload a room logo image</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>RoomsGroupsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>RoomsGroupsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsAPI.md#addroomgroup"><strong>addRoomGroup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/group</td>
        <td>Add a new room group</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsAPI.md#changeroomgroupicon"><strong>changeRoomGroupIcon</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/group/{id}/icon</td>
        <td>Change group icon</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsAPI.md#deleteroomgroup"><strong>deleteRoomGroup</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/group/{id}</td>
        <td>Delete group</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsAPI.md#getroomgroupinfo"><strong>getRoomGroupInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/group/{id}</td>
        <td>Get room group info</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsAPI.md#getroomgroups"><strong>getRoomGroups</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/group</td>
        <td>List room groups</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsAPI.md#updateroomgroup"><strong>updateRoomGroup</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/group/{id}</td>
        <td>Update room group</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityAccessToDevToolsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityAccessToDevToolsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAccessToDevToolsAPI.md#settenantdevtoolsaccesssettings"><strong>setTenantDevToolsAccessSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/devtoolsaccess</td>
        <td>Set the Developer Tools access settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityActiveConnectionsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityActiveConnectionsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsAPI.md#getallactiveconnections"><strong>getAllActiveConnections</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/activeconnections</td>
        <td>Get active connections</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsAPI.md#logoutactiveconnection"><strong>logOutActiveConnection</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logout/{loginEventId}</td>
        <td>Log out from the connection</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsAPI.md#logoutallactiveconnectionschangepassword"><strong>logOutAllActiveConnectionsChangePassword</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logoutallchangepassword</td>
        <td>Log out and change password</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsAPI.md#logoutallactiveconnectionsforuser"><strong>logOutAllActiveConnectionsForUser</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logoutall/{userId}</td>
        <td>Log out for the user by ID</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsAPI.md#logoutallexceptthisconnection"><strong>logOutAllExceptThisConnection</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logoutallexceptthis</td>
        <td>Log out from all connections except the current one</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityAuditTrailDataAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityAuditTrailDataAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataAPI.md#createaudittrailreport"><strong>createAuditTrailReport</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/audit/events/report</td>
        <td>Generate the audit trail report</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataAPI.md#getauditeventsbyfilter"><strong>getAuditEventsByFilter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/events/filter</td>
        <td>Get filtered audit trail data</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataAPI.md#getauditsettings"><strong>getAuditSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/settings/lifetime</td>
        <td>Get the audit trail settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataAPI.md#getaudittrailmappers"><strong>getAuditTrailMappers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/mappers</td>
        <td>Get audit trail mappers</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataAPI.md#getaudittrailtypes"><strong>getAuditTrailTypes</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/types</td>
        <td>Get audit trail types</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataAPI.md#getlastauditevents"><strong>getLastAuditEvents</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/events/last</td>
        <td>Get audit trail data</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataAPI.md#setauditsettings"><strong>setAuditSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/audit/settings/lifetime</td>
        <td>Set the audit trail settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityBannersVisibilityAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityBannersVisibilityAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityBannersVisibilityAPI.md#settenantbannersettings"><strong>setTenantBannerSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/banner</td>
        <td>Set the banners visibility</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityCSPAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityCSPAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityCSPAPI.md#configurecsp"><strong>configureCsp</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/csp</td>
        <td>Configure CSP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityCSPAPI.md#getcspsettings"><strong>getCspSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/csp</td>
        <td>Get CSP settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityFirebaseAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityFirebaseAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityFirebaseAPI.md#docregisterpusnnotificationdevice"><strong>docRegisterPusnNotificationDevice</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/push/docregisterdevice</td>
        <td>Save the Documents Firebase device token</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityFirebaseAPI.md#subscribedocumentspushnotification"><strong>subscribeDocumentsPushNotification</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/push/docsubscribe</td>
        <td>Subscribe to Documents push notification</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityLoginHistoryAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityLoginHistoryAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryAPI.md#createloginhistoryreport"><strong>createLoginHistoryReport</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/audit/login/report</td>
        <td>Generate the login history report</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryAPI.md#getlastloginevents"><strong>getLastLoginEvents</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/login/last</td>
        <td>Get login history</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryAPI.md#getlogineventsbyfilter"><strong>getLoginEventsByFilter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/login/filter</td>
        <td>Get filtered login events</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecurityOAuth2API</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecurityOAuth2APIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityOAuth2API.md#generatejwttoken"><strong>generateJwtToken</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/oauth2/token</td>
        <td>Generate JWT token</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SecuritySMTPSettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SecuritySMTPSettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsAPI.md#getsmtpoperationstatus"><strong>getSmtpOperationStatus</strong></a></td>
        <td><strong>GET</strong> /api/2.0/smtpsettings/smtp/test/status</td>
        <td>Get the SMTP testing process status</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsAPI.md#getsmtpsettings"><strong>getSmtpSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/smtpsettings/smtp</td>
        <td>Get the SMTP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsAPI.md#resetsmtpsettings"><strong>resetSmtpSettings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/smtpsettings/smtp</td>
        <td>Reset the SMTP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsAPI.md#savesmtpsettings"><strong>saveSmtpSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/smtpsettings/smtp</td>
        <td>Save the SMTP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsAPI.md#testsmtpsettings"><strong>testSmtpSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/smtpsettings/smtp/test</td>
        <td>Test the SMTP settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsAccessToDevToolsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsAccessToDevToolsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAccessToDevToolsAPI.md#gettenantaccessdevtoolssettings"><strong>getTenantAccessDevToolsSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/devtoolsaccess</td>
        <td>Get the Developer Tools access settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsAuthorizationAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsAuthorizationAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAuthorizationAPI.md#getauthservices"><strong>getAuthServices</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/authservice</td>
        <td>Get the authorization services</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAuthorizationAPI.md#saveauthkeys"><strong>saveAuthKeys</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/authservice</td>
        <td>Save the authorization keys</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAuthorizationAPI.md#testexternaldatabaseconnection"><strong>testExternalDatabaseConnection</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/authservice/externaldb/test</td>
        <td>Test external database connection</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsBannersVisibilityAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsBannersVisibilityAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsBannersVisibilityAPI.md#gettenantbannersettings"><strong>getTenantBannerSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/banner</td>
        <td>Get the banners visibility</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsCommonSettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsCommonSettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#closeadminhelper"><strong>closeAdminHelper</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/closeadminhelper</td>
        <td>Close the admin helper</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#completewizard"><strong>completeWizard</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/wizard/complete</td>
        <td>Complete the Wizard settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#configuredeeplink"><strong>configureDeepLink</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/deeplink</td>
        <td>Configure the deep link settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#deleteportalcolortheme"><strong>deletePortalColorTheme</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/colortheme</td>
        <td>Delete a color theme</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getdeeplinksettings"><strong>getDeepLinkSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/deeplink</td>
        <td>Get the deep link settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getpaymentsettings"><strong>getPaymentSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/payment</td>
        <td>Get the payment settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getportalcolortheme"><strong>getPortalColorTheme</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/colortheme</td>
        <td>Get a color theme</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getportalhostname"><strong>getPortalHostname</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/machine</td>
        <td>Get hostname</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getportallogo"><strong>getPortalLogo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/logo</td>
        <td>Get a portal logo</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getportalsettings"><strong>getPortalSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings</td>
        <td>Get the portal settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getsocketsettings"><strong>getSocketSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/socket</td>
        <td>Get the socket settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#getsupportedcultures"><strong>getSupportedCultures</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/cultures</td>
        <td>Get supported languages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#gettenantaiaccesssettings"><strong>getTenantAiAccessSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ai-access</td>
        <td>Get the AI access settings for the portal</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#gettenantuserinvitationsettings"><strong>getTenantUserInvitationSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/invitationsettings</td>
        <td>Get the user invitation settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#gettimezones"><strong>getTimeZones</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/timezones</td>
        <td>Get time zones</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#savedefaultfolder"><strong>saveDefaultFolder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/defaultfolder</td>
        <td>Set the default folder</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#savednssettings"><strong>saveDnsSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/dns</td>
        <td>Save the DNS settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#savemaildomainsettings"><strong>saveMailDomainSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/maildomainsettings</td>
        <td>Save the mail domain settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#saveportalcolortheme"><strong>savePortalColorTheme</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/colortheme</td>
        <td>Save a color theme</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#settenantaiaccesssettings"><strong>setTenantAiAccessSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/ai-access</td>
        <td>Set the AI access for the portal</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#updateemailactivationsettings"><strong>updateEmailActivationSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/emailactivation</td>
        <td>Update the email activation settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsAPI.md#updateinvitationsettings"><strong>updateInvitationSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/invitationsettings</td>
        <td>Update user invitation settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsCookiesAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsCookiesAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCookiesAPI.md#getcookiesettings"><strong>getCookieSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/cookiesettings</td>
        <td>Get cookies lifetime</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCookiesAPI.md#updatecookiesettings"><strong>updateCookieSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/cookiesettings</td>
        <td>Update cookies lifetime</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsEncryptionAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsEncryptionAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsEncryptionAPI.md#getstorageencryptionprogress"><strong>getStorageEncryptionProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/encryption/progress</td>
        <td>Get the storage encryption progress</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsEncryptionAPI.md#getstorageencryptionsettings"><strong>getStorageEncryptionSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/encryption/settings</td>
        <td>Get the storage encryption settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsEncryptionAPI.md#startstorageencryption"><strong>startStorageEncryption</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/encryption/start</td>
        <td>Start the storage encryption process</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsGreetingSettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsGreetingSettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsAPI.md#getgreetingsettings"><strong>getGreetingSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/greetingsettings</td>
        <td>Get greeting settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsAPI.md#getisdefaultgreetingsettings"><strong>getIsDefaultGreetingSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/greetingsettings/isdefault</td>
        <td>Check the default greeting settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsAPI.md#restoregreetingsettings"><strong>restoreGreetingSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/greetingsettings/restore</td>
        <td>Restore the greeting settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsAPI.md#savegreetingsettings"><strong>saveGreetingSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/greetingsettings</td>
        <td>Save the greeting settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsIPRestrictionsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsIPRestrictionsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsAPI.md#getiprestrictions"><strong>getIpRestrictions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/iprestrictions</td>
        <td>Get the IP portal restrictions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsAPI.md#readiprestrictionssettings"><strong>readIpRestrictionsSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/iprestrictions/settings</td>
        <td>Get the IP restriction settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsAPI.md#saveiprestrictions"><strong>saveIpRestrictions</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/iprestrictions</td>
        <td>Update the IP restrictions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsAPI.md#updateiprestrictionssettings"><strong>updateIpRestrictionsSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/iprestrictions/settings</td>
        <td>Update the IP restriction settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsLicenseAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsLicenseAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseAPI.md#acceptlicense"><strong>acceptLicense</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/license/accept</td>
        <td>Activate a license</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseAPI.md#getislicenserequired"><strong>getIsLicenseRequired</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/license/required</td>
        <td>Request a license</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseAPI.md#refreshlicense"><strong>refreshLicense</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/license/refresh</td>
        <td>Refresh the license</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseAPI.md#uploadlicense"><strong>uploadLicense</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/license</td>
        <td>Upload a license</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsLoginSettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsLoginSettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLoginSettingsAPI.md#getloginsettings"><strong>getLoginSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/loginsettings</td>
        <td>Get the login settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLoginSettingsAPI.md#setdefaultloginsettings"><strong>setDefaultLoginSettings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/security/loginsettings</td>
        <td>Reset the login settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLoginSettingsAPI.md#updateloginsettings"><strong>updateLoginSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/loginsettings</td>
        <td>Update the login settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsMessagesAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsMessagesAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsMessagesAPI.md#enableadminmessagesettings"><strong>enableAdminMessageSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/messagesettings</td>
        <td>Enable the administrator message settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsMessagesAPI.md#sendadminmail"><strong>sendAdminMail</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/sendadmmail</td>
        <td>Send a message to the administrator</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsMessagesAPI.md#sendjoininvitemail"><strong>sendJoinInviteMail</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/sendjoininvite</td>
        <td>Sends an invitation email</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsNotificationsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsNotificationsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsAPI.md#getnotificationchannels"><strong>getNotificationChannels</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/notification/channels</td>
        <td>Get notification channels</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsAPI.md#getnotificationsettings"><strong>getNotificationSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/notification/{type}</td>
        <td>Check notification availability</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsAPI.md#getroomsnotificationsettings"><strong>getRoomsNotificationSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/notification/rooms</td>
        <td>Get room notification settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsAPI.md#setnotificationsettings"><strong>setNotificationSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/notification</td>
        <td>Enable notifications</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsAPI.md#setroomsnotificationstatus"><strong>setRoomsNotificationStatus</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/notification/rooms</td>
        <td>Set room notification status</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsOwnerAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsOwnerAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsOwnerAPI.md#sendownerchangeinstructions"><strong>sendOwnerChangeInstructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/owner</td>
        <td>Send the owner change instructions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsOwnerAPI.md#updateportalowner"><strong>updatePortalOwner</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/owner</td>
        <td>Update the portal owner</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsQuotaAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsQuotaAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaAPI.md#getuserquotasettings"><strong>getUserQuotaSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/userquotasettings</td>
        <td>Get the user quota settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaAPI.md#saveaiagentquotasettings"><strong>saveAiAgentQuotaSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/aiagentquotasettings</td>
        <td>Save the AI Agent quota settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaAPI.md#saveroomquotasettings"><strong>saveRoomQuotaSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/roomquotasettings</td>
        <td>Save the room quota settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaAPI.md#settenantquotasettings"><strong>setTenantQuotaSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tenantquotasettings</td>
        <td>Save the tenant quota settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsRebrandingAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsRebrandingAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#deleteadditionalwhitelabelsettings"><strong>deleteAdditionalWhiteLabelSettings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/rebranding/additional</td>
        <td>Delete the additional white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#deletecompanywhitelabelsettings"><strong>deleteCompanyWhiteLabelSettings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/rebranding/company</td>
        <td>Delete the company white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getadditionalwhitelabelsettings"><strong>getAdditionalWhiteLabelSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/rebranding/additional</td>
        <td>Get the additional white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getcompanywhitelabelsettings"><strong>getCompanyWhiteLabelSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/rebranding/company</td>
        <td>Get the company white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getenablewhitelabel"><strong>getEnableWhitelabel</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/enablewhitelabel</td>
        <td>Check the white label availability</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getisdefaultwhitelabellogotext"><strong>getIsDefaultWhiteLabelLogoText</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logotext/isdefault</td>
        <td>Check the default white label logo text</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getisdefaultwhitelabellogos"><strong>getIsDefaultWhiteLabelLogos</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logos/isdefault</td>
        <td>Check the default white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getlicensordata"><strong>getLicensorData</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/companywhitelabel</td>
        <td>Get the licensor data</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getwhitelabellogotext"><strong>getWhiteLabelLogoText</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logotext</td>
        <td>Get the white label logo text</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#getwhitelabellogos"><strong>getWhiteLabelLogos</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logos</td>
        <td>Get the white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#restorewhitelabellogotext"><strong>restoreWhiteLabelLogoText</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/whitelabel/logotext/restore</td>
        <td>Restore the white label logo text</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#restorewhitelabellogos"><strong>restoreWhiteLabelLogos</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/whitelabel/logos/restore</td>
        <td>Restore the white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#saveadditionalwhitelabelsettings"><strong>saveAdditionalWhiteLabelSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/rebranding/additional</td>
        <td>Save the additional white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#savecompanywhitelabelsettings"><strong>saveCompanyWhiteLabelSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/rebranding/company</td>
        <td>Save the company white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#savewhitelabellogotext"><strong>saveWhiteLabelLogoText</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/whitelabel/logotext/save</td>
        <td>Save the white label logo text settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#savewhitelabelsettings"><strong>saveWhiteLabelSettings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/whitelabel/logos/save</td>
        <td>Save the white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingAPI.md#savewhitelabelsettingsfromfiles"><strong>saveWhiteLabelSettingsFromFiles</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/whitelabel/logos/savefromfiles</td>
        <td>Save the white label logos from files</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsSSOAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsSSOAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOAPI.md#getdefaultssosettingsv2"><strong>getDefaultSsoSettingsV2</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ssov2/default</td>
        <td>Get the default SSO settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOAPI.md#getssosettingsv2"><strong>getSsoSettingsV2</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ssov2</td>
        <td>Get the SSO settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOAPI.md#getssosettingsv2constants"><strong>getSsoSettingsV2Constants</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ssov2/constants</td>
        <td>Get the SSO settings constants</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOAPI.md#resetssosettingsv2"><strong>resetSsoSettingsV2</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/ssov2</td>
        <td>Reset the SSO settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOAPI.md#savessosettingsv2"><strong>saveSsoSettingsV2</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/ssov2</td>
        <td>Save the SSO settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsSecurityAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsSecurityAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#getenabledmodules"><strong>getEnabledModules</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/modules</td>
        <td>Get the enabled modules</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#getisproductadministrator"><strong>getIsProductAdministrator</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/administrator</td>
        <td>Check a product administrator</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#getpasswordsettings"><strong>getPasswordSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/password</td>
        <td>Get the password settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#getproductadministrators"><strong>getProductAdministrators</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/administrator/{productid}</td>
        <td>Get the product administrators</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#getwebitemsecurityinfo"><strong>getWebItemSecurityInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/{id}</td>
        <td>Get the module availability</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#getwebitemsettingssecurityinfo"><strong>getWebItemSettingsSecurityInfo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security</td>
        <td>Get the security settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#setaccesstowebitems"><strong>setAccessToWebItems</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/access</td>
        <td>Set the security settings to modules</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#setproductadministrator"><strong>setProductAdministrator</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/administrator</td>
        <td>Set a product administrator</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#setwebitemsecurity"><strong>setWebItemSecurity</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security</td>
        <td>Set the module security settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityAPI.md#updatepasswordsettings"><strong>updatePasswordSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/password</td>
        <td>Set the password settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsStatisticsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsStatisticsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStatisticsAPI.md#getspaceusagestatistics"><strong>getSpaceUsageStatistics</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/statistics/spaceusage/{id}</td>
        <td>Get the space usage statistics</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsStorageAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsStorageAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#getallbackupstorages"><strong>getAllBackupStorages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/backup</td>
        <td>Get the backup storages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#getallcdnstorages"><strong>getAllCdnStorages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/cdn</td>
        <td>Get the CDN storages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#getallstorages"><strong>getAllStorages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage</td>
        <td>Get storages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#getamazons3regions"><strong>getAmazonS3Regions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/s3/regions</td>
        <td>Get Amazon regions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#getstorageprogress"><strong>getStorageProgress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/progress</td>
        <td>Get the storage progress</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#resetcdntodefault"><strong>resetCdnToDefault</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/storage/cdn</td>
        <td>Reset the CDN storage settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#resetstoragetodefault"><strong>resetStorageToDefault</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/storage</td>
        <td>Reset the storage settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#updatecdnstorage"><strong>updateCdnStorage</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/storage/cdn</td>
        <td>Update the CDN storage</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageAPI.md#updatestorage"><strong>updateStorage</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/storage</td>
        <td>Update a storage</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsTFASettingsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsTFASettingsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#gettfaappcodes"><strong>getTfaAppCodes</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaappcodes</td>
        <td>Get the TFA codes</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#gettfaconfirmurl"><strong>getTfaConfirmUrl</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaapp/confirm</td>
        <td>Get confirmation email</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#gettfasettings"><strong>getTfaSettings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaapp</td>
        <td>Get the TFA settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#tfaappgeneratesetupcode"><strong>tfaAppGenerateSetupCode</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaapp/setup</td>
        <td>Generate setup code</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#tfavalidateauthcode"><strong>tfaValidateAuthCode</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/tfaapp/validate</td>
        <td>Validate the TFA code</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#unlinktfaapp"><strong>unlinkTfaApp</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaappnewapp</td>
        <td>Unlink the TFA application</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#updatetfaappcodes"><strong>updateTfaAppCodes</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaappnewcodes</td>
        <td>Update the TFA codes</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#updatetfasettings"><strong>updateTfaSettings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaapp</td>
        <td>Update the TFA settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsAPI.md#updatetfasettingslink"><strong>updateTfaSettingsLink</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaappwithlink</td>
        <td>Get a confirmation email for updating TFA settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsTelegramAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsTelegramAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTelegramAPI.md#checktelegram"><strong>checkTelegram</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/telegram/check</td>
        <td>Check the Telegram connection</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTelegramAPI.md#linktelegram"><strong>linkTelegram</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/telegram/link</td>
        <td>Get the Telegram link</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTelegramAPI.md#unlinktelegram"><strong>unlinkTelegram</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/telegram/link</td>
        <td>Unlink Telegram</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsWebhooksAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsWebhooksAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#createwebhook"><strong>createWebhook</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/webhook</td>
        <td>Create a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#enablewebhook"><strong>enableWebhook</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook/enable</td>
        <td>Enable a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#gettenantwebhooks"><strong>getTenantWebhooks</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webhook</td>
        <td>Get webhooks</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#getwebhooktriggers"><strong>getWebhookTriggers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webhook/triggers</td>
        <td>Get webhook triggers</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#getwebhookslogs"><strong>getWebhooksLogs</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webhooks/log</td>
        <td>Get webhook logs</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#removewebhook"><strong>removeWebhook</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/webhook/{id}</td>
        <td>Remove a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#retrywebhook"><strong>retryWebhook</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook/{id}/retry</td>
        <td>Retry a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#retrywebhooks"><strong>retryWebhooks</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook/retry</td>
        <td>Retry webhooks</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksAPI.md#updatewebhook"><strong>updateWebhook</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook</td>
        <td>Update a webhook</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>SettingsWebpluginsAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>SettingsWebpluginsAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsAPI.md#addwebpluginfromfile"><strong>addWebPluginFromFile</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/webplugins</td>
        <td>Add a web plugin</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsAPI.md#deletewebplugin"><strong>deleteWebPlugin</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/webplugins/{name}</td>
        <td>Delete a web plugin</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsAPI.md#getwebplugin"><strong>getWebPlugin</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webplugins/{name}</td>
        <td>Get a web plugin by name</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsAPI.md#getwebplugins"><strong>getWebPlugins</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webplugins</td>
        <td>Get web plugins</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsAPI.md#updatewebplugin"><strong>updateWebPlugin</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webplugins/{name}</td>
        <td>Update a web plugin</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>ThirdPartyAPI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>ThirdPartyAPIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/ThirdPartyAPI.md#getthirdpartycode"><strong>getThirdPartyCode</strong></a></td>
        <td><strong>GET</strong> /api/2.0/thirdparty/{provider}</td>
        <td>Get the code request</td>
      </tr>
    </tbody>
  </table>

</details>

## Documentation for Models

<details><summary>Models list</summary>

 - [\Models.AccountInfoArrayWrapper](docs/AccountInfoArrayWrapper.md)
 - [\Models.AccountInfoDto](docs/AccountInfoDto.md)
 - [\Models.AccountLoginType](docs/AccountLoginType.md)
 - [\Models.AceShortWrapper](docs/AceShortWrapper.md)
 - [\Models.AceShortWrapperArrayWrapper](docs/AceShortWrapperArrayWrapper.md)
 - [\Models.ActionConfig](docs/ActionConfig.md)
 - [\Models.ActionLinkConfig](docs/ActionLinkConfig.md)
 - [\Models.ActionType](docs/ActionType.md)
 - [\Models.ActiveConnectionsDto](docs/ActiveConnectionsDto.md)
 - [\Models.ActiveConnectionsItemDto](docs/ActiveConnectionsItemDto.md)
 - [\Models.ActiveConnectionsWrapper](docs/ActiveConnectionsWrapper.md)
 - [\Models.AddMcpServerRequestBody](docs/AddMcpServerRequestBody.md)
 - [\Models.AddRoomServersRequestBody](docs/AddRoomServersRequestBody.md)
 - [\Models.AdditionalWhiteLabelSettings](docs/AdditionalWhiteLabelSettings.md)
 - [\Models.AdditionalWhiteLabelSettingsDto](docs/AdditionalWhiteLabelSettingsDto.md)
 - [\Models.AdditionalWhiteLabelSettingsWrapper](docs/AdditionalWhiteLabelSettingsWrapper.md)
 - [\Models.AdminMessageBaseSettingsRequestsDto](docs/AdminMessageBaseSettingsRequestsDto.md)
 - [\Models.AdminMessageSettingsRequestsDto](docs/AdminMessageSettingsRequestsDto.md)
 - [\Models.AgentNewItemsDto](docs/AgentNewItemsDto.md)
 - [\Models.AiChatModelPricing](docs/AiChatModelPricing.md)
 - [\Models.AiChatPrice](docs/AiChatPrice.md)
 - [\Models.AiEmbeddingModelPricing](docs/AiEmbeddingModelPricing.md)
 - [\Models.AiEmbeddingPrice](docs/AiEmbeddingPrice.md)
 - [\Models.AiPricesResponse](docs/AiPricesResponse.md)
 - [\Models.AiPricesResponseWrapper](docs/AiPricesResponseWrapper.md)
 - [\Models.AiProviderArrayWrapper](docs/AiProviderArrayWrapper.md)
 - [\Models.AiProviderDto](docs/AiProviderDto.md)
 - [\Models.AiProviderWrapper](docs/AiProviderWrapper.md)
 - [\Models.AiSettingsDto](docs/AiSettingsDto.md)
 - [\Models.AiSettingsWrapper](docs/AiSettingsWrapper.md)
 - [\Models.AiWebSearchPricing](docs/AiWebSearchPricing.md)
 - [\Models.AnonymousConfigDto](docs/AnonymousConfigDto.md)
 - [\Models.ApiDateTime](docs/ApiDateTime.md)
 - [\Models.ApiKeyResponseArrayWrapper](docs/ApiKeyResponseArrayWrapper.md)
 - [\Models.ApiKeyResponseDto](docs/ApiKeyResponseDto.md)
 - [\Models.ApiKeyResponseWrapper](docs/ApiKeyResponseWrapper.md)
 - [\Models.ApplyFilterOption](docs/ApplyFilterOption.md)
 - [\Models.ArchiveRoomRequest](docs/ArchiveRoomRequest.md)
 - [\Models.Area](docs/Area.md)
 - [\Models.ArrayArrayWrapper](docs/ArrayArrayWrapper.md)
 - [\Models.AuditEventArrayWrapper](docs/AuditEventArrayWrapper.md)
 - [\Models.AuditEventDto](docs/AuditEventDto.md)
 - [\Models.AuthData](docs/AuthData.md)
 - [\Models.AuthKey](docs/AuthKey.md)
 - [\Models.AuthRequestsDto](docs/AuthRequestsDto.md)
 - [\Models.AuthServiceRequestsArrayWrapper](docs/AuthServiceRequestsArrayWrapper.md)
 - [\Models.AuthServiceRequestsDto](docs/AuthServiceRequestsDto.md)
 - [\Models.AuthWithCodeRequestsDto](docs/AuthWithCodeRequestsDto.md)
 - [\Models.AuthenticationTokenDto](docs/AuthenticationTokenDto.md)
 - [\Models.AuthenticationTokenWrapper](docs/AuthenticationTokenWrapper.md)
 - [\Models.AutoCleanUpData](docs/AutoCleanUpData.md)
 - [\Models.AutoCleanUpDataWrapper](docs/AutoCleanUpDataWrapper.md)
 - [\Models.AutoCleanupRequestDto](docs/AutoCleanupRequestDto.md)
 - [\Models.BackupDto](docs/BackupDto.md)
 - [\Models.BackupHistoryRecord](docs/BackupHistoryRecord.md)
 - [\Models.BackupHistoryRecordArrayWrapper](docs/BackupHistoryRecordArrayWrapper.md)
 - [\Models.BackupPeriod](docs/BackupPeriod.md)
 - [\Models.BackupProgress](docs/BackupProgress.md)
 - [\Models.BackupProgressEnum](docs/BackupProgressEnum.md)
 - [\Models.BackupProgressWrapper](docs/BackupProgressWrapper.md)
 - [\Models.BackupRestoreDto](docs/BackupRestoreDto.md)
 - [\Models.BackupScheduleDto](docs/BackupScheduleDto.md)
 - [\Models.BackupServiceStateDto](docs/BackupServiceStateDto.md)
 - [\Models.BackupServiceStateWrapper](docs/BackupServiceStateWrapper.md)
 - [\Models.BackupStorageType](docs/BackupStorageType.md)
 - [\Models.Balance](docs/Balance.md)
 - [\Models.BalanceWrapper](docs/BalanceWrapper.md)
 - [\Models.BaseBatchRequestDto](docs/BaseBatchRequestDto.md)
 - [\Models.BaseBatchRequestDtoAllOfFileIds](docs/BaseBatchRequestDtoAllOfFileIds.md)
 - [\Models.BaseBatchRequestDtoAllOfFolderIds](docs/BaseBatchRequestDtoAllOfFolderIds.md)
 - [\Models.BaseStorageSettingsCdnStorageSettings](docs/BaseStorageSettingsCdnStorageSettings.md)
 - [\Models.BaseStorageSettingsStorageSettings](docs/BaseStorageSettingsStorageSettings.md)
 - [\Models.BatchRequestDto](docs/BatchRequestDto.md)
 - [\Models.BatchRequestDtoAllOfDestFolderId](docs/BatchRequestDtoAllOfDestFolderId.md)
 - [\Models.BatchRequestDtoAllOfFileIds](docs/BatchRequestDtoAllOfFileIds.md)
 - [\Models.BatchRequestDtoAllOfFolderIds](docs/BatchRequestDtoAllOfFolderIds.md)
 - [\Models.BatchTagsRequestDto](docs/BatchTagsRequestDto.md)
 - [\Models.BooleanWrapper](docs/BooleanWrapper.md)
 - [\Models.BuyWalletServiceRequestDto](docs/BuyWalletServiceRequestDto.md)
 - [\Models.CapabilitiesDto](docs/CapabilitiesDto.md)
 - [\Models.CapabilitiesWrapper](docs/CapabilitiesWrapper.md)
 - [\Models.CdnStorageSettings](docs/CdnStorageSettings.md)
 - [\Models.CdnStorageSettingsWrapper](docs/CdnStorageSettingsWrapper.md)
 - [\Models.ChangeClientActivationRequest](docs/ChangeClientActivationRequest.md)
 - [\Models.ChangeEmailRequest](docs/ChangeEmailRequest.md)
 - [\Models.ChangeHistory](docs/ChangeHistory.md)
 - [\Models.ChangeOwnerRequestDto](docs/ChangeOwnerRequestDto.md)
 - [\Models.ChangePasswordRequest](docs/ChangePasswordRequest.md)
 - [\Models.ChangeWalletServiceStateRequestDto](docs/ChangeWalletServiceStateRequestDto.md)
 - [\Models.ChatArrayWrapper](docs/ChatArrayWrapper.md)
 - [\Models.ChatDto](docs/ChatDto.md)
 - [\Models.ChatImageMultimodalSettingsDto](docs/ChatImageMultimodalSettingsDto.md)
 - [\Models.ChatMultimodalSettingsDto](docs/ChatMultimodalSettingsDto.md)
 - [\Models.ChatReasoningEffort](docs/ChatReasoningEffort.md)
 - [\Models.ChatSettings](docs/ChatSettings.md)
 - [\Models.ChatSettingsDto](docs/ChatSettingsDto.md)
 - [\Models.ChatWrapper](docs/ChatWrapper.md)
 - [\Models.CheckConversionRequestDtoInteger](docs/CheckConversionRequestDtoInteger.md)
 - [\Models.CheckDestFolderDto](docs/CheckDestFolderDto.md)
 - [\Models.CheckDestFolderResult](docs/CheckDestFolderResult.md)
 - [\Models.CheckDestFolderWrapper](docs/CheckDestFolderWrapper.md)
 - [\Models.CheckDocServiceUrlRequestDto](docs/CheckDocServiceUrlRequestDto.md)
 - [\Models.CheckFillFormDraft](docs/CheckFillFormDraft.md)
 - [\Models.CheckUploadRequest](docs/CheckUploadRequest.md)
 - [\Models.ChunkedUploadSessionResponseInteger](docs/ChunkedUploadSessionResponseInteger.md)
 - [\Models.ChunkedUploadSessionResponseIntegerWrapper](docs/ChunkedUploadSessionResponseIntegerWrapper.md)
 - [\Models.ChunkedUploadSessionResponseWrapperInteger](docs/ChunkedUploadSessionResponseWrapperInteger.md)
 - [\Models.ChunkedUploadSessionResponseWrapperIntegerWrapper](docs/ChunkedUploadSessionResponseWrapperIntegerWrapper.md)
 - [\Models.ClientInfoResponse](docs/ClientInfoResponse.md)
 - [\Models.ClientResponse](docs/ClientResponse.md)
 - [\Models.ClientSecretResponse](docs/ClientSecretResponse.md)
 - [\Models.CoEditingConfig](docs/CoEditingConfig.md)
 - [\Models.CoEditingConfigMode](docs/CoEditingConfigMode.md)
 - [\Models.CompanyWhiteLabelSettings](docs/CompanyWhiteLabelSettings.md)
 - [\Models.CompanyWhiteLabelSettingsArrayWrapper](docs/CompanyWhiteLabelSettingsArrayWrapper.md)
 - [\Models.CompanyWhiteLabelSettingsDto](docs/CompanyWhiteLabelSettingsDto.md)
 - [\Models.CompanyWhiteLabelSettingsWrapper](docs/CompanyWhiteLabelSettingsWrapper.md)
 - [\Models.ConfigurationDtoInteger](docs/ConfigurationDtoInteger.md)
 - [\Models.ConfigurationIntegerWrapper](docs/ConfigurationIntegerWrapper.md)
 - [\Models.ConfirmData](docs/ConfirmData.md)
 - [\Models.ConfirmDto](docs/ConfirmDto.md)
 - [\Models.ConfirmType](docs/ConfirmType.md)
 - [\Models.ConfirmWrapper](docs/ConfirmWrapper.md)
 - [\Models.ConnectServerRequestBody](docs/ConnectServerRequestBody.md)
 - [\Models.ConnectionTestResult](docs/ConnectionTestResult.md)
 - [\Models.ConnectionTestResultWrapper](docs/ConnectionTestResultWrapper.md)
 - [\Models.Contact](docs/Contact.md)
 - [\Models.ContentDisposition](docs/ContentDisposition.md)
 - [\Models.ContentType](docs/ContentType.md)
 - [\Models.ContinueChatBody](docs/ContinueChatBody.md)
 - [\Models.ContinueChatBodyFilesInner](docs/ContinueChatBodyFilesInner.md)
 - [\Models.ConversationResultArrayWrapper](docs/ConversationResultArrayWrapper.md)
 - [\Models.ConversationResultDto](docs/ConversationResultDto.md)
 - [\Models.CookieSettingsDto](docs/CookieSettingsDto.md)
 - [\Models.CookieSettingsRequestsDto](docs/CookieSettingsRequestsDto.md)
 - [\Models.CookieSettingsWrapper](docs/CookieSettingsWrapper.md)
 - [\Models.CopyAsJsonElement](docs/CopyAsJsonElement.md)
 - [\Models.CopyAsJsonElementDestFolderId](docs/CopyAsJsonElementDestFolderId.md)
 - [\Models.CoverRequestDto](docs/CoverRequestDto.md)
 - [\Models.CoversResultArrayWrapper](docs/CoversResultArrayWrapper.md)
 - [\Models.CoversResultDto](docs/CoversResultDto.md)
 - [\Models.CreateAgentRequestDto](docs/CreateAgentRequestDto.md)
 - [\Models.CreateApiKeyRequestDto](docs/CreateApiKeyRequestDto.md)
 - [\Models.CreateClientRequest](docs/CreateClientRequest.md)
 - [\Models.CreateFileJsonElement](docs/CreateFileJsonElement.md)
 - [\Models.CreateFileJsonElementTemplateId](docs/CreateFileJsonElementTemplateId.md)
 - [\Models.CreateFolder](docs/CreateFolder.md)
 - [\Models.CreateProviderRequestDto](docs/CreateProviderRequestDto.md)
 - [\Models.CreateRoomFromTemplateDto](docs/CreateRoomFromTemplateDto.md)
 - [\Models.CreateRoomRequestDto](docs/CreateRoomRequestDto.md)
 - [\Models.CreateTagRequestDto](docs/CreateTagRequestDto.md)
 - [\Models.CreateTextOrHtmlFile](docs/CreateTextOrHtmlFile.md)
 - [\Models.CreateThirdPartyRoom](docs/CreateThirdPartyRoom.md)
 - [\Models.CreateWebhooksConfigRequestsDto](docs/CreateWebhooksConfigRequestsDto.md)
 - [\Models.Cron](docs/Cron.md)
 - [\Models.CronParams](docs/CronParams.md)
 - [\Models.CspDto](docs/CspDto.md)
 - [\Models.CspRequestsDto](docs/CspRequestsDto.md)
 - [\Models.CspWrapper](docs/CspWrapper.md)
 - [\Models.Culture](docs/Culture.md)
 - [\Models.CultureSpecificExternalResource](docs/CultureSpecificExternalResource.md)
 - [\Models.CultureSpecificExternalResources](docs/CultureSpecificExternalResources.md)
 - [\Models.CurrenciesArrayWrapper](docs/CurrenciesArrayWrapper.md)
 - [\Models.CurrenciesDto](docs/CurrenciesDto.md)
 - [\Models.CurrencyInfo](docs/CurrencyInfo.md)
 - [\Models.CurrentLicenseInfo](docs/CurrentLicenseInfo.md)
 - [\Models.CustomColorThemesSettingsColorItem](docs/CustomColorThemesSettingsColorItem.md)
 - [\Models.CustomColorThemesSettingsDto](docs/CustomColorThemesSettingsDto.md)
 - [\Models.CustomColorThemesSettingsItem](docs/CustomColorThemesSettingsItem.md)
 - [\Models.CustomColorThemesSettingsRequestsDto](docs/CustomColorThemesSettingsRequestsDto.md)
 - [\Models.CustomColorThemesSettingsWrapper](docs/CustomColorThemesSettingsWrapper.md)
 - [\Models.CustomFilterParameters](docs/CustomFilterParameters.md)
 - [\Models.CustomerConfigDto](docs/CustomerConfigDto.md)
 - [\Models.CustomerInfoDto](docs/CustomerInfoDto.md)
 - [\Models.CustomerInfoWrapper](docs/CustomerInfoWrapper.md)
 - [\Models.CustomerOperationsReportRequestDto](docs/CustomerOperationsReportRequestDto.md)
 - [\Models.CustomizationConfigDto](docs/CustomizationConfigDto.md)
 - [\Models.DarkThemeSettings](docs/DarkThemeSettings.md)
 - [\Models.DarkThemeSettingsRequestDto](docs/DarkThemeSettingsRequestDto.md)
 - [\Models.DarkThemeSettingsType](docs/DarkThemeSettingsType.md)
 - [\Models.DarkThemeSettingsWrapper](docs/DarkThemeSettingsWrapper.md)
 - [\Models.DateToAutoCleanUp](docs/DateToAutoCleanUp.md)
 - [\Models.DbTenant](docs/DbTenant.md)
 - [\Models.DbTenantPartner](docs/DbTenantPartner.md)
 - [\Models.DeepLinkConfigurationRequestsDto](docs/DeepLinkConfigurationRequestsDto.md)
 - [\Models.DeepLinkDto](docs/DeepLinkDto.md)
 - [\Models.DeepLinkHandlingMode](docs/DeepLinkHandlingMode.md)
 - [\Models.DefaultProductRequestDto](docs/DefaultProductRequestDto.md)
 - [\Models.DefaultProviderDto](docs/DefaultProviderDto.md)
 - [\Models.DefaultProviderWrapper](docs/DefaultProviderWrapper.md)
 - [\Models.DefaultTemplateItemDto](docs/DefaultTemplateItemDto.md)
 - [\Models.DefaultTemplateSettingsDto](docs/DefaultTemplateSettingsDto.md)
 - [\Models.DefaultTemplateSettingsRequestDto](docs/DefaultTemplateSettingsRequestDto.md)
 - [\Models.DefaultTemplateSettingsRequestDtoSelectedFile](docs/DefaultTemplateSettingsRequestDtoSelectedFile.md)
 - [\Models.DefaultTemplateSettingsResetRequestDto](docs/DefaultTemplateSettingsResetRequestDto.md)
 - [\Models.DefaultTemplateSettingsWrapper](docs/DefaultTemplateSettingsWrapper.md)
 - [\Models.Delete](docs/Delete.md)
 - [\Models.DeleteBatchRequestDto](docs/DeleteBatchRequestDto.md)
 - [\Models.DeleteBatchRequestDtoAllOfFileIds](docs/DeleteBatchRequestDtoAllOfFileIds.md)
 - [\Models.DeleteBatchRequestDtoAllOfFolderIds](docs/DeleteBatchRequestDtoAllOfFolderIds.md)
 - [\Models.DeleteFolder](docs/DeleteFolder.md)
 - [\Models.DeleteRoomRequest](docs/DeleteRoomRequest.md)
 - [\Models.DeleteRoomServersRequestBody](docs/DeleteRoomServersRequestBody.md)
 - [\Models.DeleteServersRequestBody](docs/DeleteServersRequestBody.md)
 - [\Models.DeleteVersionBatchRequestDto](docs/DeleteVersionBatchRequestDto.md)
 - [\Models.DisplayRequestDto](docs/DisplayRequestDto.md)
 - [\Models.DistributedTaskStatus](docs/DistributedTaskStatus.md)
 - [\Models.DnsSettingsRequestsDto](docs/DnsSettingsRequestsDto.md)
 - [\Models.DocServiceUrlDto](docs/DocServiceUrlDto.md)
 - [\Models.DocServiceUrlWrapper](docs/DocServiceUrlWrapper.md)
 - [\Models.DocumentBuilderTaskDto](docs/DocumentBuilderTaskDto.md)
 - [\Models.DocumentBuilderTaskWrapper](docs/DocumentBuilderTaskWrapper.md)
 - [\Models.DocumentConfigDto](docs/DocumentConfigDto.md)
 - [\Models.DoubleNullableWrapper](docs/DoubleNullableWrapper.md)
 - [\Models.DoubleWrapper](docs/DoubleWrapper.md)
 - [\Models.DownloadRequestDto](docs/DownloadRequestDto.md)
 - [\Models.DownloadRequestDtoAllOfFileIds](docs/DownloadRequestDtoAllOfFileIds.md)
 - [\Models.DownloadRequestDtoAllOfFolderIds](docs/DownloadRequestDtoAllOfFolderIds.md)
 - [\Models.DownloadRequestItemDto](docs/DownloadRequestItemDto.md)
 - [\Models.DownloadRequestItemDtoKey](docs/DownloadRequestItemDtoKey.md)
 - [\Models.DraftLocationInteger](docs/DraftLocationInteger.md)
 - [\Models.DuplicateRequestDto](docs/DuplicateRequestDto.md)
 - [\Models.DuplicateRequestDtoAllOfFileIds](docs/DuplicateRequestDtoAllOfFileIds.md)
 - [\Models.DuplicateRequestDtoAllOfFolderIds](docs/DuplicateRequestDtoAllOfFolderIds.md)
 - [\Models.EditHistoryArrayWrapper](docs/EditHistoryArrayWrapper.md)
 - [\Models.EditHistoryAuthor](docs/EditHistoryAuthor.md)
 - [\Models.EditHistoryChangesWrapper](docs/EditHistoryChangesWrapper.md)
 - [\Models.EditHistoryDataDto](docs/EditHistoryDataDto.md)
 - [\Models.EditHistoryDataWrapper](docs/EditHistoryDataWrapper.md)
 - [\Models.EditHistoryDto](docs/EditHistoryDto.md)
 - [\Models.EditHistoryUrl](docs/EditHistoryUrl.md)
 - [\Models.EditorConfigurationDto](docs/EditorConfigurationDto.md)
 - [\Models.EditorToolCallStateDto](docs/EditorToolCallStateDto.md)
 - [\Models.EditorType](docs/EditorType.md)
 - [\Models.EmailActivationSettings](docs/EmailActivationSettings.md)
 - [\Models.EmailActivationSettingsWrapper](docs/EmailActivationSettingsWrapper.md)
 - [\Models.EmailInvitationDto](docs/EmailInvitationDto.md)
 - [\Models.EmailMemberRequestDto](docs/EmailMemberRequestDto.md)
 - [\Models.EmailValidationKeyModel](docs/EmailValidationKeyModel.md)
 - [\Models.EmbeddedConfig](docs/EmbeddedConfig.md)
 - [\Models.EmbeddingProviderType](docs/EmbeddingProviderType.md)
 - [\Models.EmployeeActivationStatus](docs/EmployeeActivationStatus.md)
 - [\Models.EmployeeArrayWrapper](docs/EmployeeArrayWrapper.md)
 - [\Models.EmployeeDto](docs/EmployeeDto.md)
 - [\Models.EmployeeFullArrayWrapper](docs/EmployeeFullArrayWrapper.md)
 - [\Models.EmployeeFullDto](docs/EmployeeFullDto.md)
 - [\Models.EmployeeFullWrapper](docs/EmployeeFullWrapper.md)
 - [\Models.EmployeeStatus](docs/EmployeeStatus.md)
 - [\Models.EmployeeType](docs/EmployeeType.md)
 - [\Models.EmployeeWrapper](docs/EmployeeWrapper.md)
 - [\Models.EncryprtionStatus](docs/EncryprtionStatus.md)
 - [\Models.EncryptionKeysConfig](docs/EncryptionKeysConfig.md)
 - [\Models.EncryptionSettings](docs/EncryptionSettings.md)
 - [\Models.EncryptionSettingsWrapper](docs/EncryptionSettingsWrapper.md)
 - [\Models.EngineType](docs/EngineType.md)
 - [\Models.EntryType](docs/EntryType.md)
 - [\Models.ExchangeToken200Response](docs/ExchangeToken200Response.md)
 - [\Models.ExportChatRequestBodyInteger](docs/ExportChatRequestBodyInteger.md)
 - [\Models.ExportMessageRequestBodyInteger](docs/ExportMessageRequestBodyInteger.md)
 - [\Models.ExternalDatabaseSettings](docs/ExternalDatabaseSettings.md)
 - [\Models.ExternalDatabaseType](docs/ExternalDatabaseType.md)
 - [\Models.ExternalShareDto](docs/ExternalShareDto.md)
 - [\Models.ExternalShareRequestParam](docs/ExternalShareRequestParam.md)
 - [\Models.ExternalShareWrapper](docs/ExternalShareWrapper.md)
 - [\Models.FeatureUsedDto](docs/FeatureUsedDto.md)
 - [\Models.FeedbackConfig](docs/FeedbackConfig.md)
 - [\Models.FileConflictResolveType](docs/FileConflictResolveType.md)
 - [\Models.FileDtoInteger](docs/FileDtoInteger.md)
 - [\Models.FileDtoIntegerAllOfViewAccessibility](docs/FileDtoIntegerAllOfViewAccessibility.md)
 - [\Models.FileEntryBaseArrayWrapper](docs/FileEntryBaseArrayWrapper.md)
 - [\Models.FileEntryBaseDto](docs/FileEntryBaseDto.md)
 - [\Models.FileEntryBaseWrapper](docs/FileEntryBaseWrapper.md)
 - [\Models.FileEntryDtoInteger](docs/FileEntryDtoInteger.md)
 - [\Models.FileEntryDtoIntegerAllOfAvailableShareRights](docs/FileEntryDtoIntegerAllOfAvailableShareRights.md)
 - [\Models.FileEntryDtoIntegerAllOfSecurity](docs/FileEntryDtoIntegerAllOfSecurity.md)
 - [\Models.FileEntryDtoIntegerAllOfShareSettings](docs/FileEntryDtoIntegerAllOfShareSettings.md)
 - [\Models.FileEntryDtoString](docs/FileEntryDtoString.md)
 - [\Models.FileEntryIntegerArrayWrapper](docs/FileEntryIntegerArrayWrapper.md)
 - [\Models.FileEntryType](docs/FileEntryType.md)
 - [\Models.FileIntegerArrayWrapper](docs/FileIntegerArrayWrapper.md)
 - [\Models.FileIntegerWrapper](docs/FileIntegerWrapper.md)
 - [\Models.FileLink](docs/FileLink.md)
 - [\Models.FileLinkRequest](docs/FileLinkRequest.md)
 - [\Models.FileLinkWrapper](docs/FileLinkWrapper.md)
 - [\Models.FileOperationArrayWrapper](docs/FileOperationArrayWrapper.md)
 - [\Models.FileOperationDto](docs/FileOperationDto.md)
 - [\Models.FileOperationRequestBaseDto](docs/FileOperationRequestBaseDto.md)
 - [\Models.FileOperationType](docs/FileOperationType.md)
 - [\Models.FileOperationWrapper](docs/FileOperationWrapper.md)
 - [\Models.FileReference](docs/FileReference.md)
 - [\Models.FileReferenceData](docs/FileReferenceData.md)
 - [\Models.FileReferenceWrapper](docs/FileReferenceWrapper.md)
 - [\Models.FileShare](docs/FileShare.md)
 - [\Models.FileShareArrayWrapper](docs/FileShareArrayWrapper.md)
 - [\Models.FileShareDto](docs/FileShareDto.md)
 - [\Models.FileShareLink](docs/FileShareLink.md)
 - [\Models.FileShareParams](docs/FileShareParams.md)
 - [\Models.FileShareWrapper](docs/FileShareWrapper.md)
 - [\Models.FileStatus](docs/FileStatus.md)
 - [\Models.FileType](docs/FileType.md)
 - [\Models.FileUploadResultDto](docs/FileUploadResultDto.md)
 - [\Models.FileUploadResultWrapper](docs/FileUploadResultWrapper.md)
 - [\Models.FilesSettingsDto](docs/FilesSettingsDto.md)
 - [\Models.FilesSettingsDtoInternalFormats](docs/FilesSettingsDtoInternalFormats.md)
 - [\Models.FilesSettingsWrapper](docs/FilesSettingsWrapper.md)
 - [\Models.FilesStatisticsFolder](docs/FilesStatisticsFolder.md)
 - [\Models.FilesStatisticsResultDto](docs/FilesStatisticsResultDto.md)
 - [\Models.FilesStatisticsResultWrapper](docs/FilesStatisticsResultWrapper.md)
 - [\Models.FillingFormResultDtoInteger](docs/FillingFormResultDtoInteger.md)
 - [\Models.FillingFormResultIntegerWrapper](docs/FillingFormResultIntegerWrapper.md)
 - [\Models.FilterType](docs/FilterType.md)
 - [\Models.FinishDto](docs/FinishDto.md)
 - [\Models.FireBaseUser](docs/FireBaseUser.md)
 - [\Models.FireBaseUserWrapper](docs/FireBaseUserWrapper.md)
 - [\Models.FirebaseDto](docs/FirebaseDto.md)
 - [\Models.FirebaseRequestsDto](docs/FirebaseRequestsDto.md)
 - [\Models.FolderContentDtoInteger](docs/FolderContentDtoInteger.md)
 - [\Models.FolderContentIntegerArrayWrapper](docs/FolderContentIntegerArrayWrapper.md)
 - [\Models.FolderContentIntegerWrapper](docs/FolderContentIntegerWrapper.md)
 - [\Models.FolderDtoInteger](docs/FolderDtoInteger.md)
 - [\Models.FolderDtoString](docs/FolderDtoString.md)
 - [\Models.FolderIntegerArrayWrapper](docs/FolderIntegerArrayWrapper.md)
 - [\Models.FolderIntegerWrapper](docs/FolderIntegerWrapper.md)
 - [\Models.FolderLinkRequest](docs/FolderLinkRequest.md)
 - [\Models.FolderStringArrayWrapper](docs/FolderStringArrayWrapper.md)
 - [\Models.FolderStringWrapper](docs/FolderStringWrapper.md)
 - [\Models.FolderType](docs/FolderType.md)
 - [\Models.FormFillingManageAction](docs/FormFillingManageAction.md)
 - [\Models.FormFillingStatus](docs/FormFillingStatus.md)
 - [\Models.FormGalleryDto](docs/FormGalleryDto.md)
 - [\Models.FormMetadata](docs/FormMetadata.md)
 - [\Models.FormResultsDto](docs/FormResultsDto.md)
 - [\Models.FormRole](docs/FormRole.md)
 - [\Models.FormRoleArrayWrapper](docs/FormRoleArrayWrapper.md)
 - [\Models.FormRoleDto](docs/FormRoleDto.md)
 - [\Models.FormSubmissionsDto](docs/FormSubmissionsDto.md)
 - [\Models.FormSubmissionsWrapper](docs/FormSubmissionsWrapper.md)
 - [\Models.FormsItemArrayWrapper](docs/FormsItemArrayWrapper.md)
 - [\Models.FormsItemData](docs/FormsItemData.md)
 - [\Models.FormsItemDto](docs/FormsItemDto.md)
 - [\Models.GetPortalPrices200Response](docs/GetPortalPrices200Response.md)
 - [\Models.GetPortalPrices200ResponseLinksInner](docs/GetPortalPrices200ResponseLinksInner.md)
 - [\Models.GetReferenceDataDtoInteger](docs/GetReferenceDataDtoInteger.md)
 - [\Models.GetWebhookTriggers200Response](docs/GetWebhookTriggers200Response.md)
 - [\Models.GobackConfig](docs/GobackConfig.md)
 - [\Models.GreetingSettingsRequestsDto](docs/GreetingSettingsRequestsDto.md)
 - [\Models.GroupArrayWrapper](docs/GroupArrayWrapper.md)
 - [\Models.GroupDto](docs/GroupDto.md)
 - [\Models.GroupMemberSecurityRequestArrayWrapper](docs/GroupMemberSecurityRequestArrayWrapper.md)
 - [\Models.GroupMemberSecurityRequestDto](docs/GroupMemberSecurityRequestDto.md)
 - [\Models.GroupRequestDto](docs/GroupRequestDto.md)
 - [\Models.GroupSummaryArrayWrapper](docs/GroupSummaryArrayWrapper.md)
 - [\Models.GroupSummaryDto](docs/GroupSummaryDto.md)
 - [\Models.GroupWrapper](docs/GroupWrapper.md)
 - [\Models.HideConfirmConvertRequestDto](docs/HideConfirmConvertRequestDto.md)
 - [\Models.HistoryAction](docs/HistoryAction.md)
 - [\Models.HistoryArrayWrapper](docs/HistoryArrayWrapper.md)
 - [\Models.HistoryData](docs/HistoryData.md)
 - [\Models.HistoryDto](docs/HistoryDto.md)
 - [\Models.ICompressWrapper](docs/ICompressWrapper.md)
 - [\Models.IMagickGeometry](docs/IMagickGeometry.md)
 - [\Models.IPRestriction](docs/IPRestriction.md)
 - [\Models.IPRestrictionArrayWrapper](docs/IPRestrictionArrayWrapper.md)
 - [\Models.IPRestrictionsSettings](docs/IPRestrictionsSettings.md)
 - [\Models.IPRestrictionsSettingsWrapper](docs/IPRestrictionsSettingsWrapper.md)
 - [\Models.Icon](docs/Icon.md)
 - [\Models.IconRequest](docs/IconRequest.md)
 - [\Models.ImportableApiEntity](docs/ImportableApiEntity.md)
 - [\Models.InfoConfigDto](docs/InfoConfigDto.md)
 - [\Models.Int32Wrapper](docs/Int32Wrapper.md)
 - [\Models.Int64Wrapper](docs/Int64Wrapper.md)
 - [\Models.InvitationLinkCreateRequestDto](docs/InvitationLinkCreateRequestDto.md)
 - [\Models.InvitationLinkDeleteRequestDto](docs/InvitationLinkDeleteRequestDto.md)
 - [\Models.InvitationLinkDto](docs/InvitationLinkDto.md)
 - [\Models.InvitationLinkUpdateRequestDto](docs/InvitationLinkUpdateRequestDto.md)
 - [\Models.InvitationLinkWrapper](docs/InvitationLinkWrapper.md)
 - [\Models.InviteUsersRequestDto](docs/InviteUsersRequestDto.md)
 - [\Models.IpRestrictionBase](docs/IpRestrictionBase.md)
 - [\Models.IpRestrictionsDto](docs/IpRestrictionsDto.md)
 - [\Models.IpRestrictionsWrapper](docs/IpRestrictionsWrapper.md)
 - [\Models.IsDefaultWhiteLabelLogosArrayWrapper](docs/IsDefaultWhiteLabelLogosArrayWrapper.md)
 - [\Models.IsDefaultWhiteLabelLogosDto](docs/IsDefaultWhiteLabelLogosDto.md)
 - [\Models.IsDefaultWhiteLabelLogosWrapper](docs/IsDefaultWhiteLabelLogosWrapper.md)
 - [\Models.ItemKeyValuePairObjectObject](docs/ItemKeyValuePairObjectObject.md)
 - [\Models.ItemKeyValuePairStringBoolean](docs/ItemKeyValuePairStringBoolean.md)
 - [\Models.ItemKeyValuePairStringLogoRequestsDto](docs/ItemKeyValuePairStringLogoRequestsDto.md)
 - [\Models.ItemKeyValuePairStringString](docs/ItemKeyValuePairStringString.md)
 - [\Models.KeyValuePairBooleanString](docs/KeyValuePairBooleanString.md)
 - [\Models.KeyValuePairBooleanStringWrapper](docs/KeyValuePairBooleanStringWrapper.md)
 - [\Models.LinkAccountRequestDto](docs/LinkAccountRequestDto.md)
 - [\Models.LinkType](docs/LinkType.md)
 - [\Models.Location](docs/Location.md)
 - [\Models.LocationType](docs/LocationType.md)
 - [\Models.LockFileParameters](docs/LockFileParameters.md)
 - [\Models.LoginEventArrayWrapper](docs/LoginEventArrayWrapper.md)
 - [\Models.LoginEventDto](docs/LoginEventDto.md)
 - [\Models.LoginProvider](docs/LoginProvider.md)
 - [\Models.LoginSettingsDto](docs/LoginSettingsDto.md)
 - [\Models.LoginSettingsRequestDto](docs/LoginSettingsRequestDto.md)
 - [\Models.LoginSettingsWrapper](docs/LoginSettingsWrapper.md)
 - [\Models.Logo](docs/Logo.md)
 - [\Models.LogoConfigDto](docs/LogoConfigDto.md)
 - [\Models.LogoCover](docs/LogoCover.md)
 - [\Models.LogoRequest](docs/LogoRequest.md)
 - [\Models.LogoRequestsDto](docs/LogoRequestsDto.md)
 - [\Models.MailDomainSettingsRequestsDto](docs/MailDomainSettingsRequestsDto.md)
 - [\Models.ManageFormFillingDtoInteger](docs/ManageFormFillingDtoInteger.md)
 - [\Models.McpServerArrayWrapper](docs/McpServerArrayWrapper.md)
 - [\Models.McpServerDto](docs/McpServerDto.md)
 - [\Models.McpServerShortArrayWrapper](docs/McpServerShortArrayWrapper.md)
 - [\Models.McpServerShortDto](docs/McpServerShortDto.md)
 - [\Models.McpServerShortWrapper](docs/McpServerShortWrapper.md)
 - [\Models.McpServerStatusArrayWrapper](docs/McpServerStatusArrayWrapper.md)
 - [\Models.McpServerStatusDto](docs/McpServerStatusDto.md)
 - [\Models.McpServerStatusWrapper](docs/McpServerStatusWrapper.md)
 - [\Models.McpServerWrapper](docs/McpServerWrapper.md)
 - [\Models.McpToolArrayWrapper](docs/McpToolArrayWrapper.md)
 - [\Models.McpToolDto](docs/McpToolDto.md)
 - [\Models.MemberRequestDto](docs/MemberRequestDto.md)
 - [\Models.MembersRequest](docs/MembersRequest.md)
 - [\Models.MentionMessageWrapper](docs/MentionMessageWrapper.md)
 - [\Models.MentionWrapper](docs/MentionWrapper.md)
 - [\Models.MentionWrapperArrayWrapper](docs/MentionWrapperArrayWrapper.md)
 - [\Models.MessageAction](docs/MessageAction.md)
 - [\Models.MessageArrayWrapper](docs/MessageArrayWrapper.md)
 - [\Models.MessageContentDto](docs/MessageContentDto.md)
 - [\Models.MessageContentType](docs/MessageContentType.md)
 - [\Models.MessageDto](docs/MessageDto.md)
 - [\Models.MigratingApiFiles](docs/MigratingApiFiles.md)
 - [\Models.MigratingApiGroup](docs/MigratingApiGroup.md)
 - [\Models.MigratingApiUser](docs/MigratingApiUser.md)
 - [\Models.MigrationApiInfo](docs/MigrationApiInfo.md)
 - [\Models.MigrationStatusDto](docs/MigrationStatusDto.md)
 - [\Models.MigrationStatusWrapper](docs/MigrationStatusWrapper.md)
 - [\Models.MobilePhoneActivationStatus](docs/MobilePhoneActivationStatus.md)
 - [\Models.MobileRequestsDto](docs/MobileRequestsDto.md)
 - [\Models.ModelArrayWrapper](docs/ModelArrayWrapper.md)
 - [\Models.ModelDto](docs/ModelDto.md)
 - [\Models.ModelErrorResponse](docs/ModelErrorResponse.md)
 - [\Models.Module](docs/Module.md)
 - [\Models.ModuleWrapper](docs/ModuleWrapper.md)
 - [\Models.MultiSizeLogoCover](docs/MultiSizeLogoCover.md)
 - [\Models.NewItemsAgentNewItemsArrayWrapper](docs/NewItemsAgentNewItemsArrayWrapper.md)
 - [\Models.NewItemsDtoAgentNewItemsDto](docs/NewItemsDtoAgentNewItemsDto.md)
 - [\Models.NewItemsDtoFileEntryBaseDto](docs/NewItemsDtoFileEntryBaseDto.md)
 - [\Models.NewItemsDtoRoomNewItemsDto](docs/NewItemsDtoRoomNewItemsDto.md)
 - [\Models.NewItemsFileEntryBaseArrayWrapper](docs/NewItemsFileEntryBaseArrayWrapper.md)
 - [\Models.NewItemsRoomNewItemsArrayWrapper](docs/NewItemsRoomNewItemsArrayWrapper.md)
 - [\Models.NoContentResult](docs/NoContentResult.md)
 - [\Models.NoContentResultWrapper](docs/NoContentResultWrapper.md)
 - [\Models.NotificationChannelDto](docs/NotificationChannelDto.md)
 - [\Models.NotificationChannelStatusDto](docs/NotificationChannelStatusDto.md)
 - [\Models.NotificationChannelStatusWrapper](docs/NotificationChannelStatusWrapper.md)
 - [\Models.NotificationSettingsDto](docs/NotificationSettingsDto.md)
 - [\Models.NotificationSettingsRequestsDto](docs/NotificationSettingsRequestsDto.md)
 - [\Models.NotificationSettingsWrapper](docs/NotificationSettingsWrapper.md)
 - [\Models.NotificationType](docs/NotificationType.md)
 - [\Models.OAuth20Token](docs/OAuth20Token.md)
 - [\Models.ObjectArrayWrapper](docs/ObjectArrayWrapper.md)
 - [\Models.ObjectWrapper](docs/ObjectWrapper.md)
 - [\Models.OperationDto](docs/OperationDto.md)
 - [\Models.OperationOrderType](docs/OperationOrderType.md)
 - [\Models.OperationStatus](docs/OperationStatus.md)
 - [\Models.OperationType](docs/OperationType.md)
 - [\Models.Options](docs/Options.md)
 - [\Models.OrderBy](docs/OrderBy.md)
 - [\Models.OrderRequestDto](docs/OrderRequestDto.md)
 - [\Models.OrdersItemRequestDtoInteger](docs/OrdersItemRequestDtoInteger.md)
 - [\Models.OrdersRequestDtoInteger](docs/OrdersRequestDtoInteger.md)
 - [\Models.OwnerChangeInstructionsDto](docs/OwnerChangeInstructionsDto.md)
 - [\Models.OwnerChangeInstructionsWrapper](docs/OwnerChangeInstructionsWrapper.md)
 - [\Models.OwnerIdSettingsRequestDto](docs/OwnerIdSettingsRequestDto.md)
 - [\Models.PageableModificationResponse](docs/PageableModificationResponse.md)
 - [\Models.PageableResponse](docs/PageableResponse.md)
 - [\Models.PageableResponseClientInfoResponse](docs/PageableResponseClientInfoResponse.md)
 - [\Models.Paragraph](docs/Paragraph.md)
 - [\Models.PasswordHasher](docs/PasswordHasher.md)
 - [\Models.PasswordSettingsDto](docs/PasswordSettingsDto.md)
 - [\Models.PasswordSettingsRequestsDto](docs/PasswordSettingsRequestsDto.md)
 - [\Models.PasswordSettingsWrapper](docs/PasswordSettingsWrapper.md)
 - [\Models.PaymentCalculation](docs/PaymentCalculation.md)
 - [\Models.PaymentCalculationWrapper](docs/PaymentCalculationWrapper.md)
 - [\Models.PaymentMethodStatus](docs/PaymentMethodStatus.md)
 - [\Models.PaymentSettingsDto](docs/PaymentSettingsDto.md)
 - [\Models.PaymentSettingsWrapper](docs/PaymentSettingsWrapper.md)
 - [\Models.PaymentUrlRequestDto](docs/PaymentUrlRequestDto.md)
 - [\Models.Payments](docs/Payments.md)
 - [\Models.PermissionsConfig](docs/PermissionsConfig.md)
 - [\Models.PluginsConfig](docs/PluginsConfig.md)
 - [\Models.PluginsDto](docs/PluginsDto.md)
 - [\Models.PriceDto](docs/PriceDto.md)
 - [\Models.ProductAdministratorDto](docs/ProductAdministratorDto.md)
 - [\Models.ProductAdministratorWrapper](docs/ProductAdministratorWrapper.md)
 - [\Models.ProductQuantityType](docs/ProductQuantityType.md)
 - [\Models.ProductType](docs/ProductType.md)
 - [\Models.ProviderArrayWrapper](docs/ProviderArrayWrapper.md)
 - [\Models.ProviderDto](docs/ProviderDto.md)
 - [\Models.ProviderFilter](docs/ProviderFilter.md)
 - [\Models.ProviderSettingsArrayWrapper](docs/ProviderSettingsArrayWrapper.md)
 - [\Models.ProviderSettingsDto](docs/ProviderSettingsDto.md)
 - [\Models.ProviderType](docs/ProviderType.md)
 - [\Models.QuantityRequestDto](docs/QuantityRequestDto.md)
 - [\Models.Quota](docs/Quota.md)
 - [\Models.QuotaArrayWrapper](docs/QuotaArrayWrapper.md)
 - [\Models.QuotaDto](docs/QuotaDto.md)
 - [\Models.QuotaFilter](docs/QuotaFilter.md)
 - [\Models.QuotaScope](docs/QuotaScope.md)
 - [\Models.QuotaSettingsRequestsDto](docs/QuotaSettingsRequestsDto.md)
 - [\Models.QuotaSettingsRequestsDtoDefaultQuota](docs/QuotaSettingsRequestsDtoDefaultQuota.md)
 - [\Models.QuotaState](docs/QuotaState.md)
 - [\Models.QuotaWrapper](docs/QuotaWrapper.md)
 - [\Models.RecaptchaType](docs/RecaptchaType.md)
 - [\Models.RecentConfig](docs/RecentConfig.md)
 - [\Models.RegStatus](docs/RegStatus.md)
 - [\Models.RemoveProviderRequestDto](docs/RemoveProviderRequestDto.md)
 - [\Models.RenameChatBody](docs/RenameChatBody.md)
 - [\Models.ReportDto](docs/ReportDto.md)
 - [\Models.ReportWrapper](docs/ReportWrapper.md)
 - [\Models.RestrictedModelsResponse](docs/RestrictedModelsResponse.md)
 - [\Models.RestrictedModelsResponseWrapper](docs/RestrictedModelsResponseWrapper.md)
 - [\Models.ReviewConfig](docs/ReviewConfig.md)
 - [\Models.Role](docs/Role.md)
 - [\Models.RoomDataLifetimeDto](docs/RoomDataLifetimeDto.md)
 - [\Models.RoomDataLifetimePeriod](docs/RoomDataLifetimePeriod.md)
 - [\Models.RoomFromTemplateStatusDto](docs/RoomFromTemplateStatusDto.md)
 - [\Models.RoomFromTemplateStatusWrapper](docs/RoomFromTemplateStatusWrapper.md)
 - [\Models.RoomGroupArrayWrapper](docs/RoomGroupArrayWrapper.md)
 - [\Models.RoomGroupDto](docs/RoomGroupDto.md)
 - [\Models.RoomGroupRequestDto](docs/RoomGroupRequestDto.md)
 - [\Models.RoomGroupWrapper](docs/RoomGroupWrapper.md)
 - [\Models.RoomInvitation](docs/RoomInvitation.md)
 - [\Models.RoomInvitationRequest](docs/RoomInvitationRequest.md)
 - [\Models.RoomLinkRequest](docs/RoomLinkRequest.md)
 - [\Models.RoomNewItemsDto](docs/RoomNewItemsDto.md)
 - [\Models.RoomSecurityDto](docs/RoomSecurityDto.md)
 - [\Models.RoomSecurityError](docs/RoomSecurityError.md)
 - [\Models.RoomSecurityWrapper](docs/RoomSecurityWrapper.md)
 - [\Models.RoomTemplateDto](docs/RoomTemplateDto.md)
 - [\Models.RoomTemplateStatusDto](docs/RoomTemplateStatusDto.md)
 - [\Models.RoomTemplateStatusWrapper](docs/RoomTemplateStatusWrapper.md)
 - [\Models.RoomType](docs/RoomType.md)
 - [\Models.RoomsNotificationSettingsDto](docs/RoomsNotificationSettingsDto.md)
 - [\Models.RoomsNotificationSettingsWrapper](docs/RoomsNotificationSettingsWrapper.md)
 - [\Models.RoomsNotificationsSettingsRequestDto](docs/RoomsNotificationsSettingsRequestDto.md)
 - [\Models.Run](docs/Run.md)
 - [\Models.STRINGArrayWrapper](docs/STRINGArrayWrapper.md)
 - [\Models.SalesRequestsDto](docs/SalesRequestsDto.md)
 - [\Models.SaveAsPdfInteger](docs/SaveAsPdfInteger.md)
 - [\Models.SaveFormRoleMappingDtoInteger](docs/SaveFormRoleMappingDtoInteger.md)
 - [\Models.ScheduleDto](docs/ScheduleDto.md)
 - [\Models.ScheduleWrapper](docs/ScheduleWrapper.md)
 - [\Models.ScopeResponse](docs/ScopeResponse.md)
 - [\Models.SearchArea](docs/SearchArea.md)
 - [\Models.SecurityArrayWrapper](docs/SecurityArrayWrapper.md)
 - [\Models.SecurityDto](docs/SecurityDto.md)
 - [\Models.SecurityInfoRequestDto](docs/SecurityInfoRequestDto.md)
 - [\Models.SecurityInfoSimpleRequestDto](docs/SecurityInfoSimpleRequestDto.md)
 - [\Models.SecurityRequestsDto](docs/SecurityRequestsDto.md)
 - [\Models.ServerType](docs/ServerType.md)
 - [\Models.ServicePayment](docs/ServicePayment.md)
 - [\Models.ServicePaymentWrapper](docs/ServicePaymentWrapper.md)
 - [\Models.SessionRequest](docs/SessionRequest.md)
 - [\Models.SetDefaultProviderRequestDto](docs/SetDefaultProviderRequestDto.md)
 - [\Models.SetEmbeddingConfigRequestBody](docs/SetEmbeddingConfigRequestBody.md)
 - [\Models.SetManagerRequest](docs/SetManagerRequest.md)
 - [\Models.SetMcpToolsRequestBody](docs/SetMcpToolsRequestBody.md)
 - [\Models.SetPublicDto](docs/SetPublicDto.md)
 - [\Models.SetRestrictedAiModelsRequestDto](docs/SetRestrictedAiModelsRequestDto.md)
 - [\Models.SetServerStatusRequestBody](docs/SetServerStatusRequestBody.md)
 - [\Models.SetUserChatSettingsRequestBody](docs/SetUserChatSettingsRequestBody.md)
 - [\Models.SetWebSearchSettingsRequestBody](docs/SetWebSearchSettingsRequestBody.md)
 - [\Models.SettingsDto](docs/SettingsDto.md)
 - [\Models.SettingsRequestDto](docs/SettingsRequestDto.md)
 - [\Models.SettingsWrapper](docs/SettingsWrapper.md)
 - [\Models.SetupCode](docs/SetupCode.md)
 - [\Models.SetupCodeWrapper](docs/SetupCodeWrapper.md)
 - [\Models.SexEnum](docs/SexEnum.md)
 - [\Models.ShareFilterType](docs/ShareFilterType.md)
 - [\Models.SignupAccountRequestDto](docs/SignupAccountRequestDto.md)
 - [\Models.Size](docs/Size.md)
 - [\Models.SmtpOperationStatusRequestsDto](docs/SmtpOperationStatusRequestsDto.md)
 - [\Models.SmtpOperationStatusRequestsWrapper](docs/SmtpOperationStatusRequestsWrapper.md)
 - [\Models.SmtpSettingsDto](docs/SmtpSettingsDto.md)
 - [\Models.SmtpSettingsWrapper](docs/SmtpSettingsWrapper.md)
 - [\Models.SortOrder](docs/SortOrder.md)
 - [\Models.SortedByType](docs/SortedByType.md)
 - [\Models.SsoCertificate](docs/SsoCertificate.md)
 - [\Models.SsoFieldMapping](docs/SsoFieldMapping.md)
 - [\Models.SsoIdpCertificateAdvanced](docs/SsoIdpCertificateAdvanced.md)
 - [\Models.SsoIdpSettings](docs/SsoIdpSettings.md)
 - [\Models.SsoSettingsRequestsDto](docs/SsoSettingsRequestsDto.md)
 - [\Models.SsoSettingsV2](docs/SsoSettingsV2.md)
 - [\Models.SsoSettingsV2Wrapper](docs/SsoSettingsV2Wrapper.md)
 - [\Models.SsoSpCertificateAdvanced](docs/SsoSpCertificateAdvanced.md)
 - [\Models.StartEdit](docs/StartEdit.md)
 - [\Models.StartFillingForm](docs/StartFillingForm.md)
 - [\Models.StartFillingMode](docs/StartFillingMode.md)
 - [\Models.StartNewChatBody](docs/StartNewChatBody.md)
 - [\Models.StartReassignRequestDto](docs/StartReassignRequestDto.md)
 - [\Models.StartUpdateUserTypeDto](docs/StartUpdateUserTypeDto.md)
 - [\Models.Status](docs/Status.md)
 - [\Models.StatusCodeResult](docs/StatusCodeResult.md)
 - [\Models.StorageArrayWrapper](docs/StorageArrayWrapper.md)
 - [\Models.StorageDto](docs/StorageDto.md)
 - [\Models.StorageEncryptionRequestsDto](docs/StorageEncryptionRequestsDto.md)
 - [\Models.StorageFilter](docs/StorageFilter.md)
 - [\Models.StorageRequestsDto](docs/StorageRequestsDto.md)
 - [\Models.StorageSettings](docs/StorageSettings.md)
 - [\Models.StorageSettingsWrapper](docs/StorageSettingsWrapper.md)
 - [\Models.StringWrapper](docs/StringWrapper.md)
 - [\Models.StudioDefaultPageSettings](docs/StudioDefaultPageSettings.md)
 - [\Models.StudioDefaultPageSettingsWrapper](docs/StudioDefaultPageSettingsWrapper.md)
 - [\Models.SubAccount](docs/SubAccount.md)
 - [\Models.SubjectFilter](docs/SubjectFilter.md)
 - [\Models.SubjectType](docs/SubjectType.md)
 - [\Models.SubmitForm](docs/SubmitForm.md)
 - [\Models.Tariff](docs/Tariff.md)
 - [\Models.TariffState](docs/TariffState.md)
 - [\Models.TariffWrapper](docs/TariffWrapper.md)
 - [\Models.TaskProgressResponseDto](docs/TaskProgressResponseDto.md)
 - [\Models.TaskProgressResponseWrapper](docs/TaskProgressResponseWrapper.md)
 - [\Models.TelegramStatusDto](docs/TelegramStatusDto.md)
 - [\Models.TelegramStatusWrapper](docs/TelegramStatusWrapper.md)
 - [\Models.TemplatesConfig](docs/TemplatesConfig.md)
 - [\Models.TemplatesRequestDto](docs/TemplatesRequestDto.md)
 - [\Models.TenantAiAccessSettings](docs/TenantAiAccessSettings.md)
 - [\Models.TenantAiAccessSettingsDto](docs/TenantAiAccessSettingsDto.md)
 - [\Models.TenantAiAccessSettingsWrapper](docs/TenantAiAccessSettingsWrapper.md)
 - [\Models.TenantAiAgentQuotaSettings](docs/TenantAiAgentQuotaSettings.md)
 - [\Models.TenantAiAgentQuotaSettingsWrapper](docs/TenantAiAgentQuotaSettingsWrapper.md)
 - [\Models.TenantAuditSettings](docs/TenantAuditSettings.md)
 - [\Models.TenantAuditSettingsWrapper](docs/TenantAuditSettingsWrapper.md)
 - [\Models.TenantBannerSettings](docs/TenantBannerSettings.md)
 - [\Models.TenantBannerSettingsDto](docs/TenantBannerSettingsDto.md)
 - [\Models.TenantBannerSettingsWrapper](docs/TenantBannerSettingsWrapper.md)
 - [\Models.TenantDeepLinkSettings](docs/TenantDeepLinkSettings.md)
 - [\Models.TenantDeepLinkSettingsWrapper](docs/TenantDeepLinkSettingsWrapper.md)
 - [\Models.TenantDevToolsAccessSettings](docs/TenantDevToolsAccessSettings.md)
 - [\Models.TenantDevToolsAccessSettingsDto](docs/TenantDevToolsAccessSettingsDto.md)
 - [\Models.TenantDevToolsAccessSettingsWrapper](docs/TenantDevToolsAccessSettingsWrapper.md)
 - [\Models.TenantDomainValidator](docs/TenantDomainValidator.md)
 - [\Models.TenantDto](docs/TenantDto.md)
 - [\Models.TenantEntityQuotaSettings](docs/TenantEntityQuotaSettings.md)
 - [\Models.TenantIndustry](docs/TenantIndustry.md)
 - [\Models.TenantQuota](docs/TenantQuota.md)
 - [\Models.TenantQuotaFeatureDto](docs/TenantQuotaFeatureDto.md)
 - [\Models.TenantQuotaSettings](docs/TenantQuotaSettings.md)
 - [\Models.TenantQuotaSettingsRequestsDto](docs/TenantQuotaSettingsRequestsDto.md)
 - [\Models.TenantQuotaSettingsWrapper](docs/TenantQuotaSettingsWrapper.md)
 - [\Models.TenantQuotaWrapper](docs/TenantQuotaWrapper.md)
 - [\Models.TenantRoomQuotaSettings](docs/TenantRoomQuotaSettings.md)
 - [\Models.TenantRoomQuotaSettingsWrapper](docs/TenantRoomQuotaSettingsWrapper.md)
 - [\Models.TenantStatus](docs/TenantStatus.md)
 - [\Models.TenantTrustedDomainsType](docs/TenantTrustedDomainsType.md)
 - [\Models.TenantUserInvitationSettingsDto](docs/TenantUserInvitationSettingsDto.md)
 - [\Models.TenantUserInvitationSettingsRequestDto](docs/TenantUserInvitationSettingsRequestDto.md)
 - [\Models.TenantUserInvitationSettingsWrapper](docs/TenantUserInvitationSettingsWrapper.md)
 - [\Models.TenantUserQuotaSettings](docs/TenantUserQuotaSettings.md)
 - [\Models.TenantUserQuotaSettingsWrapper](docs/TenantUserQuotaSettingsWrapper.md)
 - [\Models.TenantWalletService](docs/TenantWalletService.md)
 - [\Models.TenantWalletServiceSettings](docs/TenantWalletServiceSettings.md)
 - [\Models.TenantWalletServiceSettingsWrapper](docs/TenantWalletServiceSettingsWrapper.md)
 - [\Models.TenantWalletSettings](docs/TenantWalletSettings.md)
 - [\Models.TenantWalletSettingsWrapper](docs/TenantWalletSettingsWrapper.md)
 - [\Models.TenantWrapper](docs/TenantWrapper.md)
 - [\Models.TerminateRequestDto](docs/TerminateRequestDto.md)
 - [\Models.TfaRequestsDto](docs/TfaRequestsDto.md)
 - [\Models.TfaRequestsDtoType](docs/TfaRequestsDtoType.md)
 - [\Models.TfaSettingsArrayWrapper](docs/TfaSettingsArrayWrapper.md)
 - [\Models.TfaSettingsDto](docs/TfaSettingsDto.md)
 - [\Models.TfaValidateRequestsDto](docs/TfaValidateRequestsDto.md)
 - [\Models.ThirdPartyBackupRequestDto](docs/ThirdPartyBackupRequestDto.md)
 - [\Models.ThirdPartyParams](docs/ThirdPartyParams.md)
 - [\Models.ThirdPartyParamsArrayWrapper](docs/ThirdPartyParamsArrayWrapper.md)
 - [\Models.ThirdPartyRequestDto](docs/ThirdPartyRequestDto.md)
 - [\Models.Thumbnail](docs/Thumbnail.md)
 - [\Models.ThumbnailsDataDto](docs/ThumbnailsDataDto.md)
 - [\Models.ThumbnailsDataWrapper](docs/ThumbnailsDataWrapper.md)
 - [\Models.ThumbnailsRequest](docs/ThumbnailsRequest.md)
 - [\Models.TimezonesRequestsArrayWrapper](docs/TimezonesRequestsArrayWrapper.md)
 - [\Models.TimezonesRequestsDto](docs/TimezonesRequestsDto.md)
 - [\Models.ToolDecisionRequestBody](docs/ToolDecisionRequestBody.md)
 - [\Models.ToolExecutionDecision](docs/ToolExecutionDecision.md)
 - [\Models.TopUpDepositRequestDto](docs/TopUpDepositRequestDto.md)
 - [\Models.TransactionInfo](docs/TransactionInfo.md)
 - [\Models.TurnOnAdminMessageSettingsRequestDto](docs/TurnOnAdminMessageSettingsRequestDto.md)
 - [\Models.UpdateApiKeyRequest](docs/UpdateApiKeyRequest.md)
 - [\Models.UpdateClientRequest](docs/UpdateClientRequest.md)
 - [\Models.UpdateComment](docs/UpdateComment.md)
 - [\Models.UpdateFile](docs/UpdateFile.md)
 - [\Models.UpdateGroupRequest](docs/UpdateGroupRequest.md)
 - [\Models.UpdateMemberRequestDto](docs/UpdateMemberRequestDto.md)
 - [\Models.UpdateMembersQuotaRequestDto](docs/UpdateMembersQuotaRequestDto.md)
 - [\Models.UpdateMembersQuotaRequestDtoQuota](docs/UpdateMembersQuotaRequestDtoQuota.md)
 - [\Models.UpdateMembersRequestDto](docs/UpdateMembersRequestDto.md)
 - [\Models.UpdatePhotoMemberRequest](docs/UpdatePhotoMemberRequest.md)
 - [\Models.UpdateProviderBody](docs/UpdateProviderBody.md)
 - [\Models.UpdateRoomGroupRequest](docs/UpdateRoomGroupRequest.md)
 - [\Models.UpdateRoomRequest](docs/UpdateRoomRequest.md)
 - [\Models.UpdateRoomsQuotaRequestDtoInteger](docs/UpdateRoomsQuotaRequestDtoInteger.md)
 - [\Models.UpdateRoomsRoomIdsRequestDtoInteger](docs/UpdateRoomsRoomIdsRequestDtoInteger.md)
 - [\Models.UpdateServerRequestBody](docs/UpdateServerRequestBody.md)
 - [\Models.UpdateTagRequestDto](docs/UpdateTagRequestDto.md)
 - [\Models.UpdateWebhooksConfigRequestsDto](docs/UpdateWebhooksConfigRequestsDto.md)
 - [\Models.UploadRequestDto](docs/UploadRequestDto.md)
 - [\Models.UploadResultDto](docs/UploadResultDto.md)
 - [\Models.UploadResultWrapper](docs/UploadResultWrapper.md)
 - [\Models.UploadSessionResponseDtoInteger](docs/UploadSessionResponseDtoInteger.md)
 - [\Models.UploadSessionResponseIntegerWrapper](docs/UploadSessionResponseIntegerWrapper.md)
 - [\Models.UsageSpaceStatItemArrayWrapper](docs/UsageSpaceStatItemArrayWrapper.md)
 - [\Models.UsageSpaceStatItemDto](docs/UsageSpaceStatItemDto.md)
 - [\Models.UserChatSettingsDto](docs/UserChatSettingsDto.md)
 - [\Models.UserChatSettingsWrapper](docs/UserChatSettingsWrapper.md)
 - [\Models.UserConfig](docs/UserConfig.md)
 - [\Models.UserInfo](docs/UserInfo.md)
 - [\Models.UserInfoWrapper](docs/UserInfoWrapper.md)
 - [\Models.UserInvitation](docs/UserInvitation.md)
 - [\Models.UserInvitationRequestDto](docs/UserInvitationRequestDto.md)
 - [\Models.ValidationResult](docs/ValidationResult.md)
 - [\Models.VectorizationSettingsDto](docs/VectorizationSettingsDto.md)
 - [\Models.VectorizationSettingsWrapper](docs/VectorizationSettingsWrapper.md)
 - [\Models.VectorizationStartRequestBody](docs/VectorizationStartRequestBody.md)
 - [\Models.VectorizationStatus](docs/VectorizationStatus.md)
 - [\Models.WalletQuantityRequestDto](docs/WalletQuantityRequestDto.md)
 - [\Models.WalletServiceArrayWrapper](docs/WalletServiceArrayWrapper.md)
 - [\Models.WalletServiceDto](docs/WalletServiceDto.md)
 - [\Models.WalletServiceWrapper](docs/WalletServiceWrapper.md)
 - [\Models.WatermarkAdditions](docs/WatermarkAdditions.md)
 - [\Models.WatermarkDto](docs/WatermarkDto.md)
 - [\Models.WatermarkOnDraw](docs/WatermarkOnDraw.md)
 - [\Models.WatermarkRequestDto](docs/WatermarkRequestDto.md)
 - [\Models.WebItemSecurityRequestsDto](docs/WebItemSecurityRequestsDto.md)
 - [\Models.WebItemsSecurityRequestsDto](docs/WebItemsSecurityRequestsDto.md)
 - [\Models.WebPluginArrayWrapper](docs/WebPluginArrayWrapper.md)
 - [\Models.WebPluginDto](docs/WebPluginDto.md)
 - [\Models.WebPluginRequests](docs/WebPluginRequests.md)
 - [\Models.WebPluginWrapper](docs/WebPluginWrapper.md)
 - [\Models.WebSearchSettingsDto](docs/WebSearchSettingsDto.md)
 - [\Models.WebSearchSettingsWrapper](docs/WebSearchSettingsWrapper.md)
 - [\Models.WebhookGroupStatus](docs/WebhookGroupStatus.md)
 - [\Models.WebhookRetryRequestsDto](docs/WebhookRetryRequestsDto.md)
 - [\Models.WebhookTrigger](docs/WebhookTrigger.md)
 - [\Models.WebhooksConfigDto](docs/WebhooksConfigDto.md)
 - [\Models.WebhooksConfigWithStatusArrayWrapper](docs/WebhooksConfigWithStatusArrayWrapper.md)
 - [\Models.WebhooksConfigWithStatusDto](docs/WebhooksConfigWithStatusDto.md)
 - [\Models.WebhooksConfigWrapper](docs/WebhooksConfigWrapper.md)
 - [\Models.WebhooksLogArrayWrapper](docs/WebhooksLogArrayWrapper.md)
 - [\Models.WebhooksLogDto](docs/WebhooksLogDto.md)
 - [\Models.WebhooksLogWrapper](docs/WebhooksLogWrapper.md)
 - [\Models.WhiteLabelItemArrayWrapper](docs/WhiteLabelItemArrayWrapper.md)
 - [\Models.WhiteLabelItemDto](docs/WhiteLabelItemDto.md)
 - [\Models.WhiteLabelItemPathDto](docs/WhiteLabelItemPathDto.md)
 - [\Models.WhiteLabelLogoType](docs/WhiteLabelLogoType.md)
 - [\Models.WhiteLabelRequestsDto](docs/WhiteLabelRequestsDto.md)
 - [\Models.WizardRequestsDto](docs/WizardRequestsDto.md)
 - [\Models.WizardSettings](docs/WizardSettings.md)
 - [\Models.WizardSettingsWrapper](docs/WizardSettingsWrapper.md)

</details>

# How do I migrate from the Swift 5 generator to the swift 6 generator?

https://openapi-generator.tech/docs/faq-generators#how-do-i-migrate-from-the-swift-5-generator-to-the-swift-6-generator

### How do I implement bearer token authentication with Alamofire on the Swift 6 API client?

https://openapi-generator.tech/docs/faq-generators#how-do-i-implement-bearer-token-authentication-with-alamofire-on-the-swift-6-api-client

## Author

support@onlyoffice.com

