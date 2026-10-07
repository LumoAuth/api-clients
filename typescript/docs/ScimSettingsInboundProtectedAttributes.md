# ScimSettingsInboundProtectedAttributes

Attribute name => true when SCIM may not change it.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **boolean** |  | [optional] [default to undefined]
**name** | **boolean** |  | [optional] [default to undefined]
**active** | **boolean** |  | [optional] [default to undefined]
**roles** | **boolean** |  | [optional] [default to undefined]
**permissions** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { ScimSettingsInboundProtectedAttributes } from '@lumoauth/api-client';

const instance: ScimSettingsInboundProtectedAttributes = {
    email,
    name,
    active,
    roles,
    permissions,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
