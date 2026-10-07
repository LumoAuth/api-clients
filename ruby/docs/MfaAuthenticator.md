# LumoAuthApiClient::MfaAuthenticator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **tier** | **Integer** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only | [optional] |
| **tier_label** | **String** |  | [optional] |
| **amr** | **Array&lt;String&gt;** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **activated_at** | **Time** |  | [optional] |
| **last_used_at** | **Time** |  | [optional] |
| **last_used_context** | [**MfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::MfaAuthenticator.new(
  id: totp:12,
  type: null,
  display_name: null,
  state: null,
  is_default: null,
  tier: null,
  tier_label: null,
  amr: null,
  created_at: null,
  activated_at: null,
  last_used_at: null,
  last_used_context: null,
  metadata: null
)
```

