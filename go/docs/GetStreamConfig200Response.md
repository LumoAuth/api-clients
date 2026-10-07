# GetStreamConfig200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StreamId** | Pointer to **string** |  | [optional] 
**Iss** | Pointer to **string** |  | [optional] 
**Aud** | Pointer to **string** |  | [optional] 
**Delivery** | Pointer to [**SsfStreamDelivery**](SsfStreamDelivery.md) |  | [optional] 
**EventsSupported** | Pointer to **[]string** |  | [optional] 
**EventsRequested** | Pointer to **[]string** |  | [optional] 
**EventsDelivered** | Pointer to **[]string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**Streams** | Pointer to [**[]SsfStream**](SsfStream.md) |  | [optional] 

## Methods

### NewGetStreamConfig200Response

`func NewGetStreamConfig200Response() *GetStreamConfig200Response`

NewGetStreamConfig200Response instantiates a new GetStreamConfig200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetStreamConfig200ResponseWithDefaults

`func NewGetStreamConfig200ResponseWithDefaults() *GetStreamConfig200Response`

NewGetStreamConfig200ResponseWithDefaults instantiates a new GetStreamConfig200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStreamId

`func (o *GetStreamConfig200Response) GetStreamId() string`

GetStreamId returns the StreamId field if non-nil, zero value otherwise.

### GetStreamIdOk

`func (o *GetStreamConfig200Response) GetStreamIdOk() (*string, bool)`

GetStreamIdOk returns a tuple with the StreamId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStreamId

`func (o *GetStreamConfig200Response) SetStreamId(v string)`

SetStreamId sets StreamId field to given value.

### HasStreamId

`func (o *GetStreamConfig200Response) HasStreamId() bool`

HasStreamId returns a boolean if a field has been set.

### GetIss

`func (o *GetStreamConfig200Response) GetIss() string`

GetIss returns the Iss field if non-nil, zero value otherwise.

### GetIssOk

`func (o *GetStreamConfig200Response) GetIssOk() (*string, bool)`

GetIssOk returns a tuple with the Iss field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIss

`func (o *GetStreamConfig200Response) SetIss(v string)`

SetIss sets Iss field to given value.

### HasIss

`func (o *GetStreamConfig200Response) HasIss() bool`

HasIss returns a boolean if a field has been set.

### GetAud

`func (o *GetStreamConfig200Response) GetAud() string`

GetAud returns the Aud field if non-nil, zero value otherwise.

### GetAudOk

`func (o *GetStreamConfig200Response) GetAudOk() (*string, bool)`

GetAudOk returns a tuple with the Aud field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAud

`func (o *GetStreamConfig200Response) SetAud(v string)`

SetAud sets Aud field to given value.

### HasAud

`func (o *GetStreamConfig200Response) HasAud() bool`

HasAud returns a boolean if a field has been set.

### GetDelivery

`func (o *GetStreamConfig200Response) GetDelivery() SsfStreamDelivery`

GetDelivery returns the Delivery field if non-nil, zero value otherwise.

### GetDeliveryOk

`func (o *GetStreamConfig200Response) GetDeliveryOk() (*SsfStreamDelivery, bool)`

GetDeliveryOk returns a tuple with the Delivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelivery

`func (o *GetStreamConfig200Response) SetDelivery(v SsfStreamDelivery)`

SetDelivery sets Delivery field to given value.

### HasDelivery

`func (o *GetStreamConfig200Response) HasDelivery() bool`

HasDelivery returns a boolean if a field has been set.

### GetEventsSupported

`func (o *GetStreamConfig200Response) GetEventsSupported() []string`

GetEventsSupported returns the EventsSupported field if non-nil, zero value otherwise.

### GetEventsSupportedOk

`func (o *GetStreamConfig200Response) GetEventsSupportedOk() (*[]string, bool)`

GetEventsSupportedOk returns a tuple with the EventsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsSupported

`func (o *GetStreamConfig200Response) SetEventsSupported(v []string)`

SetEventsSupported sets EventsSupported field to given value.

### HasEventsSupported

`func (o *GetStreamConfig200Response) HasEventsSupported() bool`

HasEventsSupported returns a boolean if a field has been set.

### GetEventsRequested

`func (o *GetStreamConfig200Response) GetEventsRequested() []string`

GetEventsRequested returns the EventsRequested field if non-nil, zero value otherwise.

### GetEventsRequestedOk

`func (o *GetStreamConfig200Response) GetEventsRequestedOk() (*[]string, bool)`

GetEventsRequestedOk returns a tuple with the EventsRequested field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsRequested

`func (o *GetStreamConfig200Response) SetEventsRequested(v []string)`

SetEventsRequested sets EventsRequested field to given value.

### HasEventsRequested

`func (o *GetStreamConfig200Response) HasEventsRequested() bool`

HasEventsRequested returns a boolean if a field has been set.

### GetEventsDelivered

`func (o *GetStreamConfig200Response) GetEventsDelivered() []string`

GetEventsDelivered returns the EventsDelivered field if non-nil, zero value otherwise.

### GetEventsDeliveredOk

`func (o *GetStreamConfig200Response) GetEventsDeliveredOk() (*[]string, bool)`

GetEventsDeliveredOk returns a tuple with the EventsDelivered field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsDelivered

`func (o *GetStreamConfig200Response) SetEventsDelivered(v []string)`

SetEventsDelivered sets EventsDelivered field to given value.

### HasEventsDelivered

`func (o *GetStreamConfig200Response) HasEventsDelivered() bool`

HasEventsDelivered returns a boolean if a field has been set.

### GetStatus

`func (o *GetStreamConfig200Response) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *GetStreamConfig200Response) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *GetStreamConfig200Response) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *GetStreamConfig200Response) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetCreatedAt

`func (o *GetStreamConfig200Response) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *GetStreamConfig200Response) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *GetStreamConfig200Response) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *GetStreamConfig200Response) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetStreams

`func (o *GetStreamConfig200Response) GetStreams() []SsfStream`

GetStreams returns the Streams field if non-nil, zero value otherwise.

### GetStreamsOk

`func (o *GetStreamConfig200Response) GetStreamsOk() (*[]SsfStream, bool)`

GetStreamsOk returns a tuple with the Streams field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStreams

`func (o *GetStreamConfig200Response) SetStreams(v []SsfStream)`

SetStreams sets Streams field to given value.

### HasStreams

`func (o *GetStreamConfig200Response) HasStreams() bool`

HasStreams returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


