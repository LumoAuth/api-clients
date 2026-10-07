# # MfaPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requirement** | **string** |  | [optional] [default to 'risk_based']
**allowedFactors** | **string[]** |  | [optional]
**minTierLogin** | **int** |  | [optional] [default to 4]
**minTierStepUp** | **int** |  | [optional] [default to 3]
**passwordlessPasskey** | **bool** |  | [optional] [default to true]
**requiredFactorCount** | **int** |  | [optional] [default to 1]
**gracePeriodDays** | **int** |  | [optional] [default to 14]
**remindIntervalDays** | **int** |  | [optional] [default to 7]
**trustedDeviceDays** | **int** |  | [optional] [default to 30]
**emailOtpCountsAsMfa** | **bool** |  | [optional] [default to false]
**smsBlockVoip** | **bool** |  | [optional] [default to false]
**smsCountryAllowlist** | **string[]** |  | [optional]
**smsCountryDenylist** | **string[]** |  | [optional]
**nudgeIntervalDays** | **int** |  | [optional] [default to 30]
**stepUpMaxAgeSeconds** | **int** |  | [optional] [default to 600]
**requiredSince** | **int** |  | [optional] [readonly]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
