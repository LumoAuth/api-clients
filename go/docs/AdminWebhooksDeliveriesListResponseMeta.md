# AdminWebhooksDeliveriesListResponseMeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | Pointer to **int32** | Number of rows returned | [optional] 
**DeadLetteredCount** | Pointer to **int32** | Dead-lettered deliveries for this webhook (unfiltered) | [optional] 

## Methods

### NewAdminWebhooksDeliveriesListResponseMeta

`func NewAdminWebhooksDeliveriesListResponseMeta() *AdminWebhooksDeliveriesListResponseMeta`

NewAdminWebhooksDeliveriesListResponseMeta instantiates a new AdminWebhooksDeliveriesListResponseMeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksDeliveriesListResponseMetaWithDefaults

`func NewAdminWebhooksDeliveriesListResponseMetaWithDefaults() *AdminWebhooksDeliveriesListResponseMeta`

NewAdminWebhooksDeliveriesListResponseMetaWithDefaults instantiates a new AdminWebhooksDeliveriesListResponseMeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCount

`func (o *AdminWebhooksDeliveriesListResponseMeta) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *AdminWebhooksDeliveriesListResponseMeta) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *AdminWebhooksDeliveriesListResponseMeta) SetCount(v int32)`

SetCount sets Count field to given value.

### HasCount

`func (o *AdminWebhooksDeliveriesListResponseMeta) HasCount() bool`

HasCount returns a boolean if a field has been set.

### GetDeadLetteredCount

`func (o *AdminWebhooksDeliveriesListResponseMeta) GetDeadLetteredCount() int32`

GetDeadLetteredCount returns the DeadLetteredCount field if non-nil, zero value otherwise.

### GetDeadLetteredCountOk

`func (o *AdminWebhooksDeliveriesListResponseMeta) GetDeadLetteredCountOk() (*int32, bool)`

GetDeadLetteredCountOk returns a tuple with the DeadLetteredCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeadLetteredCount

`func (o *AdminWebhooksDeliveriesListResponseMeta) SetDeadLetteredCount(v int32)`

SetDeadLetteredCount sets DeadLetteredCount field to given value.

### HasDeadLetteredCount

`func (o *AdminWebhooksDeliveriesListResponseMeta) HasDeadLetteredCount() bool`

HasDeadLetteredCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


