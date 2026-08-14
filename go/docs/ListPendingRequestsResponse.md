# ListPendingRequestsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PendingRequests** | Pointer to **[]map[string]interface{}** |  | [optional] 
**Count** | Pointer to **int32** |  | [optional] 
**Data** | Pointer to **[]map[string]interface{}** |  | [optional] 
**Pagination** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewListPendingRequestsResponse

`func NewListPendingRequestsResponse() *ListPendingRequestsResponse`

NewListPendingRequestsResponse instantiates a new ListPendingRequestsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListPendingRequestsResponseWithDefaults

`func NewListPendingRequestsResponseWithDefaults() *ListPendingRequestsResponse`

NewListPendingRequestsResponseWithDefaults instantiates a new ListPendingRequestsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPendingRequests

`func (o *ListPendingRequestsResponse) GetPendingRequests() []map[string]interface{}`

GetPendingRequests returns the PendingRequests field if non-nil, zero value otherwise.

### GetPendingRequestsOk

`func (o *ListPendingRequestsResponse) GetPendingRequestsOk() (*[]map[string]interface{}, bool)`

GetPendingRequestsOk returns a tuple with the PendingRequests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPendingRequests

`func (o *ListPendingRequestsResponse) SetPendingRequests(v []map[string]interface{})`

SetPendingRequests sets PendingRequests field to given value.

### HasPendingRequests

`func (o *ListPendingRequestsResponse) HasPendingRequests() bool`

HasPendingRequests returns a boolean if a field has been set.

### GetCount

`func (o *ListPendingRequestsResponse) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *ListPendingRequestsResponse) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *ListPendingRequestsResponse) SetCount(v int32)`

SetCount sets Count field to given value.

### HasCount

`func (o *ListPendingRequestsResponse) HasCount() bool`

HasCount returns a boolean if a field has been set.

### GetData

`func (o *ListPendingRequestsResponse) GetData() []map[string]interface{}`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ListPendingRequestsResponse) GetDataOk() (*[]map[string]interface{}, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ListPendingRequestsResponse) SetData(v []map[string]interface{})`

SetData sets Data field to given value.

### HasData

`func (o *ListPendingRequestsResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *ListPendingRequestsResponse) GetPagination() map[string]interface{}`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *ListPendingRequestsResponse) GetPaginationOk() (*map[string]interface{}, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *ListPendingRequestsResponse) SetPagination(v map[string]interface{})`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *ListPendingRequestsResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


