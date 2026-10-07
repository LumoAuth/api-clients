# AdminIdentitiesLegacySamlRelinkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idp_id** | **number** |  | [default to undefined]
**user_ids** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**all_matching_domains** | **boolean** |  | [optional] [default to false]
**dry_run** | **boolean** |  | [optional] [default to true]

## Example

```typescript
import { AdminIdentitiesLegacySamlRelinkRequest } from '@lumoauth/api-client';

const instance: AdminIdentitiesLegacySamlRelinkRequest = {
    idp_id,
    user_ids,
    all_matching_domains,
    dry_run,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
