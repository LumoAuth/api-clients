# AdminPoppyGetResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**settings** | **{ [key: string]: any; }** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional] [default to undefined]
**active** | **boolean** | The protocol is switched on, in the plan, and the organization is active. | [optional] [default to undefined]
**in_plan** | **boolean** |  | [optional] [default to undefined]
**identifier** | **string** | The Company identifier: the issuer that Session JWTs name as aud. | [optional] [default to undefined]
**issuer_choices** | [**Array&lt;AdminPoppyGetResponseDataIssuerChoicesItem&gt;**](AdminPoppyGetResponseDataIssuerChoicesItem.md) |  | [optional] [default to undefined]
**offered_scopes** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**offered_resources** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**tasks_endpoint** | **string** |  | [optional] [default to undefined]
**feedback_endpoint** | **string** |  | [optional] [default to undefined]
**documents** | [**Array&lt;AdminPoppyGetResponseDataDocumentsItem&gt;**](AdminPoppyGetResponseDataDocumentsItem.md) |  | [optional] [default to undefined]

## Example

```typescript
import { AdminPoppyGetResponseData } from '@lumoauth/api-client';

const instance: AdminPoppyGetResponseData = {
    settings,
    active,
    in_plan,
    identifier,
    issuer_choices,
    offered_scopes,
    offered_resources,
    tasks_endpoint,
    feedback_endpoint,
    documents,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
