# LumoAuthApiClient::AttestResponseIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **issuer** | **String** |  | [optional] |
| **audience_generic** | **Boolean** | True when the registered audience is not specific to this deployment (operators should move to the agent-specific audience). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AttestResponseIdentity.new(
  provider: github,
  subject: null,
  issuer: null,
  audience_generic: null
)
```

