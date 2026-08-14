# GetServerResponse


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
**require_pkce** | **boolean** |  | [optional] [default to undefined]
**token_lifetime** | **number** |  | [optional] [default to undefined]
**created_at** | **string** |  | [optional] [default to undefined]
**updated_at** | **string** |  | [optional] [default to undefined]
**discovery** | [**GetServerResponseDiscovery**](GetServerResponseDiscovery.md) |  | [optional] [default to undefined]

## Example

```typescript
import { GetServerResponse } from '@lumoauth/api-client';

const instance: GetServerResponse = {
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
    require_pkce,
    token_lifetime,
    created_at,
    updated_at,
    discovery,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
