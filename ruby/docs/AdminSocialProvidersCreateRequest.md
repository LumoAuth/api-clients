# LumoAuthApiClient::AdminSocialProvidersCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The provider key, for example google, microsoft, github or apple. |  |
| **client_id** | **String** |  | [optional] |
| **client_secret** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **enable_for_o_auth_apps** | **Boolean** |  | [optional] |
| **requested_scopes** | **Array&lt;String&gt;** |  | [optional] |
| **claim_mapping** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **provider_config** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **default_roles** | **Array&lt;String&gt;** | Role slugs; roles that open the portal are refused. | [optional] |
| **brand_color** | **String** |  | [optional] |
| **icon_url** | **String** |  | [optional] |
| **authorization_url** | **String** |  | [optional] |
| **token_url** | **String** |  | [optional] |
| **user_info_url** | **String** |  | [optional] |
| **hosted_domain** | **String** | Google: Workspace domain. | [optional] |
| **tenant_id** | **String** | Microsoft: Entra tenant. | [optional] |
| **issuer_url** | **String** |  | [optional] |
| **team_id** | **String** | Apple. | [optional] |
| **key_id** | **String** | Apple. | [optional] |
| **private_key** | **String** | Apple: the .p8 key. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSocialProvidersCreateRequest.new(
  provider: null,
  client_id: null,
  client_secret: null,
  display_name: null,
  enabled: null,
  enable_for_o_auth_apps: null,
  requested_scopes: null,
  claim_mapping: null,
  provider_config: null,
  default_roles: null,
  brand_color: null,
  icon_url: null,
  authorization_url: null,
  token_url: null,
  user_info_url: null,
  hosted_domain: null,
  tenant_id: null,
  issuer_url: null,
  team_id: null,
  key_id: null,
  private_key: null
)
```

