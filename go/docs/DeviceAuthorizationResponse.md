# DeviceAuthorizationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceCode** | **string** | High-entropy code the device presents at the token endpoint. | 
**UserCode** | **string** | Short code the end user enters at verification_uri. | 
**VerificationUri** | **string** | Absolute URL of the user verification page (GET …/oauth/device). | 
**VerificationUriComplete** | **string** | verification_uri with the user_code pre-filled. | 
**ExpiresIn** | **int32** | Lifetime of device_code and user_code in seconds. | 
**Interval** | **int32** | Minimum polling interval in seconds. | 

## Methods

### NewDeviceAuthorizationResponse

`func NewDeviceAuthorizationResponse(deviceCode string, userCode string, verificationUri string, verificationUriComplete string, expiresIn int32, interval int32, ) *DeviceAuthorizationResponse`

NewDeviceAuthorizationResponse instantiates a new DeviceAuthorizationResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceAuthorizationResponseWithDefaults

`func NewDeviceAuthorizationResponseWithDefaults() *DeviceAuthorizationResponse`

NewDeviceAuthorizationResponseWithDefaults instantiates a new DeviceAuthorizationResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDeviceCode

`func (o *DeviceAuthorizationResponse) GetDeviceCode() string`

GetDeviceCode returns the DeviceCode field if non-nil, zero value otherwise.

### GetDeviceCodeOk

`func (o *DeviceAuthorizationResponse) GetDeviceCodeOk() (*string, bool)`

GetDeviceCodeOk returns a tuple with the DeviceCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceCode

`func (o *DeviceAuthorizationResponse) SetDeviceCode(v string)`

SetDeviceCode sets DeviceCode field to given value.


### GetUserCode

`func (o *DeviceAuthorizationResponse) GetUserCode() string`

GetUserCode returns the UserCode field if non-nil, zero value otherwise.

### GetUserCodeOk

`func (o *DeviceAuthorizationResponse) GetUserCodeOk() (*string, bool)`

GetUserCodeOk returns a tuple with the UserCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserCode

`func (o *DeviceAuthorizationResponse) SetUserCode(v string)`

SetUserCode sets UserCode field to given value.


### GetVerificationUri

`func (o *DeviceAuthorizationResponse) GetVerificationUri() string`

GetVerificationUri returns the VerificationUri field if non-nil, zero value otherwise.

### GetVerificationUriOk

`func (o *DeviceAuthorizationResponse) GetVerificationUriOk() (*string, bool)`

GetVerificationUriOk returns a tuple with the VerificationUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerificationUri

`func (o *DeviceAuthorizationResponse) SetVerificationUri(v string)`

SetVerificationUri sets VerificationUri field to given value.


### GetVerificationUriComplete

`func (o *DeviceAuthorizationResponse) GetVerificationUriComplete() string`

GetVerificationUriComplete returns the VerificationUriComplete field if non-nil, zero value otherwise.

### GetVerificationUriCompleteOk

`func (o *DeviceAuthorizationResponse) GetVerificationUriCompleteOk() (*string, bool)`

GetVerificationUriCompleteOk returns a tuple with the VerificationUriComplete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerificationUriComplete

`func (o *DeviceAuthorizationResponse) SetVerificationUriComplete(v string)`

SetVerificationUriComplete sets VerificationUriComplete field to given value.


### GetExpiresIn

`func (o *DeviceAuthorizationResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *DeviceAuthorizationResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *DeviceAuthorizationResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.


### GetInterval

`func (o *DeviceAuthorizationResponse) GetInterval() int32`

GetInterval returns the Interval field if non-nil, zero value otherwise.

### GetIntervalOk

`func (o *DeviceAuthorizationResponse) GetIntervalOk() (*int32, bool)`

GetIntervalOk returns a tuple with the Interval field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterval

`func (o *DeviceAuthorizationResponse) SetInterval(v int32)`

SetInterval sets Interval field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


