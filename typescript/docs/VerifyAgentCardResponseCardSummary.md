# VerifyAgentCardResponseCardSummary

Only when valid=true.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolVersion** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**url** | **string** |  | [optional] [default to undefined]
**version** | **string** |  | [optional] [default to undefined]
**provider** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**skills** | **number** | Number of skills declared on the card. | [optional] [default to undefined]

## Example

```typescript
import { VerifyAgentCardResponseCardSummary } from '@lumoauth/api-client';

const instance: VerifyAgentCardResponseCardSummary = {
    protocolVersion,
    name,
    url,
    version,
    provider,
    skills,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
