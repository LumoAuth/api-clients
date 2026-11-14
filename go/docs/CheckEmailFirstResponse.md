# CheckEmailFirstResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exists** | **bool** | Always &#x60;true&#x60;. The answer never says whether the address has an account. | 
**MagicLinkEnabled** | **bool** | The organization offers sign-in links. | 
**PasskeyEnabled** | **bool** | The organization offers passkey sign-in. | 
**PasswordEnabled** | **bool** | The organization accepts passwords at sign-in. | 

## Methods

### NewCheckEmailFirstResponse

`func NewCheckEmailFirstResponse(exists bool, magicLinkEnabled bool, passkeyEnabled bool, passwordEnabled bool, ) *CheckEmailFirstResponse`

NewCheckEmailFirstResponse instantiates a new CheckEmailFirstResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckEmailFirstResponseWithDefaults

`func NewCheckEmailFirstResponseWithDefaults() *CheckEmailFirstResponse`

NewCheckEmailFirstResponseWithDefaults instantiates a new CheckEmailFirstResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExists

`func (o *CheckEmailFirstResponse) GetExists() bool`

GetExists returns the Exists field if non-nil, zero value otherwise.

### GetExistsOk

`func (o *CheckEmailFirstResponse) GetExistsOk() (*bool, bool)`

GetExistsOk returns a tuple with the Exists field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExists

`func (o *CheckEmailFirstResponse) SetExists(v bool)`

SetExists sets Exists field to given value.


### GetMagicLinkEnabled

`func (o *CheckEmailFirstResponse) GetMagicLinkEnabled() bool`

GetMagicLinkEnabled returns the MagicLinkEnabled field if non-nil, zero value otherwise.

### GetMagicLinkEnabledOk

`func (o *CheckEmailFirstResponse) GetMagicLinkEnabledOk() (*bool, bool)`

GetMagicLinkEnabledOk returns a tuple with the MagicLinkEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMagicLinkEnabled

`func (o *CheckEmailFirstResponse) SetMagicLinkEnabled(v bool)`

SetMagicLinkEnabled sets MagicLinkEnabled field to given value.


### GetPasskeyEnabled

`func (o *CheckEmailFirstResponse) GetPasskeyEnabled() bool`

GetPasskeyEnabled returns the PasskeyEnabled field if non-nil, zero value otherwise.

### GetPasskeyEnabledOk

`func (o *CheckEmailFirstResponse) GetPasskeyEnabledOk() (*bool, bool)`

GetPasskeyEnabledOk returns a tuple with the PasskeyEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasskeyEnabled

`func (o *CheckEmailFirstResponse) SetPasskeyEnabled(v bool)`

SetPasskeyEnabled sets PasskeyEnabled field to given value.


### GetPasswordEnabled

`func (o *CheckEmailFirstResponse) GetPasswordEnabled() bool`

GetPasswordEnabled returns the PasswordEnabled field if non-nil, zero value otherwise.

### GetPasswordEnabledOk

`func (o *CheckEmailFirstResponse) GetPasswordEnabledOk() (*bool, bool)`

GetPasswordEnabledOk returns a tuple with the PasswordEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasswordEnabled

`func (o *CheckEmailFirstResponse) SetPasswordEnabled(v bool)`

SetPasswordEnabled sets PasswordEnabled field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


