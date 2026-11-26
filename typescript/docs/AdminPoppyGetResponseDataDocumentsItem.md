# AdminPoppyGetResponseDataDocumentsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **string** |  | [optional] [default to undefined]
**poppy_json** | **{ [key: string]: any; }** | The generated poppy.json of the domain. | [optional] [default to undefined]
**protected_resource_metadata** | **{ [key: string]: any; }** | The generated RFC 9728 document of the domain. | [optional] [default to undefined]
**hosted** | [**AdminPoppyGetResponseDataDocumentsItemHosted**](AdminPoppyGetResponseDataDocumentsItemHosted.md) |  | [optional] [default to undefined]
**serve_at** | [**AdminPoppyGetResponseDataDocumentsItemServeAt**](AdminPoppyGetResponseDataDocumentsItemServeAt.md) |  | [optional] [default to undefined]

## Example

```typescript
import { AdminPoppyGetResponseDataDocumentsItem } from '@lumoauth/api-client';

const instance: AdminPoppyGetResponseDataDocumentsItem = {
    domain,
    poppy_json,
    protected_resource_metadata,
    hosted,
    serve_at,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
