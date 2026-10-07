# ScimSettingsInbound

Inbound SCIM server settings (entity defaults merged with the stored values).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **boolean** |  | [optional] [default to undefined]
**bearer_token** | **string** | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional] [default to undefined]
**bearer_token_hash** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] [default to undefined]
**bearer_token_preview** | **string** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional] [default to undefined]
**token_created_at** | **string** |  | [optional] [default to undefined]
**allow_user_creation** | **boolean** |  | [optional] [default to undefined]
**allow_user_updates** | **boolean** |  | [optional] [default to undefined]
**allow_user_deletion** | **boolean** |  | [optional] [default to undefined]
**allow_group_operations** | **boolean** |  | [optional] [default to undefined]
**protected_attributes** | [**ScimSettingsInboundProtectedAttributes**](ScimSettingsInboundProtectedAttributes.md) |  | [optional] [default to undefined]
**attribute_mapping** | **{ [key: string]: string; }** | SCIM attribute &#x3D;&gt; user field. | [optional] [default to undefined]
**auto_activate_users** | **boolean** |  | [optional] [default to undefined]
**deprovisioning_action** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { ScimSettingsInbound } from '@lumoauth/api-client';

const instance: ScimSettingsInbound = {
    enabled,
    bearer_token,
    bearer_token_hash,
    bearer_token_preview,
    token_created_at,
    allow_user_creation,
    allow_user_updates,
    allow_user_deletion,
    allow_group_operations,
    protected_attributes,
    attribute_mapping,
    auto_activate_users,
    deprovisioning_action,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
