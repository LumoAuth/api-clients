# CheckRelationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Object** | **string** |  | 
**Relation** | **string** |  | 
**Subject** | **string** | namespace:id, optionally with #relation. | 

## Methods

### NewCheckRelationRequest

`func NewCheckRelationRequest(object string, relation string, subject string, ) *CheckRelationRequest`

NewCheckRelationRequest instantiates a new CheckRelationRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckRelationRequestWithDefaults

`func NewCheckRelationRequestWithDefaults() *CheckRelationRequest`

NewCheckRelationRequestWithDefaults instantiates a new CheckRelationRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetObject

`func (o *CheckRelationRequest) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *CheckRelationRequest) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *CheckRelationRequest) SetObject(v string)`

SetObject sets Object field to given value.


### GetRelation

`func (o *CheckRelationRequest) GetRelation() string`

GetRelation returns the Relation field if non-nil, zero value otherwise.

### GetRelationOk

`func (o *CheckRelationRequest) GetRelationOk() (*string, bool)`

GetRelationOk returns a tuple with the Relation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRelation

`func (o *CheckRelationRequest) SetRelation(v string)`

SetRelation sets Relation field to given value.


### GetSubject

`func (o *CheckRelationRequest) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *CheckRelationRequest) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *CheckRelationRequest) SetSubject(v string)`

SetSubject sets Subject field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


