# AdminWebhooksDeliveryReplayResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**WebhookDelivery**](WebhookDelivery.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminWebhooksDeliveryReplayResponse

`func NewAdminWebhooksDeliveryReplayResponse() *AdminWebhooksDeliveryReplayResponse`

NewAdminWebhooksDeliveryReplayResponse instantiates a new AdminWebhooksDeliveryReplayResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksDeliveryReplayResponseWithDefaults

`func NewAdminWebhooksDeliveryReplayResponseWithDefaults() *AdminWebhooksDeliveryReplayResponse`

NewAdminWebhooksDeliveryReplayResponseWithDefaults instantiates a new AdminWebhooksDeliveryReplayResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminWebhooksDeliveryReplayResponse) GetData() WebhookDelivery`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminWebhooksDeliveryReplayResponse) GetDataOk() (*WebhookDelivery, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminWebhooksDeliveryReplayResponse) SetData(v WebhookDelivery)`

SetData sets Data field to given value.

### HasData

`func (o *AdminWebhooksDeliveryReplayResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *AdminWebhooksDeliveryReplayResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AdminWebhooksDeliveryReplayResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AdminWebhooksDeliveryReplayResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AdminWebhooksDeliveryReplayResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


