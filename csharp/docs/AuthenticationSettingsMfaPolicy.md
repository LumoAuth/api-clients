# LumoAuth.ApiClient.Model.AuthenticationSettingsMfaPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requirement** | **string** |  | [optional] [default to RequirementEnum.RiskBased]
**AllowedFactors** | **List&lt;AuthenticationSettingsMfaPolicy.AllowedFactorsEnum&gt;** |  | [optional] 
**MinTierLogin** | **int** |  | [optional] [default to 4]
**MinTierStepUp** | **int** |  | [optional] [default to 3]
**PasswordlessPasskey** | **bool** |  | [optional] [default to true]
**RequiredFactorCount** | **int** |  | [optional] [default to 1]
**GracePeriodDays** | **int** |  | [optional] [default to 14]
**RemindIntervalDays** | **int** |  | [optional] [default to 7]
**TrustedDeviceDays** | **int** |  | [optional] [default to 30]
**EmailOtpCountsAsMfa** | **bool** |  | [optional] [default to false]
**SmsBlockVoip** | **bool** |  | [optional] [default to false]
**SmsCountryAllowlist** | **List&lt;string&gt;** |  | [optional] 
**SmsCountryDenylist** | **List&lt;string&gt;** |  | [optional] 
**NudgeIntervalDays** | **int** |  | [optional] [default to 30]
**StepUpMaxAgeSeconds** | **int** |  | [optional] [default to 600]
**RequiredSince** | **int?** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

