# LumoAuthApiClient::AdminIdentitiesListResponseDataBindingsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **idp_id** | **Integer** |  | [optional] |
| **name_id** | **String** |  | [optional] |
| **legacy** | **Boolean** |  | [optional] |
| **ldap_config_id** | **Integer** |  | [optional] |
| **dn** | **String** |  | [optional] |
| **provider** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminIdentitiesListResponseDataBindingsItem.new(
  type: null,
  idp_id: null,
  name_id: null,
  legacy: null,
  ldap_config_id: null,
  dn: null,
  provider: null
)
```

