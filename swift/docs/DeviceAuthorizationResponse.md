# DeviceAuthorizationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deviceCode** | **String** | High-entropy code the device presents at the token endpoint. | 
**userCode** | **String** | Short code the end user enters at verification_uri. | 
**verificationUri** | **String** | Absolute URL of the user verification page (GET …/oauth/device). | 
**verificationUriComplete** | **String** | verification_uri with the user_code pre-filled. | 
**expiresIn** | **Int** | Lifetime of device_code and user_code in seconds. | 
**interval** | **Int** | Minimum polling interval in seconds. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


