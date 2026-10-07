> **GENERATED CLIENT — raw API coverage.** This package is generated from
> the LumoAuth OpenAPI spec (`api-clients/openapi.json`) by
> `server/scripts/sdk-codegen/`. It covers the full REST surface with typed
> models but no framework sugar. An ergonomic, hand-maintained wrapper is
> the next step — where one already exists (`@lumoauth/client` /
> `@lumoauth/backend` and friends on npm, `lumoauth` on PyPI,
> `github.com/lumoauth/lumo-auth-go`), prefer it.
> Do not edit by hand: changes are overwritten on the next regeneration.

# LumoAuthApiClient

LumoAuth REST API — authentication, authorization, agent registry,
MCP server authorization, and tenant administration. Multi-tenant:
most paths are scoped under `/orgs/{orgId}/api/v1/...`.


For more information, please visit [https://lumoauth.dev](https://lumoauth.dev).

## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

```bash
composer require lumoauth/api-client
```

From a checkout of `api-clients/` instead of Packagist, point a `path` repository at the `php/` directory:

```json
{
  "repositories": [{ "type": "path", "url": "../api-clients/php" }],
  "require": { "lumoauth/api-client": "*" }
}
```

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/LumoAuthApiClient/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $apiInstance->authorizeAgent($orgId);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->authorizeAgent: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://app.lumoauth.dev*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AAuthApi* | [**authorizeAgent**](docs/Api/AAuthApi.md#authorizeagent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page.
*AAuthApi* | [**getAgentJwks**](docs/Api/AAuthApi.md#getagentjwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint
*AAuthApi* | [**getAgentMetadata**](docs/Api/AAuthApi.md#getagentmetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
*AAuthApi* | [**getAgentMetadataById**](docs/Api/AAuthApi.md#getagentmetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata
*AAuthApi* | [**getIssuerJwks**](docs/Api/AAuthApi.md#getissuerjwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth.
*AAuthApi* | [**getIssuerMetadata**](docs/Api/AAuthApi.md#getissuermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
*AAuthApi* | [**getResourceJwks**](docs/Api/AAuthApi.md#getresourcejwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint
*AAuthApi* | [**getResourceMetadata**](docs/Api/AAuthApi.md#getresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3)
*AAuthApi* | [**getResourceMetadataById**](docs/Api/AAuthApi.md#getresourcemetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata
*AAuthApi* | [**issueAgentToken**](docs/Api/AAuthApi.md#issueagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint
*AAuthApi* | [**issueDelegateToken**](docs/Api/AAuthApi.md#issuedelegatetoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate.
*AAuthApi* | [**issuePlatformToken**](docs/Api/AAuthApi.md#issueplatformtoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token | 
*AAuthApi* | [**issueResourceToken**](docs/Api/AAuthApi.md#issueresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6)
*AAuthApi* | [**revokeAgentToken**](docs/Api/AAuthApi.md#revokeagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token.
*AAuthApi* | [**verifyAuthToken**](docs/Api/AAuthApi.md#verifyauthtoken) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint.
*AAuthApi* | [**verifyResourceToken**](docs/Api/AAuthApi.md#verifyresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens).
*AdminAbacApi* | [**abacAttributesCreate**](docs/Api/AdminAbacApi.md#abacattributescreate) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition
*AdminAbacApi* | [**abacAttributesDelete**](docs/Api/AdminAbacApi.md#abacattributesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition
*AdminAbacApi* | [**abacAttributesGet**](docs/Api/AdminAbacApi.md#abacattributesget) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition
*AdminAbacApi* | [**abacAttributesList**](docs/Api/AdminAbacApi.md#abacattributeslist) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions
*AdminAbacApi* | [**abacPoliciesCreate**](docs/Api/AdminAbacApi.md#abacpoliciescreate) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy
*AdminAbacApi* | [**abacPoliciesDelete**](docs/Api/AdminAbacApi.md#abacpoliciesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy
*AdminAbacApi* | [**abacPoliciesGet**](docs/Api/AdminAbacApi.md#abacpoliciesget) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy
*AdminAbacApi* | [**abacPoliciesList**](docs/Api/AdminAbacApi.md#abacpolicieslist) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies
*AdminAbacApi* | [**abacPoliciesToggle**](docs/Api/AdminAbacApi.md#abacpoliciestoggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive
*AdminAbacApi* | [**patchAbacAttributesUpdate**](docs/Api/AdminAbacApi.md#patchabacattributesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition
*AdminAbacApi* | [**patchAbacPoliciesUpdate**](docs/Api/AdminAbacApi.md#patchabacpoliciesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy
*AdminAbacApi* | [**putAbacAttributesUpdate**](docs/Api/AdminAbacApi.md#putabacattributesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition
*AdminAbacApi* | [**putAbacPoliciesUpdate**](docs/Api/AdminAbacApi.md#putabacpoliciesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy
*AdminAgentsApi* | [**adminAgentsActivate**](docs/Api/AdminAgentsApi.md#adminagentsactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent
*AdminAgentsApi* | [**adminAgentsAgentsDisable**](docs/Api/AdminAgentsApi.md#adminagentsagentsdisable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent
*AdminAgentsApi* | [**adminAgentsAgentsEnable**](docs/Api/AdminAgentsApi.md#adminagentsagentsenable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent
*AdminAgentsApi* | [**adminAgentsAgentsRotateKey**](docs/Api/AdminAgentsApi.md#adminagentsagentsrotatekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key
*AdminAgentsApi* | [**adminAgentsCreate**](docs/Api/AdminAgentsApi.md#adminagentscreate) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent
*AdminAgentsApi* | [**adminAgentsDeactivate**](docs/Api/AdminAgentsApi.md#adminagentsdeactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent
*AdminAgentsApi* | [**adminAgentsDelete**](docs/Api/AdminAgentsApi.md#adminagentsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent
*AdminAgentsApi* | [**adminAgentsGenerateToken**](docs/Api/AdminAgentsApi.md#adminagentsgeneratetoken) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent
*AdminAgentsApi* | [**adminAgentsGet**](docs/Api/AdminAgentsApi.md#adminagentsget) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId
*AdminAgentsApi* | [**adminAgentsGetScopes**](docs/Api/AdminAgentsApi.md#adminagentsgetscopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities
*AdminAgentsApi* | [**adminAgentsList**](docs/Api/AdminAgentsApi.md#adminagentslist) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant
*AdminAgentsApi* | [**adminAgentsRevokeKey**](docs/Api/AdminAgentsApi.md#adminagentsrevokekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate)
*AdminAgentsApi* | [**adminAgentsRotateCredentials**](docs/Api/AdminAgentsApi.md#adminagentsrotatecredentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials
*AdminAgentsApi* | [**adminAgentsSetScopes**](docs/Api/AdminAgentsApi.md#adminagentssetscopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities
*AdminAgentsApi* | [**patchAdminAgentsUpdate**](docs/Api/AdminAgentsApi.md#patchadminagentsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
*AdminAgentsApi* | [**putAdminAgentsUpdate**](docs/Api/AdminAgentsApi.md#putadminagentsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
*AdminAuditLogsApi* | [**adminAuditLogsActions**](docs/Api/AdminAuditLogsApi.md#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the tenant
*AdminAuditLogsApi* | [**adminAuditLogsExport**](docs/Api/AdminAuditLogsApi.md#adminauditlogsexport) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON
*AdminAuditLogsApi* | [**adminAuditLogsGet**](docs/Api/AdminAuditLogsApi.md#adminauditlogsget) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry
*AdminAuditLogsApi* | [**adminAuditLogsList**](docs/Api/AdminAuditLogsApi.md#adminauditlogslist) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries
*AdminAuditLogsApi* | [**adminAuditLogsRetention**](docs/Api/AdminAuditLogsApi.md#adminauditlogsretention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
*AdminAuditLogsApi* | [**adminAuditLogsStats**](docs/Api/AdminAuditLogsApi.md#adminauditlogsstats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)
*AdminAuditLogsApi* | [**patchAdminAuditLogsRetentionUpdate**](docs/Api/AdminAuditLogsApi.md#patchadminauditlogsretentionupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
*AdminAuditLogsApi* | [**putAdminAuditLogsRetentionUpdate**](docs/Api/AdminAuditLogsApi.md#putadminauditlogsretentionupdate) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
*AdminEmailApi* | [**adminEmailTemplatesDelete**](docs/Api/AdminEmailApi.md#adminemailtemplatesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used
*AdminEmailApi* | [**adminEmailTemplatesGet**](docs/Api/AdminEmailApi.md#adminemailtemplatesget) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default)
*AdminEmailApi* | [**adminEmailTemplatesList**](docs/Api/AdminEmailApi.md#adminemailtemplateslist) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template
*AdminEmailApi* | [**adminEmailTemplatesPreview**](docs/Api/AdminEmailApi.md#adminemailtemplatespreview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data
*AdminEmailApi* | [**adminEmailTemplatesUpsert**](docs/Api/AdminEmailApi.md#adminemailtemplatesupsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type
*AdminEmailApi* | [**adminEmailTemplatesVariables**](docs/Api/AdminEmailApi.md#adminemailtemplatesvariables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type
*AdminGroupsApi* | [**adminGroupsAddMembers**](docs/Api/AdminGroupsApi.md#admingroupsaddmembers) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group
*AdminGroupsApi* | [**adminGroupsAddRole**](docs/Api/AdminGroupsApi.md#admingroupsaddrole) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group
*AdminGroupsApi* | [**adminGroupsCreate**](docs/Api/AdminGroupsApi.md#admingroupscreate) | **POST** /orgs/{orgId}/api/v1/admin/groups | Create a new group
*AdminGroupsApi* | [**adminGroupsDelete**](docs/Api/AdminGroupsApi.md#admingroupsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group
*AdminGroupsApi* | [**adminGroupsGet**](docs/Api/AdminGroupsApi.md#admingroupsget) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug
*AdminGroupsApi* | [**adminGroupsGetMembers**](docs/Api/AdminGroupsApi.md#admingroupsgetmembers) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members
*AdminGroupsApi* | [**adminGroupsGroupsGetRoles**](docs/Api/AdminGroupsApi.md#admingroupsgroupsgetroles) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles
*AdminGroupsApi* | [**adminGroupsList**](docs/Api/AdminGroupsApi.md#admingroupslist) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant
*AdminGroupsApi* | [**adminGroupsRemoveMember**](docs/Api/AdminGroupsApi.md#admingroupsremovemember) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group
*AdminGroupsApi* | [**adminGroupsRemoveRole**](docs/Api/AdminGroupsApi.md#admingroupsremoverole) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group
*AdminGroupsApi* | [**adminGroupsUpdateRoles**](docs/Api/AdminGroupsApi.md#admingroupsupdateroles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)
*AdminGroupsApi* | [**patchAdminGroupsUpdate**](docs/Api/AdminGroupsApi.md#patchadmingroupsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
*AdminGroupsApi* | [**putAdminGroupsUpdate**](docs/Api/AdminGroupsApi.md#putadmingroupsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
*AdminIdentityProvidersApi* | [**adminSocialProvidersAvailable**](docs/Api/AdminIdentityProvidersApi.md#adminsocialprovidersavailable) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types
*AdminIdentityProvidersApi* | [**adminSocialProvidersCallbackUrls**](docs/Api/AdminIdentityProvidersApi.md#adminsocialproviderscallbackurls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersCreate**](docs/Api/AdminIdentityProvidersApi.md#adminsocialproviderscreate) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersDelete**](docs/Api/AdminIdentityProvidersApi.md#adminsocialprovidersdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersDisable**](docs/Api/AdminIdentityProvidersApi.md#adminsocialprovidersdisable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersEnable**](docs/Api/AdminIdentityProvidersApi.md#adminsocialprovidersenable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersGet**](docs/Api/AdminIdentityProvidersApi.md#adminsocialprovidersget) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider
*AdminIdentityProvidersApi* | [**adminSocialProvidersList**](docs/Api/AdminIdentityProvidersApi.md#adminsocialproviderslist) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers
*AdminIdentityProvidersApi* | [**adminSocialProvidersTypes**](docs/Api/AdminIdentityProvidersApi.md#adminsocialproviderstypes) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types
*AdminIdentityProvidersApi* | [**patchAdminSocialProvidersUpdate**](docs/Api/AdminIdentityProvidersApi.md#patchadminsocialprovidersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider
*AdminIdentityProvidersApi* | [**putAdminSocialProvidersUpdate**](docs/Api/AdminIdentityProvidersApi.md#putadminsocialprovidersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider
*AdminMcpApi* | [**adminMcpServersCreate**](docs/Api/AdminMcpApi.md#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
*AdminMcpApi* | [**adminMcpServersDelete**](docs/Api/AdminMcpApi.md#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
*AdminMcpApi* | [**adminMcpServersGet**](docs/Api/AdminMcpApi.md#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
*AdminMcpApi* | [**adminMcpServersList**](docs/Api/AdminMcpApi.md#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers
*AdminMfaApi* | [**deleteUserAuthenticator**](docs/Api/AdminMfaApi.md#deleteuserauthenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user&#39;s authenticators
*AdminMfaApi* | [**getMfaCoverageReport**](docs/Api/AdminMfaApi.md#getmfacoveragereport) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage
*AdminMfaApi* | [**getMfaPolicy**](docs/Api/AdminMfaApi.md#getmfapolicy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy
*AdminMfaApi* | [**issueTemporaryAccessCode**](docs/Api/AdminMfaApi.md#issuetemporaryaccesscode) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code
*AdminMfaApi* | [**listUserAuthenticators**](docs/Api/AdminMfaApi.md#listuserauthenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user&#39;s authenticators
*AdminMfaApi* | [**updateMfaPolicy**](docs/Api/AdminMfaApi.md#updatemfapolicy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy
*AdminOAuthClientsApi* | [**createClient**](docs/Api/AdminOAuthClientsApi.md#createclient) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client
*AdminOAuthClientsApi* | [**deleteClient**](docs/Api/AdminOAuthClientsApi.md#deleteclient) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client
*AdminOAuthClientsApi* | [**disableClient**](docs/Api/AdminOAuthClientsApi.md#disableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client
*AdminOAuthClientsApi* | [**enableClient**](docs/Api/AdminOAuthClientsApi.md#enableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client
*AdminOAuthClientsApi* | [**getClient**](docs/Api/AdminOAuthClientsApi.md#getclient) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client
*AdminOAuthClientsApi* | [**listClientScopes**](docs/Api/AdminOAuthClientsApi.md#listclientscopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client
*AdminOAuthClientsApi* | [**listClients**](docs/Api/AdminOAuthClientsApi.md#listclients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients
*AdminOAuthClientsApi* | [**patchClient**](docs/Api/AdminOAuthClientsApi.md#patchclient) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client
*AdminOAuthClientsApi* | [**rotateClientSecret**](docs/Api/AdminOAuthClientsApi.md#rotateclientsecret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret
*AdminOAuthClientsApi* | [**setClientScopes**](docs/Api/AdminOAuthClientsApi.md#setclientscopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client
*AdminOAuthClientsApi* | [**updateClient**](docs/Api/AdminOAuthClientsApi.md#updateclient) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client
*AdminOrganizationsApi* | [**adminOrgInvitationsCreate**](docs/Api/AdminOrganizationsApi.md#adminorginvitationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization
*AdminOrganizationsApi* | [**adminOrgInvitationsList**](docs/Api/AdminOrganizationsApi.md#adminorginvitationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations
*AdminOrganizationsApi* | [**adminOrgInvitationsResend**](docs/Api/AdminOrganizationsApi.md#adminorginvitationsresend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation
*AdminOrganizationsApi* | [**adminOrgInvitationsRevoke**](docs/Api/AdminOrganizationsApi.md#adminorginvitationsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation
*AdminOrganizationsApi* | [**adminOrgMembersAdd**](docs/Api/AdminOrganizationsApi.md#adminorgmembersadd) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization
*AdminOrganizationsApi* | [**adminOrgMembersList**](docs/Api/AdminOrganizationsApi.md#adminorgmemberslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members
*AdminOrganizationsApi* | [**adminOrgMembersRemove**](docs/Api/AdminOrganizationsApi.md#adminorgmembersremove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization
*AdminOrganizationsApi* | [**adminOrgRolesCreate**](docs/Api/AdminOrganizationsApi.md#adminorgrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role
*AdminOrganizationsApi* | [**adminOrgRolesDelete**](docs/Api/AdminOrganizationsApi.md#adminorgrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role
*AdminOrganizationsApi* | [**adminOrgRolesList**](docs/Api/AdminOrganizationsApi.md#adminorgroleslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles
*AdminOrganizationsApi* | [**adminOrganizationsCreate**](docs/Api/AdminOrganizationsApi.md#adminorganizationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization
*AdminOrganizationsApi* | [**adminOrganizationsDelete**](docs/Api/AdminOrganizationsApi.md#adminorganizationsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization
*AdminOrganizationsApi* | [**adminOrganizationsGet**](docs/Api/AdminOrganizationsApi.md#adminorganizationsget) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization
*AdminOrganizationsApi* | [**adminOrganizationsList**](docs/Api/AdminOrganizationsApi.md#adminorganizationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations
*AdminOrganizationsApi* | [**patchAdminOrgMembersUpdate**](docs/Api/AdminOrganizationsApi.md#patchadminorgmembersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
*AdminOrganizationsApi* | [**patchAdminOrgRolesUpdate**](docs/Api/AdminOrganizationsApi.md#patchadminorgrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
*AdminOrganizationsApi* | [**patchAdminOrganizationsUpdate**](docs/Api/AdminOrganizationsApi.md#patchadminorganizationsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization
*AdminOrganizationsApi* | [**putAdminOrgMembersUpdate**](docs/Api/AdminOrganizationsApi.md#putadminorgmembersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
*AdminOrganizationsApi* | [**putAdminOrgRolesUpdate**](docs/Api/AdminOrganizationsApi.md#putadminorgrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
*AdminOrganizationsApi* | [**putAdminOrganizationsUpdate**](docs/Api/AdminOrganizationsApi.md#putadminorganizationsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization
*AdminPermissionsApi* | [**adminPermissionsCreate**](docs/Api/AdminPermissionsApi.md#adminpermissionscreate) | **POST** /orgs/{orgId}/api/v1/admin/permissions | Create a custom permission for the tenant
*AdminPermissionsApi* | [**adminPermissionsDelete**](docs/Api/AdminPermissionsApi.md#adminpermissionsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Delete a custom permission
*AdminPermissionsApi* | [**adminPermissionsGet**](docs/Api/AdminPermissionsApi.md#adminpermissionsget) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Get a single permission
*AdminPermissionsApi* | [**adminPermissionsList**](docs/Api/AdminPermissionsApi.md#adminpermissionslist) | **GET** /orgs/{orgId}/api/v1/admin/permissions | List all available permissions for the tenant
*AdminPermissionsApi* | [**adminPermissionsUpdate**](docs/Api/AdminPermissionsApi.md#adminpermissionsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Update a permission
*AdminPermissionsApi* | [**adminPermissionsUsage**](docs/Api/AdminPermissionsApi.md#adminpermissionsusage) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId}/usage | Get permission usage (roles assigned to this permission)
*AdminPermissionsApi* | [**adminScopesCreate**](docs/Api/AdminPermissionsApi.md#adminscopescreate) | **POST** /orgs/{orgId}/api/v1/admin/scopes | Create a custom OAuth scope
*AdminPermissionsApi* | [**adminScopesDelete**](docs/Api/AdminPermissionsApi.md#adminscopesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/scopes/{scopeId} | Delete a custom OAuth scope
*AdminPermissionsApi* | [**adminScopesList**](docs/Api/AdminPermissionsApi.md#adminscopeslist) | **GET** /orgs/{orgId}/api/v1/admin/scopes | List OAuth scopes
*AdminRolesApi* | [**adminRolesAddPermissions**](docs/Api/AdminRolesApi.md#adminrolesaddpermissions) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Add permission(s) to a role
*AdminRolesApi* | [**adminRolesAddUser**](docs/Api/AdminRolesApi.md#adminrolesadduser) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Assign a user to a role
*AdminRolesApi* | [**adminRolesCreate**](docs/Api/AdminRolesApi.md#adminrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/roles | Create a new role
*AdminRolesApi* | [**adminRolesDelete**](docs/Api/AdminRolesApi.md#adminrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Delete a role
*AdminRolesApi* | [**adminRolesGet**](docs/Api/AdminRolesApi.md#adminrolesget) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Get a single role by ID or slug
*AdminRolesApi* | [**adminRolesGetPermissions**](docs/Api/AdminRolesApi.md#adminrolesgetpermissions) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Get role permissions
*AdminRolesApi* | [**adminRolesGetUsers**](docs/Api/AdminRolesApi.md#adminrolesgetusers) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Get users assigned to a role
*AdminRolesApi* | [**adminRolesList**](docs/Api/AdminRolesApi.md#adminroleslist) | **GET** /orgs/{orgId}/api/v1/admin/roles | List all roles in the tenant
*AdminRolesApi* | [**adminRolesRemovePermission**](docs/Api/AdminRolesApi.md#adminrolesremovepermission) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions/{permissionId} | Remove a permission from a role
*AdminRolesApi* | [**adminRolesRemoveUser**](docs/Api/AdminRolesApi.md#adminrolesremoveuser) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users/{userId} | Remove a user from a role
*AdminRolesApi* | [**adminRolesUpdatePermissions**](docs/Api/AdminRolesApi.md#adminrolesupdatepermissions) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Update role permissions (replaces all)
*AdminRolesApi* | [**patchAdminRolesUpdate**](docs/Api/AdminRolesApi.md#patchadminrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
*AdminRolesApi* | [**putAdminRolesUpdate**](docs/Api/AdminRolesApi.md#putadminrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
*AdminSandboxApi* | [**adminSandboxDestroy**](docs/Api/AdminSandboxApi.md#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant
*AdminSandboxApi* | [**adminSandboxList**](docs/Api/AdminSandboxApi.md#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants
*AdminSandboxApi* | [**adminSandboxSpawn**](docs/Api/AdminSandboxApi.md#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant
*AdminSessionsApi* | [**adminClientTokensRevokeAll**](docs/Api/AdminSessionsApi.md#adminclienttokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client
*AdminSessionsApi* | [**adminClientTokensRevokePost**](docs/Api/AdminSessionsApi.md#adminclienttokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias)
*AdminSessionsApi* | [**adminSessionsCount**](docs/Api/AdminSessionsApi.md#adminsessionscount) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count
*AdminSessionsApi* | [**adminSessionsList**](docs/Api/AdminSessionsApi.md#adminsessionslist) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions
*AdminSessionsApi* | [**adminSessionsRevoke**](docs/Api/AdminSessionsApi.md#adminsessionsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session
*AdminSessionsApi* | [**adminSessionsRevokeAll**](docs/Api/AdminSessionsApi.md#adminsessionsrevokeall) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant
*AdminSessionsApi* | [**adminSessionsStats**](docs/Api/AdminSessionsApi.md#adminsessionsstats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics
*AdminSessionsApi* | [**adminTokensList**](docs/Api/AdminSessionsApi.md#admintokenslist) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens
*AdminSessionsApi* | [**adminTokensRevoke**](docs/Api/AdminSessionsApi.md#admintokensrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token
*AdminSessionsApi* | [**adminUserSessionsList**](docs/Api/AdminSessionsApi.md#adminusersessionslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user&#39;s active sessions
*AdminSessionsApi* | [**adminUserSessionsRevokeAll**](docs/Api/AdminSessionsApi.md#adminusersessionsrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user
*AdminSessionsApi* | [**adminUserSessionsRevokePost**](docs/Api/AdminSessionsApi.md#adminusersessionsrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias)
*AdminSessionsApi* | [**adminUserTokensRevokeAll**](docs/Api/AdminSessionsApi.md#adminusertokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user
*AdminSessionsApi* | [**adminUserTokensRevokePost**](docs/Api/AdminSessionsApi.md#adminusertokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias)
*AdminSettingsApi* | [**adminAnalyticsDashboard**](docs/Api/AdminSettingsApi.md#adminanalyticsdashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
*AdminSettingsApi* | [**adminAnalyticsLogins**](docs/Api/AdminSettingsApi.md#adminanalyticslogins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
*AdminSettingsApi* | [**adminAnalyticsUsers**](docs/Api/AdminSettingsApi.md#adminanalyticsusers) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
*AdminSettingsApi* | [**adminOrganizationGet**](docs/Api/AdminSettingsApi.md#adminorganizationget) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile
*AdminSettingsApi* | [**adminSettingsAll**](docs/Api/AdminSettingsApi.md#adminsettingsall) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
*AdminSettingsApi* | [**adminSettingsAuthGet**](docs/Api/AdminSettingsApi.md#adminsettingsauthget) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
*AdminSettingsApi* | [**adminSettingsAuthenticationGet**](docs/Api/AdminSettingsApi.md#adminsettingsauthenticationget) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**adminSettingsBrandingGet**](docs/Api/AdminSettingsApi.md#adminsettingsbrandingget) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
*AdminSettingsApi* | [**adminSettingsEmailGet**](docs/Api/AdminSettingsApi.md#adminsettingsemailget) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
*AdminSettingsApi* | [**adminSettingsGeneralGet**](docs/Api/AdminSettingsApi.md#adminsettingsgeneralget) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
*AdminSettingsApi* | [**adminSettingsScimGet**](docs/Api/AdminSettingsApi.md#adminsettingsscimget) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
*AdminSettingsApi* | [**adminSettingsSecurityGet**](docs/Api/AdminSettingsApi.md#adminsettingssecurityget) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
*AdminSettingsApi* | [**adminTenantGet**](docs/Api/AdminSettingsApi.md#admintenantget) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile
*AdminSettingsApi* | [**patchAdminOrganizationUpdate**](docs/Api/AdminSettingsApi.md#patchadminorganizationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
*AdminSettingsApi* | [**patchAdminSettingsAuthUpdate**](docs/Api/AdminSettingsApi.md#patchadminsettingsauthupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
*AdminSettingsApi* | [**patchAdminSettingsAuthenticationUpdate**](docs/Api/AdminSettingsApi.md#patchadminsettingsauthenticationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**patchAdminSettingsBrandingUpdate**](docs/Api/AdminSettingsApi.md#patchadminsettingsbrandingupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
*AdminSettingsApi* | [**patchAdminSettingsEmailUpdate**](docs/Api/AdminSettingsApi.md#patchadminsettingsemailupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
*AdminSettingsApi* | [**patchAdminSettingsGeneralUpdate**](docs/Api/AdminSettingsApi.md#patchadminsettingsgeneralupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
*AdminSettingsApi* | [**patchAdminSettingsScimUpdate**](docs/Api/AdminSettingsApi.md#patchadminsettingsscimupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
*AdminSettingsApi* | [**patchAdminSettingsSecurityUpdate**](docs/Api/AdminSettingsApi.md#patchadminsettingssecurityupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
*AdminSettingsApi* | [**patchAdminTenantUpdate**](docs/Api/AdminSettingsApi.md#patchadmintenantupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
*AdminSettingsApi* | [**putAdminOrganizationUpdate**](docs/Api/AdminSettingsApi.md#putadminorganizationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
*AdminSettingsApi* | [**putAdminSettingsAuthUpdate**](docs/Api/AdminSettingsApi.md#putadminsettingsauthupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
*AdminSettingsApi* | [**putAdminSettingsAuthenticationUpdate**](docs/Api/AdminSettingsApi.md#putadminsettingsauthenticationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
*AdminSettingsApi* | [**putAdminSettingsBrandingUpdate**](docs/Api/AdminSettingsApi.md#putadminsettingsbrandingupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
*AdminSettingsApi* | [**putAdminSettingsEmailUpdate**](docs/Api/AdminSettingsApi.md#putadminsettingsemailupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
*AdminSettingsApi* | [**putAdminSettingsGeneralUpdate**](docs/Api/AdminSettingsApi.md#putadminsettingsgeneralupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
*AdminSettingsApi* | [**putAdminSettingsScimUpdate**](docs/Api/AdminSettingsApi.md#putadminsettingsscimupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
*AdminSettingsApi* | [**putAdminSettingsSecurityUpdate**](docs/Api/AdminSettingsApi.md#putadminsettingssecurityupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
*AdminSettingsApi* | [**putAdminTenantUpdate**](docs/Api/AdminSettingsApi.md#putadmintenantupdate) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
*AdminUsersApi* | [**addUserGroup**](docs/Api/AdminUsersApi.md#addusergroup) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group
*AdminUsersApi* | [**addUserPermission**](docs/Api/AdminUsersApi.md#adduserpermission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user
*AdminUsersApi* | [**addUserRole**](docs/Api/AdminUsersApi.md#adduserrole) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user
*AdminUsersApi* | [**adminIdentitiesLegacySamlRelink**](docs/Api/AdminUsersApi.md#adminidentitieslegacysamlrelink) | **POST** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP
*AdminUsersApi* | [**adminIdentitiesLegacySamlReport**](docs/Api/AdminUsersApi.md#adminidentitieslegacysamlreport) | **GET** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report
*AdminUsersApi* | [**adminIdentitiesLink**](docs/Api/AdminUsersApi.md#adminidentitieslink) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML or LDAP identity to a user
*AdminUsersApi* | [**adminIdentitiesList**](docs/Api/AdminUsersApi.md#adminidentitieslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user&#39;s federated identity links
*AdminUsersApi* | [**adminIdentitiesUnlink**](docs/Api/AdminUsersApi.md#adminidentitiesunlink) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user&#39;s SAML, LDAP or social identity
*AdminUsersApi* | [**blockUser**](docs/Api/AdminUsersApi.md#blockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user
*AdminUsersApi* | [**createUser**](docs/Api/AdminUsersApi.md#createuser) | **POST** /orgs/{orgId}/api/v1/admin/users | Create a user
*AdminUsersApi* | [**deleteUser**](docs/Api/AdminUsersApi.md#deleteuser) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user
*AdminUsersApi* | [**getUser**](docs/Api/AdminUsersApi.md#getuser) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user
*AdminUsersApi* | [**listUserGroups**](docs/Api/AdminUsersApi.md#listusergroups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user&#39;s groups
*AdminUsersApi* | [**listUserPermissions**](docs/Api/AdminUsersApi.md#listuserpermissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user&#39;s direct permissions
*AdminUsersApi* | [**listUserRoles**](docs/Api/AdminUsersApi.md#listuserroles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user&#39;s roles
*AdminUsersApi* | [**listUsers**](docs/Api/AdminUsersApi.md#listusers) | **GET** /orgs/{orgId}/api/v1/admin/users | List users
*AdminUsersApi* | [**markUserVerified**](docs/Api/AdminUsersApi.md#markuserverified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user&#39;s email as verified
*AdminUsersApi* | [**patchUser**](docs/Api/AdminUsersApi.md#patchuser) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
*AdminUsersApi* | [**removeUserGroup**](docs/Api/AdminUsersApi.md#removeusergroup) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group
*AdminUsersApi* | [**removeUserPermission**](docs/Api/AdminUsersApi.md#removeuserpermission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user
*AdminUsersApi* | [**removeUserRole**](docs/Api/AdminUsersApi.md#removeuserrole) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user
*AdminUsersApi* | [**resetUserMfa**](docs/Api/AdminUsersApi.md#resetusermfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed)
*AdminUsersApi* | [**sendUserVerificationEmail**](docs/Api/AdminUsersApi.md#senduserverificationemail) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email
*AdminUsersApi* | [**setUserPassword**](docs/Api/AdminUsersApi.md#setuserpassword) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password
*AdminUsersApi* | [**setUserPasswordPost**](docs/Api/AdminUsersApi.md#setuserpasswordpost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password
*AdminUsersApi* | [**triggerUserPasswordReset**](docs/Api/AdminUsersApi.md#triggeruserpasswordreset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email
*AdminUsersApi* | [**unblockUser**](docs/Api/AdminUsersApi.md#unblockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user
*AdminUsersApi* | [**updateUser**](docs/Api/AdminUsersApi.md#updateuser) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
*AdminUsersApi* | [**updateUserGroups**](docs/Api/AdminUsersApi.md#updateusergroups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user&#39;s groups
*AdminUsersApi* | [**updateUserRoles**](docs/Api/AdminUsersApi.md#updateuserroles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user&#39;s roles
*AdminWebhooksApi* | [**adminWebhooksCreate**](docs/Api/AdminWebhooksApi.md#adminwebhookscreate) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook
*AdminWebhooksApi* | [**adminWebhooksDelete**](docs/Api/AdminWebhooksApi.md#adminwebhooksdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
*AdminWebhooksApi* | [**adminWebhooksDeliveriesList**](docs/Api/AdminWebhooksApi.md#adminwebhooksdeliverieslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries
*AdminWebhooksApi* | [**adminWebhooksDeliveryReplay**](docs/Api/AdminWebhooksApi.md#adminwebhooksdeliveryreplay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery
*AdminWebhooksApi* | [**adminWebhooksDeliveryShow**](docs/Api/AdminWebhooksApi.md#adminwebhooksdeliveryshow) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery
*AdminWebhooksApi* | [**adminWebhooksEvents**](docs/Api/AdminWebhooksApi.md#adminwebhooksevents) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types
*AdminWebhooksApi* | [**adminWebhooksGet**](docs/Api/AdminWebhooksApi.md#adminwebhooksget) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook
*AdminWebhooksApi* | [**adminWebhooksList**](docs/Api/AdminWebhooksApi.md#adminwebhookslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks
*AdminWebhooksApi* | [**adminWebhooksRotateSecret**](docs/Api/AdminWebhooksApi.md#adminwebhooksrotatesecret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret
*AdminWebhooksApi* | [**adminWebhooksTest**](docs/Api/AdminWebhooksApi.md#adminwebhookstest) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery
*AdminWebhooksApi* | [**adminWebhooksTunnelStart**](docs/Api/AdminWebhooksApi.md#adminwebhookstunnelstart) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel
*AdminWebhooksApi* | [**adminWebhooksTunnelStop**](docs/Api/AdminWebhooksApi.md#adminwebhookstunnelstop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel
*AdminWebhooksApi* | [**adminWebhooksTunnelStream**](docs/Api/AdminWebhooksApi.md#adminwebhookstunnelstream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE)
*AdminWebhooksApi* | [**adminWebhooksWebhooksDisable**](docs/Api/AdminWebhooksApi.md#adminwebhookswebhooksdisable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook
*AdminWebhooksApi* | [**adminWebhooksWebhooksEnable**](docs/Api/AdminWebhooksApi.md#adminwebhookswebhooksenable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook
*AdminWebhooksApi* | [**patchAdminWebhooksUpdate**](docs/Api/AdminWebhooksApi.md#patchadminwebhooksupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook
*AdminWebhooksApi* | [**putAdminWebhooksUpdate**](docs/Api/AdminWebhooksApi.md#putadminwebhooksupdate) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook
*AgentsApi* | [**ask**](docs/Api/AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style)
*AgentsApi* | [**attest**](docs/Api/AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token
*AgentsApi* | [**authorizeMcp**](docs/Api/AgentsApi.md#authorizemcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3).
*AgentsApi* | [**createApproval**](docs/Api/AgentsApi.md#createapproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals | 
*AgentsApi* | [**getAgentCard**](docs/Api/AgentsApi.md#getagentcard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card
*AgentsApi* | [**getApprovalStatus**](docs/Api/AgentsApi.md#getapprovalstatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status | 
*AgentsApi* | [**getCurrentAgent**](docs/Api/AgentsApi.md#getcurrentagent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent
*AgentsApi* | [**registerAgent**](docs/Api/AgentsApi.md#registeragent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent
*AgentsApi* | [**verifyAgentCard**](docs/Api/AgentsApi.md#verifyagentcard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card
*AuthorizationApi* | [**checkAbac**](docs/Api/AuthorizationApi.md#checkabac) | **POST** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller
*AuthorizationApi* | [**checkAbacBulk**](docs/Api/AuthorizationApi.md#checkabacbulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call
*AuthorizationApi* | [**checkAllPermissions**](docs/Api/AuthorizationApi.md#checkallpermissions) | **POST** /api/v1/authz/check-all | Check whether the subject holds all of the permissions
*AuthorizationApi* | [**checkAnyPermission**](docs/Api/AuthorizationApi.md#checkanypermission) | **POST** /api/v1/authz/check-any | Check whether the subject holds any of the permissions
*AuthorizationApi* | [**checkPermission**](docs/Api/AuthorizationApi.md#checkpermission) | **POST** /api/v1/authz/check | Check one permission
*AuthorizationApi* | [**checkPermissionsBulk**](docs/Api/AuthorizationApi.md#checkpermissionsbulk) | **POST** /api/v1/authz/check-bulk | Check up to 100 permissions in one call
*AuthorizationApi* | [**checkRelation**](docs/Api/AuthorizationApi.md#checkrelation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar relationship check
*AuthorizationApi* | [**checkRelationScoped**](docs/Api/AuthorizationApi.md#checkrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check
*AuthorizationApi* | [**evaluate**](docs/Api/AuthorizationApi.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation
*AuthorizationApi* | [**evaluateBatch**](docs/Api/AuthorizationApi.md#evaluatebatch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations
*AuthorizationApi* | [**expandRelation**](docs/Api/AuthorizationApi.md#expandrelation) | **POST** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites.
*AuthorizationApi* | [**expandRelationScoped**](docs/Api/AuthorizationApi.md#expandrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope).
*AuthorizationApi* | [**getMyAttributes**](docs/Api/AuthorizationApi.md#getmyattributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | The caller&#39;s ABAC subject attributes
*AuthorizationApi* | [**getResourceAttributes**](docs/Api/AuthorizationApi.md#getresourceattributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource
*AuthorizationApi* | [**listAttributeDefinitions**](docs/Api/AuthorizationApi.md#listattributedefinitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization
*AuthorizationApi* | [**listPermissions**](docs/Api/AuthorizationApi.md#listpermissions) | **GET** /api/v1/authz/permissions | List the caller&#39;s effective permissions
*AuthorizationApi* | [**setResourceAttribute**](docs/Api/AuthorizationApi.md#setresourceattribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute
*AuthorizationApi* | [**setUserAttribute**](docs/Api/AuthorizationApi.md#setuserattribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute
*IdentityApi* | [**getMe**](docs/Api/IdentityApi.md#getme) | **GET** /orgs/{orgId}/api/v1/me | Who am I
*JitApi* | [**approveRequest**](docs/Api/JitApi.md#approverequest) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth).
*JitApi* | [**completeTask**](docs/Api/JitApi.md#completetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources.
*JitApi* | [**createTask**](docs/Api/JitApi.md#createtask) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent.
*JitApi* | [**denyRequest**](docs/Api/JitApi.md#denyrequest) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth).
*JitApi* | [**evaluateTask**](docs/Api/JitApi.md#evaluatetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task.
*JitApi* | [**getRequestStatus**](docs/Api/JitApi.md#getrequeststatus) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request.
*JitApi* | [**getRequestToken**](docs/Api/JitApi.md#getrequesttoken) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token.
*JitApi* | [**listPendingRequests**](docs/Api/JitApi.md#listpendingrequests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant.
*JitApi* | [**requestPermission**](docs/Api/JitApi.md#requestpermission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details.
*McpApi* | [**getProtectedResourceMetadata**](docs/Api/McpApi.md#getprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728)
*McpApi* | [**getProtectedResourceMetadataRoot**](docs/Api/McpApi.md#getprotectedresourcemetadataroot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728)
*McpApi* | [**getServer**](docs/Api/McpApi.md#getserver) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.
*McpApi* | [**getServerChallenge**](docs/Api/McpApi.md#getserverchallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge
*McpApi* | [**listServers**](docs/Api/McpApi.md#listservers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.
*McpApi* | [**postServerChallenge**](docs/Api/McpApi.md#postserverchallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST)
*MfaApi* | [**createMfaChallenge**](docs/Api/MfaApi.md#createmfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge
*MfaApi* | [**deleteAuthenticator**](docs/Api/MfaApi.md#deleteauthenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator
*MfaApi* | [**enrollAuthenticator**](docs/Api/MfaApi.md#enrollauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator
*MfaApi* | [**generateRecoveryCodes**](docs/Api/MfaApi.md#generaterecoverycodes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes
*MfaApi* | [**getMfaChallenge**](docs/Api/MfaApi.md#getmfachallenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status
*MfaApi* | [**getRecoveryCodeStatus**](docs/Api/MfaApi.md#getrecoverycodestatus) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status
*MfaApi* | [**listMyAuthenticators**](docs/Api/MfaApi.md#listmyauthenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators
*MfaApi* | [**listTrustedDevices**](docs/Api/MfaApi.md#listtrusteddevices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices
*MfaApi* | [**revokeTrustedDevice**](docs/Api/MfaApi.md#revoketrusteddevice) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device
*MfaApi* | [**updateAuthenticator**](docs/Api/MfaApi.md#updateauthenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default
*MfaApi* | [**verifyAuthenticator**](docs/Api/MfaApi.md#verifyauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator
*MfaApi* | [**verifyMfaChallenge**](docs/Api/MfaApi.md#verifymfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge
*OAuthApi* | [**authorize**](docs/Api/OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
*OAuthApi* | [**backchannelAuthorize**](docs/Api/OAuthApi.md#backchannelauthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
*OAuthApi* | [**deviceAuthorization**](docs/Api/OAuthApi.md#deviceauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
*OAuthApi* | [**getClientConfiguration**](docs/Api/OAuthApi.md#getclientconfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
*OAuthApi* | [**getDeviceVerification**](docs/Api/OAuthApi.md#getdeviceverification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
*OAuthApi* | [**getOrgSelection**](docs/Api/OAuthApi.md#getorgselection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
*OAuthApi* | [**introspect**](docs/Api/OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
*OAuthApi* | [**par**](docs/Api/OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
*OAuthApi* | [**passkeyLogin**](docs/Api/OAuthApi.md#passkeylogin) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point
*OAuthApi* | [**registerClient**](docs/Api/OAuthApi.md#registerclient) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
*OAuthApi* | [**revoke**](docs/Api/OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
*OAuthApi* | [**socialCallback**](docs/Api/OAuthApi.md#socialcallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
*OAuthApi* | [**socialCallbackPost**](docs/Api/OAuthApi.md#socialcallbackpost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
*OAuthApi* | [**socialLogin**](docs/Api/OAuthApi.md#sociallogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
*OAuthApi* | [**submitAuthorization**](docs/Api/OAuthApi.md#submitauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
*OAuthApi* | [**submitDeviceVerification**](docs/Api/OAuthApi.md#submitdeviceverification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
*OAuthApi* | [**submitLogin**](docs/Api/OAuthApi.md#submitlogin) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission
*OAuthApi* | [**submitLoginJson**](docs/Api/OAuthApi.md#submitloginjson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow
*OAuthApi* | [**submitOrgSelection**](docs/Api/OAuthApi.md#submitorgselection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection
*OAuthApi* | [**token**](docs/Api/OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint
*OIDCApi* | [**checkSession**](docs/Api/OIDCApi.md#checksession) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0)
*OIDCApi* | [**logout**](docs/Api/OIDCApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0)
*OIDCApi* | [**logoutPost**](docs/Api/OIDCApi.md#logoutpost) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission)
*OIDCApi* | [**userinfo**](docs/Api/OIDCApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint
*OIDCApi* | [**userinfoPost**](docs/Api/OIDCApi.md#userinfopost) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST)
*SsfApi* | [**createStreamConfig**](docs/Api/SsfApi.md#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create an SSF stream
*SsfApi* | [**deleteStreamConfig**](docs/Api/SsfApi.md#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | Delete an SSF stream
*SsfApi* | [**getStreamConfig**](docs/Api/SsfApi.md#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read SSF stream configuration(s)
*SsfApi* | [**verifyStream**](docs/Api/SsfApi.md#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | Request a stream verification event
*TokenVaultApi* | [**getConnectionToken**](docs/Api/TokenVaultApi.md#getconnectiontoken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection
*TokenVaultApi* | [**listConnections**](docs/Api/TokenVaultApi.md#listconnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use
*WellKnownApi* | [**getAuthorizationServerMetadata**](docs/Api/WellKnownApi.md#getauthorizationservermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414)
*WellKnownApi* | [**getJwks**](docs/Api/WellKnownApi.md#getjwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517)
*WellKnownApi* | [**getOpenidConfiguration**](docs/Api/WellKnownApi.md#getopenidconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0)
*WellKnownApi* | [**getSsfConfiguration**](docs/Api/WellKnownApi.md#getssfconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata

## Models

- [AbacAttributeDefinition](docs/Model/AbacAttributeDefinition.md)
- [AbacAttributesCreateResponse](docs/Model/AbacAttributesCreateResponse.md)
- [AbacAttributesGetResponse](docs/Model/AbacAttributesGetResponse.md)
- [AbacAttributesListResponse](docs/Model/AbacAttributesListResponse.md)
- [AbacPoliciesCreateResponse](docs/Model/AbacPoliciesCreateResponse.md)
- [AbacPoliciesGetResponse](docs/Model/AbacPoliciesGetResponse.md)
- [AbacPoliciesListResponse](docs/Model/AbacPoliciesListResponse.md)
- [AbacPoliciesToggleResponse](docs/Model/AbacPoliciesToggleResponse.md)
- [AbacPolicy](docs/Model/AbacPolicy.md)
- [AbacResourceAttribute](docs/Model/AbacResourceAttribute.md)
- [AddUserGroupResponse](docs/Model/AddUserGroupResponse.md)
- [AddUserPermissionResponse](docs/Model/AddUserPermissionResponse.md)
- [AddUserRoleResponse](docs/Model/AddUserRoleResponse.md)
- [AdminAgentsActivateResponse](docs/Model/AdminAgentsActivateResponse.md)
- [AdminAgentsAgentsDisableResponse](docs/Model/AdminAgentsAgentsDisableResponse.md)
- [AdminAgentsAgentsEnableResponse](docs/Model/AdminAgentsAgentsEnableResponse.md)
- [AdminAgentsAgentsRotateKeyResponse](docs/Model/AdminAgentsAgentsRotateKeyResponse.md)
- [AdminAgentsCreateRequest](docs/Model/AdminAgentsCreateRequest.md)
- [AdminAgentsCreateResponse](docs/Model/AdminAgentsCreateResponse.md)
- [AdminAgentsDeactivateResponse](docs/Model/AdminAgentsDeactivateResponse.md)
- [AdminAgentsDeleteResponse](docs/Model/AdminAgentsDeleteResponse.md)
- [AdminAgentsGenerateTokenRequest](docs/Model/AdminAgentsGenerateTokenRequest.md)
- [AdminAgentsGenerateTokenResponse](docs/Model/AdminAgentsGenerateTokenResponse.md)
- [AdminAgentsGenerateTokenResponseData](docs/Model/AdminAgentsGenerateTokenResponseData.md)
- [AdminAgentsGetResponse](docs/Model/AdminAgentsGetResponse.md)
- [AdminAgentsGetScopesResponse](docs/Model/AdminAgentsGetScopesResponse.md)
- [AdminAgentsListResponse](docs/Model/AdminAgentsListResponse.md)
- [AdminAgentsRevokeKeyResponse](docs/Model/AdminAgentsRevokeKeyResponse.md)
- [AdminAgentsRotateCredentialsResponse](docs/Model/AdminAgentsRotateCredentialsResponse.md)
- [AdminAgentsSetScopesRequest](docs/Model/AdminAgentsSetScopesRequest.md)
- [AdminAgentsSetScopesResponse](docs/Model/AdminAgentsSetScopesResponse.md)
- [AdminAnalyticsDashboardResponse](docs/Model/AdminAnalyticsDashboardResponse.md)
- [AdminAnalyticsDashboardResponseData](docs/Model/AdminAnalyticsDashboardResponseData.md)
- [AdminAnalyticsDashboardResponseDataAudit](docs/Model/AdminAnalyticsDashboardResponseDataAudit.md)
- [AdminAnalyticsDashboardResponseDataAuthentication](docs/Model/AdminAnalyticsDashboardResponseDataAuthentication.md)
- [AdminAnalyticsDashboardResponseDataUsers](docs/Model/AdminAnalyticsDashboardResponseDataUsers.md)
- [AdminAnalyticsLoginsResponse](docs/Model/AdminAnalyticsLoginsResponse.md)
- [AdminAnalyticsLoginsResponseData](docs/Model/AdminAnalyticsLoginsResponseData.md)
- [AdminAnalyticsLoginsResponseDataDailyItem](docs/Model/AdminAnalyticsLoginsResponseDataDailyItem.md)
- [AdminAnalyticsLoginsResponseDataPeriod](docs/Model/AdminAnalyticsLoginsResponseDataPeriod.md)
- [AdminAnalyticsUsersResponse](docs/Model/AdminAnalyticsUsersResponse.md)
- [AdminAnalyticsUsersResponseData](docs/Model/AdminAnalyticsUsersResponseData.md)
- [AdminAnalyticsUsersResponseDataByMfaStatusItem](docs/Model/AdminAnalyticsUsersResponseDataByMfaStatusItem.md)
- [AdminAnalyticsUsersResponseDataByVerificationStatusItem](docs/Model/AdminAnalyticsUsersResponseDataByVerificationStatusItem.md)
- [AdminAnalyticsUsersResponseDataDailyRegistrationsItem](docs/Model/AdminAnalyticsUsersResponseDataDailyRegistrationsItem.md)
- [AdminAuditLogsActionsResponse](docs/Model/AdminAuditLogsActionsResponse.md)
- [AdminAuditLogsExportResponse](docs/Model/AdminAuditLogsExportResponse.md)
- [AdminAuditLogsExportResponseMeta](docs/Model/AdminAuditLogsExportResponseMeta.md)
- [AdminAuditLogsGetResponse](docs/Model/AdminAuditLogsGetResponse.md)
- [AdminAuditLogsListResponse](docs/Model/AdminAuditLogsListResponse.md)
- [AdminAuditLogsRetentionResponse](docs/Model/AdminAuditLogsRetentionResponse.md)
- [AdminAuditLogsRetentionResponseData](docs/Model/AdminAuditLogsRetentionResponseData.md)
- [AdminAuditLogsStatsResponse](docs/Model/AdminAuditLogsStatsResponse.md)
- [AdminAuditLogsStatsResponseData](docs/Model/AdminAuditLogsStatsResponseData.md)
- [AdminAuditLogsStatsResponseDataPeriod](docs/Model/AdminAuditLogsStatsResponseDataPeriod.md)
- [AdminClientTokensRevokeAllResponse](docs/Model/AdminClientTokensRevokeAllResponse.md)
- [AdminEmailTemplatesListResponse](docs/Model/AdminEmailTemplatesListResponse.md)
- [AdminEmailTemplatesPreviewResponse](docs/Model/AdminEmailTemplatesPreviewResponse.md)
- [AdminEmailTemplatesVariablesResponse](docs/Model/AdminEmailTemplatesVariablesResponse.md)
- [AdminGroupsCreateResponse](docs/Model/AdminGroupsCreateResponse.md)
- [AdminGroupsGetMembersResponse](docs/Model/AdminGroupsGetMembersResponse.md)
- [AdminGroupsGetMembersResponseDataItem](docs/Model/AdminGroupsGetMembersResponseDataItem.md)
- [AdminGroupsGetResponse](docs/Model/AdminGroupsGetResponse.md)
- [AdminGroupsGroupsGetRolesResponse](docs/Model/AdminGroupsGroupsGetRolesResponse.md)
- [AdminGroupsGroupsGetRolesResponseDataItem](docs/Model/AdminGroupsGroupsGetRolesResponseDataItem.md)
- [AdminGroupsListResponse](docs/Model/AdminGroupsListResponse.md)
- [AdminIdentitiesLegacySamlRelinkRequest](docs/Model/AdminIdentitiesLegacySamlRelinkRequest.md)
- [AdminIdentitiesLegacySamlRelinkResponse](docs/Model/AdminIdentitiesLegacySamlRelinkResponse.md)
- [AdminIdentitiesLegacySamlRelinkResponseData](docs/Model/AdminIdentitiesLegacySamlRelinkResponseData.md)
- [AdminIdentitiesLegacySamlReportResponse](docs/Model/AdminIdentitiesLegacySamlReportResponse.md)
- [AdminIdentitiesLegacySamlReportResponseData](docs/Model/AdminIdentitiesLegacySamlReportResponseData.md)
- [AdminIdentitiesLegacySamlReportResponseDataUsersItem](docs/Model/AdminIdentitiesLegacySamlReportResponseDataUsersItem.md)
- [AdminIdentitiesLinkRequest](docs/Model/AdminIdentitiesLinkRequest.md)
- [AdminIdentitiesListResponse](docs/Model/AdminIdentitiesListResponse.md)
- [AdminIdentitiesListResponseData](docs/Model/AdminIdentitiesListResponseData.md)
- [AdminIdentitiesListResponseDataBindingsItem](docs/Model/AdminIdentitiesListResponseDataBindingsItem.md)
- [AdminMcpServersCreateResponse](docs/Model/AdminMcpServersCreateResponse.md)
- [AdminMcpServersGetResponse](docs/Model/AdminMcpServersGetResponse.md)
- [AdminMcpServersListResponse](docs/Model/AdminMcpServersListResponse.md)
- [AdminMcpServersListResponseMeta](docs/Model/AdminMcpServersListResponseMeta.md)
- [AdminOrgInvitationsCreateResponse](docs/Model/AdminOrgInvitationsCreateResponse.md)
- [AdminOrgInvitationsListResponse](docs/Model/AdminOrgInvitationsListResponse.md)
- [AdminOrgMembersAddResponse](docs/Model/AdminOrgMembersAddResponse.md)
- [AdminOrgMembersListResponse](docs/Model/AdminOrgMembersListResponse.md)
- [AdminOrgRolesCreateResponse](docs/Model/AdminOrgRolesCreateResponse.md)
- [AdminOrgRolesListResponse](docs/Model/AdminOrgRolesListResponse.md)
- [AdminOrganizationsCreateResponse](docs/Model/AdminOrganizationsCreateResponse.md)
- [AdminOrganizationsGetResponse](docs/Model/AdminOrganizationsGetResponse.md)
- [AdminOrganizationsListResponse](docs/Model/AdminOrganizationsListResponse.md)
- [AdminPermissionsCreateResponse](docs/Model/AdminPermissionsCreateResponse.md)
- [AdminPermissionsGetResponse](docs/Model/AdminPermissionsGetResponse.md)
- [AdminPermissionsListResponse](docs/Model/AdminPermissionsListResponse.md)
- [AdminPermissionsUsageResponse](docs/Model/AdminPermissionsUsageResponse.md)
- [AdminPermissionsUsageResponseData](docs/Model/AdminPermissionsUsageResponseData.md)
- [AdminRolesCreateResponse](docs/Model/AdminRolesCreateResponse.md)
- [AdminRolesGetPermissionsResponse](docs/Model/AdminRolesGetPermissionsResponse.md)
- [AdminRolesGetPermissionsResponseDataItem](docs/Model/AdminRolesGetPermissionsResponseDataItem.md)
- [AdminRolesGetResponse](docs/Model/AdminRolesGetResponse.md)
- [AdminRolesGetUsersResponse](docs/Model/AdminRolesGetUsersResponse.md)
- [AdminRolesListResponse](docs/Model/AdminRolesListResponse.md)
- [AdminSandboxListResponse](docs/Model/AdminSandboxListResponse.md)
- [AdminSandboxSpawnRequest](docs/Model/AdminSandboxSpawnRequest.md)
- [AdminSandboxSpawnResponse](docs/Model/AdminSandboxSpawnResponse.md)
- [AdminScopesCreateResponse](docs/Model/AdminScopesCreateResponse.md)
- [AdminScopesListResponse](docs/Model/AdminScopesListResponse.md)
- [AdminScopesListResponseMeta](docs/Model/AdminScopesListResponseMeta.md)
- [AdminSessionsCountResponse](docs/Model/AdminSessionsCountResponse.md)
- [AdminSessionsCountResponseData](docs/Model/AdminSessionsCountResponseData.md)
- [AdminSessionsListResponse](docs/Model/AdminSessionsListResponse.md)
- [AdminSessionsRevokeAllRequest](docs/Model/AdminSessionsRevokeAllRequest.md)
- [AdminSessionsRevokeAllResponse](docs/Model/AdminSessionsRevokeAllResponse.md)
- [AdminSessionsRevokeResponse](docs/Model/AdminSessionsRevokeResponse.md)
- [AdminSessionsStatsResponse](docs/Model/AdminSessionsStatsResponse.md)
- [AdminSessionsStatsResponseData](docs/Model/AdminSessionsStatsResponseData.md)
- [AdminSettingsAllResponse](docs/Model/AdminSettingsAllResponse.md)
- [AdminSettingsAllResponseData](docs/Model/AdminSettingsAllResponseData.md)
- [AdminSettingsAllResponseDataGeneral](docs/Model/AdminSettingsAllResponseDataGeneral.md)
- [AdminSettingsAllResponseDataSecurity](docs/Model/AdminSettingsAllResponseDataSecurity.md)
- [AdminSettingsAuthenticationGetResponse](docs/Model/AdminSettingsAuthenticationGetResponse.md)
- [AdminSettingsBrandingGetResponse](docs/Model/AdminSettingsBrandingGetResponse.md)
- [AdminSettingsEmailGetResponse](docs/Model/AdminSettingsEmailGetResponse.md)
- [AdminSettingsGeneralGetResponse](docs/Model/AdminSettingsGeneralGetResponse.md)
- [AdminSettingsGeneralGetResponseData](docs/Model/AdminSettingsGeneralGetResponseData.md)
- [AdminSettingsScimGetResponse](docs/Model/AdminSettingsScimGetResponse.md)
- [AdminSettingsSecurityGetResponse](docs/Model/AdminSettingsSecurityGetResponse.md)
- [AdminSocialProvidersAvailableResponse](docs/Model/AdminSocialProvidersAvailableResponse.md)
- [AdminSocialProvidersAvailableResponseDataItem](docs/Model/AdminSocialProvidersAvailableResponseDataItem.md)
- [AdminSocialProvidersCallbackUrlsResponse](docs/Model/AdminSocialProvidersCallbackUrlsResponse.md)
- [AdminSocialProvidersCreateResponse](docs/Model/AdminSocialProvidersCreateResponse.md)
- [AdminSocialProvidersGetResponse](docs/Model/AdminSocialProvidersGetResponse.md)
- [AdminSocialProvidersListResponse](docs/Model/AdminSocialProvidersListResponse.md)
- [AdminTenantGetResponse](docs/Model/AdminTenantGetResponse.md)
- [AdminTokensListResponse](docs/Model/AdminTokensListResponse.md)
- [AdminTokensRevokeResponse](docs/Model/AdminTokensRevokeResponse.md)
- [AdminUserSessionsListResponse](docs/Model/AdminUserSessionsListResponse.md)
- [AdminUserSessionsRevokeAllResponse](docs/Model/AdminUserSessionsRevokeAllResponse.md)
- [AdminUserSessionsRevokePostResponse](docs/Model/AdminUserSessionsRevokePostResponse.md)
- [AdminUserTokensRevokeAllResponse](docs/Model/AdminUserTokensRevokeAllResponse.md)
- [AdminUserTokensRevokePostResponse](docs/Model/AdminUserTokensRevokePostResponse.md)
- [AdminWebhooksCreateResponse](docs/Model/AdminWebhooksCreateResponse.md)
- [AdminWebhooksCreateResponseData](docs/Model/AdminWebhooksCreateResponseData.md)
- [AdminWebhooksDeliveriesListResponse](docs/Model/AdminWebhooksDeliveriesListResponse.md)
- [AdminWebhooksDeliveriesListResponseMeta](docs/Model/AdminWebhooksDeliveriesListResponseMeta.md)
- [AdminWebhooksDeliveryReplayResponse](docs/Model/AdminWebhooksDeliveryReplayResponse.md)
- [AdminWebhooksDeliveryShowResponse](docs/Model/AdminWebhooksDeliveryShowResponse.md)
- [AdminWebhooksDeliveryShowResponseData](docs/Model/AdminWebhooksDeliveryShowResponseData.md)
- [AdminWebhooksDeliveryShowResponseData1AttemptsItem](docs/Model/AdminWebhooksDeliveryShowResponseData1AttemptsItem.md)
- [AdminWebhooksEventsResponse](docs/Model/AdminWebhooksEventsResponse.md)
- [AdminWebhooksGetResponse](docs/Model/AdminWebhooksGetResponse.md)
- [AdminWebhooksListResponse](docs/Model/AdminWebhooksListResponse.md)
- [AdminWebhooksRotateSecretResponse](docs/Model/AdminWebhooksRotateSecretResponse.md)
- [AdminWebhooksRotateSecretResponseData](docs/Model/AdminWebhooksRotateSecretResponseData.md)
- [AdminWebhooksTestResponse](docs/Model/AdminWebhooksTestResponse.md)
- [AdminWebhooksTunnelStartResponse](docs/Model/AdminWebhooksTunnelStartResponse.md)
- [AdminWebhooksTunnelStartResponseData](docs/Model/AdminWebhooksTunnelStartResponseData.md)
- [AdminWebhooksWebhooksDisableResponse](docs/Model/AdminWebhooksWebhooksDisableResponse.md)
- [AdminWebhooksWebhooksEnableResponse](docs/Model/AdminWebhooksWebhooksEnableResponse.md)
- [AgentOutboundConnection](docs/Model/AgentOutboundConnection.md)
- [ApproveRequestRequest](docs/Model/ApproveRequestRequest.md)
- [ApproveRequestResponse](docs/Model/ApproveRequestResponse.md)
- [AskRequest](docs/Model/AskRequest.md)
- [AskResponse](docs/Model/AskResponse.md)
- [AttestRequest](docs/Model/AttestRequest.md)
- [AttestResponse](docs/Model/AttestResponse.md)
- [AttestResponseIdentity](docs/Model/AttestResponseIdentity.md)
- [AuditLogEntry](docs/Model/AuditLogEntry.md)
- [AuthZenDecision](docs/Model/AuthZenDecision.md)
- [AuthenticationSettings](docs/Model/AuthenticationSettings.md)
- [AuthenticationSettingsMfaPolicy](docs/Model/AuthenticationSettingsMfaPolicy.md)
- [AuthenticationSettingsPasskeys](docs/Model/AuthenticationSettingsPasskeys.md)
- [AuthenticationSettingsPasswordPolicy](docs/Model/AuthenticationSettingsPasswordPolicy.md)
- [AuthenticationSettingsPasswordRotationPolicy](docs/Model/AuthenticationSettingsPasswordRotationPolicy.md)
- [AuthenticationSettingsProgressiveProfiling](docs/Model/AuthenticationSettingsProgressiveProfiling.md)
- [AuthorizationServerMetadata](docs/Model/AuthorizationServerMetadata.md)
- [AuthorizeMcpRequest](docs/Model/AuthorizeMcpRequest.md)
- [AuthorizeMcpResponse](docs/Model/AuthorizeMcpResponse.md)
- [BackchannelAuthorizeResponse](docs/Model/BackchannelAuthorizeResponse.md)
- [BlockUserResponse](docs/Model/BlockUserResponse.md)
- [BrandingSettings](docs/Model/BrandingSettings.md)
- [CheckAbacBulkResponse](docs/Model/CheckAbacBulkResponse.md)
- [CheckAbacBulkResponseResultsItem](docs/Model/CheckAbacBulkResponseResultsItem.md)
- [CheckAbacResponse](docs/Model/CheckAbacResponse.md)
- [CheckAbacResponseMatchedPoliciesItem](docs/Model/CheckAbacResponseMatchedPoliciesItem.md)
- [CheckAnyPermissionResponse](docs/Model/CheckAnyPermissionResponse.md)
- [CheckPermissionResponse](docs/Model/CheckPermissionResponse.md)
- [CheckPermissionsBulkResponse](docs/Model/CheckPermissionsBulkResponse.md)
- [CheckRelationResponse](docs/Model/CheckRelationResponse.md)
- [CheckRelationScopedResponse](docs/Model/CheckRelationScopedResponse.md)
- [CompleteTaskResponse](docs/Model/CompleteTaskResponse.md)
- [CreateApprovalRequest](docs/Model/CreateApprovalRequest.md)
- [CreateApprovalResponse](docs/Model/CreateApprovalResponse.md)
- [CreateApprovalResponse202](docs/Model/CreateApprovalResponse202.md)
- [CreateClientResponse](docs/Model/CreateClientResponse.md)
- [CreateClientResponseData](docs/Model/CreateClientResponseData.md)
- [CreateMfaChallengeRequest](docs/Model/CreateMfaChallengeRequest.md)
- [CreateTaskRequest](docs/Model/CreateTaskRequest.md)
- [CreateTaskResponse](docs/Model/CreateTaskResponse.md)
- [CreateUserResponse](docs/Model/CreateUserResponse.md)
- [DeleteUserAuthenticatorResponse](docs/Model/DeleteUserAuthenticatorResponse.md)
- [DeleteUserResponse](docs/Model/DeleteUserResponse.md)
- [DenyRequestRequest](docs/Model/DenyRequestRequest.md)
- [DenyRequestResponse](docs/Model/DenyRequestResponse.md)
- [DeviceAuthorizationResponse](docs/Model/DeviceAuthorizationResponse.md)
- [EmailEnrollmentStarted](docs/Model/EmailEnrollmentStarted.md)
- [EmailTemplate](docs/Model/EmailTemplate.md)
- [EnrollAuthenticator201Response](docs/Model/EnrollAuthenticator201Response.md)
- [EnrollAuthenticatorRequest](docs/Model/EnrollAuthenticatorRequest.md)
- [EvaluateBatchResponse](docs/Model/EvaluateBatchResponse.md)
- [EvaluateResponseContext](docs/Model/EvaluateResponseContext.md)
- [EvaluateResponseContextReasonAdmin](docs/Model/EvaluateResponseContextReasonAdmin.md)
- [ExpandRelationRequest](docs/Model/ExpandRelationRequest.md)
- [ExpandRelationResponse](docs/Model/ExpandRelationResponse.md)
- [ExpandRelationResponseTree](docs/Model/ExpandRelationResponseTree.md)
- [GenerateRecoveryCodesResponse](docs/Model/GenerateRecoveryCodesResponse.md)
- [GetAgentCardResponseCapabilities](docs/Model/GetAgentCardResponseCapabilities.md)
- [GetAgentCardResponseProvider](docs/Model/GetAgentCardResponseProvider.md)
- [GetAgentCardResponseSignaturesItem](docs/Model/GetAgentCardResponseSignaturesItem.md)
- [GetAgentCardResponseSkillsItem](docs/Model/GetAgentCardResponseSkillsItem.md)
- [GetApprovalStatusResponse](docs/Model/GetApprovalStatusResponse.md)
- [GetApprovalStatusResponseApprovedBy](docs/Model/GetApprovalStatusResponseApprovedBy.md)
- [GetClientResponse](docs/Model/GetClientResponse.md)
- [GetConnectionTokenRequest](docs/Model/GetConnectionTokenRequest.md)
- [GetConnectionTokenResponse](docs/Model/GetConnectionTokenResponse.md)
- [GetCurrentAgentResponse](docs/Model/GetCurrentAgentResponse.md)
- [GetCurrentAgentResponseIdentity](docs/Model/GetCurrentAgentResponseIdentity.md)
- [GetCurrentAgentResponseWorkspace](docs/Model/GetCurrentAgentResponseWorkspace.md)
- [GetIssuerMetadataResponse](docs/Model/GetIssuerMetadataResponse.md)
- [GetJwksResponseKeysItem](docs/Model/GetJwksResponseKeysItem.md)
- [GetMeResponse](docs/Model/GetMeResponse.md)
- [GetMfaCoverageReportResponse](docs/Model/GetMfaCoverageReportResponse.md)
- [GetMfaPolicyResponse](docs/Model/GetMfaPolicyResponse.md)
- [GetMyAttributesResponse](docs/Model/GetMyAttributesResponse.md)
- [GetMyAttributesResponseAttributes](docs/Model/GetMyAttributesResponseAttributes.md)
- [GetProtectedResourceMetadataRoot200Response](docs/Model/GetProtectedResourceMetadataRoot200Response.md)
- [GetProtectedResourceMetadataRootResponse1ResourcesItem](docs/Model/GetProtectedResourceMetadataRootResponse1ResourcesItem.md)
- [GetRecoveryCodeStatusResponse](docs/Model/GetRecoveryCodeStatusResponse.md)
- [GetRequestStatusResponse](docs/Model/GetRequestStatusResponse.md)
- [GetRequestTokenResponse](docs/Model/GetRequestTokenResponse.md)
- [GetResourceAttributesResponse](docs/Model/GetResourceAttributesResponse.md)
- [GetResourceAttributesResponseAttributes](docs/Model/GetResourceAttributesResponseAttributes.md)
- [GetServerChallengeResponse](docs/Model/GetServerChallengeResponse.md)
- [GetServerResponse](docs/Model/GetServerResponse.md)
- [GetServerResponseDiscovery](docs/Model/GetServerResponseDiscovery.md)
- [GetSsfConfigurationResponse](docs/Model/GetSsfConfigurationResponse.md)
- [GetSsfConfigurationResponseAuthorizationSchemesItem](docs/Model/GetSsfConfigurationResponseAuthorizationSchemesItem.md)
- [GetStreamConfig200Response](docs/Model/GetStreamConfig200Response.md)
- [GetUserResponse](docs/Model/GetUserResponse.md)
- [Group](docs/Model/Group.md)
- [GroupRef](docs/Model/GroupRef.md)
- [IntrospectResponse](docs/Model/IntrospectResponse.md)
- [IntrospectResponseAud](docs/Model/IntrospectResponseAud.md)
- [IssueAgentTokenRequest](docs/Model/IssueAgentTokenRequest.md)
- [IssueAgentTokenResponse](docs/Model/IssueAgentTokenResponse.md)
- [IssueDelegateTokenRequest](docs/Model/IssueDelegateTokenRequest.md)
- [IssueDelegateTokenResponse](docs/Model/IssueDelegateTokenResponse.md)
- [IssuePlatformTokenRequest](docs/Model/IssuePlatformTokenRequest.md)
- [IssuePlatformTokenResponse](docs/Model/IssuePlatformTokenResponse.md)
- [IssueResourceTokenRequest](docs/Model/IssueResourceTokenRequest.md)
- [IssueResourceTokenResponse](docs/Model/IssueResourceTokenResponse.md)
- [IssueTemporaryAccessCodeRequest](docs/Model/IssueTemporaryAccessCodeRequest.md)
- [IssueTemporaryAccessCodeResponse](docs/Model/IssueTemporaryAccessCodeResponse.md)
- [IssueTemporaryAccessCodeResponseData](docs/Model/IssueTemporaryAccessCodeResponseData.md)
- [JsonWebKeySet](docs/Model/JsonWebKeySet.md)
- [JwksResponse](docs/Model/JwksResponse.md)
- [ListAttributeDefinitionsResponse](docs/Model/ListAttributeDefinitionsResponse.md)
- [ListClientScopesResponse](docs/Model/ListClientScopesResponse.md)
- [ListClientsResponse](docs/Model/ListClientsResponse.md)
- [ListConnectionsResponse](docs/Model/ListConnectionsResponse.md)
- [ListConnectionsResponseAgent](docs/Model/ListConnectionsResponseAgent.md)
- [ListMyAuthenticatorsResponse](docs/Model/ListMyAuthenticatorsResponse.md)
- [ListMyAuthenticatorsResponseRecoveryCodes](docs/Model/ListMyAuthenticatorsResponseRecoveryCodes.md)
- [ListPendingRequestsResponse](docs/Model/ListPendingRequestsResponse.md)
- [ListPermissionsResponse](docs/Model/ListPermissionsResponse.md)
- [ListPermissionsResponseDataItem](docs/Model/ListPermissionsResponseDataItem.md)
- [ListPermissionsResponsePermissionsItem](docs/Model/ListPermissionsResponsePermissionsItem.md)
- [ListServersResponse](docs/Model/ListServersResponse.md)
- [ListServersResponseDataItem](docs/Model/ListServersResponseDataItem.md)
- [ListTrustedDevicesResponse](docs/Model/ListTrustedDevicesResponse.md)
- [ListTrustedDevicesResponseDataItem](docs/Model/ListTrustedDevicesResponseDataItem.md)
- [ListUserAuthenticatorsResponse](docs/Model/ListUserAuthenticatorsResponse.md)
- [ListUsersResponse](docs/Model/ListUsersResponse.md)
- [MarkUserVerifiedResponse](docs/Model/MarkUserVerifiedResponse.md)
- [McpServer](docs/Model/McpServer.md)
- [McpServerPosture](docs/Model/McpServerPosture.md)
- [McpServerPostureChecksInner](docs/Model/McpServerPostureChecksInner.md)
- [MessageResponse](docs/Model/MessageResponse.md)
- [MfaAuthenticator](docs/Model/MfaAuthenticator.md)
- [MfaAuthenticatorLastUsedContext](docs/Model/MfaAuthenticatorLastUsedContext.md)
- [MfaChallenge](docs/Model/MfaChallenge.md)
- [MfaChallengeAlternativesInner](docs/Model/MfaChallengeAlternativesInner.md)
- [MfaChallengeAuthenticator](docs/Model/MfaChallengeAuthenticator.md)
- [MfaCoverageReport](docs/Model/MfaCoverageReport.md)
- [MfaPolicy](docs/Model/MfaPolicy.md)
- [OAuthAccessToken](docs/Model/OAuthAccessToken.md)
- [OAuthClient](docs/Model/OAuthClient.md)
- [OAuthClientSecretIssued](docs/Model/OAuthClientSecretIssued.md)
- [OAuthScope](docs/Model/OAuthScope.md)
- [OpenIdConfiguration](docs/Model/OpenIdConfiguration.md)
- [Organization](docs/Model/Organization.md)
- [OrganizationInvitation](docs/Model/OrganizationInvitation.md)
- [OrganizationInvitationRole](docs/Model/OrganizationInvitationRole.md)
- [OrganizationMember](docs/Model/OrganizationMember.md)
- [OrganizationMemberRole](docs/Model/OrganizationMemberRole.md)
- [OrganizationRole](docs/Model/OrganizationRole.md)
- [PaginationMeta](docs/Model/PaginationMeta.md)
- [ParResponse](docs/Model/ParResponse.md)
- [PasskeyEnrollmentStarted](docs/Model/PasskeyEnrollmentStarted.md)
- [Permission](docs/Model/Permission.md)
- [ProtectedResourceList](docs/Model/ProtectedResourceList.md)
- [ProtectedResourceMetadata](docs/Model/ProtectedResourceMetadata.md)
- [PushEnrollmentStarted](docs/Model/PushEnrollmentStarted.md)
- [PutAbacAttributesUpdateResponse](docs/Model/PutAbacAttributesUpdateResponse.md)
- [PutAbacPoliciesUpdateResponse](docs/Model/PutAbacPoliciesUpdateResponse.md)
- [PutAdminAgentsUpdateRequest](docs/Model/PutAdminAgentsUpdateRequest.md)
- [PutAdminAgentsUpdateResponse](docs/Model/PutAdminAgentsUpdateResponse.md)
- [PutAdminOrgMembersUpdateResponse](docs/Model/PutAdminOrgMembersUpdateResponse.md)
- [PutAdminSettingsAuthenticationUpdateResponse](docs/Model/PutAdminSettingsAuthenticationUpdateResponse.md)
- [PutAdminSettingsBrandingUpdateResponse](docs/Model/PutAdminSettingsBrandingUpdateResponse.md)
- [PutAdminSettingsEmailUpdateResponse](docs/Model/PutAdminSettingsEmailUpdateResponse.md)
- [PutAdminSettingsGeneralUpdateResponse](docs/Model/PutAdminSettingsGeneralUpdateResponse.md)
- [PutAdminSettingsGeneralUpdateResponseData](docs/Model/PutAdminSettingsGeneralUpdateResponseData.md)
- [PutAdminSettingsScimUpdateResponse](docs/Model/PutAdminSettingsScimUpdateResponse.md)
- [PutAdminSettingsSecurityUpdateResponse](docs/Model/PutAdminSettingsSecurityUpdateResponse.md)
- [PutAdminTenantUpdateResponse](docs/Model/PutAdminTenantUpdateResponse.md)
- [PutAdminWebhooksUpdateResponse](docs/Model/PutAdminWebhooksUpdateResponse.md)
- [RedactedSecret](docs/Model/RedactedSecret.md)
- [RegisterAgentResponse](docs/Model/RegisterAgentResponse.md)
- [RegisterClientResponse](docs/Model/RegisterClientResponse.md)
- [RegisteredClientMetadata](docs/Model/RegisteredClientMetadata.md)
- [RemoveUserGroupResponse](docs/Model/RemoveUserGroupResponse.md)
- [RemoveUserPermissionResponse](docs/Model/RemoveUserPermissionResponse.md)
- [RemoveUserRoleResponse](docs/Model/RemoveUserRoleResponse.md)
- [RequestPermissionRequest](docs/Model/RequestPermissionRequest.md)
- [RequestPermissionResponse](docs/Model/RequestPermissionResponse.md)
- [RevokeAgentTokenRequest](docs/Model/RevokeAgentTokenRequest.md)
- [RevokeAgentTokenResponse](docs/Model/RevokeAgentTokenResponse.md)
- [Role](docs/Model/Role.md)
- [RolePermissionsInner](docs/Model/RolePermissionsInner.md)
- [RoleRef](docs/Model/RoleRef.md)
- [RotateClientSecretResponse](docs/Model/RotateClientSecretResponse.md)
- [RotateClientSecretResponseData](docs/Model/RotateClientSecretResponseData.md)
- [SandboxTenant](docs/Model/SandboxTenant.md)
- [ScimSettings](docs/Model/ScimSettings.md)
- [ScimSettingsInbound](docs/Model/ScimSettingsInbound.md)
- [ScimSettingsInboundProtectedAttributes](docs/Model/ScimSettingsInboundProtectedAttributes.md)
- [ScimSettingsOutbound](docs/Model/ScimSettingsOutbound.md)
- [SendUserVerificationEmailResponse](docs/Model/SendUserVerificationEmailResponse.md)
- [SetClientScopesResponse](docs/Model/SetClientScopesResponse.md)
- [SetResourceAttributeResponse](docs/Model/SetResourceAttributeResponse.md)
- [SetUserAttributeResponse](docs/Model/SetUserAttributeResponse.md)
- [SetUserAttributeResponseData](docs/Model/SetUserAttributeResponseData.md)
- [SetUserPasswordPostResponse](docs/Model/SetUserPasswordPostResponse.md)
- [SignedAgentCard](docs/Model/SignedAgentCard.md)
- [SingleServerMetadata](docs/Model/SingleServerMetadata.md)
- [SmsEnrollmentStarted](docs/Model/SmsEnrollmentStarted.md)
- [SocialLoginProvider](docs/Model/SocialLoginProvider.md)
- [SsfStream](docs/Model/SsfStream.md)
- [SsfStreamDelivery](docs/Model/SsfStreamDelivery.md)
- [SsfStreamList](docs/Model/SsfStreamList.md)
- [SubmitLoginJsonResponse](docs/Model/SubmitLoginJsonResponse.md)
- [TenantProfile](docs/Model/TenantProfile.md)
- [TokenResponse](docs/Model/TokenResponse.md)
- [TotpEnrollmentStarted](docs/Model/TotpEnrollmentStarted.md)
- [TriggerUserPasswordResetResponse](docs/Model/TriggerUserPasswordResetResponse.md)
- [UnblockUserResponse](docs/Model/UnblockUserResponse.md)
- [UpdateAuthenticatorRequest](docs/Model/UpdateAuthenticatorRequest.md)
- [UpdateClientResponse](docs/Model/UpdateClientResponse.md)
- [UpdateMfaPolicyResponse](docs/Model/UpdateMfaPolicyResponse.md)
- [UpdateUserGroupsResponse](docs/Model/UpdateUserGroupsResponse.md)
- [UpdateUserResponse](docs/Model/UpdateUserResponse.md)
- [UpdateUserRolesResponse](docs/Model/UpdateUserRolesResponse.md)
- [User](docs/Model/User.md)
- [UserRef](docs/Model/UserRef.md)
- [UserSession](docs/Model/UserSession.md)
- [UserinfoResponse](docs/Model/UserinfoResponse.md)
- [VerifyAgentCardResponse](docs/Model/VerifyAgentCardResponse.md)
- [VerifyAgentCardResponseCardSummary](docs/Model/VerifyAgentCardResponseCardSummary.md)
- [VerifyAgentCardResponseSigner](docs/Model/VerifyAgentCardResponseSigner.md)
- [VerifyAuthTokenRequest](docs/Model/VerifyAuthTokenRequest.md)
- [VerifyAuthTokenResponse](docs/Model/VerifyAuthTokenResponse.md)
- [VerifyMfaChallengeRequest](docs/Model/VerifyMfaChallengeRequest.md)
- [VerifyResourceTokenRequest](docs/Model/VerifyResourceTokenRequest.md)
- [VerifyResourceTokenResponse](docs/Model/VerifyResourceTokenResponse.md)
- [Webhook](docs/Model/Webhook.md)
- [WebhookDelivery](docs/Model/WebhookDelivery.md)
- [WebhookDeliveryDetail](docs/Model/WebhookDeliveryDetail.md)
- [WebhookSecretIssued](docs/Model/WebhookSecretIssued.md)

## Authorization

Authentication schemes defined for the API:
### BearerAuth

- **Type**: Bearer authentication (JWT)

### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


### ClientAuth

- **Type**: HTTP basic authentication

### AAuthSigned

- **Type**: Bearer authentication (JWT)

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

sdk@lumoauth.dev

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Package version: `0.1.0`
    - Generator version: `7.14.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
