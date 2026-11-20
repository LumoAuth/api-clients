# StartAgentEnrollmentRequestJwks

The agent\'s public keys, one or two (private members are refused). A key without \"kid\" gets its RFC 7638 thumbprint as kid.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys** | **Array&lt;{ [key: string]: any; }&gt;** |  | [optional] [default to undefined]

## Example

```typescript
import { StartAgentEnrollmentRequestJwks } from '@lumoauth/api-client';

const instance: StartAgentEnrollmentRequestJwks = {
    keys,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
