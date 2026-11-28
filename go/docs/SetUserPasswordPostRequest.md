# SetUserPasswordPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **string** | Must meet the organization&#39;s password policy. | 
**RequireChange** | Pointer to **bool** | Ask the user to choose a new password at the next sign-in. | [optional] [default to false]

## Methods

### NewSetUserPasswordPostRequest

`func NewSetUserPasswordPostRequest(password string, ) *SetUserPasswordPostRequest`

NewSetUserPasswordPostRequest instantiates a new SetUserPasswordPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSetUserPasswordPostRequestWithDefaults

`func NewSetUserPasswordPostRequestWithDefaults() *SetUserPasswordPostRequest`

NewSetUserPasswordPostRequestWithDefaults instantiates a new SetUserPasswordPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPassword

`func (o *SetUserPasswordPostRequest) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *SetUserPasswordPostRequest) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *SetUserPasswordPostRequest) SetPassword(v string)`

SetPassword sets Password field to given value.


### GetRequireChange

`func (o *SetUserPasswordPostRequest) GetRequireChange() bool`

GetRequireChange returns the RequireChange field if non-nil, zero value otherwise.

### GetRequireChangeOk

`func (o *SetUserPasswordPostRequest) GetRequireChangeOk() (*bool, bool)`

GetRequireChangeOk returns a tuple with the RequireChange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireChange

`func (o *SetUserPasswordPostRequest) SetRequireChange(v bool)`

SetRequireChange sets RequireChange field to given value.

### HasRequireChange

`func (o *SetUserPasswordPostRequest) HasRequireChange() bool`

HasRequireChange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


