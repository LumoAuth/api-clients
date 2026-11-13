# # PushEnrollmentStarted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional]
**state** | **string** |  | [optional]
**qrDataUri** | **string** |  | [optional]
**deepLink** | **string** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional]
**deepLinkAndroid** | **string** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when it is not available. | [optional]
**activationCode** | **string** |  | [optional]
**expiresAt** | **\DateTime** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
