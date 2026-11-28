# McpServerWrite

Fields of POST /admin/mcp/servers (name and resource_uri are required there) and PATCH|PUT /admin/mcp/servers/{serverId} (only the fields that are sent change; resource_uri cannot change). The same rules as the portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**resource_uri** | **string** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**endpoint_url** | **string** | Address that the server is reached at, when it differs from resource_uri. | [optional] [default to undefined]
**transport** | **string** |  | [optional] [default to Transport_HTTP_STREAMABLE]
**auth_mode** | **string** |  | [optional] [default to AuthMode_OAUTH]
**status** | **string** | Update only; a new server is active. | [optional] [default to undefined]
**scopes_supported** | [**McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  | [optional] [default to undefined]
**basic_scopes** | [**McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  | [optional] [default to undefined]
**scope_descriptions** | **{ [key: string]: string; }** | Text per scope of scopes_supported, for the portal and the consent page. | [optional] [default to undefined]
**allowed_client_ids** | **Array&lt;string&gt;** | Clients of this organization that may get tokens for the server; every client when empty. | [optional] [default to undefined]
**tool_authorizer_client_ids** | **Array&lt;string&gt;** | The server\&#39;s own clients that may call the per-tool authorization endpoint. | [optional] [default to undefined]
**token_lifetime** | **number** |  | [optional] [default to 3600]
**require_pkce** | **boolean** |  | [optional] [default to true]
**require_resource_param** | **boolean** |  | [optional] [default to true]
**require_dpop** | **boolean** |  | [optional] [default to false]

## Example

```typescript
import { McpServerWrite } from '@lumoauth/api-client';

const instance: McpServerWrite = {
    name,
    resource_uri,
    description,
    endpoint_url,
    transport,
    auth_mode,
    status,
    scopes_supported,
    basic_scopes,
    scope_descriptions,
    allowed_client_ids,
    tool_authorizer_client_ids,
    token_lifetime,
    require_pkce,
    require_resource_param,
    require_dpop,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
