# UserRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Email** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewUserRef

`func NewUserRef() *UserRef`

NewUserRef instantiates a new UserRef object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserRefWithDefaults

`func NewUserRefWithDefaults() *UserRef`

NewUserRefWithDefaults instantiates a new UserRef object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *UserRef) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UserRef) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UserRef) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UserRef) HasId() bool`

HasId returns a boolean if a field has been set.

### GetEmail

`func (o *UserRef) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *UserRef) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *UserRef) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *UserRef) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetName

`func (o *UserRef) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UserRef) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UserRef) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UserRef) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *UserRef) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *UserRef) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


