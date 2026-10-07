# VerifyAgentCardResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid** | **boolean** |  | [default to undefined]
**error** | **string** | Reason, only when valid&#x3D;false. | [optional] [default to undefined]
**signer** | [**VerifyAgentCardResponseSigner**](VerifyAgentCardResponseSigner.md) |  | [optional] [default to undefined]
**card_summary** | [**VerifyAgentCardResponseCardSummary**](VerifyAgentCardResponseCardSummary.md) |  | [optional] [default to undefined]

## Example

```typescript
import { VerifyAgentCardResponse } from '@lumoauth/api-client';

const instance: VerifyAgentCardResponse = {
    valid,
    error,
    signer,
    card_summary,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
