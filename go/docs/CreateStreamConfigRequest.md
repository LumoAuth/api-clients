# CreateStreamConfigRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delivery** | Pointer to **map[string]interface{}** | RFC 8935 push ({\&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;https://...\&quot;}) or RFC 8936 poll. | [optional] 
**EventsRequested** | Pointer to **[]string** | Event type URIs. | [optional] 
**Audience** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateStreamConfigRequest

`func NewCreateStreamConfigRequest() *CreateStreamConfigRequest`

NewCreateStreamConfigRequest instantiates a new CreateStreamConfigRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateStreamConfigRequestWithDefaults

`func NewCreateStreamConfigRequestWithDefaults() *CreateStreamConfigRequest`

NewCreateStreamConfigRequestWithDefaults instantiates a new CreateStreamConfigRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDelivery

`func (o *CreateStreamConfigRequest) GetDelivery() map[string]interface{}`

GetDelivery returns the Delivery field if non-nil, zero value otherwise.

### GetDeliveryOk

`func (o *CreateStreamConfigRequest) GetDeliveryOk() (*map[string]interface{}, bool)`

GetDeliveryOk returns a tuple with the Delivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelivery

`func (o *CreateStreamConfigRequest) SetDelivery(v map[string]interface{})`

SetDelivery sets Delivery field to given value.

### HasDelivery

`func (o *CreateStreamConfigRequest) HasDelivery() bool`

HasDelivery returns a boolean if a field has been set.

### GetEventsRequested

`func (o *CreateStreamConfigRequest) GetEventsRequested() []string`

GetEventsRequested returns the EventsRequested field if non-nil, zero value otherwise.

### GetEventsRequestedOk

`func (o *CreateStreamConfigRequest) GetEventsRequestedOk() (*[]string, bool)`

GetEventsRequestedOk returns a tuple with the EventsRequested field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsRequested

`func (o *CreateStreamConfigRequest) SetEventsRequested(v []string)`

SetEventsRequested sets EventsRequested field to given value.

### HasEventsRequested

`func (o *CreateStreamConfigRequest) HasEventsRequested() bool`

HasEventsRequested returns a boolean if a field has been set.

### GetAudience

`func (o *CreateStreamConfigRequest) GetAudience() string`

GetAudience returns the Audience field if non-nil, zero value otherwise.

### GetAudienceOk

`func (o *CreateStreamConfigRequest) GetAudienceOk() (*string, bool)`

GetAudienceOk returns a tuple with the Audience field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudience

`func (o *CreateStreamConfigRequest) SetAudience(v string)`

SetAudience sets Audience field to given value.

### HasAudience

`func (o *CreateStreamConfigRequest) HasAudience() bool`

HasAudience returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


