# OAuthScope

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**IsDefault** | Pointer to **bool** |  | [optional] 
**IsSystem** | Pointer to **bool** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewOAuthScope

`func NewOAuthScope() *OAuthScope`

NewOAuthScope instantiates a new OAuthScope object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthScopeWithDefaults

`func NewOAuthScopeWithDefaults() *OAuthScope`

NewOAuthScopeWithDefaults instantiates a new OAuthScope object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OAuthScope) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OAuthScope) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OAuthScope) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *OAuthScope) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *OAuthScope) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *OAuthScope) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *OAuthScope) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *OAuthScope) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *OAuthScope) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *OAuthScope) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *OAuthScope) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *OAuthScope) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *OAuthScope) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *OAuthScope) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetIsDefault

`func (o *OAuthScope) GetIsDefault() bool`

GetIsDefault returns the IsDefault field if non-nil, zero value otherwise.

### GetIsDefaultOk

`func (o *OAuthScope) GetIsDefaultOk() (*bool, bool)`

GetIsDefaultOk returns a tuple with the IsDefault field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsDefault

`func (o *OAuthScope) SetIsDefault(v bool)`

SetIsDefault sets IsDefault field to given value.

### HasIsDefault

`func (o *OAuthScope) HasIsDefault() bool`

HasIsDefault returns a boolean if a field has been set.

### GetIsSystem

`func (o *OAuthScope) GetIsSystem() bool`

GetIsSystem returns the IsSystem field if non-nil, zero value otherwise.

### GetIsSystemOk

`func (o *OAuthScope) GetIsSystemOk() (*bool, bool)`

GetIsSystemOk returns a tuple with the IsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSystem

`func (o *OAuthScope) SetIsSystem(v bool)`

SetIsSystem sets IsSystem field to given value.

### HasIsSystem

`func (o *OAuthScope) HasIsSystem() bool`

HasIsSystem returns a boolean if a field has been set.

### GetCreatedAt

`func (o *OAuthScope) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *OAuthScope) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *OAuthScope) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *OAuthScope) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


