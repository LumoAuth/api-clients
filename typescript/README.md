> **GENERATED CLIENT — raw API coverage.** This package is generated from
> the LumoAuth OpenAPI spec (`api-clients/openapi.json`) by
> `server/scripts/sdk-codegen/`. It covers the full REST surface with typed
> models but no framework sugar. An ergonomic, hand-maintained wrapper is
> the next step — where one already exists (`@lumoauth/sdk` on npm,
> `lumoauth` on PyPI, `github.com/lumoauth/lumo-auth-go`), prefer it.
> Do not edit by hand: changes are overwritten on the next regeneration.

## @lumoauth/api-client@0.1.0

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment
* Node.js
* Webpack
* Browserify

Language level
* ES5 - you must have a Promises/A+ library installed
* ES6

Module system
* CommonJS
* ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:
```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install @lumoauth/api-client@0.1.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://app.lumoauth.dev*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AAuthApi* | [**authorizeAgent**](docs/AAuthApi.md#authorizeagent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page.
*AAuthApi* | [**getAgentJwks**](docs/AAuthApi.md#getagentjwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint
*AAuthApi* | [**getAgentMetadata**](docs/AAuthApi.md#getagentmetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
*AAuthApi* | [**getAgentMetadataById**](docs/AAuthApi.md#getagentmetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata
*AAuthApi* | [**getIssuerJwks**](docs/AAuthApi.md#getissuerjwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth.
*AAuthApi* | [**getIssuerMetadata**](docs/AAuthApi.md#getissuermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
*AAuthApi* | [**getResourceJwks**](docs/AAuthApi.md#getresourcejwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint
*AAuthApi* | [**getResourceMetadata**](docs/AAuthApi.md#getresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3)
*AAuthApi* | [**getResourceMetadataById**](docs/AAuthApi.md#getresourcemetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata
*AAuthApi* | [**issueAgentToken**](docs/AAuthApi.md#issueagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint
*AAuthApi* | [**issueDelegateToken**](docs/AAuthApi.md#issuedelegatetoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate.
*AAuthApi* | [**issuePlatformToken**](docs/AAuthApi.md#issueplatformtoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token | 
*AAuthApi* | [**issueResourceToken**](docs/AAuthApi.md#issueresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6)
*AAuthApi* | [**revokeAgentToken**](docs/AAuthApi.md#revokeagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token.
*AAuthApi* | [**verifyAuthToken**](docs/AAuthApi.md#verifyauthtoken) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint.
*AAuthApi* | [**verifyResourceToken**](docs/AAuthApi.md#verifyresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens).
*AdminAbacApi* | [**abacAttributesCreate**](docs/AdminAbacApi.md#abacattributescreate) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create a new attribute definition
*AdminAbacApi* | [**abacAttributesDelete**](docs/AdminAbacApi.md#abacattributesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition
*AdminAbacApi* | [**abacAttributesGet**](docs/AdminAbacApi.md#abacattributesget) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get a single attribute definition
*AdminAbacApi* | [**abacAttributesList**](docs/AdminAbacApi.md#abacattributeslist) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List all attribute definitions
*AdminAbacApi* | [**abacPoliciesCreate**](docs/AdminAbacApi.md#abacpoliciescreate) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create a new ABAC policy
*AdminAbacApi* | [**abacPoliciesDelete**](docs/AdminAbacApi.md#abacpoliciesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy
*AdminAbacApi* | [**abacPoliciesGet**](docs/AdminAbacApi.md#abacpoliciesget) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get a single ABAC policy
*AdminAbacApi* | [**abacPoliciesList**](docs/AdminAbacApi.md#abacpolicieslist) | **GET** /orgs/{orgId}/api/v1/abac/policies | List all ABAC policies
*AdminAbacApi* | [**abacPoliciesToggle**](docs/AdminAbacApi.md#abacpoliciestoggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle policy active status
*AdminAbacApi* | [**patchAbacAttributesUpdate**](docs/AdminAbacApi.md#patchabacattributesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition
*AdminAbacApi* | [**patchAbacPoliciesUpdate**](docs/AdminAbacApi.md#patchabacpoliciesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy
*AdminAbacApi* | [**putAbacAttributesUpdate**](docs/AdminAbacApi.md#putabacattributesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition
*AdminAbacApi* | [**putAbacPoliciesUpdate**](docs/AdminAbacApi.md#putabacpoliciesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy
*AdminAgentsApi* | [**adminAgentsActivate**](docs/AdminAgentsApi.md#adminagentsactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent
*AdminAgentsApi* | [**adminAgentsAgentsDisable**](docs/AdminAgentsApi.md#adminagentsagentsdisable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent
*AdminAgentsApi* | [**adminAgentsAgentsEnable**](docs/AdminAgentsApi.md#adminagentsagentsenable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent
*AdminAgentsApi* | [**adminAgentsAgentsRotateKey**](docs/AdminAgentsApi.md#adminagentsagentsrotatekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key
*AdminAgentsApi* | [**adminAgentsCreate**](docs/AdminAgentsApi.md#adminagentscreate) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent
*AdminAgentsApi* | [**adminAgentsDeactivate**](docs/AdminAgentsApi.md#adminagentsdeactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent
*AdminAgentsApi* | [**adminAgentsDelete**](docs/AdminAgentsApi.md#adminagentsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent
*AdminAgentsApi* | [**adminAgentsGenerateToken**](docs/AdminAgentsApi.md#adminagentsgeneratetoken) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent
*AdminAgentsApi* | [**adminAgentsGet**](docs/AdminAgentsApi.md#adminagentsget) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId
*AdminAgentsApi* | [**adminAgentsGetScopes**](docs/AdminAgentsApi.md#adminagentsgetscopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities
*AdminAgentsApi* | [**adminAgentsList**](docs/AdminAgentsApi.md#adminagentslist) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant
*AdminAgentsApi* | [**adminAgentsRevokeKey**](docs/AdminAgentsApi.md#adminagentsrevokekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate)
*AdminAgentsApi* | [**adminAgentsRotateCredentials**](docs/AdminAgentsApi.md#adminagentsrotatecredentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials
*AdminAgentsApi* | [**adminAgentsSetScopes**](docs/AdminAgentsApi.md#adminagentssetscopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities
*AdminAgentsApi* | [**patchAdminAgentsUpdate**](docs/AdminAgentsApi.md#patchadminagentsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
*AdminAgentsApi* | [**putAdminAgentsUpdate**](docs/AdminAgentsApi.md#putadminagentsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
*AdminAuditLogsApi* | [**adminAuditLogsActions**](docs/AdminAuditLogsApi.md#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List available audit action types for this tenant
*AdminAuditLogsApi* | [**adminAuditLogsExport**](docs/AdminAuditLogsApi.md#adminauditlogsexport) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV or JSON
*AdminAuditLogsApi* | [**adminAuditLogsGet**](docs/AdminAuditLogsApi.md#adminauditlogsget) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get a single audit log entry
*AdminAuditLogsApi* | [**adminAuditLogsList**](docs/AdminAuditLogsApi.md#adminauditlogslist) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit logs for the tenant
*AdminAuditLogsApi* | [**adminAuditLogsRetention**](docs/AdminAuditLogsApi.md#adminauditlogsretention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
*AdminAuditLogsApi* | [**adminAuditLogsStats**](docs/AdminAuditLogsApi.md#adminauditlogsstats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Get audit log statistics
*AdminAuditLogsApi* | [**patchAdminAuditLogsRetentionUpdate**](docs/AdminAuditLogsApi.md#patchadminauditlogsretentionupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
*AdminAuditLogsApi* | [**putAdminAuditLogsRetentionUpdate**](docs/AdminAuditLogsApi.md#putadminauditlogsretentionupdate) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
*AdminEmailApi* | [**adminEmailTemplatesDelete**](docs/AdminEmailApi.md#adminemailtemplatesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | 
*AdminEmailApi* | [**adminEmailTemplatesGet**](docs/AdminEmailApi.md#adminemailtemplatesget) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | 
*AdminEmailApi* | [**adminEmailTemplatesList**](docs/AdminEmailApi.md#adminemailtemplateslist) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | 
*AdminEmailApi* | [**adminEmailTemplatesPreview**](docs/AdminEmailApi.md#adminemailtemplatespreview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | 
*AdminEmailApi* | [**adminEmailTemplatesUpsert**](docs/AdminEmailApi.md#adminemailtemplatesupsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | 
*AdminEmailApi* | [**adminEmailTemplatesVariables**](docs/AdminEmailApi.md#adminemailtemplatesvariables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | 
*AdminGroupsApi* | [**adminGroupsAddMembers**](docs/AdminGroupsApi.md#admingroupsaddmembers) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group — accepts {userId: UUID} or {userIds: [UUID, ...]}
*AdminGroupsApi* | [**adminGroupsAddRole**](docs/AdminGroupsApi.md#admingroupsaddrole) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group
*AdminGroupsApi* | [**adminGroupsCreate**](docs/AdminGroupsApi.md#admingroupscreate) | **POST** /orgs/{orgId}/api/v1/admin/groups | Create a new group
*AdminGroupsApi* | [**adminGroupsDelete**](docs/AdminGroupsApi.md#admingroupsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group
*AdminGroupsApi* | [**adminGroupsGet**](docs/AdminGroupsApi.md#admingroupsget) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug
*AdminGroupsApi* | [**adminGroupsGetMembers**](docs/AdminGroupsApi.md#admingroupsgetmembers) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members
*AdminGroupsApi* | [**adminGroupsGroupsGetRoles**](docs/AdminGroupsApi.md#admingroupsgroupsgetroles) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles
*AdminGroupsApi* | [**adminGroupsList**](docs/AdminGroupsApi.md#admingroupslist) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant
*AdminGroupsApi* | [**adminGroupsRemoveMember**](docs/AdminGroupsApi.md#admingroupsremovemember) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group — userId is a UUID or email
*AdminGroupsApi* | [**adminGroupsRemoveRole**](docs/AdminGroupsApi.md#admingroupsremoverole) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group
*AdminGroupsApi* | [**adminGroupsUpdateRoles**](docs/AdminGroupsApi.md#admingroupsupdateroles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)
*AdminGroupsApi* | [**patchAdminGroupsUpdate**](docs/AdminGroupsApi.md#patchadmingroupsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
*AdminGroupsApi* | [**putAdminGroupsUpdate**](docs/AdminGroupsApi.md#putadmingroupsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
*AdminIdentityProvidersApi* | [**adminSocialProvidersAvailable**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersavailable) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | Get available social login provider types
*AdminIdentityProvidersApi* | [**adminSocialProvidersCallbackUrls**](docs/AdminIdentityProvidersApi.md#adminsocialproviderscallbackurls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get callback URLs for all configured providers
*AdminIdentityProvidersApi* | [**adminSocialProvidersCreate**](docs/AdminIdentityProvidersApi.md#adminsocialproviderscreate) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a new social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersDelete**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersDisable**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersdisable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersEnable**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersenable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersGet**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersget) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a single social login provider (by ID or by provider name)
*AdminIdentityProvidersApi* | [**adminSocialProvidersList**](docs/AdminIdentityProvidersApi.md#adminsocialproviderslist) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List all configured social login providers
*AdminIdentityProvidersApi* | [**adminSocialProvidersTypes**](docs/AdminIdentityProvidersApi.md#adminsocialproviderstypes) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | Get available social login provider types
*AdminIdentityProvidersApi* | [**patchAdminSocialProvidersUpdate**](docs/AdminIdentityProvidersApi.md#patchadminsocialprovidersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Upsert (create or update) a social login provider via PUT; update via PATCH
*AdminIdentityProvidersApi* | [**putAdminSocialProvidersUpdate**](docs/AdminIdentityProvidersApi.md#putadminsocialprovidersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Upsert (create or update) a social login provider via PUT; update via PATCH
*AdminMcpApi* | [**adminMcpServersCreate**](docs/AdminMcpApi.md#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | POST /api/v1/admin/mcp/servers
*AdminMcpApi* | [**adminMcpServersDelete**](docs/AdminMcpApi.md#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | 
*AdminMcpApi* | [**adminMcpServersGet**](docs/AdminMcpApi.md#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | 
*AdminMcpApi* | [**adminMcpServersList**](docs/AdminMcpApi.md#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | 
*AdminOAuthClientsApi* | [**createClient**](docs/AdminOAuthClientsApi.md#createclient) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create a new OAuth client
*AdminOAuthClientsApi* | [**deleteClient**](docs/AdminOAuthClientsApi.md#deleteclient) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client
*AdminOAuthClientsApi* | [**disableClient**](docs/AdminOAuthClientsApi.md#disableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable OAuth client
*AdminOAuthClientsApi* | [**enableClient**](docs/AdminOAuthClientsApi.md#enableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable OAuth client
*AdminOAuthClientsApi* | [**getClient**](docs/AdminOAuthClientsApi.md#getclient) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get a single OAuth client by ID or clientId
*AdminOAuthClientsApi* | [**listClientScopes**](docs/AdminOAuthClientsApi.md#listclientscopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Get client scopes
*AdminOAuthClientsApi* | [**listClients**](docs/AdminOAuthClientsApi.md#listclients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List all OAuth clients in the tenant
*AdminOAuthClientsApi* | [**patchClient**](docs/AdminOAuthClientsApi.md#patchclient) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an existing OAuth client
*AdminOAuthClientsApi* | [**rotateClientSecret**](docs/AdminOAuthClientsApi.md#rotateclientsecret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate client secret
*AdminOAuthClientsApi* | [**setClientScopes**](docs/AdminOAuthClientsApi.md#setclientscopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Set client scopes
*AdminOAuthClientsApi* | [**updateClient**](docs/AdminOAuthClientsApi.md#updateclient) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an existing OAuth client
*AdminOrganizationsApi* | [**adminOrgInvitationsCreate**](docs/AdminOrganizationsApi.md#adminorginvitationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | 
*AdminOrganizationsApi* | [**adminOrgInvitationsList**](docs/AdminOrganizationsApi.md#adminorginvitationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | 
*AdminOrganizationsApi* | [**adminOrgInvitationsResend**](docs/AdminOrganizationsApi.md#adminorginvitationsresend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | 
*AdminOrganizationsApi* | [**adminOrgInvitationsRevoke**](docs/AdminOrganizationsApi.md#adminorginvitationsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | 
*AdminOrganizationsApi* | [**adminOrgMembersAdd**](docs/AdminOrganizationsApi.md#adminorgmembersadd) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | 
*AdminOrganizationsApi* | [**adminOrgMembersList**](docs/AdminOrganizationsApi.md#adminorgmemberslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | 
*AdminOrganizationsApi* | [**adminOrgMembersRemove**](docs/AdminOrganizationsApi.md#adminorgmembersremove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | 
*AdminOrganizationsApi* | [**adminOrgRolesCreate**](docs/AdminOrganizationsApi.md#adminorgrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | 
*AdminOrganizationsApi* | [**adminOrgRolesDelete**](docs/AdminOrganizationsApi.md#adminorgrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | 
*AdminOrganizationsApi* | [**adminOrgRolesList**](docs/AdminOrganizationsApi.md#adminorgroleslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | 
*AdminOrganizationsApi* | [**adminOrganizationsCreate**](docs/AdminOrganizationsApi.md#adminorganizationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations | 
*AdminOrganizationsApi* | [**adminOrganizationsDelete**](docs/AdminOrganizationsApi.md#adminorganizationsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | 
*AdminOrganizationsApi* | [**adminOrganizationsGet**](docs/AdminOrganizationsApi.md#adminorganizationsget) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | 
*AdminOrganizationsApi* | [**adminOrganizationsList**](docs/AdminOrganizationsApi.md#adminorganizationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations | 
*AdminOrganizationsApi* | [**patchAdminOrgMembersUpdate**](docs/AdminOrganizationsApi.md#patchadminorgmembersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | 
*AdminOrganizationsApi* | [**patchAdminOrgRolesUpdate**](docs/AdminOrganizationsApi.md#patchadminorgrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | 
*AdminOrganizationsApi* | [**patchAdminOrganizationsUpdate**](docs/AdminOrganizationsApi.md#patchadminorganizationsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | 
*AdminOrganizationsApi* | [**putAdminOrgMembersUpdate**](docs/AdminOrganizationsApi.md#putadminorgmembersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | 
*AdminOrganizationsApi* | [**putAdminOrgRolesUpdate**](docs/AdminOrganizationsApi.md#putadminorgrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | 
*AdminOrganizationsApi* | [**putAdminOrganizationsUpdate**](docs/AdminOrganizationsApi.md#putadminorganizationsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | 
*AdminPermissionsApi* | [**adminPermissionsCreate**](docs/AdminPermissionsApi.md#adminpermissionscreate) | **POST** /orgs/{orgId}/api/v1/admin/permissions | Create a custom permission for the tenant
*AdminPermissionsApi* | [**adminPermissionsDelete**](docs/AdminPermissionsApi.md#adminpermissionsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Delete a custom permission
*AdminPermissionsApi* | [**adminPermissionsGet**](docs/AdminPermissionsApi.md#adminpermissionsget) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Get a single permission
*AdminPermissionsApi* | [**adminPermissionsList**](docs/AdminPermissionsApi.md#adminpermissionslist) | **GET** /orgs/{orgId}/api/v1/admin/permissions | List all available permissions for the tenant
*AdminPermissionsApi* | [**adminPermissionsUpdate**](docs/AdminPermissionsApi.md#adminpermissionsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Update a permission
*AdminPermissionsApi* | [**adminPermissionsUsage**](docs/AdminPermissionsApi.md#adminpermissionsusage) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId}/usage | Get permission usage (roles assigned to this permission)
*AdminPermissionsApi* | [**adminScopesCreate**](docs/AdminPermissionsApi.md#adminscopescreate) | **POST** /orgs/{orgId}/api/v1/admin/scopes | Create a custom OAuth scope
*AdminPermissionsApi* | [**adminScopesDelete**](docs/AdminPermissionsApi.md#adminscopesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/scopes/{scopeId} | Delete a custom OAuth scope
*AdminPermissionsApi* | [**adminScopesList**](docs/AdminPermissionsApi.md#adminscopeslist) | **GET** /orgs/{orgId}/api/v1/admin/scopes | List OAuth scopes
*AdminRolesApi* | [**adminRolesAddPermissions**](docs/AdminRolesApi.md#adminrolesaddpermissions) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Add permission(s) to a role
*AdminRolesApi* | [**adminRolesAddUser**](docs/AdminRolesApi.md#adminrolesadduser) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Assign a user to a role
*AdminRolesApi* | [**adminRolesCreate**](docs/AdminRolesApi.md#adminrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/roles | Create a new role
*AdminRolesApi* | [**adminRolesDelete**](docs/AdminRolesApi.md#adminrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Delete a role
*AdminRolesApi* | [**adminRolesGet**](docs/AdminRolesApi.md#adminrolesget) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Get a single role by ID or slug
*AdminRolesApi* | [**adminRolesGetPermissions**](docs/AdminRolesApi.md#adminrolesgetpermissions) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Get role permissions
*AdminRolesApi* | [**adminRolesGetUsers**](docs/AdminRolesApi.md#adminrolesgetusers) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Get users assigned to a role
*AdminRolesApi* | [**adminRolesList**](docs/AdminRolesApi.md#adminroleslist) | **GET** /orgs/{orgId}/api/v1/admin/roles | List all roles in the tenant
*AdminRolesApi* | [**adminRolesRemovePermission**](docs/AdminRolesApi.md#adminrolesremovepermission) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions/{permissionId} | Remove a permission from a role
*AdminRolesApi* | [**adminRolesRemoveUser**](docs/AdminRolesApi.md#adminrolesremoveuser) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users/{userId} | Remove a user from a role
*AdminRolesApi* | [**adminRolesUpdatePermissions**](docs/AdminRolesApi.md#adminrolesupdatepermissions) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Update role permissions (replaces all)
*AdminRolesApi* | [**patchAdminRolesUpdate**](docs/AdminRolesApi.md#patchadminrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
*AdminRolesApi* | [**putAdminRolesUpdate**](docs/AdminRolesApi.md#putadminrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
*AdminSandboxApi* | [**adminSandboxDestroy**](docs/AdminSandboxApi.md#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.
*AdminSandboxApi* | [**adminSandboxList**](docs/AdminSandboxApi.md#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | GET / Lists the caller\&#39;s active sandbox tenants (their own only).
*AdminSandboxApi* | [**adminSandboxSpawn**](docs/AdminSandboxApi.md#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | POST /spawn Body: {\&quot;name\&quot;?: \&quot;feature-foo\&quot;, \&quot;ttl_hours\&quot;?: 24}
*AdminSessionsApi* | [**adminClientTokensRevokeAll**](docs/AdminSessionsApi.md#adminclienttokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens for a client
*AdminSessionsApi* | [**adminClientTokensRevokePost**](docs/AdminSessionsApi.md#adminclienttokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens for a client via POST
*AdminSessionsApi* | [**adminSessionsCount**](docs/AdminSessionsApi.md#adminsessionscount) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Get active session count for the tenant
*AdminSessionsApi* | [**adminSessionsList**](docs/AdminSessionsApi.md#adminsessionslist) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions for the tenant
*AdminSessionsApi* | [**adminSessionsRevoke**](docs/AdminSessionsApi.md#adminsessionsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a specific session
*AdminSessionsApi* | [**adminSessionsRevokeAll**](docs/AdminSessionsApi.md#adminsessionsrevokeall) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke all tenant sessions via POST
*AdminSessionsApi* | [**adminSessionsStats**](docs/AdminSessionsApi.md#adminsessionsstats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Get session statistics for the tenant
*AdminSessionsApi* | [**adminTokensList**](docs/AdminSessionsApi.md#admintokenslist) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens for the tenant
*AdminSessionsApi* | [**adminTokensRevoke**](docs/AdminSessionsApi.md#admintokensrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token
*AdminSessionsApi* | [**adminUserSessionsList**](docs/AdminSessionsApi.md#adminusersessionslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Get sessions for a specific user
*AdminSessionsApi* | [**adminUserSessionsRevokeAll**](docs/AdminSessionsApi.md#adminusersessionsrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions for a user
*AdminSessionsApi* | [**adminUserSessionsRevokePost**](docs/AdminSessionsApi.md#adminusersessionsrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions for a user via POST
*AdminSessionsApi* | [**adminUserTokensRevokeAll**](docs/AdminSessionsApi.md#adminusertokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens for a user
*AdminSessionsApi* | [**adminUserTokensRevokePost**](docs/AdminSessionsApi.md#adminusertokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens for a user via POST
*AdminSettingsApi* | [**adminAnalyticsDashboard**](docs/AdminSettingsApi.md#adminanalyticsdashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
*AdminSettingsApi* | [**adminAnalyticsLogins**](docs/AdminSettingsApi.md#adminanalyticslogins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
*AdminSettingsApi* | [**adminAnalyticsUsers**](docs/AdminSettingsApi.md#adminanalyticsusers) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
*AdminSettingsApi* | [**adminOrganizationGet**](docs/AdminSettingsApi.md#adminorganizationget) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get tenant information
*AdminSettingsApi* | [**adminSettingsAll**](docs/AdminSettingsApi.md#adminsettingsall) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
*AdminSettingsApi* | [**adminSettingsAuthGet**](docs/AdminSettingsApi.md#adminsettingsauthget) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
*AdminSettingsApi* | [**adminSettingsAuthenticationGet**](docs/AdminSettingsApi.md#adminsettingsauthenticationget) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**adminSettingsBrandingGet**](docs/AdminSettingsApi.md#adminsettingsbrandingget) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
*AdminSettingsApi* | [**adminSettingsEmailGet**](docs/AdminSettingsApi.md#adminsettingsemailget) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
*AdminSettingsApi* | [**adminSettingsGeneralGet**](docs/AdminSettingsApi.md#adminsettingsgeneralget) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
*AdminSettingsApi* | [**adminSettingsScimGet**](docs/AdminSettingsApi.md#adminsettingsscimget) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
*AdminSettingsApi* | [**adminSettingsSecurityGet**](docs/AdminSettingsApi.md#adminsettingssecurityget) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
*AdminSettingsApi* | [**adminTenantGet**](docs/AdminSettingsApi.md#admintenantget) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get tenant information
*AdminSettingsApi* | [**patchAdminOrganizationUpdate**](docs/AdminSettingsApi.md#patchadminorganizationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update tenant settings
*AdminSettingsApi* | [**patchAdminSettingsAuthUpdate**](docs/AdminSettingsApi.md#patchadminsettingsauthupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
*AdminSettingsApi* | [**patchAdminSettingsAuthenticationUpdate**](docs/AdminSettingsApi.md#patchadminsettingsauthenticationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**patchAdminSettingsBrandingUpdate**](docs/AdminSettingsApi.md#patchadminsettingsbrandingupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
*AdminSettingsApi* | [**patchAdminSettingsEmailUpdate**](docs/AdminSettingsApi.md#patchadminsettingsemailupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
*AdminSettingsApi* | [**patchAdminSettingsGeneralUpdate**](docs/AdminSettingsApi.md#patchadminsettingsgeneralupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
*AdminSettingsApi* | [**patchAdminSettingsScimUpdate**](docs/AdminSettingsApi.md#patchadminsettingsscimupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
*AdminSettingsApi* | [**patchAdminSettingsSecurityUpdate**](docs/AdminSettingsApi.md#patchadminsettingssecurityupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
*AdminSettingsApi* | [**patchAdminTenantUpdate**](docs/AdminSettingsApi.md#patchadmintenantupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update tenant settings
*AdminSettingsApi* | [**putAdminOrganizationUpdate**](docs/AdminSettingsApi.md#putadminorganizationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update tenant settings
*AdminSettingsApi* | [**putAdminSettingsAuthUpdate**](docs/AdminSettingsApi.md#putadminsettingsauthupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
*AdminSettingsApi* | [**putAdminSettingsAuthenticationUpdate**](docs/AdminSettingsApi.md#putadminsettingsauthenticationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**putAdminSettingsBrandingUpdate**](docs/AdminSettingsApi.md#putadminsettingsbrandingupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
*AdminSettingsApi* | [**putAdminSettingsEmailUpdate**](docs/AdminSettingsApi.md#putadminsettingsemailupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
*AdminSettingsApi* | [**putAdminSettingsGeneralUpdate**](docs/AdminSettingsApi.md#putadminsettingsgeneralupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
*AdminSettingsApi* | [**putAdminSettingsScimUpdate**](docs/AdminSettingsApi.md#putadminsettingsscimupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
*AdminSettingsApi* | [**putAdminSettingsSecurityUpdate**](docs/AdminSettingsApi.md#putadminsettingssecurityupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
*AdminSettingsApi* | [**putAdminTenantUpdate**](docs/AdminSettingsApi.md#putadmintenantupdate) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update tenant settings
*AdminUsersApi* | [**addUserGroup**](docs/AdminUsersApi.md#addusergroup) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | 
*AdminUsersApi* | [**addUserPermission**](docs/AdminUsersApi.md#adduserpermission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | 
*AdminUsersApi* | [**addUserRole**](docs/AdminUsersApi.md#adduserrole) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | 
*AdminUsersApi* | [**blockUser**](docs/AdminUsersApi.md#blockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | 
*AdminUsersApi* | [**createUser**](docs/AdminUsersApi.md#createuser) | **POST** /orgs/{orgId}/api/v1/admin/users | 
*AdminUsersApi* | [**deleteUser**](docs/AdminUsersApi.md#deleteuser) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | 
*AdminUsersApi* | [**getUser**](docs/AdminUsersApi.md#getuser) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | 
*AdminUsersApi* | [**listUserGroups**](docs/AdminUsersApi.md#listusergroups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | 
*AdminUsersApi* | [**listUserPermissions**](docs/AdminUsersApi.md#listuserpermissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | 
*AdminUsersApi* | [**listUserRoles**](docs/AdminUsersApi.md#listuserroles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | 
*AdminUsersApi* | [**listUsers**](docs/AdminUsersApi.md#listusers) | **GET** /orgs/{orgId}/api/v1/admin/users | 
*AdminUsersApi* | [**markUserVerified**](docs/AdminUsersApi.md#markuserverified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | 
*AdminUsersApi* | [**patchUser**](docs/AdminUsersApi.md#patchuser) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | 
*AdminUsersApi* | [**removeUserGroup**](docs/AdminUsersApi.md#removeusergroup) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | 
*AdminUsersApi* | [**removeUserPermission**](docs/AdminUsersApi.md#removeuserpermission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | 
*AdminUsersApi* | [**removeUserRole**](docs/AdminUsersApi.md#removeuserrole) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | 
*AdminUsersApi* | [**resetUserMfa**](docs/AdminUsersApi.md#resetusermfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | 
*AdminUsersApi* | [**sendUserVerificationEmail**](docs/AdminUsersApi.md#senduserverificationemail) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | 
*AdminUsersApi* | [**setUserPassword**](docs/AdminUsersApi.md#setuserpassword) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | 
*AdminUsersApi* | [**setUserPasswordPost**](docs/AdminUsersApi.md#setuserpasswordpost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | 
*AdminUsersApi* | [**triggerUserPasswordReset**](docs/AdminUsersApi.md#triggeruserpasswordreset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | 
*AdminUsersApi* | [**unblockUser**](docs/AdminUsersApi.md#unblockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | 
*AdminUsersApi* | [**updateUser**](docs/AdminUsersApi.md#updateuser) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | 
*AdminUsersApi* | [**updateUserGroups**](docs/AdminUsersApi.md#updateusergroups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | 
*AdminUsersApi* | [**updateUserRoles**](docs/AdminUsersApi.md#updateuserroles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | 
*AdminWebhooksApi* | [**adminWebhooksCreate**](docs/AdminWebhooksApi.md#adminwebhookscreate) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a new webhook
*AdminWebhooksApi* | [**adminWebhooksDelete**](docs/AdminWebhooksApi.md#adminwebhooksdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
*AdminWebhooksApi* | [**adminWebhooksDeliveriesList**](docs/AdminWebhooksApi.md#adminwebhooksdeliverieslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent delivery attempts for a webhook.
*AdminWebhooksApi* | [**adminWebhooksDeliveryReplay**](docs/AdminWebhooksApi.md#adminwebhooksdeliveryreplay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage
*AdminWebhooksApi* | [**adminWebhooksDeliveryShow**](docs/AdminWebhooksApi.md#adminwebhooksdeliveryshow) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a single delivery, including the per-attempt history (the &#x60;attempts&#x60; JSON column) for diagnosis.
*AdminWebhooksApi* | [**adminWebhooksEvents**](docs/AdminWebhooksApi.md#adminwebhooksevents) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | Get available webhook event types
*AdminWebhooksApi* | [**adminWebhooksGet**](docs/AdminWebhooksApi.md#adminwebhooksget) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a single webhook by ID
*AdminWebhooksApi* | [**adminWebhooksList**](docs/AdminWebhooksApi.md#adminwebhookslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List all webhooks in the tenant
*AdminWebhooksApi* | [**adminWebhooksRotateSecret**](docs/AdminWebhooksApi.md#adminwebhooksrotatesecret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate webhook secret
*AdminWebhooksApi* | [**adminWebhooksTest**](docs/AdminWebhooksApi.md#adminwebhookstest) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Test a webhook by sending a test payload
*AdminWebhooksApi* | [**adminWebhooksTunnelStart**](docs/AdminWebhooksApi.md#adminwebhookstunnelstart) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | 
*AdminWebhooksApi* | [**adminWebhooksTunnelStop**](docs/AdminWebhooksApi.md#adminwebhookstunnelstop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | 
*AdminWebhooksApi* | [**adminWebhooksTunnelStream**](docs/AdminWebhooksApi.md#adminwebhookstunnelstream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | 
*AdminWebhooksApi* | [**adminWebhooksWebhooksDisable**](docs/AdminWebhooksApi.md#adminwebhookswebhooksdisable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable webhook
*AdminWebhooksApi* | [**adminWebhooksWebhooksEnable**](docs/AdminWebhooksApi.md#adminwebhookswebhooksenable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable webhook
*AdminWebhooksApi* | [**patchAdminWebhooksUpdate**](docs/AdminWebhooksApi.md#patchadminwebhooksupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook
*AdminWebhooksApi* | [**putAdminWebhooksUpdate**](docs/AdminWebhooksApi.md#putadminwebhooksupdate) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook
*AgentsApi* | [**ask**](docs/AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style)
*AgentsApi* | [**attest**](docs/AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | 
*AgentsApi* | [**authorizeMcp**](docs/AgentsApi.md#authorizemcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3).
*AgentsApi* | [**createApproval**](docs/AgentsApi.md#createapproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals | 
*AgentsApi* | [**getAgentCard**](docs/AgentsApi.md#getagentcard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | 
*AgentsApi* | [**getApprovalStatus**](docs/AgentsApi.md#getapprovalstatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status | 
*AgentsApi* | [**getCurrentAgent**](docs/AgentsApi.md#getcurrentagent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent
*AgentsApi* | [**registerAgent**](docs/AgentsApi.md#registeragent) | **POST** /orgs/{orgId}/api/v1/agents/register | 
*AgentsApi* | [**verifyAgentCard**](docs/AgentsApi.md#verifyagentcard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | 
*AuthorizationApi* | [**checkAbac**](docs/AuthorizationApi.md#checkabac) | **POST** /orgs/{orgId}/api/v1/abac/check | Check ABAC authorization
*AuthorizationApi* | [**checkAbacBulk**](docs/AuthorizationApi.md#checkabacbulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Bulk check multiple authorization requests
*AuthorizationApi* | [**checkAllPermissions**](docs/AuthorizationApi.md#checkallpermissions) | **POST** /api/v1/authz/check-all | Check if user has ALL of the specified permissions
*AuthorizationApi* | [**checkAnyPermission**](docs/AuthorizationApi.md#checkanypermission) | **POST** /api/v1/authz/check-any | Check if user has ANY of the specified permissions
*AuthorizationApi* | [**checkPermission**](docs/AuthorizationApi.md#checkpermission) | **POST** /api/v1/authz/check | Check if the authenticated user has a specific permission
*AuthorizationApi* | [**checkPermissionsBulk**](docs/AuthorizationApi.md#checkpermissionsbulk) | **POST** /api/v1/authz/check-bulk | Check multiple permissions at once
*AuthorizationApi* | [**checkRelation**](docs/AuthorizationApi.md#checkrelation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar-style relationship check
*AuthorizationApi* | [**checkRelationScoped**](docs/AuthorizationApi.md#checkrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | 
*AuthorizationApi* | [**evaluate**](docs/AuthorizationApi.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 single access evaluation.
*AuthorizationApi* | [**evaluateBatch**](docs/AuthorizationApi.md#evaluatebatch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations.
*AuthorizationApi* | [**getMyAttributes**](docs/AuthorizationApi.md#getmyattributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | Get user\&#39;s current attributes (for debugging/UI)
*AuthorizationApi* | [**getResourceAttributes**](docs/AuthorizationApi.md#getresourceattributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Get resource attributes
*AuthorizationApi* | [**listAttributeDefinitions**](docs/AuthorizationApi.md#listattributedefinitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Get available attribute definitions
*AuthorizationApi* | [**listPermissions**](docs/AuthorizationApi.md#listpermissions) | **GET** /api/v1/authz/permissions | List all permissions for the authenticated user
*AuthorizationApi* | [**setResourceAttribute**](docs/AuthorizationApi.md#setresourceattribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set resource attribute
*AuthorizationApi* | [**setUserAttribute**](docs/AuthorizationApi.md#setuserattribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set user attribute
*IdentityApi* | [**getMe**](docs/IdentityApi.md#getme) | **GET** /orgs/{orgId}/api/v1/me | Who am I
*JitApi* | [**approveRequest**](docs/JitApi.md#approverequest) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth).
*JitApi* | [**completeTask**](docs/JitApi.md#completetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources.
*JitApi* | [**createTask**](docs/JitApi.md#createtask) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent.
*JitApi* | [**denyRequest**](docs/JitApi.md#denyrequest) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth).
*JitApi* | [**evaluateTask**](docs/JitApi.md#evaluatetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task.
*JitApi* | [**getRequestStatus**](docs/JitApi.md#getrequeststatus) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request.
*JitApi* | [**getRequestToken**](docs/JitApi.md#getrequesttoken) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token.
*JitApi* | [**listPendingRequests**](docs/JitApi.md#listpendingrequests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant.
*JitApi* | [**requestPermission**](docs/JitApi.md#requestpermission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details.
*McpApi* | [**getProtectedResourceMetadata**](docs/McpApi.md#getprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | OAuth 2.0 Protected Resource Metadata (RFC 9728)
*McpApi* | [**getProtectedResourceMetadataRoot**](docs/McpApi.md#getprotectedresourcemetadataroot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Root-level Protected Resource Metadata
*McpApi* | [**getServer**](docs/McpApi.md#getserver) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.
*McpApi* | [**getServerChallenge**](docs/McpApi.md#getserverchallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint.
*McpApi* | [**listServers**](docs/McpApi.md#listservers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.
*McpApi* | [**postServerChallenge**](docs/McpApi.md#postserverchallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint.
*OAuthApi* | [**authorize**](docs/OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | 
*OAuthApi* | [**backchannelAuthorize**](docs/OAuthApi.md#backchannelauthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | 
*OAuthApi* | [**deviceAuthorization**](docs/OAuthApi.md#deviceauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device Authorization Endpoint (RFC 8628 Section 3.1 &amp; 3.2)
*OAuthApi* | [**getClientConfiguration**](docs/OAuthApi.md#getclientconfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Client Configuration Endpoint per OIDC spec Section 4
*OAuthApi* | [**getDeviceVerification**](docs/OAuthApi.md#getdeviceverification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device Verification Page (RFC 8628 Section 3.3)
*OAuthApi* | [**getOrgSelection**](docs/OAuthApi.md#getorgselection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | 
*OAuthApi* | [**introspect**](docs/OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | RFC 7662 - Token Introspection Endpoint
*OAuthApi* | [**par**](docs/OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | 
*OAuthApi* | [**passkeyLogin**](docs/OAuthApi.md#passkeylogin) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | 
*OAuthApi* | [**registerClient**](docs/OAuthApi.md#registerclient) | **POST** /orgs/{orgId}/api/v1/connect/register | Client Registration Endpoint per OIDC spec Section 3
*OAuthApi* | [**revoke**](docs/OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | RFC 7009 - Token Revocation Endpoint
*OAuthApi* | [**socialCallback**](docs/OAuthApi.md#socialcallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Handle social login callback from provider.
*OAuthApi* | [**socialCallbackPost**](docs/OAuthApi.md#socialcallbackpost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Handle social login callback from provider.
*OAuthApi* | [**socialLogin**](docs/OAuthApi.md#sociallogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Initiate social login flow.
*OAuthApi* | [**submitAuthorization**](docs/OAuthApi.md#submitauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | 
*OAuthApi* | [**submitDeviceVerification**](docs/OAuthApi.md#submitdeviceverification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Device Verification Page (RFC 8628 Section 3.3)
*OAuthApi* | [**submitLogin**](docs/OAuthApi.md#submitlogin) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | 
*OAuthApi* | [**submitLoginJson**](docs/OAuthApi.md#submitloginjson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | JSON credential login, for applications that render their own sign-in form.
*OAuthApi* | [**submitOrgSelection**](docs/OAuthApi.md#submitorgselection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | 
*OAuthApi* | [**token**](docs/OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 Token Endpoint
*OIDCApi* | [**checkSession**](docs/OIDCApi.md#checksession) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | 
*OIDCApi* | [**logout**](docs/OIDCApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | 
*OIDCApi* | [**logoutPost**](docs/OIDCApi.md#logoutpost) | **POST** /orgs/{orgId}/api/v1/oauth/logout | 
*OIDCApi* | [**userinfo**](docs/OIDCApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint
*OIDCApi* | [**userinfoPost**](docs/OIDCApi.md#userinfopost) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint
*SsfApi* | [**createStreamConfig**](docs/SsfApi.md#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create a stream. Accepts the SSF stream-configuration shape: {   \&quot;delivery\&quot;: { \&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;...\&quot;,                 \&quot;authorization_token\&quot;: \&quot;...\&quot; },   \&quot;events_requested\&quot;: [\&quot;...uri...\&quot;],   \&quot;audience\&quot;: \&quot;https://receiver.example.com\&quot; }
*SsfApi* | [**deleteStreamConfig**](docs/SsfApi.md#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | 
*SsfApi* | [**getStreamConfig**](docs/SsfApi.md#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read stream configuration(s). &#x60;?stream_id&#x3D;&#x60; returns a single config, otherwise all of the tenant\&#39;s streams are returned.
*SsfApi* | [**verifyStream**](docs/SsfApi.md#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \&quot;stream_id\&quot;: \&quot;ssf_...\&quot;, \&quot;state\&quot;: \&quot;optional-opaque-echo\&quot; }
*TokenVaultApi* | [**getConnectionToken**](docs/TokenVaultApi.md#getconnectiontoken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection.
*TokenVaultApi* | [**listConnections**](docs/TokenVaultApi.md#listconnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the connections this agent may use, with grant status. No secrets.
*WellKnownApi* | [**getAuthorizationServerMetadata**](docs/WellKnownApi.md#getauthorizationservermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | 
*WellKnownApi* | [**getJwks**](docs/WellKnownApi.md#getjwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | 
*WellKnownApi* | [**getOpenidConfiguration**](docs/WellKnownApi.md#getopenidconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | 
*WellKnownApi* | [**getSsfConfiguration**](docs/WellKnownApi.md#getssfconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | 


### Documentation For Models

 - [AdminAgentsActivateResponse](docs/AdminAgentsActivateResponse.md)
 - [AdminAgentsAgentsDisableResponse](docs/AdminAgentsAgentsDisableResponse.md)
 - [AdminAgentsAgentsEnableResponse](docs/AdminAgentsAgentsEnableResponse.md)
 - [AdminAgentsAgentsRotateKeyResponse](docs/AdminAgentsAgentsRotateKeyResponse.md)
 - [AdminAgentsCreateRequest](docs/AdminAgentsCreateRequest.md)
 - [AdminAgentsCreateResponse](docs/AdminAgentsCreateResponse.md)
 - [AdminAgentsDeactivateResponse](docs/AdminAgentsDeactivateResponse.md)
 - [AdminAgentsGenerateTokenRequest](docs/AdminAgentsGenerateTokenRequest.md)
 - [AdminAgentsGenerateTokenResponse](docs/AdminAgentsGenerateTokenResponse.md)
 - [AdminAgentsGetResponse](docs/AdminAgentsGetResponse.md)
 - [AdminAgentsGetScopesResponse](docs/AdminAgentsGetScopesResponse.md)
 - [AdminAgentsListResponse](docs/AdminAgentsListResponse.md)
 - [AdminAgentsRevokeKeyResponse](docs/AdminAgentsRevokeKeyResponse.md)
 - [AdminAgentsRotateCredentialsResponse](docs/AdminAgentsRotateCredentialsResponse.md)
 - [AdminAgentsSetScopesRequest](docs/AdminAgentsSetScopesRequest.md)
 - [AdminAgentsSetScopesResponse](docs/AdminAgentsSetScopesResponse.md)
 - [ApproveRequestRequest](docs/ApproveRequestRequest.md)
 - [ApproveRequestResponse](docs/ApproveRequestResponse.md)
 - [AskRequest](docs/AskRequest.md)
 - [AskResponse](docs/AskResponse.md)
 - [AuthorizeMcpRequest](docs/AuthorizeMcpRequest.md)
 - [AuthorizeMcpResponse](docs/AuthorizeMcpResponse.md)
 - [CompleteTaskResponse](docs/CompleteTaskResponse.md)
 - [CreateApprovalRequest](docs/CreateApprovalRequest.md)
 - [CreateApprovalResponse](docs/CreateApprovalResponse.md)
 - [CreateApprovalResponse202](docs/CreateApprovalResponse202.md)
 - [CreateTaskRequest](docs/CreateTaskRequest.md)
 - [CreateTaskResponse](docs/CreateTaskResponse.md)
 - [DenyRequestRequest](docs/DenyRequestRequest.md)
 - [DenyRequestResponse](docs/DenyRequestResponse.md)
 - [GetApprovalStatusResponse](docs/GetApprovalStatusResponse.md)
 - [GetApprovalStatusResponseApprovedBy](docs/GetApprovalStatusResponseApprovedBy.md)
 - [GetCurrentAgentResponse](docs/GetCurrentAgentResponse.md)
 - [GetCurrentAgentResponseIdentity](docs/GetCurrentAgentResponseIdentity.md)
 - [GetCurrentAgentResponseWorkspace](docs/GetCurrentAgentResponseWorkspace.md)
 - [GetIssuerMetadataResponse](docs/GetIssuerMetadataResponse.md)
 - [GetMeResponse](docs/GetMeResponse.md)
 - [GetMeResponseTenant](docs/GetMeResponseTenant.md)
 - [GetRequestStatusResponse](docs/GetRequestStatusResponse.md)
 - [GetRequestTokenResponse](docs/GetRequestTokenResponse.md)
 - [GetServerResponse](docs/GetServerResponse.md)
 - [GetServerResponseDiscovery](docs/GetServerResponseDiscovery.md)
 - [IssueAgentTokenRequest](docs/IssueAgentTokenRequest.md)
 - [IssueAgentTokenResponse](docs/IssueAgentTokenResponse.md)
 - [IssueDelegateTokenRequest](docs/IssueDelegateTokenRequest.md)
 - [IssueDelegateTokenResponse](docs/IssueDelegateTokenResponse.md)
 - [IssuePlatformTokenRequest](docs/IssuePlatformTokenRequest.md)
 - [IssuePlatformTokenResponse](docs/IssuePlatformTokenResponse.md)
 - [IssueResourceTokenRequest](docs/IssueResourceTokenRequest.md)
 - [IssueResourceTokenResponse](docs/IssueResourceTokenResponse.md)
 - [JwksResponse](docs/JwksResponse.md)
 - [ListPendingRequestsResponse](docs/ListPendingRequestsResponse.md)
 - [ListServersResponse](docs/ListServersResponse.md)
 - [ListServersResponseDataItem](docs/ListServersResponseDataItem.md)
 - [MessageResponse](docs/MessageResponse.md)
 - [PutAdminAgentsUpdateRequest](docs/PutAdminAgentsUpdateRequest.md)
 - [PutAdminAgentsUpdateResponse](docs/PutAdminAgentsUpdateResponse.md)
 - [RequestPermissionRequest](docs/RequestPermissionRequest.md)
 - [RequestPermissionResponse](docs/RequestPermissionResponse.md)
 - [RevokeAgentTokenRequest](docs/RevokeAgentTokenRequest.md)
 - [RevokeAgentTokenResponse](docs/RevokeAgentTokenResponse.md)
 - [VerifyAuthTokenRequest](docs/VerifyAuthTokenRequest.md)
 - [VerifyAuthTokenResponse](docs/VerifyAuthTokenResponse.md)
 - [VerifyResourceTokenRequest](docs/VerifyResourceTokenRequest.md)
 - [VerifyResourceTokenResponse](docs/VerifyResourceTokenResponse.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="BearerAuth"></a>
### BearerAuth

- **Type**: Bearer authentication (JWT)

<a id="ApiKeyAuth"></a>
### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header

<a id="ClientAuth"></a>
### ClientAuth

- **Type**: HTTP basic authentication

<a id="AAuthSigned"></a>
### AAuthSigned

- **Type**: Bearer authentication (JWT)

