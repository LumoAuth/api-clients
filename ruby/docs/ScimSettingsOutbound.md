# LumoAuthApiClient::ScimSettingsOutbound

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **endpoint_url** | **String** |  | [optional] |
| **bearer_token** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] |
| **auth_type** | **String** |  | [optional] |
| **basic_username** | **String** |  | [optional] |
| **basic_password** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] |
| **oauth2_client_id** | **String** |  | [optional] |
| **oauth2_client_secret** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] |
| **oauth2_token_url** | **String** |  | [optional] |
| **oauth2_scope** | **String** |  | [optional] |
| **tls_certificate** | **String** | Optional PEM CA certificate used for TLS verification. | [optional] |
| **verify_tls** | **Boolean** |  | [optional] |
| **push_user_creates** | **Boolean** |  | [optional] |
| **push_user_updates** | **Boolean** |  | [optional] |
| **push_user_deletes** | **Boolean** |  | [optional] |
| **push_group_changes** | **Boolean** |  | [optional] |
| **sync_on_login** | **Boolean** |  | [optional] |
| **batch_sync_enabled** | **Boolean** |  | [optional] |
| **batch_sync_interval** | **String** |  | [optional] |
| **attribute_mapping** | **Hash&lt;String, String&gt;** | User field &#x3D;&gt; SCIM attribute. | [optional] |
| **last_sync_at** | **String** |  | [optional] |
| **last_sync_status** | **String** |  | [optional] |
| **last_sync_error** | **String** |  | [optional] |
| **last_batch_sync_at** | **String** |  | [optional] |
| **last_batch_sync_status** | **String** |  | [optional] |
| **last_batch_sync_error** | **String** |  | [optional] |
| **last_batch_sync_counts** | **Hash&lt;String, Object&gt;** | Free-form counters of the last batch reconcile. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ScimSettingsOutbound.new(
  enabled: null,
  endpoint_url: null,
  bearer_token: null,
  auth_type: null,
  basic_username: null,
  basic_password: null,
  oauth2_client_id: null,
  oauth2_client_secret: null,
  oauth2_token_url: null,
  oauth2_scope: null,
  tls_certificate: null,
  verify_tls: null,
  push_user_creates: null,
  push_user_updates: null,
  push_user_deletes: null,
  push_group_changes: null,
  sync_on_login: null,
  batch_sync_enabled: null,
  batch_sync_interval: null,
  attribute_mapping: null,
  last_sync_at: null,
  last_sync_status: null,
  last_sync_error: null,
  last_batch_sync_at: null,
  last_batch_sync_status: null,
  last_batch_sync_error: null,
  last_batch_sync_counts: null
)
```

