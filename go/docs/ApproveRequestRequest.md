# ApproveRequestRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ttl** | Pointer to **int32** | Optional TTL override in seconds. | [optional] 
**Notes** | Pointer to **string** | Optional reviewer notes. | [optional] 

## Methods

### NewApproveRequestRequest

`func NewApproveRequestRequest() *ApproveRequestRequest`

NewApproveRequestRequest instantiates a new ApproveRequestRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewApproveRequestRequestWithDefaults

`func NewApproveRequestRequestWithDefaults() *ApproveRequestRequest`

NewApproveRequestRequestWithDefaults instantiates a new ApproveRequestRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTtl

`func (o *ApproveRequestRequest) GetTtl() int32`

GetTtl returns the Ttl field if non-nil, zero value otherwise.

### GetTtlOk

`func (o *ApproveRequestRequest) GetTtlOk() (*int32, bool)`

GetTtlOk returns a tuple with the Ttl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTtl

`func (o *ApproveRequestRequest) SetTtl(v int32)`

SetTtl sets Ttl field to given value.

### HasTtl

`func (o *ApproveRequestRequest) HasTtl() bool`

HasTtl returns a boolean if a field has been set.

### GetNotes

`func (o *ApproveRequestRequest) GetNotes() string`

GetNotes returns the Notes field if non-nil, zero value otherwise.

### GetNotesOk

`func (o *ApproveRequestRequest) GetNotesOk() (*string, bool)`

GetNotesOk returns a tuple with the Notes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotes

`func (o *ApproveRequestRequest) SetNotes(v string)`

SetNotes sets Notes field to given value.

### HasNotes

`func (o *ApproveRequestRequest) HasNotes() bool`

HasNotes returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


