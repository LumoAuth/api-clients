# AdminWebhooksDeliveryShowResponseData

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
**Payload** | Pointer to **map[string]interface{}** | Event payload as sent to the receiver | [optional] 
**Attempts** | Pointer to [**[]AdminWebhooksDeliveryShowResponseData1AttemptsItem**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] 

## Methods

### NewAdminWebhooksDeliveryShowResponseData

`func NewAdminWebhooksDeliveryShowResponseData() *AdminWebhooksDeliveryShowResponseData`

NewAdminWebhooksDeliveryShowResponseData instantiates a new AdminWebhooksDeliveryShowResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksDeliveryShowResponseDataWithDefaults

`func NewAdminWebhooksDeliveryShowResponseDataWithDefaults() *AdminWebhooksDeliveryShowResponseData`

NewAdminWebhooksDeliveryShowResponseDataWithDefaults instantiates a new AdminWebhooksDeliveryShowResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AdminWebhooksDeliveryShowResponseData) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AdminWebhooksDeliveryShowResponseData) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *AdminWebhooksDeliveryShowResponseData) HasId() bool`

HasId returns a boolean if a field has been set.

### GetWebhookId

`func (o *AdminWebhooksDeliveryShowResponseData) GetWebhookId() int32`

GetWebhookId returns the WebhookId field if non-nil, zero value otherwise.

### GetWebhookIdOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetWebhookIdOk() (*int32, bool)`

GetWebhookIdOk returns a tuple with the WebhookId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebhookId

`func (o *AdminWebhooksDeliveryShowResponseData) SetWebhookId(v int32)`

SetWebhookId sets WebhookId field to given value.

### HasWebhookId

`func (o *AdminWebhooksDeliveryShowResponseData) HasWebhookId() bool`

HasWebhookId returns a boolean if a field has been set.

### GetDeliveryId

`func (o *AdminWebhooksDeliveryShowResponseData) GetDeliveryId() string`

GetDeliveryId returns the DeliveryId field if non-nil, zero value otherwise.

### GetDeliveryIdOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetDeliveryIdOk() (*string, bool)`

GetDeliveryIdOk returns a tuple with the DeliveryId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeliveryId

`func (o *AdminWebhooksDeliveryShowResponseData) SetDeliveryId(v string)`

SetDeliveryId sets DeliveryId field to given value.

### HasDeliveryId

`func (o *AdminWebhooksDeliveryShowResponseData) HasDeliveryId() bool`

HasDeliveryId returns a boolean if a field has been set.

### GetEventName

`func (o *AdminWebhooksDeliveryShowResponseData) GetEventName() string`

GetEventName returns the EventName field if non-nil, zero value otherwise.

### GetEventNameOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetEventNameOk() (*string, bool)`

GetEventNameOk returns a tuple with the EventName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventName

`func (o *AdminWebhooksDeliveryShowResponseData) SetEventName(v string)`

SetEventName sets EventName field to given value.

### HasEventName

`func (o *AdminWebhooksDeliveryShowResponseData) HasEventName() bool`

HasEventName returns a boolean if a field has been set.

### GetStatus

`func (o *AdminWebhooksDeliveryShowResponseData) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AdminWebhooksDeliveryShowResponseData) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AdminWebhooksDeliveryShowResponseData) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetAttemptCount

`func (o *AdminWebhooksDeliveryShowResponseData) GetAttemptCount() int32`

GetAttemptCount returns the AttemptCount field if non-nil, zero value otherwise.

### GetAttemptCountOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetAttemptCountOk() (*int32, bool)`

GetAttemptCountOk returns a tuple with the AttemptCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttemptCount

`func (o *AdminWebhooksDeliveryShowResponseData) SetAttemptCount(v int32)`

SetAttemptCount sets AttemptCount field to given value.

### HasAttemptCount

`func (o *AdminWebhooksDeliveryShowResponseData) HasAttemptCount() bool`

HasAttemptCount returns a boolean if a field has been set.

### GetLastStatusCode

`func (o *AdminWebhooksDeliveryShowResponseData) GetLastStatusCode() int32`

GetLastStatusCode returns the LastStatusCode field if non-nil, zero value otherwise.

### GetLastStatusCodeOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetLastStatusCodeOk() (*int32, bool)`

GetLastStatusCodeOk returns a tuple with the LastStatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastStatusCode

`func (o *AdminWebhooksDeliveryShowResponseData) SetLastStatusCode(v int32)`

SetLastStatusCode sets LastStatusCode field to given value.

### HasLastStatusCode

`func (o *AdminWebhooksDeliveryShowResponseData) HasLastStatusCode() bool`

HasLastStatusCode returns a boolean if a field has been set.

### SetLastStatusCodeNil

`func (o *AdminWebhooksDeliveryShowResponseData) SetLastStatusCodeNil(b bool)`

 SetLastStatusCodeNil sets the value for LastStatusCode to be an explicit nil

### UnsetLastStatusCode
`func (o *AdminWebhooksDeliveryShowResponseData) UnsetLastStatusCode()`

UnsetLastStatusCode ensures that no value is present for LastStatusCode, not even an explicit nil
### GetLastResponseBody

`func (o *AdminWebhooksDeliveryShowResponseData) GetLastResponseBody() string`

GetLastResponseBody returns the LastResponseBody field if non-nil, zero value otherwise.

### GetLastResponseBodyOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetLastResponseBodyOk() (*string, bool)`

GetLastResponseBodyOk returns a tuple with the LastResponseBody field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastResponseBody

`func (o *AdminWebhooksDeliveryShowResponseData) SetLastResponseBody(v string)`

SetLastResponseBody sets LastResponseBody field to given value.

### HasLastResponseBody

`func (o *AdminWebhooksDeliveryShowResponseData) HasLastResponseBody() bool`

HasLastResponseBody returns a boolean if a field has been set.

### SetLastResponseBodyNil

`func (o *AdminWebhooksDeliveryShowResponseData) SetLastResponseBodyNil(b bool)`

 SetLastResponseBodyNil sets the value for LastResponseBody to be an explicit nil

### UnsetLastResponseBody
`func (o *AdminWebhooksDeliveryShowResponseData) UnsetLastResponseBody()`

UnsetLastResponseBody ensures that no value is present for LastResponseBody, not even an explicit nil
### GetLastError

`func (o *AdminWebhooksDeliveryShowResponseData) GetLastError() string`

GetLastError returns the LastError field if non-nil, zero value otherwise.

### GetLastErrorOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetLastErrorOk() (*string, bool)`

GetLastErrorOk returns a tuple with the LastError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastError

`func (o *AdminWebhooksDeliveryShowResponseData) SetLastError(v string)`

SetLastError sets LastError field to given value.

### HasLastError

`func (o *AdminWebhooksDeliveryShowResponseData) HasLastError() bool`

HasLastError returns a boolean if a field has been set.

### SetLastErrorNil

`func (o *AdminWebhooksDeliveryShowResponseData) SetLastErrorNil(b bool)`

 SetLastErrorNil sets the value for LastError to be an explicit nil

### UnsetLastError
`func (o *AdminWebhooksDeliveryShowResponseData) UnsetLastError()`

UnsetLastError ensures that no value is present for LastError, not even an explicit nil
### GetNextAttemptAt

`func (o *AdminWebhooksDeliveryShowResponseData) GetNextAttemptAt() time.Time`

GetNextAttemptAt returns the NextAttemptAt field if non-nil, zero value otherwise.

### GetNextAttemptAtOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetNextAttemptAtOk() (*time.Time, bool)`

GetNextAttemptAtOk returns a tuple with the NextAttemptAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextAttemptAt

`func (o *AdminWebhooksDeliveryShowResponseData) SetNextAttemptAt(v time.Time)`

SetNextAttemptAt sets NextAttemptAt field to given value.

### HasNextAttemptAt

`func (o *AdminWebhooksDeliveryShowResponseData) HasNextAttemptAt() bool`

HasNextAttemptAt returns a boolean if a field has been set.

### SetNextAttemptAtNil

`func (o *AdminWebhooksDeliveryShowResponseData) SetNextAttemptAtNil(b bool)`

 SetNextAttemptAtNil sets the value for NextAttemptAt to be an explicit nil

### UnsetNextAttemptAt
`func (o *AdminWebhooksDeliveryShowResponseData) UnsetNextAttemptAt()`

UnsetNextAttemptAt ensures that no value is present for NextAttemptAt, not even an explicit nil
### GetSucceededAt

`func (o *AdminWebhooksDeliveryShowResponseData) GetSucceededAt() time.Time`

GetSucceededAt returns the SucceededAt field if non-nil, zero value otherwise.

### GetSucceededAtOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetSucceededAtOk() (*time.Time, bool)`

GetSucceededAtOk returns a tuple with the SucceededAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSucceededAt

`func (o *AdminWebhooksDeliveryShowResponseData) SetSucceededAt(v time.Time)`

SetSucceededAt sets SucceededAt field to given value.

### HasSucceededAt

`func (o *AdminWebhooksDeliveryShowResponseData) HasSucceededAt() bool`

HasSucceededAt returns a boolean if a field has been set.

### SetSucceededAtNil

`func (o *AdminWebhooksDeliveryShowResponseData) SetSucceededAtNil(b bool)`

 SetSucceededAtNil sets the value for SucceededAt to be an explicit nil

### UnsetSucceededAt
`func (o *AdminWebhooksDeliveryShowResponseData) UnsetSucceededAt()`

UnsetSucceededAt ensures that no value is present for SucceededAt, not even an explicit nil
### GetDeadLetteredAt

`func (o *AdminWebhooksDeliveryShowResponseData) GetDeadLetteredAt() time.Time`

GetDeadLetteredAt returns the DeadLetteredAt field if non-nil, zero value otherwise.

### GetDeadLetteredAtOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetDeadLetteredAtOk() (*time.Time, bool)`

GetDeadLetteredAtOk returns a tuple with the DeadLetteredAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeadLetteredAt

`func (o *AdminWebhooksDeliveryShowResponseData) SetDeadLetteredAt(v time.Time)`

SetDeadLetteredAt sets DeadLetteredAt field to given value.

### HasDeadLetteredAt

`func (o *AdminWebhooksDeliveryShowResponseData) HasDeadLetteredAt() bool`

HasDeadLetteredAt returns a boolean if a field has been set.

### SetDeadLetteredAtNil

`func (o *AdminWebhooksDeliveryShowResponseData) SetDeadLetteredAtNil(b bool)`

 SetDeadLetteredAtNil sets the value for DeadLetteredAt to be an explicit nil

### UnsetDeadLetteredAt
`func (o *AdminWebhooksDeliveryShowResponseData) UnsetDeadLetteredAt()`

UnsetDeadLetteredAt ensures that no value is present for DeadLetteredAt, not even an explicit nil
### GetCreatedAt

`func (o *AdminWebhooksDeliveryShowResponseData) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AdminWebhooksDeliveryShowResponseData) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *AdminWebhooksDeliveryShowResponseData) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *AdminWebhooksDeliveryShowResponseData) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *AdminWebhooksDeliveryShowResponseData) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *AdminWebhooksDeliveryShowResponseData) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetPayload

`func (o *AdminWebhooksDeliveryShowResponseData) GetPayload() map[string]interface{}`

GetPayload returns the Payload field if non-nil, zero value otherwise.

### GetPayloadOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetPayloadOk() (*map[string]interface{}, bool)`

GetPayloadOk returns a tuple with the Payload field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayload

`func (o *AdminWebhooksDeliveryShowResponseData) SetPayload(v map[string]interface{})`

SetPayload sets Payload field to given value.

### HasPayload

`func (o *AdminWebhooksDeliveryShowResponseData) HasPayload() bool`

HasPayload returns a boolean if a field has been set.

### GetAttempts

`func (o *AdminWebhooksDeliveryShowResponseData) GetAttempts() []AdminWebhooksDeliveryShowResponseData1AttemptsItem`

GetAttempts returns the Attempts field if non-nil, zero value otherwise.

### GetAttemptsOk

`func (o *AdminWebhooksDeliveryShowResponseData) GetAttemptsOk() (*[]AdminWebhooksDeliveryShowResponseData1AttemptsItem, bool)`

GetAttemptsOk returns a tuple with the Attempts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttempts

`func (o *AdminWebhooksDeliveryShowResponseData) SetAttempts(v []AdminWebhooksDeliveryShowResponseData1AttemptsItem)`

SetAttempts sets Attempts field to given value.

### HasAttempts

`func (o *AdminWebhooksDeliveryShowResponseData) HasAttempts() bool`

HasAttempts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


