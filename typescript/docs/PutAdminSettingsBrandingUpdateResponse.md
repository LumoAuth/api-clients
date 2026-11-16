# PutAdminSettingsBrandingUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**BrandingSettings**](BrandingSettings.md) |  | [optional] [default to undefined]
**rejected** | **Array&lt;string&gt;** | Keys whose value was refused by validation and not saved. | [optional] [default to undefined]
**message** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { PutAdminSettingsBrandingUpdateResponse } from '@lumoauth/api-client';

const instance: PutAdminSettingsBrandingUpdateResponse = {
    data,
    rejected,
    message,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
