# MfaPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requirement** | **String** |  | [optional] [default to .riskBased]
**allowedFactors** | **[String]** |  | [optional] 
**minTierLogin** | **Int** |  | [optional] [default to 4]
**minTierStepUp** | **Int** |  | [optional] [default to 3]
**passwordlessPasskey** | **Bool** |  | [optional] [default to true]
**requiredFactorCount** | **Int** |  | [optional] [default to 1]
**gracePeriodDays** | **Int** |  | [optional] [default to 14]
**remindIntervalDays** | **Int** |  | [optional] [default to 7]
**trustedDeviceDays** | **Int** |  | [optional] [default to 30]
**emailOtpCountsAsMfa** | **Bool** |  | [optional] [default to false]
**smsBlockVoip** | **Bool** |  | [optional] [default to false]
**smsCountryAllowlist** | **[String]** |  | [optional] 
**smsCountryDenylist** | **[String]** |  | [optional] 
**nudgeIntervalDays** | **Int** |  | [optional] [default to 30]
**stepUpMaxAgeSeconds** | **Int** |  | [optional] [default to 600]
**requiredSince** | **Int** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


