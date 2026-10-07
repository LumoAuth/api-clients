

# MfaAuthenticator

One enrolled authenticator. `id` is a stable reference such as `totp:12` or `passkey:7`.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  [optional] |
|**type** | [**TypeEnum**](#TypeEnum) |  |  [optional] |
|**displayName** | **String** |  |  [optional] |
|**state** | [**StateEnum**](#StateEnum) |  |  [optional] |
|**isDefault** | **Boolean** |  |  [optional] |
|**tier** | **Integer** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only |  [optional] |
|**tierLabel** | [**TierLabelEnum**](#TierLabelEnum) |  |  [optional] |
|**amr** | **List&lt;String&gt;** |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**activatedAt** | **OffsetDateTime** |  |  [optional] |
|**lastUsedAt** | **OffsetDateTime** |  |  [optional] |
|**lastUsedContext** | [**MfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  |  [optional] |
|**metadata** | **Map&lt;String, Object&gt;** |  |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| PASSKEY | &quot;passkey&quot; |
| PUSH | &quot;push&quot; |
| TOTP | &quot;totp&quot; |
| SMS_OTP | &quot;sms_otp&quot; |
| VOICE_OTP | &quot;voice_otp&quot; |
| EMAIL_OTP | &quot;email_otp&quot; |
| RECOVERY_CODE | &quot;recovery_code&quot; |



## Enum: StateEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| ACTIVE | &quot;active&quot; |
| SUSPENDED | &quot;suspended&quot; |
| REVOKED | &quot;revoked&quot; |



## Enum: TierLabelEnum

| Name | Value |
|---- | -----|
| STRONGEST | &quot;Strongest&quot; |
| STRONG | &quot;Strong&quot; |
| STANDARD | &quot;Standard&quot; |
| BASIC | &quot;Basic&quot; |
| RECOVERY | &quot;Recovery&quot; |



