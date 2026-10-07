# ListPermissionsResponsePermissionsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Slug** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**Source** | Pointer to **string** | role:&lt;role name&gt; that grants it | [optional] 

## Methods

### NewListPermissionsResponsePermissionsItem

`func NewListPermissionsResponsePermissionsItem() *ListPermissionsResponsePermissionsItem`

NewListPermissionsResponsePermissionsItem instantiates a new ListPermissionsResponsePermissionsItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListPermissionsResponsePermissionsItemWithDefaults

`func NewListPermissionsResponsePermissionsItemWithDefaults() *ListPermissionsResponsePermissionsItem`

NewListPermissionsResponsePermissionsItemWithDefaults instantiates a new ListPermissionsResponsePermissionsItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSlug

`func (o *ListPermissionsResponsePermissionsItem) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *ListPermissionsResponsePermissionsItem) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *ListPermissionsResponsePermissionsItem) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *ListPermissionsResponsePermissionsItem) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetDescription

`func (o *ListPermissionsResponsePermissionsItem) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *ListPermissionsResponsePermissionsItem) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *ListPermissionsResponsePermissionsItem) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *ListPermissionsResponsePermissionsItem) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *ListPermissionsResponsePermissionsItem) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *ListPermissionsResponsePermissionsItem) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetSource

`func (o *ListPermissionsResponsePermissionsItem) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *ListPermissionsResponsePermissionsItem) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *ListPermissionsResponsePermissionsItem) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *ListPermissionsResponsePermissionsItem) HasSource() bool`

HasSource returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


