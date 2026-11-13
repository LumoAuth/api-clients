# AuthenticationSettingsPasswordPolicy

The password rules that apply. A write is merged with the stored object. A named template sets its own rules; rules sent without a template make the policy custom.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template** | **string** |  | [optional] [default to undefined]
**min_length** | **number** |  | [optional] [default to undefined]
**require_special** | **boolean** |  | [optional] [default to undefined]
**require_numbers** | **boolean** |  | [optional] [default to undefined]
**require_uppercase** | **boolean** |  | [optional] [default to undefined]
**require_lowercase** | **boolean** |  | [optional] [default to undefined]
**reject_breached_passwords** | **boolean** |  | [optional] [default to undefined]
**breached_password_min_count** | **number** |  | [optional] [default to undefined]
**check_breached_on_login** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { AuthenticationSettingsPasswordPolicy } from '@lumoauth/api-client';

const instance: AuthenticationSettingsPasswordPolicy = {
    template,
    min_length,
    require_special,
    require_numbers,
    require_uppercase,
    require_lowercase,
    reject_breached_passwords,
    breached_password_min_count,
    check_breached_on_login,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
