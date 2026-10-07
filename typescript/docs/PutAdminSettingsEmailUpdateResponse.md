# PutAdminSettingsEmailUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **{ [key: string]: any; }** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] [default to undefined]
**message** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { PutAdminSettingsEmailUpdateResponse } from '@lumoauth/api-client';

const instance: PutAdminSettingsEmailUpdateResponse = {
    data,
    message,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
