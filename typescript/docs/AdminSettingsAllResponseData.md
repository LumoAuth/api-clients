# AdminSettingsAllResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general** | [**AdminSettingsAllResponseDataGeneral**](AdminSettingsAllResponseDataGeneral.md) |  | [optional] [default to undefined]
**authentication** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [optional] [default to undefined]
**branding** | [**BrandingSettings**](BrandingSettings.md) |  | [optional] [default to undefined]
**security** | [**AdminSettingsAllResponseDataSecurity**](AdminSettingsAllResponseDataSecurity.md) |  | [optional] [default to undefined]
**email** | **{ [key: string]: any; }** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] [default to undefined]

## Example

```typescript
import { AdminSettingsAllResponseData } from '@lumoauth/api-client';

const instance: AdminSettingsAllResponseData = {
    general,
    authentication,
    branding,
    security,
    email,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
