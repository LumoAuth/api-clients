# LumoAuthApiClient::AdminIdentitiesListResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_source** | **String** |  | [optional] |
| **ldap_only** | **Boolean** |  | [optional] |
| **bindings** | [**Array&lt;AdminIdentitiesListResponseDataBindingsItem&gt;**](AdminIdentitiesListResponseDataBindingsItem.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminIdentitiesListResponseData.new(
  auth_source: saml,
  ldap_only: null,
  bindings: null
)
```

