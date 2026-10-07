

# MfaChallenge


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** |  |  [optional] |
|**purpose** | [**PurposeEnum**](#PurposeEnum) |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**authenticator** | [**MfaChallengeAuthenticator**](MfaChallengeAuthenticator.md) |  |  [optional] |
|**alternatives** | [**List&lt;MfaChallengeAlternativesInner&gt;**](MfaChallengeAlternativesInner.md) |  |  [optional] |
|**expiresAt** | **OffsetDateTime** |  |  [optional] |
|**attemptsRemaining** | **Integer** |  |  [optional] |
|**delivery** | [**DeliveryEnum**](#DeliveryEnum) |  |  [optional] |
|**numberMatch** | **Integer** | Two-digit number to show the user when delivery is push_sent |  [optional] |
|**publicKey** | **Object** | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn |  [optional] |



## Enum: PurposeEnum

| Name | Value |
|---- | -----|
| LOGIN | &quot;login&quot; |
| STEP_UP | &quot;step_up&quot; |
| ENROLL | &quot;enroll&quot; |
| RECOVERY | &quot;recovery&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ISSUED | &quot;issued&quot; |
| APPROVED | &quot;approved&quot; |
| DENIED | &quot;denied&quot; |
| EXPIRED | &quot;expired&quot; |
| FAILED | &quot;failed&quot; |



## Enum: DeliveryEnum

| Name | Value |
|---- | -----|
| PUSH_SENT | &quot;push_sent&quot; |
| SMS_SENT | &quot;sms_sent&quot; |
| EMAIL_SENT | &quot;email_sent&quot; |
| CODE_EXPECTED | &quot;code_expected&quot; |
| WEBAUTHN | &quot;webauthn&quot; |



