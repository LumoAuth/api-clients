# StartAgentEnrollmentRequestCapabilitiesItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scope** | **string** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). | [default to undefined]
**risk** | **string** |  | [default to undefined]
**label** | **string** |  | [optional] [default to undefined]
**checked** | **boolean** | Pre-ticked on the approval page. | [optional] [default to undefined]

## Example

```typescript
import { StartAgentEnrollmentRequestCapabilitiesItem } from '@lumoauth/api-client';

const instance: StartAgentEnrollmentRequestCapabilitiesItem = {
    scope,
    risk,
    label,
    checked,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
