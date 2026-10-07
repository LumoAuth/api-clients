# UpdateAuthenticatorRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | Pointer to **string** |  | [optional] 
**IsDefault** | Pointer to **bool** |  | [optional] 

## Methods

### NewUpdateAuthenticatorRequest

`func NewUpdateAuthenticatorRequest() *UpdateAuthenticatorRequest`

NewUpdateAuthenticatorRequest instantiates a new UpdateAuthenticatorRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateAuthenticatorRequestWithDefaults

`func NewUpdateAuthenticatorRequestWithDefaults() *UpdateAuthenticatorRequest`

NewUpdateAuthenticatorRequestWithDefaults instantiates a new UpdateAuthenticatorRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDisplayName

`func (o *UpdateAuthenticatorRequest) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *UpdateAuthenticatorRequest) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *UpdateAuthenticatorRequest) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *UpdateAuthenticatorRequest) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetIsDefault

`func (o *UpdateAuthenticatorRequest) GetIsDefault() bool`

GetIsDefault returns the IsDefault field if non-nil, zero value otherwise.

### GetIsDefaultOk

`func (o *UpdateAuthenticatorRequest) GetIsDefaultOk() (*bool, bool)`

GetIsDefaultOk returns a tuple with the IsDefault field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsDefault

`func (o *UpdateAuthenticatorRequest) SetIsDefault(v bool)`

SetIsDefault sets IsDefault field to given value.

### HasIsDefault

`func (o *UpdateAuthenticatorRequest) HasIsDefault() bool`

HasIsDefault returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


