# AuditLogEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**CreatedAt** | **time.Time** |  | 
**EventType** | Pointer to **NullableString** |  | [optional] 
**Action** | Pointer to **NullableString** |  | [optional] 
**Severity** | Pointer to **NullableString** |  | [optional] 
**Message** | Pointer to **NullableString** |  | [optional] 
**ActorId** | Pointer to **NullableString** |  | [optional] 
**ActorName** | Pointer to **NullableString** |  | [optional] 
**ActorType** | Pointer to **NullableString** |  | [optional] 
**AuthMethod** | Pointer to **NullableString** |  | [optional] 
**TargetType** | Pointer to **NullableString** |  | [optional] 
**TargetId** | Pointer to **NullableString** |  | [optional] 
**TargetName** | Pointer to **NullableString** |  | [optional] 
**IpAddress** | Pointer to **NullableString** |  | [optional] 
**EventTime** | Pointer to **NullableTime** | Detailed responses only | [optional] 
**DurationMs** | Pointer to **NullableInt32** | Detailed responses only | [optional] 
**InitiatedBy** | Pointer to **NullableString** | Detailed responses only | [optional] 
**ClientId** | Pointer to **NullableString** | Detailed responses only | [optional] 
**UserAgent** | Pointer to **NullableString** | Detailed responses only | [optional] 
**GeoLocation** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 
**SessionId** | Pointer to **NullableString** | Detailed responses only | [optional] 
**RequestId** | Pointer to **NullableString** | Detailed responses only | [optional] 
**Status** | Pointer to **NullableString** | Detailed responses only | [optional] 
**StatusReason** | Pointer to **NullableString** | Detailed responses only | [optional] 
**OldValue** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 
**NewValue** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 
**Changes** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 
**Context** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 

## Methods

### NewAuditLogEntry

`func NewAuditLogEntry(id int32, createdAt time.Time, ) *AuditLogEntry`

NewAuditLogEntry instantiates a new AuditLogEntry object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuditLogEntryWithDefaults

`func NewAuditLogEntryWithDefaults() *AuditLogEntry`

NewAuditLogEntryWithDefaults instantiates a new AuditLogEntry object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AuditLogEntry) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AuditLogEntry) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AuditLogEntry) SetId(v int32)`

SetId sets Id field to given value.


### GetCreatedAt

`func (o *AuditLogEntry) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AuditLogEntry) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AuditLogEntry) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetEventType

`func (o *AuditLogEntry) GetEventType() string`

GetEventType returns the EventType field if non-nil, zero value otherwise.

### GetEventTypeOk

`func (o *AuditLogEntry) GetEventTypeOk() (*string, bool)`

GetEventTypeOk returns a tuple with the EventType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventType

`func (o *AuditLogEntry) SetEventType(v string)`

SetEventType sets EventType field to given value.

### HasEventType

`func (o *AuditLogEntry) HasEventType() bool`

HasEventType returns a boolean if a field has been set.

### SetEventTypeNil

`func (o *AuditLogEntry) SetEventTypeNil(b bool)`

 SetEventTypeNil sets the value for EventType to be an explicit nil

### UnsetEventType
`func (o *AuditLogEntry) UnsetEventType()`

UnsetEventType ensures that no value is present for EventType, not even an explicit nil
### GetAction

`func (o *AuditLogEntry) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AuditLogEntry) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AuditLogEntry) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *AuditLogEntry) HasAction() bool`

HasAction returns a boolean if a field has been set.

### SetActionNil

`func (o *AuditLogEntry) SetActionNil(b bool)`

 SetActionNil sets the value for Action to be an explicit nil

### UnsetAction
`func (o *AuditLogEntry) UnsetAction()`

UnsetAction ensures that no value is present for Action, not even an explicit nil
### GetSeverity

`func (o *AuditLogEntry) GetSeverity() string`

GetSeverity returns the Severity field if non-nil, zero value otherwise.

### GetSeverityOk

`func (o *AuditLogEntry) GetSeverityOk() (*string, bool)`

GetSeverityOk returns a tuple with the Severity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSeverity

`func (o *AuditLogEntry) SetSeverity(v string)`

SetSeverity sets Severity field to given value.

### HasSeverity

`func (o *AuditLogEntry) HasSeverity() bool`

HasSeverity returns a boolean if a field has been set.

### SetSeverityNil

`func (o *AuditLogEntry) SetSeverityNil(b bool)`

 SetSeverityNil sets the value for Severity to be an explicit nil

### UnsetSeverity
`func (o *AuditLogEntry) UnsetSeverity()`

UnsetSeverity ensures that no value is present for Severity, not even an explicit nil
### GetMessage

`func (o *AuditLogEntry) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AuditLogEntry) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AuditLogEntry) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AuditLogEntry) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### SetMessageNil

`func (o *AuditLogEntry) SetMessageNil(b bool)`

 SetMessageNil sets the value for Message to be an explicit nil

### UnsetMessage
`func (o *AuditLogEntry) UnsetMessage()`

UnsetMessage ensures that no value is present for Message, not even an explicit nil
### GetActorId

`func (o *AuditLogEntry) GetActorId() string`

GetActorId returns the ActorId field if non-nil, zero value otherwise.

### GetActorIdOk

`func (o *AuditLogEntry) GetActorIdOk() (*string, bool)`

GetActorIdOk returns a tuple with the ActorId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActorId

`func (o *AuditLogEntry) SetActorId(v string)`

SetActorId sets ActorId field to given value.

### HasActorId

`func (o *AuditLogEntry) HasActorId() bool`

HasActorId returns a boolean if a field has been set.

### SetActorIdNil

`func (o *AuditLogEntry) SetActorIdNil(b bool)`

 SetActorIdNil sets the value for ActorId to be an explicit nil

### UnsetActorId
`func (o *AuditLogEntry) UnsetActorId()`

UnsetActorId ensures that no value is present for ActorId, not even an explicit nil
### GetActorName

`func (o *AuditLogEntry) GetActorName() string`

GetActorName returns the ActorName field if non-nil, zero value otherwise.

### GetActorNameOk

`func (o *AuditLogEntry) GetActorNameOk() (*string, bool)`

GetActorNameOk returns a tuple with the ActorName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActorName

`func (o *AuditLogEntry) SetActorName(v string)`

SetActorName sets ActorName field to given value.

### HasActorName

`func (o *AuditLogEntry) HasActorName() bool`

HasActorName returns a boolean if a field has been set.

### SetActorNameNil

`func (o *AuditLogEntry) SetActorNameNil(b bool)`

 SetActorNameNil sets the value for ActorName to be an explicit nil

### UnsetActorName
`func (o *AuditLogEntry) UnsetActorName()`

UnsetActorName ensures that no value is present for ActorName, not even an explicit nil
### GetActorType

`func (o *AuditLogEntry) GetActorType() string`

GetActorType returns the ActorType field if non-nil, zero value otherwise.

### GetActorTypeOk

`func (o *AuditLogEntry) GetActorTypeOk() (*string, bool)`

GetActorTypeOk returns a tuple with the ActorType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActorType

`func (o *AuditLogEntry) SetActorType(v string)`

SetActorType sets ActorType field to given value.

### HasActorType

`func (o *AuditLogEntry) HasActorType() bool`

HasActorType returns a boolean if a field has been set.

### SetActorTypeNil

`func (o *AuditLogEntry) SetActorTypeNil(b bool)`

 SetActorTypeNil sets the value for ActorType to be an explicit nil

### UnsetActorType
`func (o *AuditLogEntry) UnsetActorType()`

UnsetActorType ensures that no value is present for ActorType, not even an explicit nil
### GetAuthMethod

`func (o *AuditLogEntry) GetAuthMethod() string`

GetAuthMethod returns the AuthMethod field if non-nil, zero value otherwise.

### GetAuthMethodOk

`func (o *AuditLogEntry) GetAuthMethodOk() (*string, bool)`

GetAuthMethodOk returns a tuple with the AuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthMethod

`func (o *AuditLogEntry) SetAuthMethod(v string)`

SetAuthMethod sets AuthMethod field to given value.

### HasAuthMethod

`func (o *AuditLogEntry) HasAuthMethod() bool`

HasAuthMethod returns a boolean if a field has been set.

### SetAuthMethodNil

`func (o *AuditLogEntry) SetAuthMethodNil(b bool)`

 SetAuthMethodNil sets the value for AuthMethod to be an explicit nil

### UnsetAuthMethod
`func (o *AuditLogEntry) UnsetAuthMethod()`

UnsetAuthMethod ensures that no value is present for AuthMethod, not even an explicit nil
### GetTargetType

`func (o *AuditLogEntry) GetTargetType() string`

GetTargetType returns the TargetType field if non-nil, zero value otherwise.

### GetTargetTypeOk

`func (o *AuditLogEntry) GetTargetTypeOk() (*string, bool)`

GetTargetTypeOk returns a tuple with the TargetType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTargetType

`func (o *AuditLogEntry) SetTargetType(v string)`

SetTargetType sets TargetType field to given value.

### HasTargetType

`func (o *AuditLogEntry) HasTargetType() bool`

HasTargetType returns a boolean if a field has been set.

### SetTargetTypeNil

`func (o *AuditLogEntry) SetTargetTypeNil(b bool)`

 SetTargetTypeNil sets the value for TargetType to be an explicit nil

### UnsetTargetType
`func (o *AuditLogEntry) UnsetTargetType()`

UnsetTargetType ensures that no value is present for TargetType, not even an explicit nil
### GetTargetId

`func (o *AuditLogEntry) GetTargetId() string`

GetTargetId returns the TargetId field if non-nil, zero value otherwise.

### GetTargetIdOk

`func (o *AuditLogEntry) GetTargetIdOk() (*string, bool)`

GetTargetIdOk returns a tuple with the TargetId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTargetId

`func (o *AuditLogEntry) SetTargetId(v string)`

SetTargetId sets TargetId field to given value.

### HasTargetId

`func (o *AuditLogEntry) HasTargetId() bool`

HasTargetId returns a boolean if a field has been set.

### SetTargetIdNil

`func (o *AuditLogEntry) SetTargetIdNil(b bool)`

 SetTargetIdNil sets the value for TargetId to be an explicit nil

### UnsetTargetId
`func (o *AuditLogEntry) UnsetTargetId()`

UnsetTargetId ensures that no value is present for TargetId, not even an explicit nil
### GetTargetName

`func (o *AuditLogEntry) GetTargetName() string`

GetTargetName returns the TargetName field if non-nil, zero value otherwise.

### GetTargetNameOk

`func (o *AuditLogEntry) GetTargetNameOk() (*string, bool)`

GetTargetNameOk returns a tuple with the TargetName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTargetName

`func (o *AuditLogEntry) SetTargetName(v string)`

SetTargetName sets TargetName field to given value.

### HasTargetName

`func (o *AuditLogEntry) HasTargetName() bool`

HasTargetName returns a boolean if a field has been set.

### SetTargetNameNil

`func (o *AuditLogEntry) SetTargetNameNil(b bool)`

 SetTargetNameNil sets the value for TargetName to be an explicit nil

### UnsetTargetName
`func (o *AuditLogEntry) UnsetTargetName()`

UnsetTargetName ensures that no value is present for TargetName, not even an explicit nil
### GetIpAddress

`func (o *AuditLogEntry) GetIpAddress() string`

GetIpAddress returns the IpAddress field if non-nil, zero value otherwise.

### GetIpAddressOk

`func (o *AuditLogEntry) GetIpAddressOk() (*string, bool)`

GetIpAddressOk returns a tuple with the IpAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIpAddress

`func (o *AuditLogEntry) SetIpAddress(v string)`

SetIpAddress sets IpAddress field to given value.

### HasIpAddress

`func (o *AuditLogEntry) HasIpAddress() bool`

HasIpAddress returns a boolean if a field has been set.

### SetIpAddressNil

`func (o *AuditLogEntry) SetIpAddressNil(b bool)`

 SetIpAddressNil sets the value for IpAddress to be an explicit nil

### UnsetIpAddress
`func (o *AuditLogEntry) UnsetIpAddress()`

UnsetIpAddress ensures that no value is present for IpAddress, not even an explicit nil
### GetEventTime

`func (o *AuditLogEntry) GetEventTime() time.Time`

GetEventTime returns the EventTime field if non-nil, zero value otherwise.

### GetEventTimeOk

`func (o *AuditLogEntry) GetEventTimeOk() (*time.Time, bool)`

GetEventTimeOk returns a tuple with the EventTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventTime

`func (o *AuditLogEntry) SetEventTime(v time.Time)`

SetEventTime sets EventTime field to given value.

### HasEventTime

`func (o *AuditLogEntry) HasEventTime() bool`

HasEventTime returns a boolean if a field has been set.

### SetEventTimeNil

`func (o *AuditLogEntry) SetEventTimeNil(b bool)`

 SetEventTimeNil sets the value for EventTime to be an explicit nil

### UnsetEventTime
`func (o *AuditLogEntry) UnsetEventTime()`

UnsetEventTime ensures that no value is present for EventTime, not even an explicit nil
### GetDurationMs

`func (o *AuditLogEntry) GetDurationMs() int32`

GetDurationMs returns the DurationMs field if non-nil, zero value otherwise.

### GetDurationMsOk

`func (o *AuditLogEntry) GetDurationMsOk() (*int32, bool)`

GetDurationMsOk returns a tuple with the DurationMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDurationMs

`func (o *AuditLogEntry) SetDurationMs(v int32)`

SetDurationMs sets DurationMs field to given value.

### HasDurationMs

`func (o *AuditLogEntry) HasDurationMs() bool`

HasDurationMs returns a boolean if a field has been set.

### SetDurationMsNil

`func (o *AuditLogEntry) SetDurationMsNil(b bool)`

 SetDurationMsNil sets the value for DurationMs to be an explicit nil

### UnsetDurationMs
`func (o *AuditLogEntry) UnsetDurationMs()`

UnsetDurationMs ensures that no value is present for DurationMs, not even an explicit nil
### GetInitiatedBy

`func (o *AuditLogEntry) GetInitiatedBy() string`

GetInitiatedBy returns the InitiatedBy field if non-nil, zero value otherwise.

### GetInitiatedByOk

`func (o *AuditLogEntry) GetInitiatedByOk() (*string, bool)`

GetInitiatedByOk returns a tuple with the InitiatedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInitiatedBy

`func (o *AuditLogEntry) SetInitiatedBy(v string)`

SetInitiatedBy sets InitiatedBy field to given value.

### HasInitiatedBy

`func (o *AuditLogEntry) HasInitiatedBy() bool`

HasInitiatedBy returns a boolean if a field has been set.

### SetInitiatedByNil

`func (o *AuditLogEntry) SetInitiatedByNil(b bool)`

 SetInitiatedByNil sets the value for InitiatedBy to be an explicit nil

### UnsetInitiatedBy
`func (o *AuditLogEntry) UnsetInitiatedBy()`

UnsetInitiatedBy ensures that no value is present for InitiatedBy, not even an explicit nil
### GetClientId

`func (o *AuditLogEntry) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *AuditLogEntry) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *AuditLogEntry) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *AuditLogEntry) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### SetClientIdNil

`func (o *AuditLogEntry) SetClientIdNil(b bool)`

 SetClientIdNil sets the value for ClientId to be an explicit nil

### UnsetClientId
`func (o *AuditLogEntry) UnsetClientId()`

UnsetClientId ensures that no value is present for ClientId, not even an explicit nil
### GetUserAgent

`func (o *AuditLogEntry) GetUserAgent() string`

GetUserAgent returns the UserAgent field if non-nil, zero value otherwise.

### GetUserAgentOk

`func (o *AuditLogEntry) GetUserAgentOk() (*string, bool)`

GetUserAgentOk returns a tuple with the UserAgent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserAgent

`func (o *AuditLogEntry) SetUserAgent(v string)`

SetUserAgent sets UserAgent field to given value.

### HasUserAgent

`func (o *AuditLogEntry) HasUserAgent() bool`

HasUserAgent returns a boolean if a field has been set.

### SetUserAgentNil

`func (o *AuditLogEntry) SetUserAgentNil(b bool)`

 SetUserAgentNil sets the value for UserAgent to be an explicit nil

### UnsetUserAgent
`func (o *AuditLogEntry) UnsetUserAgent()`

UnsetUserAgent ensures that no value is present for UserAgent, not even an explicit nil
### GetGeoLocation

`func (o *AuditLogEntry) GetGeoLocation() map[string]interface{}`

GetGeoLocation returns the GeoLocation field if non-nil, zero value otherwise.

### GetGeoLocationOk

`func (o *AuditLogEntry) GetGeoLocationOk() (*map[string]interface{}, bool)`

GetGeoLocationOk returns a tuple with the GeoLocation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeoLocation

`func (o *AuditLogEntry) SetGeoLocation(v map[string]interface{})`

SetGeoLocation sets GeoLocation field to given value.

### HasGeoLocation

`func (o *AuditLogEntry) HasGeoLocation() bool`

HasGeoLocation returns a boolean if a field has been set.

### SetGeoLocationNil

`func (o *AuditLogEntry) SetGeoLocationNil(b bool)`

 SetGeoLocationNil sets the value for GeoLocation to be an explicit nil

### UnsetGeoLocation
`func (o *AuditLogEntry) UnsetGeoLocation()`

UnsetGeoLocation ensures that no value is present for GeoLocation, not even an explicit nil
### GetSessionId

`func (o *AuditLogEntry) GetSessionId() string`

GetSessionId returns the SessionId field if non-nil, zero value otherwise.

### GetSessionIdOk

`func (o *AuditLogEntry) GetSessionIdOk() (*string, bool)`

GetSessionIdOk returns a tuple with the SessionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSessionId

`func (o *AuditLogEntry) SetSessionId(v string)`

SetSessionId sets SessionId field to given value.

### HasSessionId

`func (o *AuditLogEntry) HasSessionId() bool`

HasSessionId returns a boolean if a field has been set.

### SetSessionIdNil

`func (o *AuditLogEntry) SetSessionIdNil(b bool)`

 SetSessionIdNil sets the value for SessionId to be an explicit nil

### UnsetSessionId
`func (o *AuditLogEntry) UnsetSessionId()`

UnsetSessionId ensures that no value is present for SessionId, not even an explicit nil
### GetRequestId

`func (o *AuditLogEntry) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *AuditLogEntry) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *AuditLogEntry) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *AuditLogEntry) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.

### SetRequestIdNil

`func (o *AuditLogEntry) SetRequestIdNil(b bool)`

 SetRequestIdNil sets the value for RequestId to be an explicit nil

### UnsetRequestId
`func (o *AuditLogEntry) UnsetRequestId()`

UnsetRequestId ensures that no value is present for RequestId, not even an explicit nil
### GetStatus

`func (o *AuditLogEntry) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AuditLogEntry) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AuditLogEntry) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AuditLogEntry) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### SetStatusNil

`func (o *AuditLogEntry) SetStatusNil(b bool)`

 SetStatusNil sets the value for Status to be an explicit nil

### UnsetStatus
`func (o *AuditLogEntry) UnsetStatus()`

UnsetStatus ensures that no value is present for Status, not even an explicit nil
### GetStatusReason

`func (o *AuditLogEntry) GetStatusReason() string`

GetStatusReason returns the StatusReason field if non-nil, zero value otherwise.

### GetStatusReasonOk

`func (o *AuditLogEntry) GetStatusReasonOk() (*string, bool)`

GetStatusReasonOk returns a tuple with the StatusReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusReason

`func (o *AuditLogEntry) SetStatusReason(v string)`

SetStatusReason sets StatusReason field to given value.

### HasStatusReason

`func (o *AuditLogEntry) HasStatusReason() bool`

HasStatusReason returns a boolean if a field has been set.

### SetStatusReasonNil

`func (o *AuditLogEntry) SetStatusReasonNil(b bool)`

 SetStatusReasonNil sets the value for StatusReason to be an explicit nil

### UnsetStatusReason
`func (o *AuditLogEntry) UnsetStatusReason()`

UnsetStatusReason ensures that no value is present for StatusReason, not even an explicit nil
### GetOldValue

`func (o *AuditLogEntry) GetOldValue() map[string]interface{}`

GetOldValue returns the OldValue field if non-nil, zero value otherwise.

### GetOldValueOk

`func (o *AuditLogEntry) GetOldValueOk() (*map[string]interface{}, bool)`

GetOldValueOk returns a tuple with the OldValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOldValue

`func (o *AuditLogEntry) SetOldValue(v map[string]interface{})`

SetOldValue sets OldValue field to given value.

### HasOldValue

`func (o *AuditLogEntry) HasOldValue() bool`

HasOldValue returns a boolean if a field has been set.

### SetOldValueNil

`func (o *AuditLogEntry) SetOldValueNil(b bool)`

 SetOldValueNil sets the value for OldValue to be an explicit nil

### UnsetOldValue
`func (o *AuditLogEntry) UnsetOldValue()`

UnsetOldValue ensures that no value is present for OldValue, not even an explicit nil
### GetNewValue

`func (o *AuditLogEntry) GetNewValue() map[string]interface{}`

GetNewValue returns the NewValue field if non-nil, zero value otherwise.

### GetNewValueOk

`func (o *AuditLogEntry) GetNewValueOk() (*map[string]interface{}, bool)`

GetNewValueOk returns a tuple with the NewValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewValue

`func (o *AuditLogEntry) SetNewValue(v map[string]interface{})`

SetNewValue sets NewValue field to given value.

### HasNewValue

`func (o *AuditLogEntry) HasNewValue() bool`

HasNewValue returns a boolean if a field has been set.

### SetNewValueNil

`func (o *AuditLogEntry) SetNewValueNil(b bool)`

 SetNewValueNil sets the value for NewValue to be an explicit nil

### UnsetNewValue
`func (o *AuditLogEntry) UnsetNewValue()`

UnsetNewValue ensures that no value is present for NewValue, not even an explicit nil
### GetChanges

`func (o *AuditLogEntry) GetChanges() map[string]interface{}`

GetChanges returns the Changes field if non-nil, zero value otherwise.

### GetChangesOk

`func (o *AuditLogEntry) GetChangesOk() (*map[string]interface{}, bool)`

GetChangesOk returns a tuple with the Changes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChanges

`func (o *AuditLogEntry) SetChanges(v map[string]interface{})`

SetChanges sets Changes field to given value.

### HasChanges

`func (o *AuditLogEntry) HasChanges() bool`

HasChanges returns a boolean if a field has been set.

### SetChangesNil

`func (o *AuditLogEntry) SetChangesNil(b bool)`

 SetChangesNil sets the value for Changes to be an explicit nil

### UnsetChanges
`func (o *AuditLogEntry) UnsetChanges()`

UnsetChanges ensures that no value is present for Changes, not even an explicit nil
### GetContext

`func (o *AuditLogEntry) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *AuditLogEntry) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *AuditLogEntry) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *AuditLogEntry) HasContext() bool`

HasContext returns a boolean if a field has been set.

### SetContextNil

`func (o *AuditLogEntry) SetContextNil(b bool)`

 SetContextNil sets the value for Context to be an explicit nil

### UnsetContext
`func (o *AuditLogEntry) UnsetContext()`

UnsetContext ensures that no value is present for Context, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


