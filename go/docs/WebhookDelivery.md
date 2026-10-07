# WebhookDelivery

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**WebhookId** | Pointer to **int32** |  | [optional] 
**DeliveryId** | Pointer to **string** |  | [optional] 
**EventName** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**AttemptCount** | Pointer to **int32** |  | [optional] 
**LastStatusCode** | Pointer to **NullableInt32** |  | [optional] 
**LastResponseBody** | Pointer to **NullableString** |  | [optional] 
**LastError** | Pointer to **NullableString** |  | [optional] 
**NextAttemptAt** | Pointer to **NullableTime** |  | [optional] 
**SucceededAt** | Pointer to **NullableTime** |  | [optional] 
**DeadLetteredAt** | Pointer to **NullableTime** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**UpdatedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewWebhookDelivery

`func NewWebhookDelivery() *WebhookDelivery`

NewWebhookDelivery instantiates a new WebhookDelivery object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebhookDeliveryWithDefaults

`func NewWebhookDeliveryWithDefaults() *WebhookDelivery`

NewWebhookDeliveryWithDefaults instantiates a new WebhookDelivery object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *WebhookDelivery) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *WebhookDelivery) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *WebhookDelivery) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *WebhookDelivery) HasId() bool`

HasId returns a boolean if a field has been set.

### GetWebhookId

`func (o *WebhookDelivery) GetWebhookId() int32`

GetWebhookId returns the WebhookId field if non-nil, zero value otherwise.

### GetWebhookIdOk

`func (o *WebhookDelivery) GetWebhookIdOk() (*int32, bool)`

GetWebhookIdOk returns a tuple with the WebhookId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebhookId

`func (o *WebhookDelivery) SetWebhookId(v int32)`

SetWebhookId sets WebhookId field to given value.

### HasWebhookId

`func (o *WebhookDelivery) HasWebhookId() bool`

HasWebhookId returns a boolean if a field has been set.

### GetDeliveryId

`func (o *WebhookDelivery) GetDeliveryId() string`

GetDeliveryId returns the DeliveryId field if non-nil, zero value otherwise.

### GetDeliveryIdOk

`func (o *WebhookDelivery) GetDeliveryIdOk() (*string, bool)`

GetDeliveryIdOk returns a tuple with the DeliveryId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeliveryId

`func (o *WebhookDelivery) SetDeliveryId(v string)`

SetDeliveryId sets DeliveryId field to given value.

### HasDeliveryId

`func (o *WebhookDelivery) HasDeliveryId() bool`

HasDeliveryId returns a boolean if a field has been set.

### GetEventName

`func (o *WebhookDelivery) GetEventName() string`

GetEventName returns the EventName field if non-nil, zero value otherwise.

### GetEventNameOk

`func (o *WebhookDelivery) GetEventNameOk() (*string, bool)`

GetEventNameOk returns a tuple with the EventName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventName

`func (o *WebhookDelivery) SetEventName(v string)`

SetEventName sets EventName field to given value.

### HasEventName

`func (o *WebhookDelivery) HasEventName() bool`

HasEventName returns a boolean if a field has been set.

### GetStatus

`func (o *WebhookDelivery) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *WebhookDelivery) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *WebhookDelivery) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *WebhookDelivery) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetAttemptCount

`func (o *WebhookDelivery) GetAttemptCount() int32`

GetAttemptCount returns the AttemptCount field if non-nil, zero value otherwise.

### GetAttemptCountOk

`func (o *WebhookDelivery) GetAttemptCountOk() (*int32, bool)`

GetAttemptCountOk returns a tuple with the AttemptCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttemptCount

`func (o *WebhookDelivery) SetAttemptCount(v int32)`

SetAttemptCount sets AttemptCount field to given value.

### HasAttemptCount

`func (o *WebhookDelivery) HasAttemptCount() bool`

HasAttemptCount returns a boolean if a field has been set.

### GetLastStatusCode

`func (o *WebhookDelivery) GetLastStatusCode() int32`

GetLastStatusCode returns the LastStatusCode field if non-nil, zero value otherwise.

### GetLastStatusCodeOk

`func (o *WebhookDelivery) GetLastStatusCodeOk() (*int32, bool)`

GetLastStatusCodeOk returns a tuple with the LastStatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastStatusCode

`func (o *WebhookDelivery) SetLastStatusCode(v int32)`

SetLastStatusCode sets LastStatusCode field to given value.

### HasLastStatusCode

`func (o *WebhookDelivery) HasLastStatusCode() bool`

HasLastStatusCode returns a boolean if a field has been set.

### SetLastStatusCodeNil

`func (o *WebhookDelivery) SetLastStatusCodeNil(b bool)`

 SetLastStatusCodeNil sets the value for LastStatusCode to be an explicit nil

### UnsetLastStatusCode
`func (o *WebhookDelivery) UnsetLastStatusCode()`

UnsetLastStatusCode ensures that no value is present for LastStatusCode, not even an explicit nil
### GetLastResponseBody

`func (o *WebhookDelivery) GetLastResponseBody() string`

GetLastResponseBody returns the LastResponseBody field if non-nil, zero value otherwise.

### GetLastResponseBodyOk

`func (o *WebhookDelivery) GetLastResponseBodyOk() (*string, bool)`

GetLastResponseBodyOk returns a tuple with the LastResponseBody field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastResponseBody

`func (o *WebhookDelivery) SetLastResponseBody(v string)`

SetLastResponseBody sets LastResponseBody field to given value.

### HasLastResponseBody

`func (o *WebhookDelivery) HasLastResponseBody() bool`

HasLastResponseBody returns a boolean if a field has been set.

### SetLastResponseBodyNil

`func (o *WebhookDelivery) SetLastResponseBodyNil(b bool)`

 SetLastResponseBodyNil sets the value for LastResponseBody to be an explicit nil

### UnsetLastResponseBody
`func (o *WebhookDelivery) UnsetLastResponseBody()`

UnsetLastResponseBody ensures that no value is present for LastResponseBody, not even an explicit nil
### GetLastError

`func (o *WebhookDelivery) GetLastError() string`

GetLastError returns the LastError field if non-nil, zero value otherwise.

### GetLastErrorOk

`func (o *WebhookDelivery) GetLastErrorOk() (*string, bool)`

GetLastErrorOk returns a tuple with the LastError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastError

`func (o *WebhookDelivery) SetLastError(v string)`

SetLastError sets LastError field to given value.

### HasLastError

`func (o *WebhookDelivery) HasLastError() bool`

HasLastError returns a boolean if a field has been set.

### SetLastErrorNil

`func (o *WebhookDelivery) SetLastErrorNil(b bool)`

 SetLastErrorNil sets the value for LastError to be an explicit nil

### UnsetLastError
`func (o *WebhookDelivery) UnsetLastError()`

UnsetLastError ensures that no value is present for LastError, not even an explicit nil
### GetNextAttemptAt

`func (o *WebhookDelivery) GetNextAttemptAt() time.Time`

GetNextAttemptAt returns the NextAttemptAt field if non-nil, zero value otherwise.

### GetNextAttemptAtOk

`func (o *WebhookDelivery) GetNextAttemptAtOk() (*time.Time, bool)`

GetNextAttemptAtOk returns a tuple with the NextAttemptAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextAttemptAt

`func (o *WebhookDelivery) SetNextAttemptAt(v time.Time)`

SetNextAttemptAt sets NextAttemptAt field to given value.

### HasNextAttemptAt

`func (o *WebhookDelivery) HasNextAttemptAt() bool`

HasNextAttemptAt returns a boolean if a field has been set.

### SetNextAttemptAtNil

`func (o *WebhookDelivery) SetNextAttemptAtNil(b bool)`

 SetNextAttemptAtNil sets the value for NextAttemptAt to be an explicit nil

### UnsetNextAttemptAt
`func (o *WebhookDelivery) UnsetNextAttemptAt()`

UnsetNextAttemptAt ensures that no value is present for NextAttemptAt, not even an explicit nil
### GetSucceededAt

`func (o *WebhookDelivery) GetSucceededAt() time.Time`

GetSucceededAt returns the SucceededAt field if non-nil, zero value otherwise.

### GetSucceededAtOk

`func (o *WebhookDelivery) GetSucceededAtOk() (*time.Time, bool)`

GetSucceededAtOk returns a tuple with the SucceededAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSucceededAt

`func (o *WebhookDelivery) SetSucceededAt(v time.Time)`

SetSucceededAt sets SucceededAt field to given value.

### HasSucceededAt

`func (o *WebhookDelivery) HasSucceededAt() bool`

HasSucceededAt returns a boolean if a field has been set.

### SetSucceededAtNil

`func (o *WebhookDelivery) SetSucceededAtNil(b bool)`

 SetSucceededAtNil sets the value for SucceededAt to be an explicit nil

### UnsetSucceededAt
`func (o *WebhookDelivery) UnsetSucceededAt()`

UnsetSucceededAt ensures that no value is present for SucceededAt, not even an explicit nil
### GetDeadLetteredAt

`func (o *WebhookDelivery) GetDeadLetteredAt() time.Time`

GetDeadLetteredAt returns the DeadLetteredAt field if non-nil, zero value otherwise.

### GetDeadLetteredAtOk

`func (o *WebhookDelivery) GetDeadLetteredAtOk() (*time.Time, bool)`

GetDeadLetteredAtOk returns a tuple with the DeadLetteredAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeadLetteredAt

`func (o *WebhookDelivery) SetDeadLetteredAt(v time.Time)`

SetDeadLetteredAt sets DeadLetteredAt field to given value.

### HasDeadLetteredAt

`func (o *WebhookDelivery) HasDeadLetteredAt() bool`

HasDeadLetteredAt returns a boolean if a field has been set.

### SetDeadLetteredAtNil

`func (o *WebhookDelivery) SetDeadLetteredAtNil(b bool)`

 SetDeadLetteredAtNil sets the value for DeadLetteredAt to be an explicit nil

### UnsetDeadLetteredAt
`func (o *WebhookDelivery) UnsetDeadLetteredAt()`

UnsetDeadLetteredAt ensures that no value is present for DeadLetteredAt, not even an explicit nil
### GetCreatedAt

`func (o *WebhookDelivery) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *WebhookDelivery) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *WebhookDelivery) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *WebhookDelivery) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *WebhookDelivery) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *WebhookDelivery) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *WebhookDelivery) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *WebhookDelivery) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


