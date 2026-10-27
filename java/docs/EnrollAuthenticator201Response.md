

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
|**deepLink** | **String** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). |  [optional] |
|**deepLinkAndroid** | **String** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. |  [optional] |
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



