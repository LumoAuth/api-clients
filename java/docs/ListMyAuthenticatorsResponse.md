

# ListMyAuthenticatorsResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**_default** | **String** |  |  [optional] |
|**authenticators** | [**List&lt;MfaAuthenticator&gt;**](MfaAuthenticator.md) |  |  [optional] |
|**recoveryCodes** | [**ListMyAuthenticatorsResponseRecoveryCodes**](ListMyAuthenticatorsResponseRecoveryCodes.md) |  |  [optional] |
|**allowedTypes** | **List&lt;String&gt;** |  |  [optional] |
|**recommendedType** | **String** |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PROTECTED | &quot;protected&quot; |
| ADD_BACKUP | &quot;add_backup&quot; |
| AT_RISK | &quot;at_risk&quot; |



