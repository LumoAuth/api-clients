# GetMeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject_type** | **string** |  | [optional] [default to undefined]
**id** | **string** |  | [optional] [default to undefined]
**email** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**mfa_enabled** | **boolean** |  | [optional] [default to undefined]
**roles** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**capabilities** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**scopes** | **Array&lt;string&gt;** | Agents only: the OAuth scope values that the agent may request for this organization\&#39;s API, as RFC 7591 defines a client\&#39;s registered scope. They are its capabilities, each a scope token (RFC 6749 section 3.3). | [optional] [default to undefined]
**scope** | **Array&lt;string&gt;** | Agents only: the scope of the presented token. | [optional] [default to undefined]
**scope_narrowed** | **boolean** | Agents only: true when the token scope leaves out one of the agent\&#39;s capabilities. | [optional] [default to undefined]
**tenant** | [**GroupRef**](GroupRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { GetMeResponse } from '@lumoauth/api-client';

const instance: GetMeResponse = {
    subject_type,
    id,
    email,
    name,
    mfa_enabled,
    roles,
    capabilities,
    scopes,
    scope,
    scope_narrowed,
    tenant,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
