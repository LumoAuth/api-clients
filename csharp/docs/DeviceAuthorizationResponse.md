# LumoAuth.ApiClient.Model.DeviceAuthorizationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceCode** | **string** | High-entropy code the device presents at the token endpoint. | 
**UserCode** | **string** | Short code the end user enters at verification_uri. | 
**VerificationUri** | **string** | Absolute URL of the user verification page (GET …/oauth/device). | 
**VerificationUriComplete** | **string** | verification_uri with the user_code pre-filled. | 
**ExpiresIn** | **int** | Lifetime of device_code and user_code in seconds. | 
**Interval** | **int** | Minimum polling interval in seconds. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

