# AdminWebhooksWebhooksEnableResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** |  | [optional] 
**Webhook** | Pointer to [**Webhook**](Webhook.md) |  | [optional] 

## Methods

### NewAdminWebhooksWebhooksEnableResponse

`func NewAdminWebhooksWebhooksEnableResponse() *AdminWebhooksWebhooksEnableResponse`

NewAdminWebhooksWebhooksEnableResponse instantiates a new AdminWebhooksWebhooksEnableResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksWebhooksEnableResponseWithDefaults

`func NewAdminWebhooksWebhooksEnableResponseWithDefaults() *AdminWebhooksWebhooksEnableResponse`

NewAdminWebhooksWebhooksEnableResponseWithDefaults instantiates a new AdminWebhooksWebhooksEnableResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *AdminWebhooksWebhooksEnableResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AdminWebhooksWebhooksEnableResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AdminWebhooksWebhooksEnableResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AdminWebhooksWebhooksEnableResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetWebhook

`func (o *AdminWebhooksWebhooksEnableResponse) GetWebhook() Webhook`

GetWebhook returns the Webhook field if non-nil, zero value otherwise.

### GetWebhookOk

`func (o *AdminWebhooksWebhooksEnableResponse) GetWebhookOk() (*Webhook, bool)`

GetWebhookOk returns a tuple with the Webhook field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebhook

`func (o *AdminWebhooksWebhooksEnableResponse) SetWebhook(v Webhook)`

SetWebhook sets Webhook field to given value.

### HasWebhook

`func (o *AdminWebhooksWebhooksEnableResponse) HasWebhook() bool`

HasWebhook returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


