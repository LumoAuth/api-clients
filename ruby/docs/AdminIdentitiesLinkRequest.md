# LumoAuthApiClient::AdminIdentitiesLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **idp_id** | **Integer** | SAML IdP config id (type&#x3D;saml) or OpenID Connect connection id (type&#x3D;oidc) | [optional] |
| **subject** | **String** | Subject the OpenID Connect provider issues for this user (type&#x3D;oidc) | [optional] |
| **name_id** | **String** | NameID the IdP asserts for this user (type&#x3D;saml) | [optional] |
| **ldap_config_id** | **Integer** | LDAP directory id (type&#x3D;ldap) | [optional] |
| **dn** | **String** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up | [optional] |
| **ldap_only** | **Boolean** | Also disable the local password (type&#x3D;ldap) | [optional][default to false] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminIdentitiesLinkRequest.new(
  type: null,
  idp_id: null,
  subject: 00u1abcd2EFGH3ijk4x5,
  name_id: jane@acme.com,
  ldap_config_id: null,
  dn: uid&#x3D;jane,ou&#x3D;people,dc&#x3D;acme,dc&#x3D;com,
  ldap_only: null
)
```

