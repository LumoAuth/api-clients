# PutAbacPoliciesUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**AbacPolicy**](AbacPolicy.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAbacPoliciesUpdateResponse

`func NewPutAbacPoliciesUpdateResponse() *PutAbacPoliciesUpdateResponse`

NewPutAbacPoliciesUpdateResponse instantiates a new PutAbacPoliciesUpdateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAbacPoliciesUpdateResponseWithDefaults

`func NewPutAbacPoliciesUpdateResponseWithDefaults() *PutAbacPoliciesUpdateResponse`

NewPutAbacPoliciesUpdateResponseWithDefaults instantiates a new PutAbacPoliciesUpdateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *PutAbacPoliciesUpdateResponse) GetData() AbacPolicy`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *PutAbacPoliciesUpdateResponse) GetDataOk() (*AbacPolicy, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *PutAbacPoliciesUpdateResponse) SetData(v AbacPolicy)`

SetData sets Data field to given value.

### HasData

`func (o *PutAbacPoliciesUpdateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *PutAbacPoliciesUpdateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PutAbacPoliciesUpdateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PutAbacPoliciesUpdateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *PutAbacPoliciesUpdateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


