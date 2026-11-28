# CheckPermissionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission** | **string** |  | [default to undefined]
**context** | **{ [key: string]: any; }** | Optional: resource_id and the slugs of defined environment attributes. | [optional] [default to undefined]
**subject** | **{ [key: string]: any; }** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional] [default to undefined]

## Example

```typescript
import { CheckPermissionRequest } from '@lumoauth/api-client';

const instance: CheckPermissionRequest = {
    permission,
    context,
    subject,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
