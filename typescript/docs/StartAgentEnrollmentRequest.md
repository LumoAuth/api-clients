# StartAgentEnrollmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**host** | **string** |  | [default to undefined]
**host_label** | **string** |  | [optional] [default to undefined]
**jwks** | [**StartAgentEnrollmentRequestJwks**](StartAgentEnrollmentRequestJwks.md) |  | [default to undefined]
**capabilities** | [**Array&lt;StartAgentEnrollmentRequestCapabilitiesItem&gt;**](StartAgentEnrollmentRequestCapabilitiesItem.md) |  | [default to undefined]
**delegation** | **boolean** | The agent asks to act on behalf of the approving person (needed for push approvals). | [optional] [default to undefined]
**inventory** | [**StartAgentEnrollmentRequestInventory**](StartAgentEnrollmentRequestInventory.md) |  | [optional] [default to undefined]

## Example

```typescript
import { StartAgentEnrollmentRequest } from '@lumoauth/api-client';

const instance: StartAgentEnrollmentRequest = {
    name,
    host,
    host_label,
    jwks,
    capabilities,
    delegation,
    inventory,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
