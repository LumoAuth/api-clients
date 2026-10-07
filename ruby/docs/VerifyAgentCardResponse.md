# LumoAuthApiClient::VerifyAgentCardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Boolean** |  |  |
| **error** | **String** | Reason, only when valid&#x3D;false. | [optional] |
| **signer** | [**VerifyAgentCardResponseSigner**](VerifyAgentCardResponseSigner.md) |  | [optional] |
| **card_summary** | [**VerifyAgentCardResponseCardSummary**](VerifyAgentCardResponseCardSummary.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyAgentCardResponse.new(
  valid: null,
  error: null,
  signer: null,
  card_summary: null
)
```

