# PaginationMeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Total** | **int32** |  | 
**Page** | **int32** |  | 
**Limit** | **int32** |  | 
**TotalPages** | **int32** |  | 
**HasNextPage** | **bool** |  | 
**HasPreviousPage** | **bool** |  | 

## Methods

### NewPaginationMeta

`func NewPaginationMeta(total int32, page int32, limit int32, totalPages int32, hasNextPage bool, hasPreviousPage bool, ) *PaginationMeta`

NewPaginationMeta instantiates a new PaginationMeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPaginationMetaWithDefaults

`func NewPaginationMetaWithDefaults() *PaginationMeta`

NewPaginationMetaWithDefaults instantiates a new PaginationMeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotal

`func (o *PaginationMeta) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *PaginationMeta) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *PaginationMeta) SetTotal(v int32)`

SetTotal sets Total field to given value.


### GetPage

`func (o *PaginationMeta) GetPage() int32`

GetPage returns the Page field if non-nil, zero value otherwise.

### GetPageOk

`func (o *PaginationMeta) GetPageOk() (*int32, bool)`

GetPageOk returns a tuple with the Page field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPage

`func (o *PaginationMeta) SetPage(v int32)`

SetPage sets Page field to given value.


### GetLimit

`func (o *PaginationMeta) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *PaginationMeta) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *PaginationMeta) SetLimit(v int32)`

SetLimit sets Limit field to given value.


### GetTotalPages

`func (o *PaginationMeta) GetTotalPages() int32`

GetTotalPages returns the TotalPages field if non-nil, zero value otherwise.

### GetTotalPagesOk

`func (o *PaginationMeta) GetTotalPagesOk() (*int32, bool)`

GetTotalPagesOk returns a tuple with the TotalPages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalPages

`func (o *PaginationMeta) SetTotalPages(v int32)`

SetTotalPages sets TotalPages field to given value.


### GetHasNextPage

`func (o *PaginationMeta) GetHasNextPage() bool`

GetHasNextPage returns the HasNextPage field if non-nil, zero value otherwise.

### GetHasNextPageOk

`func (o *PaginationMeta) GetHasNextPageOk() (*bool, bool)`

GetHasNextPageOk returns a tuple with the HasNextPage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHasNextPage

`func (o *PaginationMeta) SetHasNextPage(v bool)`

SetHasNextPage sets HasNextPage field to given value.


### GetHasPreviousPage

`func (o *PaginationMeta) GetHasPreviousPage() bool`

GetHasPreviousPage returns the HasPreviousPage field if non-nil, zero value otherwise.

### GetHasPreviousPageOk

`func (o *PaginationMeta) GetHasPreviousPageOk() (*bool, bool)`

GetHasPreviousPageOk returns a tuple with the HasPreviousPage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHasPreviousPage

`func (o *PaginationMeta) SetHasPreviousPage(v bool)`

SetHasPreviousPage sets HasPreviousPage field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


