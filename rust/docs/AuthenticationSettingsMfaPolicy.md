# AuthenticationSettingsMfaPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requirement** | Option<**String**> |  | [optional][default to RiskBased]
**allowed_factors** | Option<**Vec<String>**> |  | [optional]
**min_tier_login** | Option<**i32**> |  | [optional][default to 4]
**min_tier_step_up** | Option<**i32**> |  | [optional][default to 3]
**passwordless_passkey** | Option<**bool**> |  | [optional][default to true]
**required_factor_count** | Option<**i32**> |  | [optional][default to 1]
**grace_period_days** | Option<**i32**> |  | [optional][default to 14]
**remind_interval_days** | Option<**i32**> |  | [optional][default to 7]
**trusted_device_days** | Option<**i32**> |  | [optional][default to 30]
**email_otp_counts_as_mfa** | Option<**bool**> |  | [optional][default to false]
**sms_block_voip** | Option<**bool**> |  | [optional][default to false]
**sms_country_allowlist** | Option<**Vec<String>**> |  | [optional]
**sms_country_denylist** | Option<**Vec<String>**> |  | [optional]
**nudge_interval_days** | Option<**i32**> |  | [optional][default to 30]
**step_up_max_age_seconds** | Option<**i32**> |  | [optional][default to 600]
**required_since** | Option<**i32**> |  | [optional][readonly]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


