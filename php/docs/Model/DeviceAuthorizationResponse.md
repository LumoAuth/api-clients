# # DeviceAuthorizationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deviceCode** | **string** | High-entropy code the device presents at the token endpoint. |
**userCode** | **string** | Short code the end user enters at verification_uri. |
**verificationUri** | **string** | Absolute URL of the user verification page (GET …/oauth/device). |
**verificationUriComplete** | **string** | verification_uri with the user_code pre-filled. |
**expiresIn** | **int** | Lifetime of device_code and user_code in seconds. |
**interval** | **int** | Minimum polling interval in seconds. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
