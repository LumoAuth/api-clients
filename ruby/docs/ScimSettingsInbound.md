# LumoAuthApiClient::ScimSettingsInbound

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **bearer_token** | **String** | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional] |
| **bearer_token_hash** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] |
| **bearer_token_preview** | **String** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional] |
| **token_created_at** | **String** |  | [optional] |
| **allow_user_creation** | **Boolean** |  | [optional] |
| **allow_user_updates** | **Boolean** |  | [optional] |
| **allow_user_deletion** | **Boolean** |  | [optional] |
| **allow_group_operations** | **Boolean** |  | [optional] |
| **protected_attributes** | [**ScimSettingsInboundProtectedAttributes**](ScimSettingsInboundProtectedAttributes.md) |  | [optional] |
| **attribute_mapping** | **Hash&lt;String, String&gt;** | SCIM attribute &#x3D;&gt; user field. | [optional] |
| **auto_activate_users** | **Boolean** |  | [optional] |
| **deprovisioning_action** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ScimSettingsInbound.new(
  enabled: null,
  bearer_token: null,
  bearer_token_hash: null,
  bearer_token_preview: null,
  token_created_at: null,
  allow_user_creation: null,
  allow_user_updates: null,
  allow_user_deletion: null,
  allow_group_operations: null,
  protected_attributes: null,
  attribute_mapping: null,
  auto_activate_users: null,
  deprovisioning_action: null
)
```

