# CheckEmailFirstRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **string** | The address that was typed. | 
**ClientId** | **string** | Client ID of an active application of the organization. | 

## Methods

### NewCheckEmailFirstRequest

`func NewCheckEmailFirstRequest(email string, clientId string, ) *CheckEmailFirstRequest`

NewCheckEmailFirstRequest instantiates a new CheckEmailFirstRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckEmailFirstRequestWithDefaults

`func NewCheckEmailFirstRequestWithDefaults() *CheckEmailFirstRequest`

NewCheckEmailFirstRequestWithDefaults instantiates a new CheckEmailFirstRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *CheckEmailFirstRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *CheckEmailFirstRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *CheckEmailFirstRequest) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetClientId

`func (o *CheckEmailFirstRequest) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *CheckEmailFirstRequest) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *CheckEmailFirstRequest) SetClientId(v string)`

SetClientId sets ClientId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


