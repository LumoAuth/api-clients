# DeviceAuthorizationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_code** | **String** | High-entropy code the device presents at the token endpoint. | 
**user_code** | **String** | Short code the end user enters at verification_uri. | 
**verification_uri** | **String** | Absolute URL of the user verification page (GET …/oauth/device). | 
**verification_uri_complete** | **String** | verification_uri with the user_code pre-filled. | 
**expires_in** | **i32** | Lifetime of device_code and user_code in seconds. | 
**interval** | **i32** | Minimum polling interval in seconds. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


