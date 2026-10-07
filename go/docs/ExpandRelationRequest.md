# ExpandRelationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Object** | **string** | Resource as namespace:id | 
**Relation** | **string** |  | 

## Methods

### NewExpandRelationRequest

`func NewExpandRelationRequest(object string, relation string, ) *ExpandRelationRequest`

NewExpandRelationRequest instantiates a new ExpandRelationRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExpandRelationRequestWithDefaults

`func NewExpandRelationRequestWithDefaults() *ExpandRelationRequest`

NewExpandRelationRequestWithDefaults instantiates a new ExpandRelationRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetObject

`func (o *ExpandRelationRequest) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *ExpandRelationRequest) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *ExpandRelationRequest) SetObject(v string)`

SetObject sets Object field to given value.


### GetRelation

`func (o *ExpandRelationRequest) GetRelation() string`

GetRelation returns the Relation field if non-nil, zero value otherwise.

### GetRelationOk

`func (o *ExpandRelationRequest) GetRelationOk() (*string, bool)`

GetRelationOk returns a tuple with the Relation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRelation

`func (o *ExpandRelationRequest) SetRelation(v string)`

SetRelation sets Relation field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


