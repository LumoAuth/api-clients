# AdminWebhooksDeliveriesListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]WebhookDelivery**](WebhookDelivery.md) |  | [optional] 
**Meta** | Pointer to [**AdminWebhooksDeliveriesListResponseMeta**](AdminWebhooksDeliveriesListResponseMeta.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminWebhooksDeliveriesListResponse

`func NewAdminWebhooksDeliveriesListResponse() *AdminWebhooksDeliveriesListResponse`

NewAdminWebhooksDeliveriesListResponse instantiates a new AdminWebhooksDeliveriesListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksDeliveriesListResponseWithDefaults

`func NewAdminWebhooksDeliveriesListResponseWithDefaults() *AdminWebhooksDeliveriesListResponse`

NewAdminWebhooksDeliveriesListResponseWithDefaults instantiates a new AdminWebhooksDeliveriesListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminWebhooksDeliveriesListResponse) GetData() []WebhookDelivery`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminWebhooksDeliveriesListResponse) GetDataOk() (*[]WebhookDelivery, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminWebhooksDeliveriesListResponse) SetData(v []WebhookDelivery)`

SetData sets Data field to given value.

### HasData

`func (o *AdminWebhooksDeliveriesListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminWebhooksDeliveriesListResponse) GetMeta() AdminWebhooksDeliveriesListResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminWebhooksDeliveriesListResponse) GetMetaOk() (*AdminWebhooksDeliveriesListResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminWebhooksDeliveriesListResponse) SetMeta(v AdminWebhooksDeliveriesListResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminWebhooksDeliveriesListResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetPagination

`func (o *AdminWebhooksDeliveriesListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminWebhooksDeliveriesListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminWebhooksDeliveriesListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminWebhooksDeliveriesListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


