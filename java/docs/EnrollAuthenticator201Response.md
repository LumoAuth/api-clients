

# EnrollAuthenticator201Response


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | [**IdEnum**](#IdEnum) |  |  [optional] |
|**state** | [**StateEnum**](#StateEnum) |  |  [optional] |
|**otpauthUri** | **String** |  |  [optional] |
|**secret** | **String** |  |  [optional] |
|**secretGrouped** | **String** |  |  [optional] |
|**qrDataUri** | **String** |  |  [optional] |
|**expiresAt** | **OffsetDateTime** |  |  [optional] |
|**maskedPhone** | **String** |  |  [optional] |
|**resendAfter** | **Integer** | Seconds until a new code may be requested |  [optional] |
|**maskedEmail** | **String** |  |  [optional] |
|**deepLink** | **String** |  |  [optional] |
|**activationCode** | **String** |  |  [optional] |
|**publicKey** | **Object** | WebAuthn PublicKeyCredentialCreationOptions |  [optional] |



## Enum: IdEnum

| Name | Value |
|---- | -----|
| PASSKEY_PENDING | &quot;passkey:pending&quot; |



## Enum: StateEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |



