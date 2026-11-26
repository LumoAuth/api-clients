# AdminPoppyUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **boolean** |  | [optional] [default to undefined]
**issuer** | **string** | null for the platform address, or one of the active custom domains. | [optional] [default to undefined]
**organization** | [**AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  | [optional] [default to undefined]
**domains** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**sign_in** | [**AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  | [optional] [default to undefined]
**scopes** | [**{ [key: string]: AdminPoppyUpdateRequestScopesValue; }**](AdminPoppyUpdateRequestScopesValue.md) | Scope name &#x3D;&gt; {description, changes, personal_data}. | [optional] [default to undefined]
**resources** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**apis** | [**Array&lt;AdminPoppyUpdateRequestApisItem&gt;**](AdminPoppyUpdateRequestApisItem.md) |  | [optional] [default to undefined]
**agent** | [**Array&lt;AdminPoppyUpdateRequestAgentItem&gt;**](AdminPoppyUpdateRequestAgentItem.md) |  | [optional] [default to undefined]
**web** | [**AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  | [optional] [default to undefined]
**tasks** | [**AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  | [optional] [default to undefined]
**extensions** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**sessions** | [**AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  | [optional] [default to undefined]

## Example

```typescript
import { AdminPoppyUpdateRequest } from '@lumoauth/api-client';

const instance: AdminPoppyUpdateRequest = {
    enabled,
    issuer,
    organization,
    domains,
    sign_in,
    scopes,
    resources,
    apis,
    agent,
    web,
    tasks,
    extensions,
    sessions,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
