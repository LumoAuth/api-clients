# AdminSandboxSpawnResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slug** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**created_at** | **string** |  | [default to undefined]
**expires_at** | **string** |  | [optional] [default to undefined]
**owner_email** | **string** |  | [optional] [default to undefined]
**spawned_from** | **string** |  | [optional] [default to undefined]
**api_key** | **string** | API key of the sandbox, with every Admin API scope. Shown only in this response; it expires with the sandbox. | [default to undefined]

## Example

```typescript
import { AdminSandboxSpawnResponseData } from '@lumoauth/api-client';

const instance: AdminSandboxSpawnResponseData = {
    slug,
    name,
    created_at,
    expires_at,
    owner_email,
    spawned_from,
    api_key,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
