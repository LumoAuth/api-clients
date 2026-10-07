# SmsEnrollmentStarted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 
**MaskedPhone** | Pointer to **string** |  | [optional] 
**ResendAfter** | Pointer to **int32** | Seconds until a new code may be requested | [optional] 

## Methods

### NewSmsEnrollmentStarted

`func NewSmsEnrollmentStarted() *SmsEnrollmentStarted`

NewSmsEnrollmentStarted instantiates a new SmsEnrollmentStarted object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSmsEnrollmentStartedWithDefaults

`func NewSmsEnrollmentStartedWithDefaults() *SmsEnrollmentStarted`

NewSmsEnrollmentStartedWithDefaults instantiates a new SmsEnrollmentStarted object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SmsEnrollmentStarted) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SmsEnrollmentStarted) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SmsEnrollmentStarted) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SmsEnrollmentStarted) HasId() bool`

HasId returns a boolean if a field has been set.

### GetState

`func (o *SmsEnrollmentStarted) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *SmsEnrollmentStarted) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *SmsEnrollmentStarted) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *SmsEnrollmentStarted) HasState() bool`

HasState returns a boolean if a field has been set.

### GetMaskedPhone

`func (o *SmsEnrollmentStarted) GetMaskedPhone() string`

GetMaskedPhone returns the MaskedPhone field if non-nil, zero value otherwise.

### GetMaskedPhoneOk

`func (o *SmsEnrollmentStarted) GetMaskedPhoneOk() (*string, bool)`

GetMaskedPhoneOk returns a tuple with the MaskedPhone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaskedPhone

`func (o *SmsEnrollmentStarted) SetMaskedPhone(v string)`

SetMaskedPhone sets MaskedPhone field to given value.

### HasMaskedPhone

`func (o *SmsEnrollmentStarted) HasMaskedPhone() bool`

HasMaskedPhone returns a boolean if a field has been set.

### GetResendAfter

`func (o *SmsEnrollmentStarted) GetResendAfter() int32`

GetResendAfter returns the ResendAfter field if non-nil, zero value otherwise.

### GetResendAfterOk

`func (o *SmsEnrollmentStarted) GetResendAfterOk() (*int32, bool)`

GetResendAfterOk returns a tuple with the ResendAfter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResendAfter

`func (o *SmsEnrollmentStarted) SetResendAfter(v int32)`

SetResendAfter sets ResendAfter field to given value.

### HasResendAfter

`func (o *SmsEnrollmentStarted) HasResendAfter() bool`

HasResendAfter returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


