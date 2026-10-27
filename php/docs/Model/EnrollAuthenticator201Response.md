# # EnrollAuthenticator201Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional]
**state** | **string** |  | [optional]
**otpauthUri** | **string** |  | [optional]
**secret** | **string** |  | [optional]
**secretGrouped** | **string** |  | [optional]
**qrDataUri** | **string** |  | [optional]
**expiresAt** | **\DateTime** |  | [optional]
**maskedPhone** | **string** |  | [optional]
**resendAfter** | **int** | Seconds until a new code may be requested | [optional]
**maskedEmail** | **string** |  | [optional]
**deepLink** | **string** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional]
**deepLinkAndroid** | **string** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional]
**activationCode** | **string** |  | [optional]
**publicKey** | **object** | WebAuthn PublicKeyCredentialCreationOptions | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
