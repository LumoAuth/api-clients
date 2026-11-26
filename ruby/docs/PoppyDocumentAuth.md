# LumoAuthApiClient::PoppyDocumentAuth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer** | **String** | The organization&#39;s issuer that personal agents use. | [optional] |
| **disabled** | **Boolean** | true while the organization offers personal agents no sign-in. | [optional] |
| **scopes** | **Hash&lt;String, String&gt;** | Scope name to description. | [optional] |
| **scope_hints** | [**Hash&lt;String, PoppyDocumentAuthScopeHintsValue&gt;**](PoppyDocumentAuthScopeHintsValue.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyDocumentAuth.new(
  issuer: null,
  disabled: null,
  scopes: null,
  scope_hints: null
)
```

