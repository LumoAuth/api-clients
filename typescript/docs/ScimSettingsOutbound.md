# ScimSettingsOutbound

Outbound SCIM client settings (entity defaults merged with the stored values).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **boolean** |  | [optional] [default to undefined]
**endpoint_url** | **string** |  | [optional] [default to undefined]
**bearer_token** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] [default to undefined]
**auth_type** | **string** |  | [optional] [default to undefined]
**basic_username** | **string** |  | [optional] [default to undefined]
**basic_password** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] [default to undefined]
**oauth2_client_id** | **string** |  | [optional] [default to undefined]
**oauth2_client_secret** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] [default to undefined]
**oauth2_token_url** | **string** |  | [optional] [default to undefined]
**oauth2_scope** | **string** |  | [optional] [default to undefined]
**tls_certificate** | **string** | Optional PEM CA certificate used for TLS verification. | [optional] [default to undefined]
**verify_tls** | **boolean** |  | [optional] [default to undefined]
**push_user_creates** | **boolean** |  | [optional] [default to undefined]
**push_user_updates** | **boolean** |  | [optional] [default to undefined]
**push_user_deletes** | **boolean** |  | [optional] [default to undefined]
**push_group_changes** | **boolean** |  | [optional] [default to undefined]
**sync_on_login** | **boolean** |  | [optional] [default to undefined]
**batch_sync_enabled** | **boolean** |  | [optional] [default to undefined]
**batch_sync_interval** | **string** |  | [optional] [default to undefined]
**attribute_mapping** | **{ [key: string]: string; }** | User field &#x3D;&gt; SCIM attribute. | [optional] [default to undefined]
**last_sync_at** | **string** |  | [optional] [default to undefined]
**last_sync_status** | **string** |  | [optional] [default to undefined]
**last_sync_error** | **string** |  | [optional] [default to undefined]
**last_batch_sync_at** | **string** |  | [optional] [default to undefined]
**last_batch_sync_status** | **string** |  | [optional] [default to undefined]
**last_batch_sync_error** | **string** |  | [optional] [default to undefined]
**last_batch_sync_counts** | **{ [key: string]: any; }** | Free-form counters of the last batch reconcile. | [optional] [default to undefined]

## Example

```typescript
import { ScimSettingsOutbound } from '@lumoauth/api-client';

const instance: ScimSettingsOutbound = {
    enabled,
    endpoint_url,
    bearer_token,
    auth_type,
    basic_username,
    basic_password,
    oauth2_client_id,
    oauth2_client_secret,
    oauth2_token_url,
    oauth2_scope,
    tls_certificate,
    verify_tls,
    push_user_creates,
    push_user_updates,
    push_user_deletes,
    push_group_changes,
    sync_on_login,
    batch_sync_enabled,
    batch_sync_interval,
    attribute_mapping,
    last_sync_at,
    last_sync_status,
    last_sync_error,
    last_batch_sync_at,
    last_batch_sync_status,
    last_batch_sync_error,
    last_batch_sync_counts,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
