# WebhookDeliveryDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Payload** | Pointer to **map[string]interface{}** | Event payload as sent to the receiver | [optional] 
**Attempts** | Pointer to [**[]AdminWebhooksDeliveryShowResponseData1AttemptsItem**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] 

## Methods

### NewWebhookDeliveryDetail

`func NewWebhookDeliveryDetail() *WebhookDeliveryDetail`

NewWebhookDeliveryDetail instantiates a new WebhookDeliveryDetail object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebhookDeliveryDetailWithDefaults

`func NewWebhookDeliveryDetailWithDefaults() *WebhookDeliveryDetail`

NewWebhookDeliveryDetailWithDefaults instantiates a new WebhookDeliveryDetail object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPayload

`func (o *WebhookDeliveryDetail) GetPayload() map[string]interface{}`

GetPayload returns the Payload field if non-nil, zero value otherwise.

### GetPayloadOk

`func (o *WebhookDeliveryDetail) GetPayloadOk() (*map[string]interface{}, bool)`

GetPayloadOk returns a tuple with the Payload field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayload

`func (o *WebhookDeliveryDetail) SetPayload(v map[string]interface{})`

SetPayload sets Payload field to given value.

### HasPayload

`func (o *WebhookDeliveryDetail) HasPayload() bool`

HasPayload returns a boolean if a field has been set.

### GetAttempts

`func (o *WebhookDeliveryDetail) GetAttempts() []AdminWebhooksDeliveryShowResponseData1AttemptsItem`

GetAttempts returns the Attempts field if non-nil, zero value otherwise.

### GetAttemptsOk

`func (o *WebhookDeliveryDetail) GetAttemptsOk() (*[]AdminWebhooksDeliveryShowResponseData1AttemptsItem, bool)`

GetAttemptsOk returns a tuple with the Attempts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttempts

`func (o *WebhookDeliveryDetail) SetAttempts(v []AdminWebhooksDeliveryShowResponseData1AttemptsItem)`

SetAttempts sets Attempts field to given value.

### HasAttempts

`func (o *WebhookDeliveryDetail) HasAttempts() bool`

HasAttempts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


