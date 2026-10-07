> **GENERATED CLIENT — raw API coverage.** This package is generated from
> the LumoAuth OpenAPI spec (`api-clients/openapi.json`) by the
> `sdk-codegen` pipeline. It covers the full REST surface with typed
> models but no framework sugar. An ergonomic, hand-maintained wrapper is
> the next step — where one already exists (`@lumoauth/client` /
> `@lumoauth/backend` and friends on npm, `lumoauth` on PyPI,
> `github.com/lumoauth/lumo-auth-go`), prefer it.
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
*AdminAbacApi* | [**abacAttributesCreate**](docs/AdminAbacApi.md#abacattributescreate) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition
*AdminAbacApi* | [**abacAttributesDelete**](docs/AdminAbacApi.md#abacattributesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition
*AdminAbacApi* | [**abacAttributesGet**](docs/AdminAbacApi.md#abacattributesget) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition
*AdminAbacApi* | [**abacAttributesList**](docs/AdminAbacApi.md#abacattributeslist) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions
*AdminAbacApi* | [**abacPoliciesCreate**](docs/AdminAbacApi.md#abacpoliciescreate) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy
*AdminAbacApi* | [**abacPoliciesDelete**](docs/AdminAbacApi.md#abacpoliciesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy
*AdminAbacApi* | [**abacPoliciesGet**](docs/AdminAbacApi.md#abacpoliciesget) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy
*AdminAbacApi* | [**abacPoliciesList**](docs/AdminAbacApi.md#abacpolicieslist) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies
*AdminAbacApi* | [**abacPoliciesToggle**](docs/AdminAbacApi.md#abacpoliciestoggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive
*AdminAbacApi* | [**patchAbacAttributesUpdate**](docs/AdminAbacApi.md#patchabacattributesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition
*AdminAbacApi* | [**patchAbacPoliciesUpdate**](docs/AdminAbacApi.md#patchabacpoliciesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy
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
*AdminAuditLogsApi* | [**adminAuditLogsActions**](docs/AdminAuditLogsApi.md#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the tenant
*AdminAuditLogsApi* | [**adminAuditLogsExport**](docs/AdminAuditLogsApi.md#adminauditlogsexport) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON
*AdminAuditLogsApi* | [**adminAuditLogsGet**](docs/AdminAuditLogsApi.md#adminauditlogsget) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry
*AdminAuditLogsApi* | [**adminAuditLogsList**](docs/AdminAuditLogsApi.md#adminauditlogslist) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries
*AdminAuditLogsApi* | [**adminAuditLogsRetention**](docs/AdminAuditLogsApi.md#adminauditlogsretention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
*AdminAuditLogsApi* | [**adminAuditLogsStats**](docs/AdminAuditLogsApi.md#adminauditlogsstats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)
*AdminAuditLogsApi* | [**patchAdminAuditLogsRetentionUpdate**](docs/AdminAuditLogsApi.md#patchadminauditlogsretentionupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
*AdminAuditLogsApi* | [**putAdminAuditLogsRetentionUpdate**](docs/AdminAuditLogsApi.md#putadminauditlogsretentionupdate) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
*AdminEmailApi* | [**adminEmailTemplatesDelete**](docs/AdminEmailApi.md#adminemailtemplatesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used
*AdminEmailApi* | [**adminEmailTemplatesGet**](docs/AdminEmailApi.md#adminemailtemplatesget) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default)
*AdminEmailApi* | [**adminEmailTemplatesList**](docs/AdminEmailApi.md#adminemailtemplateslist) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template
*AdminEmailApi* | [**adminEmailTemplatesPreview**](docs/AdminEmailApi.md#adminemailtemplatespreview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data
*AdminEmailApi* | [**adminEmailTemplatesUpsert**](docs/AdminEmailApi.md#adminemailtemplatesupsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type
*AdminEmailApi* | [**adminEmailTemplatesVariables**](docs/AdminEmailApi.md#adminemailtemplatesvariables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type
*AdminGroupsApi* | [**adminGroupsAddMembers**](docs/AdminGroupsApi.md#admingroupsaddmembers) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group
*AdminGroupsApi* | [**adminGroupsAddRole**](docs/AdminGroupsApi.md#admingroupsaddrole) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group
*AdminGroupsApi* | [**adminGroupsCreate**](docs/AdminGroupsApi.md#admingroupscreate) | **POST** /orgs/{orgId}/api/v1/admin/groups | Create a new group
*AdminGroupsApi* | [**adminGroupsDelete**](docs/AdminGroupsApi.md#admingroupsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group
*AdminGroupsApi* | [**adminGroupsGet**](docs/AdminGroupsApi.md#admingroupsget) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug
*AdminGroupsApi* | [**adminGroupsGetMembers**](docs/AdminGroupsApi.md#admingroupsgetmembers) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members
*AdminGroupsApi* | [**adminGroupsGroupsGetRoles**](docs/AdminGroupsApi.md#admingroupsgroupsgetroles) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles
*AdminGroupsApi* | [**adminGroupsList**](docs/AdminGroupsApi.md#admingroupslist) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant
*AdminGroupsApi* | [**adminGroupsRemoveMember**](docs/AdminGroupsApi.md#admingroupsremovemember) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group
*AdminGroupsApi* | [**adminGroupsRemoveRole**](docs/AdminGroupsApi.md#admingroupsremoverole) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group
*AdminGroupsApi* | [**adminGroupsUpdateRoles**](docs/AdminGroupsApi.md#admingroupsupdateroles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)
*AdminGroupsApi* | [**patchAdminGroupsUpdate**](docs/AdminGroupsApi.md#patchadmingroupsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
*AdminGroupsApi* | [**putAdminGroupsUpdate**](docs/AdminGroupsApi.md#putadmingroupsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
*AdminIdentityProvidersApi* | [**adminSocialProvidersAvailable**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersavailable) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types
*AdminIdentityProvidersApi* | [**adminSocialProvidersCallbackUrls**](docs/AdminIdentityProvidersApi.md#adminsocialproviderscallbackurls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersCreate**](docs/AdminIdentityProvidersApi.md#adminsocialproviderscreate) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersDelete**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersDisable**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersdisable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersEnable**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersenable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersGet**](docs/AdminIdentityProvidersApi.md#adminsocialprovidersget) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersList**](docs/AdminIdentityProvidersApi.md#adminsocialproviderslist) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers
*AdminIdentityProvidersApi* | [**adminSocialProvidersTypes**](docs/AdminIdentityProvidersApi.md#adminsocialproviderstypes) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types
*AdminIdentityProvidersApi* | [**patchAdminSocialProvidersUpdate**](docs/AdminIdentityProvidersApi.md#patchadminsocialprovidersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider
*AdminIdentityProvidersApi* | [**putAdminSocialProvidersUpdate**](docs/AdminIdentityProvidersApi.md#putadminsocialprovidersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider
*AdminMcpApi* | [**adminMcpServersCreate**](docs/AdminMcpApi.md#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
*AdminMcpApi* | [**adminMcpServersDelete**](docs/AdminMcpApi.md#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
*AdminMcpApi* | [**adminMcpServersGet**](docs/AdminMcpApi.md#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
*AdminMcpApi* | [**adminMcpServersList**](docs/AdminMcpApi.md#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers
*AdminMfaApi* | [**deleteUserAuthenticator**](docs/AdminMfaApi.md#deleteuserauthenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user\&#39;s authenticators
*AdminMfaApi* | [**getMfaCoverageReport**](docs/AdminMfaApi.md#getmfacoveragereport) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage
*AdminMfaApi* | [**getMfaPolicy**](docs/AdminMfaApi.md#getmfapolicy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy
*AdminMfaApi* | [**issueTemporaryAccessCode**](docs/AdminMfaApi.md#issuetemporaryaccesscode) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code
*AdminMfaApi* | [**listUserAuthenticators**](docs/AdminMfaApi.md#listuserauthenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user\&#39;s authenticators
*AdminMfaApi* | [**updateMfaPolicy**](docs/AdminMfaApi.md#updatemfapolicy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy
*AdminOAuthClientsApi* | [**createClient**](docs/AdminOAuthClientsApi.md#createclient) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client
*AdminOAuthClientsApi* | [**deleteClient**](docs/AdminOAuthClientsApi.md#deleteclient) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client
*AdminOAuthClientsApi* | [**disableClient**](docs/AdminOAuthClientsApi.md#disableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client
*AdminOAuthClientsApi* | [**enableClient**](docs/AdminOAuthClientsApi.md#enableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client
*AdminOAuthClientsApi* | [**getClient**](docs/AdminOAuthClientsApi.md#getclient) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client
*AdminOAuthClientsApi* | [**listClientScopes**](docs/AdminOAuthClientsApi.md#listclientscopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client
*AdminOAuthClientsApi* | [**listClients**](docs/AdminOAuthClientsApi.md#listclients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients
*AdminOAuthClientsApi* | [**patchClient**](docs/AdminOAuthClientsApi.md#patchclient) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client
*AdminOAuthClientsApi* | [**rotateClientSecret**](docs/AdminOAuthClientsApi.md#rotateclientsecret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret
*AdminOAuthClientsApi* | [**setClientScopes**](docs/AdminOAuthClientsApi.md#setclientscopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client
*AdminOAuthClientsApi* | [**updateClient**](docs/AdminOAuthClientsApi.md#updateclient) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client
*AdminOrganizationsApi* | [**adminOrgInvitationsCreate**](docs/AdminOrganizationsApi.md#adminorginvitationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization
*AdminOrganizationsApi* | [**adminOrgInvitationsList**](docs/AdminOrganizationsApi.md#adminorginvitationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations
*AdminOrganizationsApi* | [**adminOrgInvitationsResend**](docs/AdminOrganizationsApi.md#adminorginvitationsresend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation
*AdminOrganizationsApi* | [**adminOrgInvitationsRevoke**](docs/AdminOrganizationsApi.md#adminorginvitationsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation
*AdminOrganizationsApi* | [**adminOrgMembersAdd**](docs/AdminOrganizationsApi.md#adminorgmembersadd) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization
*AdminOrganizationsApi* | [**adminOrgMembersList**](docs/AdminOrganizationsApi.md#adminorgmemberslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members
*AdminOrganizationsApi* | [**adminOrgMembersRemove**](docs/AdminOrganizationsApi.md#adminorgmembersremove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization
*AdminOrganizationsApi* | [**adminOrgRolesCreate**](docs/AdminOrganizationsApi.md#adminorgrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role
*AdminOrganizationsApi* | [**adminOrgRolesDelete**](docs/AdminOrganizationsApi.md#adminorgrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role
*AdminOrganizationsApi* | [**adminOrgRolesList**](docs/AdminOrganizationsApi.md#adminorgroleslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles
*AdminOrganizationsApi* | [**adminOrganizationsCreate**](docs/AdminOrganizationsApi.md#adminorganizationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization
*AdminOrganizationsApi* | [**adminOrganizationsDelete**](docs/AdminOrganizationsApi.md#adminorganizationsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization
*AdminOrganizationsApi* | [**adminOrganizationsGet**](docs/AdminOrganizationsApi.md#adminorganizationsget) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization
*AdminOrganizationsApi* | [**adminOrganizationsList**](docs/AdminOrganizationsApi.md#adminorganizationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations
*AdminOrganizationsApi* | [**patchAdminOrgMembersUpdate**](docs/AdminOrganizationsApi.md#patchadminorgmembersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member\&#39;s role or status
*AdminOrganizationsApi* | [**patchAdminOrgRolesUpdate**](docs/AdminOrganizationsApi.md#patchadminorgrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
*AdminOrganizationsApi* | [**patchAdminOrganizationsUpdate**](docs/AdminOrganizationsApi.md#patchadminorganizationsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization
*AdminOrganizationsApi* | [**putAdminOrgMembersUpdate**](docs/AdminOrganizationsApi.md#putadminorgmembersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member\&#39;s role or status
*AdminOrganizationsApi* | [**putAdminOrgRolesUpdate**](docs/AdminOrganizationsApi.md#putadminorgrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
*AdminOrganizationsApi* | [**putAdminOrganizationsUpdate**](docs/AdminOrganizationsApi.md#putadminorganizationsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization
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
*AdminSandboxApi* | [**adminSandboxDestroy**](docs/AdminSandboxApi.md#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant
*AdminSandboxApi* | [**adminSandboxList**](docs/AdminSandboxApi.md#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller\&#39;s sandbox tenants
*AdminSandboxApi* | [**adminSandboxSpawn**](docs/AdminSandboxApi.md#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant
*AdminSessionsApi* | [**adminClientTokensRevokeAll**](docs/AdminSessionsApi.md#adminclienttokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client
*AdminSessionsApi* | [**adminClientTokensRevokePost**](docs/AdminSessionsApi.md#adminclienttokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias)
*AdminSessionsApi* | [**adminSessionsCount**](docs/AdminSessionsApi.md#adminsessionscount) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count
*AdminSessionsApi* | [**adminSessionsList**](docs/AdminSessionsApi.md#adminsessionslist) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions
*AdminSessionsApi* | [**adminSessionsRevoke**](docs/AdminSessionsApi.md#adminsessionsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session
*AdminSessionsApi* | [**adminSessionsRevokeAll**](docs/AdminSessionsApi.md#adminsessionsrevokeall) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant
*AdminSessionsApi* | [**adminSessionsStats**](docs/AdminSessionsApi.md#adminsessionsstats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics
*AdminSessionsApi* | [**adminTokensList**](docs/AdminSessionsApi.md#admintokenslist) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens
*AdminSessionsApi* | [**adminTokensRevoke**](docs/AdminSessionsApi.md#admintokensrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token
*AdminSessionsApi* | [**adminUserSessionsList**](docs/AdminSessionsApi.md#adminusersessionslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user\&#39;s active sessions
*AdminSessionsApi* | [**adminUserSessionsRevokeAll**](docs/AdminSessionsApi.md#adminusersessionsrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user
*AdminSessionsApi* | [**adminUserSessionsRevokePost**](docs/AdminSessionsApi.md#adminusersessionsrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias)
*AdminSessionsApi* | [**adminUserTokensRevokeAll**](docs/AdminSessionsApi.md#adminusertokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user
*AdminSessionsApi* | [**adminUserTokensRevokePost**](docs/AdminSessionsApi.md#adminusertokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias)
*AdminSettingsApi* | [**adminAnalyticsDashboard**](docs/AdminSettingsApi.md#adminanalyticsdashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
*AdminSettingsApi* | [**adminAnalyticsLogins**](docs/AdminSettingsApi.md#adminanalyticslogins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
*AdminSettingsApi* | [**adminAnalyticsUsers**](docs/AdminSettingsApi.md#adminanalyticsusers) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
*AdminSettingsApi* | [**adminOrganizationGet**](docs/AdminSettingsApi.md#adminorganizationget) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile
*AdminSettingsApi* | [**adminSettingsAll**](docs/AdminSettingsApi.md#adminsettingsall) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
*AdminSettingsApi* | [**adminSettingsAuthGet**](docs/AdminSettingsApi.md#adminsettingsauthget) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
*AdminSettingsApi* | [**adminSettingsAuthenticationGet**](docs/AdminSettingsApi.md#adminsettingsauthenticationget) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**adminSettingsBrandingGet**](docs/AdminSettingsApi.md#adminsettingsbrandingget) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
*AdminSettingsApi* | [**adminSettingsEmailGet**](docs/AdminSettingsApi.md#adminsettingsemailget) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
*AdminSettingsApi* | [**adminSettingsGeneralGet**](docs/AdminSettingsApi.md#adminsettingsgeneralget) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
*AdminSettingsApi* | [**adminSettingsScimGet**](docs/AdminSettingsApi.md#adminsettingsscimget) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
*AdminSettingsApi* | [**adminSettingsSecurityGet**](docs/AdminSettingsApi.md#adminsettingssecurityget) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
*AdminSettingsApi* | [**adminTenantGet**](docs/AdminSettingsApi.md#admintenantget) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile
*AdminSettingsApi* | [**patchAdminOrganizationUpdate**](docs/AdminSettingsApi.md#patchadminorganizationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
*AdminSettingsApi* | [**patchAdminSettingsAuthUpdate**](docs/AdminSettingsApi.md#patchadminsettingsauthupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
*AdminSettingsApi* | [**patchAdminSettingsAuthenticationUpdate**](docs/AdminSettingsApi.md#patchadminsettingsauthenticationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**patchAdminSettingsBrandingUpdate**](docs/AdminSettingsApi.md#patchadminsettingsbrandingupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
*AdminSettingsApi* | [**patchAdminSettingsEmailUpdate**](docs/AdminSettingsApi.md#patchadminsettingsemailupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
*AdminSettingsApi* | [**patchAdminSettingsGeneralUpdate**](docs/AdminSettingsApi.md#patchadminsettingsgeneralupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
*AdminSettingsApi* | [**patchAdminSettingsScimUpdate**](docs/AdminSettingsApi.md#patchadminsettingsscimupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
*AdminSettingsApi* | [**patchAdminSettingsSecurityUpdate**](docs/AdminSettingsApi.md#patchadminsettingssecurityupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
*AdminSettingsApi* | [**patchAdminTenantUpdate**](docs/AdminSettingsApi.md#patchadmintenantupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
*AdminSettingsApi* | [**putAdminOrganizationUpdate**](docs/AdminSettingsApi.md#putadminorganizationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
*AdminSettingsApi* | [**putAdminSettingsAuthUpdate**](docs/AdminSettingsApi.md#putadminsettingsauthupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
*AdminSettingsApi* | [**putAdminSettingsAuthenticationUpdate**](docs/AdminSettingsApi.md#putadminsettingsauthenticationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**putAdminSettingsBrandingUpdate**](docs/AdminSettingsApi.md#putadminsettingsbrandingupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
*AdminSettingsApi* | [**putAdminSettingsEmailUpdate**](docs/AdminSettingsApi.md#putadminsettingsemailupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
*AdminSettingsApi* | [**putAdminSettingsGeneralUpdate**](docs/AdminSettingsApi.md#putadminsettingsgeneralupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
*AdminSettingsApi* | [**putAdminSettingsScimUpdate**](docs/AdminSettingsApi.md#putadminsettingsscimupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
*AdminSettingsApi* | [**putAdminSettingsSecurityUpdate**](docs/AdminSettingsApi.md#putadminsettingssecurityupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
*AdminSettingsApi* | [**putAdminTenantUpdate**](docs/AdminSettingsApi.md#putadmintenantupdate) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
*AdminUsersApi* | [**addUserGroup**](docs/AdminUsersApi.md#addusergroup) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group
*AdminUsersApi* | [**addUserPermission**](docs/AdminUsersApi.md#adduserpermission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user
*AdminUsersApi* | [**addUserRole**](docs/AdminUsersApi.md#adduserrole) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user
*AdminUsersApi* | [**adminIdentitiesLegacySamlRelink**](docs/AdminUsersApi.md#adminidentitieslegacysamlrelink) | **POST** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP
*AdminUsersApi* | [**adminIdentitiesLegacySamlReport**](docs/AdminUsersApi.md#adminidentitieslegacysamlreport) | **GET** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report
*AdminUsersApi* | [**adminIdentitiesLink**](docs/AdminUsersApi.md#adminidentitieslink) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML or LDAP identity to a user
*AdminUsersApi* | [**adminIdentitiesList**](docs/AdminUsersApi.md#adminidentitieslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user\&#39;s federated identity links
*AdminUsersApi* | [**adminIdentitiesUnlink**](docs/AdminUsersApi.md#adminidentitiesunlink) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user\&#39;s SAML, LDAP or social identity
*AdminUsersApi* | [**blockUser**](docs/AdminUsersApi.md#blockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user
*AdminUsersApi* | [**createUser**](docs/AdminUsersApi.md#createuser) | **POST** /orgs/{orgId}/api/v1/admin/users | Create a user
*AdminUsersApi* | [**deleteUser**](docs/AdminUsersApi.md#deleteuser) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user
*AdminUsersApi* | [**getUser**](docs/AdminUsersApi.md#getuser) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user
*AdminUsersApi* | [**listUserGroups**](docs/AdminUsersApi.md#listusergroups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user\&#39;s groups
*AdminUsersApi* | [**listUserPermissions**](docs/AdminUsersApi.md#listuserpermissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user\&#39;s direct permissions
*AdminUsersApi* | [**listUserRoles**](docs/AdminUsersApi.md#listuserroles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user\&#39;s roles
*AdminUsersApi* | [**listUsers**](docs/AdminUsersApi.md#listusers) | **GET** /orgs/{orgId}/api/v1/admin/users | List users
*AdminUsersApi* | [**markUserVerified**](docs/AdminUsersApi.md#markuserverified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user\&#39;s email as verified
*AdminUsersApi* | [**patchUser**](docs/AdminUsersApi.md#patchuser) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
*AdminUsersApi* | [**removeUserGroup**](docs/AdminUsersApi.md#removeusergroup) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group
*AdminUsersApi* | [**removeUserPermission**](docs/AdminUsersApi.md#removeuserpermission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user
*AdminUsersApi* | [**removeUserRole**](docs/AdminUsersApi.md#removeuserrole) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user
*AdminUsersApi* | [**resetUserMfa**](docs/AdminUsersApi.md#resetusermfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed)
*AdminUsersApi* | [**sendUserVerificationEmail**](docs/AdminUsersApi.md#senduserverificationemail) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email
*AdminUsersApi* | [**setUserPassword**](docs/AdminUsersApi.md#setuserpassword) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user\&#39;s password
*AdminUsersApi* | [**setUserPasswordPost**](docs/AdminUsersApi.md#setuserpasswordpost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user\&#39;s password
*AdminUsersApi* | [**triggerUserPasswordReset**](docs/AdminUsersApi.md#triggeruserpasswordreset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email
*AdminUsersApi* | [**unblockUser**](docs/AdminUsersApi.md#unblockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user
*AdminUsersApi* | [**updateUser**](docs/AdminUsersApi.md#updateuser) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
*AdminUsersApi* | [**updateUserGroups**](docs/AdminUsersApi.md#updateusergroups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user\&#39;s groups
*AdminUsersApi* | [**updateUserRoles**](docs/AdminUsersApi.md#updateuserroles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user\&#39;s roles
*AdminWebhooksApi* | [**adminWebhooksCreate**](docs/AdminWebhooksApi.md#adminwebhookscreate) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook
*AdminWebhooksApi* | [**adminWebhooksDelete**](docs/AdminWebhooksApi.md#adminwebhooksdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
*AdminWebhooksApi* | [**adminWebhooksDeliveriesList**](docs/AdminWebhooksApi.md#adminwebhooksdeliverieslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries
*AdminWebhooksApi* | [**adminWebhooksDeliveryReplay**](docs/AdminWebhooksApi.md#adminwebhooksdeliveryreplay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery
*AdminWebhooksApi* | [**adminWebhooksDeliveryShow**](docs/AdminWebhooksApi.md#adminwebhooksdeliveryshow) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery
*AdminWebhooksApi* | [**adminWebhooksEvents**](docs/AdminWebhooksApi.md#adminwebhooksevents) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types
*AdminWebhooksApi* | [**adminWebhooksGet**](docs/AdminWebhooksApi.md#adminwebhooksget) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook
*AdminWebhooksApi* | [**adminWebhooksList**](docs/AdminWebhooksApi.md#adminwebhookslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks
*AdminWebhooksApi* | [**adminWebhooksRotateSecret**](docs/AdminWebhooksApi.md#adminwebhooksrotatesecret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret
*AdminWebhooksApi* | [**adminWebhooksTest**](docs/AdminWebhooksApi.md#adminwebhookstest) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery
*AdminWebhooksApi* | [**adminWebhooksTunnelStart**](docs/AdminWebhooksApi.md#adminwebhookstunnelstart) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel
*AdminWebhooksApi* | [**adminWebhooksTunnelStop**](docs/AdminWebhooksApi.md#adminwebhookstunnelstop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel
*AdminWebhooksApi* | [**adminWebhooksTunnelStream**](docs/AdminWebhooksApi.md#adminwebhookstunnelstream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE)
*AdminWebhooksApi* | [**adminWebhooksWebhooksDisable**](docs/AdminWebhooksApi.md#adminwebhookswebhooksdisable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook
*AdminWebhooksApi* | [**adminWebhooksWebhooksEnable**](docs/AdminWebhooksApi.md#adminwebhookswebhooksenable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook
*AdminWebhooksApi* | [**patchAdminWebhooksUpdate**](docs/AdminWebhooksApi.md#patchadminwebhooksupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook
*AdminWebhooksApi* | [**putAdminWebhooksUpdate**](docs/AdminWebhooksApi.md#putadminwebhooksupdate) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook
*AgentsApi* | [**ask**](docs/AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style)
*AgentsApi* | [**attest**](docs/AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token
*AgentsApi* | [**authorizeMcp**](docs/AgentsApi.md#authorizemcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3).
*AgentsApi* | [**createApproval**](docs/AgentsApi.md#createapproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals | 
*AgentsApi* | [**getAgentCard**](docs/AgentsApi.md#getagentcard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card
*AgentsApi* | [**getApprovalStatus**](docs/AgentsApi.md#getapprovalstatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status | 
*AgentsApi* | [**getCurrentAgent**](docs/AgentsApi.md#getcurrentagent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent
*AgentsApi* | [**registerAgent**](docs/AgentsApi.md#registeragent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent
*AgentsApi* | [**verifyAgentCard**](docs/AgentsApi.md#verifyagentcard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card
*AuthorizationApi* | [**checkAbac**](docs/AuthorizationApi.md#checkabac) | **POST** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller
*AuthorizationApi* | [**checkAbacBulk**](docs/AuthorizationApi.md#checkabacbulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call
*AuthorizationApi* | [**checkAllPermissions**](docs/AuthorizationApi.md#checkallpermissions) | **POST** /api/v1/authz/check-all | Check whether the subject holds all of the permissions
*AuthorizationApi* | [**checkAnyPermission**](docs/AuthorizationApi.md#checkanypermission) | **POST** /api/v1/authz/check-any | Check whether the subject holds any of the permissions
*AuthorizationApi* | [**checkPermission**](docs/AuthorizationApi.md#checkpermission) | **POST** /api/v1/authz/check | Check one permission
*AuthorizationApi* | [**checkPermissionsBulk**](docs/AuthorizationApi.md#checkpermissionsbulk) | **POST** /api/v1/authz/check-bulk | Check up to 100 permissions in one call
*AuthorizationApi* | [**checkRelation**](docs/AuthorizationApi.md#checkrelation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar relationship check
*AuthorizationApi* | [**checkRelationScoped**](docs/AuthorizationApi.md#checkrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check
*AuthorizationApi* | [**evaluate**](docs/AuthorizationApi.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation
*AuthorizationApi* | [**evaluateBatch**](docs/AuthorizationApi.md#evaluatebatch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations
*AuthorizationApi* | [**expandRelation**](docs/AuthorizationApi.md#expandrelation) | **POST** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites.
*AuthorizationApi* | [**expandRelationScoped**](docs/AuthorizationApi.md#expandrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope).
*AuthorizationApi* | [**getMyAttributes**](docs/AuthorizationApi.md#getmyattributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | The caller\&#39;s ABAC subject attributes
*AuthorizationApi* | [**getResourceAttributes**](docs/AuthorizationApi.md#getresourceattributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource
*AuthorizationApi* | [**listAttributeDefinitions**](docs/AuthorizationApi.md#listattributedefinitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization
*AuthorizationApi* | [**listPermissions**](docs/AuthorizationApi.md#listpermissions) | **GET** /api/v1/authz/permissions | List the caller\&#39;s effective permissions
*AuthorizationApi* | [**setResourceAttribute**](docs/AuthorizationApi.md#setresourceattribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute
*AuthorizationApi* | [**setUserAttribute**](docs/AuthorizationApi.md#setuserattribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute
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
*McpApi* | [**getProtectedResourceMetadata**](docs/McpApi.md#getprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728)
*McpApi* | [**getProtectedResourceMetadataRoot**](docs/McpApi.md#getprotectedresourcemetadataroot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728)
*McpApi* | [**getServer**](docs/McpApi.md#getserver) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.
*McpApi* | [**getServerChallenge**](docs/McpApi.md#getserverchallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge
*McpApi* | [**listServers**](docs/McpApi.md#listservers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.
*McpApi* | [**postServerChallenge**](docs/McpApi.md#postserverchallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST)
*MfaApi* | [**createMfaChallenge**](docs/MfaApi.md#createmfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge
*MfaApi* | [**deleteAuthenticator**](docs/MfaApi.md#deleteauthenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator
*MfaApi* | [**enrollAuthenticator**](docs/MfaApi.md#enrollauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator
*MfaApi* | [**generateRecoveryCodes**](docs/MfaApi.md#generaterecoverycodes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes
*MfaApi* | [**getMfaChallenge**](docs/MfaApi.md#getmfachallenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status
*MfaApi* | [**getRecoveryCodeStatus**](docs/MfaApi.md#getrecoverycodestatus) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status
*MfaApi* | [**listMyAuthenticators**](docs/MfaApi.md#listmyauthenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators
*MfaApi* | [**listTrustedDevices**](docs/MfaApi.md#listtrusteddevices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices
*MfaApi* | [**revokeTrustedDevice**](docs/MfaApi.md#revoketrusteddevice) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device
*MfaApi* | [**updateAuthenticator**](docs/MfaApi.md#updateauthenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default
*MfaApi* | [**verifyAuthenticator**](docs/MfaApi.md#verifyauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator
*MfaApi* | [**verifyMfaChallenge**](docs/MfaApi.md#verifymfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge
*OAuthApi* | [**authorize**](docs/OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
*OAuthApi* | [**backchannelAuthorize**](docs/OAuthApi.md#backchannelauthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
*OAuthApi* | [**deviceAuthorization**](docs/OAuthApi.md#deviceauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
*OAuthApi* | [**getClientConfiguration**](docs/OAuthApi.md#getclientconfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
*OAuthApi* | [**getDeviceVerification**](docs/OAuthApi.md#getdeviceverification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
*OAuthApi* | [**getOrgSelection**](docs/OAuthApi.md#getorgselection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
*OAuthApi* | [**introspect**](docs/OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
*OAuthApi* | [**par**](docs/OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
*OAuthApi* | [**passkeyLogin**](docs/OAuthApi.md#passkeylogin) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point
*OAuthApi* | [**registerClient**](docs/OAuthApi.md#registerclient) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
*OAuthApi* | [**revoke**](docs/OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
*OAuthApi* | [**socialCallback**](docs/OAuthApi.md#socialcallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
*OAuthApi* | [**socialCallbackPost**](docs/OAuthApi.md#socialcallbackpost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
*OAuthApi* | [**socialLogin**](docs/OAuthApi.md#sociallogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
*OAuthApi* | [**submitAuthorization**](docs/OAuthApi.md#submitauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
*OAuthApi* | [**submitDeviceVerification**](docs/OAuthApi.md#submitdeviceverification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
*OAuthApi* | [**submitLogin**](docs/OAuthApi.md#submitlogin) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission
*OAuthApi* | [**submitLoginJson**](docs/OAuthApi.md#submitloginjson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow
*OAuthApi* | [**submitOrgSelection**](docs/OAuthApi.md#submitorgselection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection
*OAuthApi* | [**token**](docs/OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint
*OIDCApi* | [**checkSession**](docs/OIDCApi.md#checksession) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0)
*OIDCApi* | [**logout**](docs/OIDCApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0)
*OIDCApi* | [**logoutPost**](docs/OIDCApi.md#logoutpost) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission)
*OIDCApi* | [**userinfo**](docs/OIDCApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint
*OIDCApi* | [**userinfoPost**](docs/OIDCApi.md#userinfopost) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST)
*SsfApi* | [**createStreamConfig**](docs/SsfApi.md#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create an SSF stream
*SsfApi* | [**deleteStreamConfig**](docs/SsfApi.md#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | Delete an SSF stream
*SsfApi* | [**getStreamConfig**](docs/SsfApi.md#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read SSF stream configuration(s)
*SsfApi* | [**verifyStream**](docs/SsfApi.md#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | Request a stream verification event
*TokenVaultApi* | [**getConnectionToken**](docs/TokenVaultApi.md#getconnectiontoken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection
*TokenVaultApi* | [**listConnections**](docs/TokenVaultApi.md#listconnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use
*WellKnownApi* | [**getAuthorizationServerMetadata**](docs/WellKnownApi.md#getauthorizationservermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414)
*WellKnownApi* | [**getJwks**](docs/WellKnownApi.md#getjwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517)
*WellKnownApi* | [**getOpenidConfiguration**](docs/WellKnownApi.md#getopenidconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0)
*WellKnownApi* | [**getSsfConfiguration**](docs/WellKnownApi.md#getssfconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata


### Documentation For Models

 - [AbacAttributeDefinition](docs/AbacAttributeDefinition.md)
 - [AbacAttributesCreateResponse](docs/AbacAttributesCreateResponse.md)
 - [AbacAttributesGetResponse](docs/AbacAttributesGetResponse.md)
 - [AbacAttributesListResponse](docs/AbacAttributesListResponse.md)
 - [AbacPoliciesCreateResponse](docs/AbacPoliciesCreateResponse.md)
 - [AbacPoliciesGetResponse](docs/AbacPoliciesGetResponse.md)
 - [AbacPoliciesListResponse](docs/AbacPoliciesListResponse.md)
 - [AbacPoliciesToggleResponse](docs/AbacPoliciesToggleResponse.md)
 - [AbacPolicy](docs/AbacPolicy.md)
 - [AbacResourceAttribute](docs/AbacResourceAttribute.md)
 - [AddUserGroupResponse](docs/AddUserGroupResponse.md)
 - [AddUserPermissionResponse](docs/AddUserPermissionResponse.md)
 - [AddUserRoleResponse](docs/AddUserRoleResponse.md)
 - [AdminAgentsActivateResponse](docs/AdminAgentsActivateResponse.md)
 - [AdminAgentsAgentsDisableResponse](docs/AdminAgentsAgentsDisableResponse.md)
 - [AdminAgentsAgentsEnableResponse](docs/AdminAgentsAgentsEnableResponse.md)
 - [AdminAgentsAgentsRotateKeyResponse](docs/AdminAgentsAgentsRotateKeyResponse.md)
 - [AdminAgentsCreateRequest](docs/AdminAgentsCreateRequest.md)
 - [AdminAgentsCreateResponse](docs/AdminAgentsCreateResponse.md)
 - [AdminAgentsDeactivateResponse](docs/AdminAgentsDeactivateResponse.md)
 - [AdminAgentsDeleteResponse](docs/AdminAgentsDeleteResponse.md)
 - [AdminAgentsGenerateTokenRequest](docs/AdminAgentsGenerateTokenRequest.md)
 - [AdminAgentsGenerateTokenResponse](docs/AdminAgentsGenerateTokenResponse.md)
 - [AdminAgentsGenerateTokenResponseData](docs/AdminAgentsGenerateTokenResponseData.md)
 - [AdminAgentsGetResponse](docs/AdminAgentsGetResponse.md)
 - [AdminAgentsGetScopesResponse](docs/AdminAgentsGetScopesResponse.md)
 - [AdminAgentsListResponse](docs/AdminAgentsListResponse.md)
 - [AdminAgentsRevokeKeyResponse](docs/AdminAgentsRevokeKeyResponse.md)
 - [AdminAgentsRotateCredentialsResponse](docs/AdminAgentsRotateCredentialsResponse.md)
 - [AdminAgentsSetScopesRequest](docs/AdminAgentsSetScopesRequest.md)
 - [AdminAgentsSetScopesResponse](docs/AdminAgentsSetScopesResponse.md)
 - [AdminAnalyticsDashboardResponse](docs/AdminAnalyticsDashboardResponse.md)
 - [AdminAnalyticsDashboardResponseData](docs/AdminAnalyticsDashboardResponseData.md)
 - [AdminAnalyticsDashboardResponseDataAudit](docs/AdminAnalyticsDashboardResponseDataAudit.md)
 - [AdminAnalyticsDashboardResponseDataAuthentication](docs/AdminAnalyticsDashboardResponseDataAuthentication.md)
 - [AdminAnalyticsDashboardResponseDataUsers](docs/AdminAnalyticsDashboardResponseDataUsers.md)
 - [AdminAnalyticsLoginsResponse](docs/AdminAnalyticsLoginsResponse.md)
 - [AdminAnalyticsLoginsResponseData](docs/AdminAnalyticsLoginsResponseData.md)
 - [AdminAnalyticsLoginsResponseDataDailyItem](docs/AdminAnalyticsLoginsResponseDataDailyItem.md)
 - [AdminAnalyticsLoginsResponseDataPeriod](docs/AdminAnalyticsLoginsResponseDataPeriod.md)
 - [AdminAnalyticsUsersResponse](docs/AdminAnalyticsUsersResponse.md)
 - [AdminAnalyticsUsersResponseData](docs/AdminAnalyticsUsersResponseData.md)
 - [AdminAnalyticsUsersResponseDataByMfaStatusItem](docs/AdminAnalyticsUsersResponseDataByMfaStatusItem.md)
 - [AdminAnalyticsUsersResponseDataByVerificationStatusItem](docs/AdminAnalyticsUsersResponseDataByVerificationStatusItem.md)
 - [AdminAnalyticsUsersResponseDataDailyRegistrationsItem](docs/AdminAnalyticsUsersResponseDataDailyRegistrationsItem.md)
 - [AdminAuditLogsActionsResponse](docs/AdminAuditLogsActionsResponse.md)
 - [AdminAuditLogsExportResponse](docs/AdminAuditLogsExportResponse.md)
 - [AdminAuditLogsExportResponseMeta](docs/AdminAuditLogsExportResponseMeta.md)
 - [AdminAuditLogsGetResponse](docs/AdminAuditLogsGetResponse.md)
 - [AdminAuditLogsListResponse](docs/AdminAuditLogsListResponse.md)
 - [AdminAuditLogsRetentionResponse](docs/AdminAuditLogsRetentionResponse.md)
 - [AdminAuditLogsRetentionResponseData](docs/AdminAuditLogsRetentionResponseData.md)
 - [AdminAuditLogsStatsResponse](docs/AdminAuditLogsStatsResponse.md)
 - [AdminAuditLogsStatsResponseData](docs/AdminAuditLogsStatsResponseData.md)
 - [AdminAuditLogsStatsResponseDataPeriod](docs/AdminAuditLogsStatsResponseDataPeriod.md)
 - [AdminClientTokensRevokeAllResponse](docs/AdminClientTokensRevokeAllResponse.md)
 - [AdminEmailTemplatesListResponse](docs/AdminEmailTemplatesListResponse.md)
 - [AdminEmailTemplatesPreviewResponse](docs/AdminEmailTemplatesPreviewResponse.md)
 - [AdminEmailTemplatesVariablesResponse](docs/AdminEmailTemplatesVariablesResponse.md)
 - [AdminGroupsCreateResponse](docs/AdminGroupsCreateResponse.md)
 - [AdminGroupsGetMembersResponse](docs/AdminGroupsGetMembersResponse.md)
 - [AdminGroupsGetMembersResponseDataItem](docs/AdminGroupsGetMembersResponseDataItem.md)
 - [AdminGroupsGetResponse](docs/AdminGroupsGetResponse.md)
 - [AdminGroupsGroupsGetRolesResponse](docs/AdminGroupsGroupsGetRolesResponse.md)
 - [AdminGroupsGroupsGetRolesResponseDataItem](docs/AdminGroupsGroupsGetRolesResponseDataItem.md)
 - [AdminGroupsListResponse](docs/AdminGroupsListResponse.md)
 - [AdminIdentitiesLegacySamlRelinkRequest](docs/AdminIdentitiesLegacySamlRelinkRequest.md)
 - [AdminIdentitiesLegacySamlRelinkResponse](docs/AdminIdentitiesLegacySamlRelinkResponse.md)
 - [AdminIdentitiesLegacySamlRelinkResponseData](docs/AdminIdentitiesLegacySamlRelinkResponseData.md)
 - [AdminIdentitiesLegacySamlReportResponse](docs/AdminIdentitiesLegacySamlReportResponse.md)
 - [AdminIdentitiesLegacySamlReportResponseData](docs/AdminIdentitiesLegacySamlReportResponseData.md)
 - [AdminIdentitiesLegacySamlReportResponseDataUsersItem](docs/AdminIdentitiesLegacySamlReportResponseDataUsersItem.md)
 - [AdminIdentitiesLinkRequest](docs/AdminIdentitiesLinkRequest.md)
 - [AdminIdentitiesListResponse](docs/AdminIdentitiesListResponse.md)
 - [AdminIdentitiesListResponseData](docs/AdminIdentitiesListResponseData.md)
 - [AdminIdentitiesListResponseDataBindingsItem](docs/AdminIdentitiesListResponseDataBindingsItem.md)
 - [AdminMcpServersCreateResponse](docs/AdminMcpServersCreateResponse.md)
 - [AdminMcpServersGetResponse](docs/AdminMcpServersGetResponse.md)
 - [AdminMcpServersListResponse](docs/AdminMcpServersListResponse.md)
 - [AdminMcpServersListResponseMeta](docs/AdminMcpServersListResponseMeta.md)
 - [AdminOrgInvitationsCreateResponse](docs/AdminOrgInvitationsCreateResponse.md)
 - [AdminOrgInvitationsListResponse](docs/AdminOrgInvitationsListResponse.md)
 - [AdminOrgMembersAddResponse](docs/AdminOrgMembersAddResponse.md)
 - [AdminOrgMembersListResponse](docs/AdminOrgMembersListResponse.md)
 - [AdminOrgRolesCreateResponse](docs/AdminOrgRolesCreateResponse.md)
 - [AdminOrgRolesListResponse](docs/AdminOrgRolesListResponse.md)
 - [AdminOrganizationsCreateResponse](docs/AdminOrganizationsCreateResponse.md)
 - [AdminOrganizationsGetResponse](docs/AdminOrganizationsGetResponse.md)
 - [AdminOrganizationsListResponse](docs/AdminOrganizationsListResponse.md)
 - [AdminPermissionsCreateResponse](docs/AdminPermissionsCreateResponse.md)
 - [AdminPermissionsGetResponse](docs/AdminPermissionsGetResponse.md)
 - [AdminPermissionsListResponse](docs/AdminPermissionsListResponse.md)
 - [AdminPermissionsUsageResponse](docs/AdminPermissionsUsageResponse.md)
 - [AdminPermissionsUsageResponseData](docs/AdminPermissionsUsageResponseData.md)
 - [AdminRolesCreateResponse](docs/AdminRolesCreateResponse.md)
 - [AdminRolesGetPermissionsResponse](docs/AdminRolesGetPermissionsResponse.md)
 - [AdminRolesGetPermissionsResponseDataItem](docs/AdminRolesGetPermissionsResponseDataItem.md)
 - [AdminRolesGetResponse](docs/AdminRolesGetResponse.md)
 - [AdminRolesGetUsersResponse](docs/AdminRolesGetUsersResponse.md)
 - [AdminRolesListResponse](docs/AdminRolesListResponse.md)
 - [AdminSandboxListResponse](docs/AdminSandboxListResponse.md)
 - [AdminSandboxSpawnRequest](docs/AdminSandboxSpawnRequest.md)
 - [AdminSandboxSpawnResponse](docs/AdminSandboxSpawnResponse.md)
 - [AdminScopesCreateResponse](docs/AdminScopesCreateResponse.md)
 - [AdminScopesListResponse](docs/AdminScopesListResponse.md)
 - [AdminScopesListResponseMeta](docs/AdminScopesListResponseMeta.md)
 - [AdminSessionsCountResponse](docs/AdminSessionsCountResponse.md)
 - [AdminSessionsCountResponseData](docs/AdminSessionsCountResponseData.md)
 - [AdminSessionsListResponse](docs/AdminSessionsListResponse.md)
 - [AdminSessionsRevokeAllRequest](docs/AdminSessionsRevokeAllRequest.md)
 - [AdminSessionsRevokeAllResponse](docs/AdminSessionsRevokeAllResponse.md)
 - [AdminSessionsRevokeResponse](docs/AdminSessionsRevokeResponse.md)
 - [AdminSessionsStatsResponse](docs/AdminSessionsStatsResponse.md)
 - [AdminSessionsStatsResponseData](docs/AdminSessionsStatsResponseData.md)
 - [AdminSettingsAllResponse](docs/AdminSettingsAllResponse.md)
 - [AdminSettingsAllResponseData](docs/AdminSettingsAllResponseData.md)
 - [AdminSettingsAllResponseDataGeneral](docs/AdminSettingsAllResponseDataGeneral.md)
 - [AdminSettingsAllResponseDataSecurity](docs/AdminSettingsAllResponseDataSecurity.md)
 - [AdminSettingsAuthenticationGetResponse](docs/AdminSettingsAuthenticationGetResponse.md)
 - [AdminSettingsBrandingGetResponse](docs/AdminSettingsBrandingGetResponse.md)
 - [AdminSettingsEmailGetResponse](docs/AdminSettingsEmailGetResponse.md)
 - [AdminSettingsGeneralGetResponse](docs/AdminSettingsGeneralGetResponse.md)
 - [AdminSettingsGeneralGetResponseData](docs/AdminSettingsGeneralGetResponseData.md)
 - [AdminSettingsScimGetResponse](docs/AdminSettingsScimGetResponse.md)
 - [AdminSettingsSecurityGetResponse](docs/AdminSettingsSecurityGetResponse.md)
 - [AdminSocialProvidersAvailableResponse](docs/AdminSocialProvidersAvailableResponse.md)
 - [AdminSocialProvidersAvailableResponseDataItem](docs/AdminSocialProvidersAvailableResponseDataItem.md)
 - [AdminSocialProvidersCallbackUrlsResponse](docs/AdminSocialProvidersCallbackUrlsResponse.md)
 - [AdminSocialProvidersCreateResponse](docs/AdminSocialProvidersCreateResponse.md)
 - [AdminSocialProvidersGetResponse](docs/AdminSocialProvidersGetResponse.md)
 - [AdminSocialProvidersListResponse](docs/AdminSocialProvidersListResponse.md)
 - [AdminTenantGetResponse](docs/AdminTenantGetResponse.md)
 - [AdminTokensListResponse](docs/AdminTokensListResponse.md)
 - [AdminTokensRevokeResponse](docs/AdminTokensRevokeResponse.md)
 - [AdminUserSessionsListResponse](docs/AdminUserSessionsListResponse.md)
 - [AdminUserSessionsRevokeAllResponse](docs/AdminUserSessionsRevokeAllResponse.md)
 - [AdminUserSessionsRevokePostResponse](docs/AdminUserSessionsRevokePostResponse.md)
 - [AdminUserTokensRevokeAllResponse](docs/AdminUserTokensRevokeAllResponse.md)
 - [AdminUserTokensRevokePostResponse](docs/AdminUserTokensRevokePostResponse.md)
 - [AdminWebhooksCreateResponse](docs/AdminWebhooksCreateResponse.md)
 - [AdminWebhooksCreateResponseData](docs/AdminWebhooksCreateResponseData.md)
 - [AdminWebhooksDeliveriesListResponse](docs/AdminWebhooksDeliveriesListResponse.md)
 - [AdminWebhooksDeliveriesListResponseMeta](docs/AdminWebhooksDeliveriesListResponseMeta.md)
 - [AdminWebhooksDeliveryReplayResponse](docs/AdminWebhooksDeliveryReplayResponse.md)
 - [AdminWebhooksDeliveryShowResponse](docs/AdminWebhooksDeliveryShowResponse.md)
 - [AdminWebhooksDeliveryShowResponseData](docs/AdminWebhooksDeliveryShowResponseData.md)
 - [AdminWebhooksDeliveryShowResponseData1AttemptsItem](docs/AdminWebhooksDeliveryShowResponseData1AttemptsItem.md)
 - [AdminWebhooksEventsResponse](docs/AdminWebhooksEventsResponse.md)
 - [AdminWebhooksGetResponse](docs/AdminWebhooksGetResponse.md)
 - [AdminWebhooksListResponse](docs/AdminWebhooksListResponse.md)
 - [AdminWebhooksRotateSecretResponse](docs/AdminWebhooksRotateSecretResponse.md)
 - [AdminWebhooksRotateSecretResponseData](docs/AdminWebhooksRotateSecretResponseData.md)
 - [AdminWebhooksTestResponse](docs/AdminWebhooksTestResponse.md)
 - [AdminWebhooksTunnelStartResponse](docs/AdminWebhooksTunnelStartResponse.md)
 - [AdminWebhooksTunnelStartResponseData](docs/AdminWebhooksTunnelStartResponseData.md)
 - [AdminWebhooksWebhooksDisableResponse](docs/AdminWebhooksWebhooksDisableResponse.md)
 - [AdminWebhooksWebhooksEnableResponse](docs/AdminWebhooksWebhooksEnableResponse.md)
 - [AgentOutboundConnection](docs/AgentOutboundConnection.md)
 - [ApproveRequestRequest](docs/ApproveRequestRequest.md)
 - [ApproveRequestResponse](docs/ApproveRequestResponse.md)
 - [AskRequest](docs/AskRequest.md)
 - [AskResponse](docs/AskResponse.md)
 - [AttestRequest](docs/AttestRequest.md)
 - [AttestResponse](docs/AttestResponse.md)
 - [AttestResponseIdentity](docs/AttestResponseIdentity.md)
 - [AuditLogEntry](docs/AuditLogEntry.md)
 - [AuthZenDecision](docs/AuthZenDecision.md)
 - [AuthenticationSettings](docs/AuthenticationSettings.md)
 - [AuthenticationSettingsMfaPolicy](docs/AuthenticationSettingsMfaPolicy.md)
 - [AuthenticationSettingsPasskeys](docs/AuthenticationSettingsPasskeys.md)
 - [AuthenticationSettingsPasswordPolicy](docs/AuthenticationSettingsPasswordPolicy.md)
 - [AuthenticationSettingsPasswordRotationPolicy](docs/AuthenticationSettingsPasswordRotationPolicy.md)
 - [AuthenticationSettingsProgressiveProfiling](docs/AuthenticationSettingsProgressiveProfiling.md)
 - [AuthorizationServerMetadata](docs/AuthorizationServerMetadata.md)
 - [AuthorizeMcpRequest](docs/AuthorizeMcpRequest.md)
 - [AuthorizeMcpResponse](docs/AuthorizeMcpResponse.md)
 - [BackchannelAuthorizeResponse](docs/BackchannelAuthorizeResponse.md)
 - [BlockUserResponse](docs/BlockUserResponse.md)
 - [BrandingSettings](docs/BrandingSettings.md)
 - [CheckAbacBulkResponse](docs/CheckAbacBulkResponse.md)
 - [CheckAbacBulkResponseResultsItem](docs/CheckAbacBulkResponseResultsItem.md)
 - [CheckAbacResponse](docs/CheckAbacResponse.md)
 - [CheckAbacResponseMatchedPoliciesItem](docs/CheckAbacResponseMatchedPoliciesItem.md)
 - [CheckAnyPermissionResponse](docs/CheckAnyPermissionResponse.md)
 - [CheckPermissionResponse](docs/CheckPermissionResponse.md)
 - [CheckPermissionsBulkResponse](docs/CheckPermissionsBulkResponse.md)
 - [CheckRelationResponse](docs/CheckRelationResponse.md)
 - [CheckRelationScopedResponse](docs/CheckRelationScopedResponse.md)
 - [CompleteTaskResponse](docs/CompleteTaskResponse.md)
 - [CreateApprovalRequest](docs/CreateApprovalRequest.md)
 - [CreateApprovalResponse](docs/CreateApprovalResponse.md)
 - [CreateApprovalResponse202](docs/CreateApprovalResponse202.md)
 - [CreateClientResponse](docs/CreateClientResponse.md)
 - [CreateClientResponseData](docs/CreateClientResponseData.md)
 - [CreateMfaChallengeRequest](docs/CreateMfaChallengeRequest.md)
 - [CreateTaskRequest](docs/CreateTaskRequest.md)
 - [CreateTaskResponse](docs/CreateTaskResponse.md)
 - [CreateUserResponse](docs/CreateUserResponse.md)
 - [DeleteUserAuthenticatorResponse](docs/DeleteUserAuthenticatorResponse.md)
 - [DeleteUserResponse](docs/DeleteUserResponse.md)
 - [DenyRequestRequest](docs/DenyRequestRequest.md)
 - [DenyRequestResponse](docs/DenyRequestResponse.md)
 - [DeviceAuthorizationResponse](docs/DeviceAuthorizationResponse.md)
 - [EmailEnrollmentStarted](docs/EmailEnrollmentStarted.md)
 - [EmailTemplate](docs/EmailTemplate.md)
 - [EnrollAuthenticator201Response](docs/EnrollAuthenticator201Response.md)
 - [EnrollAuthenticatorRequest](docs/EnrollAuthenticatorRequest.md)
 - [EvaluateBatchResponse](docs/EvaluateBatchResponse.md)
 - [EvaluateResponseContext](docs/EvaluateResponseContext.md)
 - [EvaluateResponseContextReasonAdmin](docs/EvaluateResponseContextReasonAdmin.md)
 - [ExpandRelationRequest](docs/ExpandRelationRequest.md)
 - [ExpandRelationResponse](docs/ExpandRelationResponse.md)
 - [ExpandRelationResponseTree](docs/ExpandRelationResponseTree.md)
 - [GenerateRecoveryCodesResponse](docs/GenerateRecoveryCodesResponse.md)
 - [GetAgentCardResponseCapabilities](docs/GetAgentCardResponseCapabilities.md)
 - [GetAgentCardResponseProvider](docs/GetAgentCardResponseProvider.md)
 - [GetAgentCardResponseSignaturesItem](docs/GetAgentCardResponseSignaturesItem.md)
 - [GetAgentCardResponseSkillsItem](docs/GetAgentCardResponseSkillsItem.md)
 - [GetApprovalStatusResponse](docs/GetApprovalStatusResponse.md)
 - [GetApprovalStatusResponseApprovedBy](docs/GetApprovalStatusResponseApprovedBy.md)
 - [GetClientResponse](docs/GetClientResponse.md)
 - [GetConnectionTokenRequest](docs/GetConnectionTokenRequest.md)
 - [GetConnectionTokenResponse](docs/GetConnectionTokenResponse.md)
 - [GetCurrentAgentResponse](docs/GetCurrentAgentResponse.md)
 - [GetCurrentAgentResponseIdentity](docs/GetCurrentAgentResponseIdentity.md)
 - [GetCurrentAgentResponseWorkspace](docs/GetCurrentAgentResponseWorkspace.md)
 - [GetIssuerMetadataResponse](docs/GetIssuerMetadataResponse.md)
 - [GetJwksResponseKeysItem](docs/GetJwksResponseKeysItem.md)
 - [GetMeResponse](docs/GetMeResponse.md)
 - [GetMfaCoverageReportResponse](docs/GetMfaCoverageReportResponse.md)
 - [GetMfaPolicyResponse](docs/GetMfaPolicyResponse.md)
 - [GetMyAttributesResponse](docs/GetMyAttributesResponse.md)
 - [GetMyAttributesResponseAttributes](docs/GetMyAttributesResponseAttributes.md)
 - [GetProtectedResourceMetadataRoot200Response](docs/GetProtectedResourceMetadataRoot200Response.md)
 - [GetProtectedResourceMetadataRootResponse1ResourcesItem](docs/GetProtectedResourceMetadataRootResponse1ResourcesItem.md)
 - [GetRecoveryCodeStatusResponse](docs/GetRecoveryCodeStatusResponse.md)
 - [GetRequestStatusResponse](docs/GetRequestStatusResponse.md)
 - [GetRequestTokenResponse](docs/GetRequestTokenResponse.md)
 - [GetResourceAttributesResponse](docs/GetResourceAttributesResponse.md)
 - [GetResourceAttributesResponseAttributes](docs/GetResourceAttributesResponseAttributes.md)
 - [GetServerChallengeResponse](docs/GetServerChallengeResponse.md)
 - [GetServerResponse](docs/GetServerResponse.md)
 - [GetServerResponseDiscovery](docs/GetServerResponseDiscovery.md)
 - [GetSsfConfigurationResponse](docs/GetSsfConfigurationResponse.md)
 - [GetSsfConfigurationResponseAuthorizationSchemesItem](docs/GetSsfConfigurationResponseAuthorizationSchemesItem.md)
 - [GetStreamConfig200Response](docs/GetStreamConfig200Response.md)
 - [GetUserResponse](docs/GetUserResponse.md)
 - [Group](docs/Group.md)
 - [GroupRef](docs/GroupRef.md)
 - [IntrospectResponse](docs/IntrospectResponse.md)
 - [IntrospectResponseAud](docs/IntrospectResponseAud.md)
 - [IssueAgentTokenRequest](docs/IssueAgentTokenRequest.md)
 - [IssueAgentTokenResponse](docs/IssueAgentTokenResponse.md)
 - [IssueDelegateTokenRequest](docs/IssueDelegateTokenRequest.md)
 - [IssueDelegateTokenResponse](docs/IssueDelegateTokenResponse.md)
 - [IssuePlatformTokenRequest](docs/IssuePlatformTokenRequest.md)
 - [IssuePlatformTokenResponse](docs/IssuePlatformTokenResponse.md)
 - [IssueResourceTokenRequest](docs/IssueResourceTokenRequest.md)
 - [IssueResourceTokenResponse](docs/IssueResourceTokenResponse.md)
 - [IssueTemporaryAccessCodeRequest](docs/IssueTemporaryAccessCodeRequest.md)
 - [IssueTemporaryAccessCodeResponse](docs/IssueTemporaryAccessCodeResponse.md)
 - [IssueTemporaryAccessCodeResponseData](docs/IssueTemporaryAccessCodeResponseData.md)
 - [JsonWebKeySet](docs/JsonWebKeySet.md)
 - [JwksResponse](docs/JwksResponse.md)
 - [ListAttributeDefinitionsResponse](docs/ListAttributeDefinitionsResponse.md)
 - [ListClientScopesResponse](docs/ListClientScopesResponse.md)
 - [ListClientsResponse](docs/ListClientsResponse.md)
 - [ListConnectionsResponse](docs/ListConnectionsResponse.md)
 - [ListConnectionsResponseAgent](docs/ListConnectionsResponseAgent.md)
 - [ListMyAuthenticatorsResponse](docs/ListMyAuthenticatorsResponse.md)
 - [ListMyAuthenticatorsResponseRecoveryCodes](docs/ListMyAuthenticatorsResponseRecoveryCodes.md)
 - [ListPendingRequestsResponse](docs/ListPendingRequestsResponse.md)
 - [ListPermissionsResponse](docs/ListPermissionsResponse.md)
 - [ListPermissionsResponseDataItem](docs/ListPermissionsResponseDataItem.md)
 - [ListPermissionsResponsePermissionsItem](docs/ListPermissionsResponsePermissionsItem.md)
 - [ListServersResponse](docs/ListServersResponse.md)
 - [ListServersResponseDataItem](docs/ListServersResponseDataItem.md)
 - [ListTrustedDevicesResponse](docs/ListTrustedDevicesResponse.md)
 - [ListTrustedDevicesResponseDataItem](docs/ListTrustedDevicesResponseDataItem.md)
 - [ListUserAuthenticatorsResponse](docs/ListUserAuthenticatorsResponse.md)
 - [ListUsersResponse](docs/ListUsersResponse.md)
 - [MarkUserVerifiedResponse](docs/MarkUserVerifiedResponse.md)
 - [McpServer](docs/McpServer.md)
 - [McpServerPosture](docs/McpServerPosture.md)
 - [McpServerPostureChecksInner](docs/McpServerPostureChecksInner.md)
 - [MessageResponse](docs/MessageResponse.md)
 - [MfaAuthenticator](docs/MfaAuthenticator.md)
 - [MfaAuthenticatorLastUsedContext](docs/MfaAuthenticatorLastUsedContext.md)
 - [MfaChallenge](docs/MfaChallenge.md)
 - [MfaChallengeAlternativesInner](docs/MfaChallengeAlternativesInner.md)
 - [MfaChallengeAuthenticator](docs/MfaChallengeAuthenticator.md)
 - [MfaCoverageReport](docs/MfaCoverageReport.md)
 - [MfaPolicy](docs/MfaPolicy.md)
 - [OAuthAccessToken](docs/OAuthAccessToken.md)
 - [OAuthClient](docs/OAuthClient.md)
 - [OAuthClientSecretIssued](docs/OAuthClientSecretIssued.md)
 - [OAuthScope](docs/OAuthScope.md)
 - [OpenIdConfiguration](docs/OpenIdConfiguration.md)
 - [Organization](docs/Organization.md)
 - [OrganizationInvitation](docs/OrganizationInvitation.md)
 - [OrganizationInvitationRole](docs/OrganizationInvitationRole.md)
 - [OrganizationMember](docs/OrganizationMember.md)
 - [OrganizationMemberRole](docs/OrganizationMemberRole.md)
 - [OrganizationRole](docs/OrganizationRole.md)
 - [PaginationMeta](docs/PaginationMeta.md)
 - [ParResponse](docs/ParResponse.md)
 - [PasskeyEnrollmentStarted](docs/PasskeyEnrollmentStarted.md)
 - [Permission](docs/Permission.md)
 - [ProtectedResourceList](docs/ProtectedResourceList.md)
 - [ProtectedResourceMetadata](docs/ProtectedResourceMetadata.md)
 - [PushEnrollmentStarted](docs/PushEnrollmentStarted.md)
 - [PutAbacAttributesUpdateResponse](docs/PutAbacAttributesUpdateResponse.md)
 - [PutAbacPoliciesUpdateResponse](docs/PutAbacPoliciesUpdateResponse.md)
 - [PutAdminAgentsUpdateRequest](docs/PutAdminAgentsUpdateRequest.md)
 - [PutAdminAgentsUpdateResponse](docs/PutAdminAgentsUpdateResponse.md)
 - [PutAdminOrgMembersUpdateResponse](docs/PutAdminOrgMembersUpdateResponse.md)
 - [PutAdminSettingsAuthenticationUpdateResponse](docs/PutAdminSettingsAuthenticationUpdateResponse.md)
 - [PutAdminSettingsBrandingUpdateResponse](docs/PutAdminSettingsBrandingUpdateResponse.md)
 - [PutAdminSettingsEmailUpdateResponse](docs/PutAdminSettingsEmailUpdateResponse.md)
 - [PutAdminSettingsGeneralUpdateResponse](docs/PutAdminSettingsGeneralUpdateResponse.md)
 - [PutAdminSettingsGeneralUpdateResponseData](docs/PutAdminSettingsGeneralUpdateResponseData.md)
 - [PutAdminSettingsScimUpdateResponse](docs/PutAdminSettingsScimUpdateResponse.md)
 - [PutAdminSettingsSecurityUpdateResponse](docs/PutAdminSettingsSecurityUpdateResponse.md)
 - [PutAdminTenantUpdateResponse](docs/PutAdminTenantUpdateResponse.md)
 - [PutAdminWebhooksUpdateResponse](docs/PutAdminWebhooksUpdateResponse.md)
 - [RedactedSecret](docs/RedactedSecret.md)
 - [RegisterAgentResponse](docs/RegisterAgentResponse.md)
 - [RegisterClientResponse](docs/RegisterClientResponse.md)
 - [RegisteredClientMetadata](docs/RegisteredClientMetadata.md)
 - [RemoveUserGroupResponse](docs/RemoveUserGroupResponse.md)
 - [RemoveUserPermissionResponse](docs/RemoveUserPermissionResponse.md)
 - [RemoveUserRoleResponse](docs/RemoveUserRoleResponse.md)
 - [RequestPermissionRequest](docs/RequestPermissionRequest.md)
 - [RequestPermissionResponse](docs/RequestPermissionResponse.md)
 - [RevokeAgentTokenRequest](docs/RevokeAgentTokenRequest.md)
 - [RevokeAgentTokenResponse](docs/RevokeAgentTokenResponse.md)
 - [Role](docs/Role.md)
 - [RolePermissionsInner](docs/RolePermissionsInner.md)
 - [RoleRef](docs/RoleRef.md)
 - [RotateClientSecretResponse](docs/RotateClientSecretResponse.md)
 - [RotateClientSecretResponseData](docs/RotateClientSecretResponseData.md)
 - [SandboxTenant](docs/SandboxTenant.md)
 - [ScimSettings](docs/ScimSettings.md)
 - [ScimSettingsInbound](docs/ScimSettingsInbound.md)
 - [ScimSettingsInboundProtectedAttributes](docs/ScimSettingsInboundProtectedAttributes.md)
 - [ScimSettingsOutbound](docs/ScimSettingsOutbound.md)
 - [SendUserVerificationEmailResponse](docs/SendUserVerificationEmailResponse.md)
 - [SetClientScopesResponse](docs/SetClientScopesResponse.md)
 - [SetResourceAttributeResponse](docs/SetResourceAttributeResponse.md)
 - [SetUserAttributeResponse](docs/SetUserAttributeResponse.md)
 - [SetUserAttributeResponseData](docs/SetUserAttributeResponseData.md)
 - [SetUserPasswordPostResponse](docs/SetUserPasswordPostResponse.md)
 - [SignedAgentCard](docs/SignedAgentCard.md)
 - [SingleServerMetadata](docs/SingleServerMetadata.md)
 - [SmsEnrollmentStarted](docs/SmsEnrollmentStarted.md)
 - [SocialLoginProvider](docs/SocialLoginProvider.md)
 - [SsfStream](docs/SsfStream.md)
 - [SsfStreamDelivery](docs/SsfStreamDelivery.md)
 - [SsfStreamList](docs/SsfStreamList.md)
 - [SubmitLoginJsonResponse](docs/SubmitLoginJsonResponse.md)
 - [TenantProfile](docs/TenantProfile.md)
 - [TokenResponse](docs/TokenResponse.md)
 - [TotpEnrollmentStarted](docs/TotpEnrollmentStarted.md)
 - [TriggerUserPasswordResetResponse](docs/TriggerUserPasswordResetResponse.md)
 - [UnblockUserResponse](docs/UnblockUserResponse.md)
 - [UpdateAuthenticatorRequest](docs/UpdateAuthenticatorRequest.md)
 - [UpdateClientResponse](docs/UpdateClientResponse.md)
 - [UpdateMfaPolicyResponse](docs/UpdateMfaPolicyResponse.md)
 - [UpdateUserGroupsResponse](docs/UpdateUserGroupsResponse.md)
 - [UpdateUserResponse](docs/UpdateUserResponse.md)
 - [UpdateUserRolesResponse](docs/UpdateUserRolesResponse.md)
 - [User](docs/User.md)
 - [UserRef](docs/UserRef.md)
 - [UserSession](docs/UserSession.md)
 - [UserinfoResponse](docs/UserinfoResponse.md)
 - [VerifyAgentCardResponse](docs/VerifyAgentCardResponse.md)
 - [VerifyAgentCardResponseCardSummary](docs/VerifyAgentCardResponseCardSummary.md)
 - [VerifyAgentCardResponseSigner](docs/VerifyAgentCardResponseSigner.md)
 - [VerifyAuthTokenRequest](docs/VerifyAuthTokenRequest.md)
 - [VerifyAuthTokenResponse](docs/VerifyAuthTokenResponse.md)
 - [VerifyMfaChallengeRequest](docs/VerifyMfaChallengeRequest.md)
 - [VerifyResourceTokenRequest](docs/VerifyResourceTokenRequest.md)
 - [VerifyResourceTokenResponse](docs/VerifyResourceTokenResponse.md)
 - [Webhook](docs/Webhook.md)
 - [WebhookDelivery](docs/WebhookDelivery.md)
 - [WebhookDeliveryDetail](docs/WebhookDeliveryDetail.md)
 - [WebhookSecretIssued](docs/WebhookSecretIssued.md)


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

