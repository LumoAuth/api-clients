# McpServer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [optional] [default to undefined]
**server_id** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**resource_uri** | **string** |  | [optional] [default to undefined]
**endpoint_url** | **string** |  | [optional] [default to undefined]
**transport** | **string** |  | [optional] [default to undefined]
**auth_mode** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**scopes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**scope_descriptions** | **{ [key: string]: string; }** |  | [optional] [default to undefined]
**allowed_client_ids** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**require_pkce** | **boolean** |  | [optional] [default to undefined]
**require_resource_param** | **boolean** |  | [optional] [default to undefined]
**require_dpop** | **boolean** |  | [optional] [default to undefined]
**token_lifetime** | **number** |  | [optional] [default to undefined]
**posture** | [**McpServerPosture**](McpServerPosture.md) |  | [optional] [default to undefined]
**capabilities** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**created_at** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { McpServer } from '@lumoauth/api-client';

const instance: McpServer = {
    id,
    server_id,
    name,
    description,
    resource_uri,
    endpoint_url,
    transport,
    auth_mode,
    status,
    scopes_supported,
    scope_descriptions,
    allowed_client_ids,
    require_pkce,
    require_resource_param,
    require_dpop,
    token_lifetime,
    posture,
    capabilities,
    created_at,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
