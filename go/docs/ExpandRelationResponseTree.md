# ExpandRelationResponseTree

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] 
**Object** | Pointer to **string** |  | [optional] 
**Relation** | Pointer to **string** |  | [optional] 
**Children** | Pointer to **[]map[string]interface{}** | Nested nodes (same shape); empty for leaves. | [optional] 
**Subjects** | Pointer to **[]string** | Direct subjects; usersets are listed as-is. | [optional] 

## Methods

### NewExpandRelationResponseTree

`func NewExpandRelationResponseTree() *ExpandRelationResponseTree`

NewExpandRelationResponseTree instantiates a new ExpandRelationResponseTree object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExpandRelationResponseTreeWithDefaults

`func NewExpandRelationResponseTreeWithDefaults() *ExpandRelationResponseTree`

NewExpandRelationResponseTreeWithDefaults instantiates a new ExpandRelationResponseTree object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ExpandRelationResponseTree) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ExpandRelationResponseTree) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ExpandRelationResponseTree) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ExpandRelationResponseTree) HasType() bool`

HasType returns a boolean if a field has been set.

### GetObject

`func (o *ExpandRelationResponseTree) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *ExpandRelationResponseTree) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *ExpandRelationResponseTree) SetObject(v string)`

SetObject sets Object field to given value.

### HasObject

`func (o *ExpandRelationResponseTree) HasObject() bool`

HasObject returns a boolean if a field has been set.

### GetRelation

`func (o *ExpandRelationResponseTree) GetRelation() string`

GetRelation returns the Relation field if non-nil, zero value otherwise.

### GetRelationOk

`func (o *ExpandRelationResponseTree) GetRelationOk() (*string, bool)`

GetRelationOk returns a tuple with the Relation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRelation

`func (o *ExpandRelationResponseTree) SetRelation(v string)`

SetRelation sets Relation field to given value.

### HasRelation

`func (o *ExpandRelationResponseTree) HasRelation() bool`

HasRelation returns a boolean if a field has been set.

### GetChildren

`func (o *ExpandRelationResponseTree) GetChildren() []map[string]interface{}`

GetChildren returns the Children field if non-nil, zero value otherwise.

### GetChildrenOk

`func (o *ExpandRelationResponseTree) GetChildrenOk() (*[]map[string]interface{}, bool)`

GetChildrenOk returns a tuple with the Children field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChildren

`func (o *ExpandRelationResponseTree) SetChildren(v []map[string]interface{})`

SetChildren sets Children field to given value.

### HasChildren

`func (o *ExpandRelationResponseTree) HasChildren() bool`

HasChildren returns a boolean if a field has been set.

### GetSubjects

`func (o *ExpandRelationResponseTree) GetSubjects() []string`

GetSubjects returns the Subjects field if non-nil, zero value otherwise.

### GetSubjectsOk

`func (o *ExpandRelationResponseTree) GetSubjectsOk() (*[]string, bool)`

GetSubjectsOk returns a tuple with the Subjects field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjects

`func (o *ExpandRelationResponseTree) SetSubjects(v []string)`

SetSubjects sets Subjects field to given value.

### HasSubjects

`func (o *ExpandRelationResponseTree) HasSubjects() bool`

HasSubjects returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


