# AuthenticationSettingsMfaPolicy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requirement** | **string** |  | [optional] [default to Requirement_RISK_BASED]
**allowed_factors** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**min_tier_login** | **number** |  | [optional] [default to 4]
**min_tier_step_up** | **number** |  | [optional] [default to 3]
**passwordless_passkey** | **boolean** |  | [optional] [default to true]
**required_factor_count** | **number** |  | [optional] [default to 1]
**grace_period_days** | **number** |  | [optional] [default to 14]
**remind_interval_days** | **number** |  | [optional] [default to 7]
**trusted_device_days** | **number** |  | [optional] [default to 30]
**email_otp_counts_as_mfa** | **boolean** |  | [optional] [default to false]
**sms_block_voip** | **boolean** |  | [optional] [default to false]
**sms_country_allowlist** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**sms_country_denylist** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**nudge_interval_days** | **number** |  | [optional] [default to 30]
**step_up_max_age_seconds** | **number** |  | [optional] [default to 600]
**required_since** | **number** |  | [optional] [readonly] [default to undefined]

## Example

```typescript
import { AuthenticationSettingsMfaPolicy } from '@lumoauth/api-client';

const instance: AuthenticationSettingsMfaPolicy = {
    requirement,
    allowed_factors,
    min_tier_login,
    min_tier_step_up,
    passwordless_passkey,
    required_factor_count,
    grace_period_days,
    remind_interval_days,
    trusted_device_days,
    email_otp_counts_as_mfa,
    sms_block_voip,
    sms_country_allowlist,
    sms_country_denylist,
    nudge_interval_days,
    step_up_max_age_seconds,
    required_since,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
