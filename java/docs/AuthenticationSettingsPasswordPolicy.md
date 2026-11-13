

# AuthenticationSettingsPasswordPolicy

The password rules that apply. A write is merged with the stored object. A named template sets its own rules; rules sent without a template make the policy custom.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**template** | [**TemplateEnum**](#TemplateEnum) |  |  [optional] |
|**minLength** | **Integer** |  |  [optional] |
|**requireSpecial** | **Boolean** |  |  [optional] |
|**requireNumbers** | **Boolean** |  |  [optional] |
|**requireUppercase** | **Boolean** |  |  [optional] |
|**requireLowercase** | **Boolean** |  |  [optional] |
|**rejectBreachedPasswords** | **Boolean** |  |  [optional] |
|**breachedPasswordMinCount** | **Integer** |  |  [optional] |
|**checkBreachedOnLogin** | **Boolean** |  |  [optional] |



## Enum: TemplateEnum

| Name | Value |
|---- | -----|
| FAIR | &quot;fair&quot; |
| MODERATE | &quot;moderate&quot; |
| STRICT | &quot;strict&quot; |
| CUSTOM | &quot;custom&quot; |



