# SetUserAttributeResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | Pointer to **string** |  | [optional] 
**AttributeSlug** | Pointer to **string** |  | [optional] 
**Value** | Pointer to **interface{}** | The stored value (any JSON type) | [optional] 

## Methods

### NewSetUserAttributeResponseData

`func NewSetUserAttributeResponseData() *SetUserAttributeResponseData`

NewSetUserAttributeResponseData instantiates a new SetUserAttributeResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSetUserAttributeResponseDataWithDefaults

`func NewSetUserAttributeResponseDataWithDefaults() *SetUserAttributeResponseData`

NewSetUserAttributeResponseDataWithDefaults instantiates a new SetUserAttributeResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUserId

`func (o *SetUserAttributeResponseData) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *SetUserAttributeResponseData) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *SetUserAttributeResponseData) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *SetUserAttributeResponseData) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetAttributeSlug

`func (o *SetUserAttributeResponseData) GetAttributeSlug() string`

GetAttributeSlug returns the AttributeSlug field if non-nil, zero value otherwise.

### GetAttributeSlugOk

`func (o *SetUserAttributeResponseData) GetAttributeSlugOk() (*string, bool)`

GetAttributeSlugOk returns a tuple with the AttributeSlug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributeSlug

`func (o *SetUserAttributeResponseData) SetAttributeSlug(v string)`

SetAttributeSlug sets AttributeSlug field to given value.

### HasAttributeSlug

`func (o *SetUserAttributeResponseData) HasAttributeSlug() bool`

HasAttributeSlug returns a boolean if a field has been set.

### GetValue

`func (o *SetUserAttributeResponseData) GetValue() interface{}`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *SetUserAttributeResponseData) GetValueOk() (*interface{}, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *SetUserAttributeResponseData) SetValue(v interface{})`

SetValue sets Value field to given value.

### HasValue

`func (o *SetUserAttributeResponseData) HasValue() bool`

HasValue returns a boolean if a field has been set.

### SetValueNil

`func (o *SetUserAttributeResponseData) SetValueNil(b bool)`

 SetValueNil sets the value for Value to be an explicit nil

### UnsetValue
`func (o *SetUserAttributeResponseData) UnsetValue()`

UnsetValue ensures that no value is present for Value, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


