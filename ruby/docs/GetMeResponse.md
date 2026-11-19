# LumoAuthApiClient::GetMeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **mfa_enabled** | **Boolean** |  | [optional] |
| **roles** | **Array&lt;String&gt;** |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** | Agents only: the OAuth scope values that the agent may request for this organization&#39;s API, as RFC 7591 defines a client&#39;s registered scope. They are its capabilities, each a scope token (RFC 6749 section 3.3). | [optional] |
| **scope** | **Array&lt;String&gt;** | Agents only: the scope of the presented token. | [optional] |
| **scope_narrowed** | **Boolean** | Agents only: true when the token scope leaves out one of the agent&#39;s capabilities. | [optional] |
| **tenant** | [**GroupRef**](GroupRef.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetMeResponse.new(
  subject_type: null,
  id: null,
  email: null,
  name: null,
  mfa_enabled: null,
  roles: null,
  capabilities: null,
  scopes: null,
  scope: null,
  scope_narrowed: null,
  tenant: null
)
```

