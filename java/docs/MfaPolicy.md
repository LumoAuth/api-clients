

# MfaPolicy


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**requirement** | [**RequirementEnum**](#RequirementEnum) |  |  [optional] |
|**allowedFactors** | [**List&lt;AllowedFactorsEnum&gt;**](#List&lt;AllowedFactorsEnum&gt;) |  |  [optional] |
|**minTierLogin** | **Integer** |  |  [optional] |
|**minTierStepUp** | **Integer** |  |  [optional] |
|**passwordlessPasskey** | **Boolean** |  |  [optional] |
|**requiredFactorCount** | **Integer** |  |  [optional] |
|**gracePeriodDays** | **Integer** |  |  [optional] |
|**remindIntervalDays** | **Integer** |  |  [optional] |
|**trustedDeviceDays** | **Integer** |  |  [optional] |
|**emailOtpCountsAsMfa** | **Boolean** |  |  [optional] |
|**smsBlockVoip** | **Boolean** |  |  [optional] |
|**smsCountryAllowlist** | **List&lt;String&gt;** |  |  [optional] |
|**smsCountryDenylist** | **List&lt;String&gt;** |  |  [optional] |
|**nudgeIntervalDays** | **Integer** |  |  [optional] |
|**stepUpMaxAgeSeconds** | **Integer** |  |  [optional] |
|**requiredSince** | **Integer** |  |  [optional] [readonly] |



## Enum: RequirementEnum

| Name | Value |
|---- | -----|
| OFF | &quot;off&quot; |
| OPTIONAL | &quot;optional&quot; |
| REQUIRED | &quot;required&quot; |
| RISK_BASED | &quot;risk_based&quot; |



## Enum: List&lt;AllowedFactorsEnum&gt;

| Name | Value |
|---- | -----|
| PASSKEY | &quot;passkey&quot; |
| PUSH | &quot;push&quot; |
| TOTP | &quot;totp&quot; |
| SMS_OTP | &quot;sms_otp&quot; |
| EMAIL_OTP | &quot;email_otp&quot; |



