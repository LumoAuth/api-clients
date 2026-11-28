# SubmitLoginJsonRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **string** |  | 
**Password** | **string** |  | 
**CaptchaToken** | Pointer to **string** | Needed when the organization has a CAPTCHA for sign-in. | [optional] 

## Methods

### NewSubmitLoginJsonRequest

`func NewSubmitLoginJsonRequest(email string, password string, ) *SubmitLoginJsonRequest`

NewSubmitLoginJsonRequest instantiates a new SubmitLoginJsonRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSubmitLoginJsonRequestWithDefaults

`func NewSubmitLoginJsonRequestWithDefaults() *SubmitLoginJsonRequest`

NewSubmitLoginJsonRequestWithDefaults instantiates a new SubmitLoginJsonRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *SubmitLoginJsonRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *SubmitLoginJsonRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *SubmitLoginJsonRequest) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetPassword

`func (o *SubmitLoginJsonRequest) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *SubmitLoginJsonRequest) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *SubmitLoginJsonRequest) SetPassword(v string)`

SetPassword sets Password field to given value.


### GetCaptchaToken

`func (o *SubmitLoginJsonRequest) GetCaptchaToken() string`

GetCaptchaToken returns the CaptchaToken field if non-nil, zero value otherwise.

### GetCaptchaTokenOk

`func (o *SubmitLoginJsonRequest) GetCaptchaTokenOk() (*string, bool)`

GetCaptchaTokenOk returns a tuple with the CaptchaToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaptchaToken

`func (o *SubmitLoginJsonRequest) SetCaptchaToken(v string)`

SetCaptchaToken sets CaptchaToken field to given value.

### HasCaptchaToken

`func (o *SubmitLoginJsonRequest) HasCaptchaToken() bool`

HasCaptchaToken returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


