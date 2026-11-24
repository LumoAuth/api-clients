# StartAgentEnrollmentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnrollmentCode** | **string** | 43 characters, secret: only the poll needs it. | 
**UserCode** | **string** |  | 
**VerificationUri** | **string** |  | 
**VerificationUriComplete** | **string** |  | 
**KeyFingerprint** | **string** | First 16 characters of the RFC 7638 thumbprint of the key, in groups of four. | 
**ExpiresIn** | **int32** |  | 
**Interval** | **int32** |  | 

## Methods

### NewStartAgentEnrollmentResponse

`func NewStartAgentEnrollmentResponse(enrollmentCode string, userCode string, verificationUri string, verificationUriComplete string, keyFingerprint string, expiresIn int32, interval int32, ) *StartAgentEnrollmentResponse`

NewStartAgentEnrollmentResponse instantiates a new StartAgentEnrollmentResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStartAgentEnrollmentResponseWithDefaults

`func NewStartAgentEnrollmentResponseWithDefaults() *StartAgentEnrollmentResponse`

NewStartAgentEnrollmentResponseWithDefaults instantiates a new StartAgentEnrollmentResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnrollmentCode

`func (o *StartAgentEnrollmentResponse) GetEnrollmentCode() string`

GetEnrollmentCode returns the EnrollmentCode field if non-nil, zero value otherwise.

### GetEnrollmentCodeOk

`func (o *StartAgentEnrollmentResponse) GetEnrollmentCodeOk() (*string, bool)`

GetEnrollmentCodeOk returns a tuple with the EnrollmentCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnrollmentCode

`func (o *StartAgentEnrollmentResponse) SetEnrollmentCode(v string)`

SetEnrollmentCode sets EnrollmentCode field to given value.


### GetUserCode

`func (o *StartAgentEnrollmentResponse) GetUserCode() string`

GetUserCode returns the UserCode field if non-nil, zero value otherwise.

### GetUserCodeOk

`func (o *StartAgentEnrollmentResponse) GetUserCodeOk() (*string, bool)`

GetUserCodeOk returns a tuple with the UserCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserCode

`func (o *StartAgentEnrollmentResponse) SetUserCode(v string)`

SetUserCode sets UserCode field to given value.


### GetVerificationUri

`func (o *StartAgentEnrollmentResponse) GetVerificationUri() string`

GetVerificationUri returns the VerificationUri field if non-nil, zero value otherwise.

### GetVerificationUriOk

`func (o *StartAgentEnrollmentResponse) GetVerificationUriOk() (*string, bool)`

GetVerificationUriOk returns a tuple with the VerificationUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerificationUri

`func (o *StartAgentEnrollmentResponse) SetVerificationUri(v string)`

SetVerificationUri sets VerificationUri field to given value.


### GetVerificationUriComplete

`func (o *StartAgentEnrollmentResponse) GetVerificationUriComplete() string`

GetVerificationUriComplete returns the VerificationUriComplete field if non-nil, zero value otherwise.

### GetVerificationUriCompleteOk

`func (o *StartAgentEnrollmentResponse) GetVerificationUriCompleteOk() (*string, bool)`

GetVerificationUriCompleteOk returns a tuple with the VerificationUriComplete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerificationUriComplete

`func (o *StartAgentEnrollmentResponse) SetVerificationUriComplete(v string)`

SetVerificationUriComplete sets VerificationUriComplete field to given value.


### GetKeyFingerprint

`func (o *StartAgentEnrollmentResponse) GetKeyFingerprint() string`

GetKeyFingerprint returns the KeyFingerprint field if non-nil, zero value otherwise.

### GetKeyFingerprintOk

`func (o *StartAgentEnrollmentResponse) GetKeyFingerprintOk() (*string, bool)`

GetKeyFingerprintOk returns a tuple with the KeyFingerprint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeyFingerprint

`func (o *StartAgentEnrollmentResponse) SetKeyFingerprint(v string)`

SetKeyFingerprint sets KeyFingerprint field to given value.


### GetExpiresIn

`func (o *StartAgentEnrollmentResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *StartAgentEnrollmentResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *StartAgentEnrollmentResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.


### GetInterval

`func (o *StartAgentEnrollmentResponse) GetInterval() int32`

GetInterval returns the Interval field if non-nil, zero value otherwise.

### GetIntervalOk

`func (o *StartAgentEnrollmentResponse) GetIntervalOk() (*int32, bool)`

GetIntervalOk returns a tuple with the Interval field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterval

`func (o *StartAgentEnrollmentResponse) SetInterval(v int32)`

SetInterval sets Interval field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


