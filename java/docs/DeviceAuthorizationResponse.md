

# DeviceAuthorizationResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**deviceCode** | **String** | High-entropy code the device presents at the token endpoint. |  |
|**userCode** | **String** | Short code the end user enters at verification_uri. |  |
|**verificationUri** | **URI** | Absolute URL of the user verification page (GET …/oauth/device). |  |
|**verificationUriComplete** | **URI** | verification_uri with the user_code pre-filled. |  |
|**expiresIn** | **Integer** | Lifetime of device_code and user_code in seconds. |  |
|**interval** | **Integer** | Minimum polling interval in seconds. |  |



