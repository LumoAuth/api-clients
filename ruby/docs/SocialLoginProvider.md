# LumoAuthApiClient::SocialLoginProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **provider** | **String** |  |  |
| **display_name** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **brand_color** | **String** |  | [optional] |
| **icon_url** | **String** |  | [optional] |
| **jit_provisioning_enabled** | **Boolean** |  |  |
| **client_id** | **String** | Detailed responses only | [optional] |
| **callback_url** | **String** | Detailed responses only | [optional] |
| **requested_scopes** | **Array&lt;String&gt;** | Detailed responses only | [optional] |
| **custom_claims** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |
| **claim_mapping** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |
| **provider_config** | **Hash&lt;String, Object&gt;** | Detailed responses only; secrets redacted | [optional] |
| **authorization_url** | **String** | Detailed responses only | [optional] |
| **token_url** | **String** | Detailed responses only | [optional] |
| **user_info_url** | **String** | Detailed responses only | [optional] |
| **default_roles** | [**Array&lt;RoleRef&gt;**](RoleRef.md) | Detailed responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SocialLoginProvider.new(
  id: null,
  provider: null,
  display_name: null,
  enabled: null,
  brand_color: null,
  icon_url: null,
  jit_provisioning_enabled: null,
  client_id: null,
  callback_url: null,
  requested_scopes: null,
  custom_claims: null,
  claim_mapping: null,
  provider_config: null,
  authorization_url: null,
  token_url: null,
  user_info_url: null,
  default_roles: null
)
```

