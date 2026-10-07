# LumoAuthApiClient::CreateClientResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **client_id** | **String** |  |  |
| **name** | **String** |  |  |
| **is_confidential** | **Boolean** |  |  |
| **is_public** | **Boolean** |  |  |
| **is_active** | **Boolean** |  |  |
| **requires_pkce** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **redirect_uris** | **Array&lt;String&gt;** | Detailed responses only | [optional] |
| **scopes** | **Array&lt;String&gt;** | Detailed responses only | [optional] |
| **grant_types** | **Array&lt;String&gt;** | Detailed responses only | [optional] |
| **secret** | **String** | Plaintext client secret — returned only once, never retrievable again | [optional] |
| **_note** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateClientResponseData.new(
  id: null,
  client_id: null,
  name: null,
  is_confidential: null,
  is_public: null,
  is_active: null,
  requires_pkce: null,
  created_at: null,
  redirect_uris: null,
  scopes: null,
  grant_types: null,
  secret: null,
  _note: Store the secret securely. It will not be shown again.
)
```

