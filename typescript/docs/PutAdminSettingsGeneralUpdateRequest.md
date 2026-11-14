# PutAdminSettingsGeneralUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the organization: one line, 1 to 255 characters. Aliases: tenantName, display_name, displayName. | [optional] [default to undefined]
**locale** | **string** | Default language of the hosted pages: en, es, fr, de, pt_BR (pt-BR is accepted too), it, nl, ja or ar. A change also needs the branding.edit permission. | [optional] [default to undefined]

## Example

```typescript
import { PutAdminSettingsGeneralUpdateRequest } from '@lumoauth/api-client';

const instance: PutAdminSettingsGeneralUpdateRequest = {
    name,
    locale,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
