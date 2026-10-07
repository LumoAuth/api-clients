# AdminWebhooksGetResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**Webhook**](Webhook.md) |  | [optional] 

## Methods

### NewAdminWebhooksGetResponse

`func NewAdminWebhooksGetResponse() *AdminWebhooksGetResponse`

NewAdminWebhooksGetResponse instantiates a new AdminWebhooksGetResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksGetResponseWithDefaults

`func NewAdminWebhooksGetResponseWithDefaults() *AdminWebhooksGetResponse`

NewAdminWebhooksGetResponseWithDefaults instantiates a new AdminWebhooksGetResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminWebhooksGetResponse) GetData() Webhook`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminWebhooksGetResponse) GetDataOk() (*Webhook, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminWebhooksGetResponse) SetData(v Webhook)`

SetData sets Data field to given value.

### HasData

`func (o *AdminWebhooksGetResponse) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


