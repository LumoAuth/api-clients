# SsfStream

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

## Methods

### NewSsfStream

`func NewSsfStream() *SsfStream`

NewSsfStream instantiates a new SsfStream object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSsfStreamWithDefaults

`func NewSsfStreamWithDefaults() *SsfStream`

NewSsfStreamWithDefaults instantiates a new SsfStream object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStreamId

`func (o *SsfStream) GetStreamId() string`

GetStreamId returns the StreamId field if non-nil, zero value otherwise.

### GetStreamIdOk

`func (o *SsfStream) GetStreamIdOk() (*string, bool)`

GetStreamIdOk returns a tuple with the StreamId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStreamId

`func (o *SsfStream) SetStreamId(v string)`

SetStreamId sets StreamId field to given value.

### HasStreamId

`func (o *SsfStream) HasStreamId() bool`

HasStreamId returns a boolean if a field has been set.

### GetIss

`func (o *SsfStream) GetIss() string`

GetIss returns the Iss field if non-nil, zero value otherwise.

### GetIssOk

`func (o *SsfStream) GetIssOk() (*string, bool)`

GetIssOk returns a tuple with the Iss field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIss

`func (o *SsfStream) SetIss(v string)`

SetIss sets Iss field to given value.

### HasIss

`func (o *SsfStream) HasIss() bool`

HasIss returns a boolean if a field has been set.

### GetAud

`func (o *SsfStream) GetAud() string`

GetAud returns the Aud field if non-nil, zero value otherwise.

### GetAudOk

`func (o *SsfStream) GetAudOk() (*string, bool)`

GetAudOk returns a tuple with the Aud field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAud

`func (o *SsfStream) SetAud(v string)`

SetAud sets Aud field to given value.

### HasAud

`func (o *SsfStream) HasAud() bool`

HasAud returns a boolean if a field has been set.

### GetDelivery

`func (o *SsfStream) GetDelivery() SsfStreamDelivery`

GetDelivery returns the Delivery field if non-nil, zero value otherwise.

### GetDeliveryOk

`func (o *SsfStream) GetDeliveryOk() (*SsfStreamDelivery, bool)`

GetDeliveryOk returns a tuple with the Delivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelivery

`func (o *SsfStream) SetDelivery(v SsfStreamDelivery)`

SetDelivery sets Delivery field to given value.

### HasDelivery

`func (o *SsfStream) HasDelivery() bool`

HasDelivery returns a boolean if a field has been set.

### GetEventsSupported

`func (o *SsfStream) GetEventsSupported() []string`

GetEventsSupported returns the EventsSupported field if non-nil, zero value otherwise.

### GetEventsSupportedOk

`func (o *SsfStream) GetEventsSupportedOk() (*[]string, bool)`

GetEventsSupportedOk returns a tuple with the EventsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsSupported

`func (o *SsfStream) SetEventsSupported(v []string)`

SetEventsSupported sets EventsSupported field to given value.

### HasEventsSupported

`func (o *SsfStream) HasEventsSupported() bool`

HasEventsSupported returns a boolean if a field has been set.

### GetEventsRequested

`func (o *SsfStream) GetEventsRequested() []string`

GetEventsRequested returns the EventsRequested field if non-nil, zero value otherwise.

### GetEventsRequestedOk

`func (o *SsfStream) GetEventsRequestedOk() (*[]string, bool)`

GetEventsRequestedOk returns a tuple with the EventsRequested field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsRequested

`func (o *SsfStream) SetEventsRequested(v []string)`

SetEventsRequested sets EventsRequested field to given value.

### HasEventsRequested

`func (o *SsfStream) HasEventsRequested() bool`

HasEventsRequested returns a boolean if a field has been set.

### GetEventsDelivered

`func (o *SsfStream) GetEventsDelivered() []string`

GetEventsDelivered returns the EventsDelivered field if non-nil, zero value otherwise.

### GetEventsDeliveredOk

`func (o *SsfStream) GetEventsDeliveredOk() (*[]string, bool)`

GetEventsDeliveredOk returns a tuple with the EventsDelivered field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsDelivered

`func (o *SsfStream) SetEventsDelivered(v []string)`

SetEventsDelivered sets EventsDelivered field to given value.

### HasEventsDelivered

`func (o *SsfStream) HasEventsDelivered() bool`

HasEventsDelivered returns a boolean if a field has been set.

### GetStatus

`func (o *SsfStream) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *SsfStream) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *SsfStream) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *SsfStream) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetCreatedAt

`func (o *SsfStream) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *SsfStream) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *SsfStream) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *SsfStream) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


