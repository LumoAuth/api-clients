# ListAttributeDefinitionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]AbacAttributeDefinition**](AbacAttributeDefinition.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewListAttributeDefinitionsResponse

`func NewListAttributeDefinitionsResponse() *ListAttributeDefinitionsResponse`

NewListAttributeDefinitionsResponse instantiates a new ListAttributeDefinitionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListAttributeDefinitionsResponseWithDefaults

`func NewListAttributeDefinitionsResponseWithDefaults() *ListAttributeDefinitionsResponse`

NewListAttributeDefinitionsResponseWithDefaults instantiates a new ListAttributeDefinitionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *ListAttributeDefinitionsResponse) GetData() []AbacAttributeDefinition`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ListAttributeDefinitionsResponse) GetDataOk() (*[]AbacAttributeDefinition, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ListAttributeDefinitionsResponse) SetData(v []AbacAttributeDefinition)`

SetData sets Data field to given value.

### HasData

`func (o *ListAttributeDefinitionsResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *ListAttributeDefinitionsResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *ListAttributeDefinitionsResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *ListAttributeDefinitionsResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *ListAttributeDefinitionsResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


