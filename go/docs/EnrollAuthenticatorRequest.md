# EnrollAuthenticatorRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Phone** | Pointer to **string** |  | [optional] 
**Country** | Pointer to **string** |  | [optional] 

## Methods

### NewEnrollAuthenticatorRequest

`func NewEnrollAuthenticatorRequest() *EnrollAuthenticatorRequest`

NewEnrollAuthenticatorRequest instantiates a new EnrollAuthenticatorRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEnrollAuthenticatorRequestWithDefaults

`func NewEnrollAuthenticatorRequestWithDefaults() *EnrollAuthenticatorRequest`

NewEnrollAuthenticatorRequestWithDefaults instantiates a new EnrollAuthenticatorRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPhone

`func (o *EnrollAuthenticatorRequest) GetPhone() string`

GetPhone returns the Phone field if non-nil, zero value otherwise.

### GetPhoneOk

`func (o *EnrollAuthenticatorRequest) GetPhoneOk() (*string, bool)`

GetPhoneOk returns a tuple with the Phone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhone

`func (o *EnrollAuthenticatorRequest) SetPhone(v string)`

SetPhone sets Phone field to given value.

### HasPhone

`func (o *EnrollAuthenticatorRequest) HasPhone() bool`

HasPhone returns a boolean if a field has been set.

### GetCountry

`func (o *EnrollAuthenticatorRequest) GetCountry() string`

GetCountry returns the Country field if non-nil, zero value otherwise.

### GetCountryOk

`func (o *EnrollAuthenticatorRequest) GetCountryOk() (*string, bool)`

GetCountryOk returns a tuple with the Country field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountry

`func (o *EnrollAuthenticatorRequest) SetCountry(v string)`

SetCountry sets Country field to given value.

### HasCountry

`func (o *EnrollAuthenticatorRequest) HasCountry() bool`

HasCountry returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


