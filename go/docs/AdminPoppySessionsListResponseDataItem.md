# AdminPoppySessionsListResponseDataItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**ClientId** | Pointer to **string** |  | [optional] 
**ClientName** | Pointer to **NullableString** |  | [optional] 
**UserId** | Pointer to **string** |  | [optional] 
**AgentId** | Pointer to **NullableString** |  | [optional] 
**SignedIn** | Pointer to **bool** |  | [optional] 
**AccountId** | Pointer to **NullableString** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**EndedReason** | Pointer to **NullableString** |  | [optional] 
**ProtocolVersion** | Pointer to **string** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**LastSeenAt** | Pointer to **time.Time** |  | [optional] 
**EndedAt** | Pointer to **NullableTime** |  | [optional] 

## Methods

### NewAdminPoppySessionsListResponseDataItem

`func NewAdminPoppySessionsListResponseDataItem() *AdminPoppySessionsListResponseDataItem`

NewAdminPoppySessionsListResponseDataItem instantiates a new AdminPoppySessionsListResponseDataItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPoppySessionsListResponseDataItemWithDefaults

`func NewAdminPoppySessionsListResponseDataItemWithDefaults() *AdminPoppySessionsListResponseDataItem`

NewAdminPoppySessionsListResponseDataItemWithDefaults instantiates a new AdminPoppySessionsListResponseDataItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AdminPoppySessionsListResponseDataItem) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AdminPoppySessionsListResponseDataItem) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AdminPoppySessionsListResponseDataItem) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *AdminPoppySessionsListResponseDataItem) HasId() bool`

HasId returns a boolean if a field has been set.

### GetClientId

`func (o *AdminPoppySessionsListResponseDataItem) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *AdminPoppySessionsListResponseDataItem) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *AdminPoppySessionsListResponseDataItem) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *AdminPoppySessionsListResponseDataItem) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetClientName

`func (o *AdminPoppySessionsListResponseDataItem) GetClientName() string`

GetClientName returns the ClientName field if non-nil, zero value otherwise.

### GetClientNameOk

`func (o *AdminPoppySessionsListResponseDataItem) GetClientNameOk() (*string, bool)`

GetClientNameOk returns a tuple with the ClientName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientName

`func (o *AdminPoppySessionsListResponseDataItem) SetClientName(v string)`

SetClientName sets ClientName field to given value.

### HasClientName

`func (o *AdminPoppySessionsListResponseDataItem) HasClientName() bool`

HasClientName returns a boolean if a field has been set.

### SetClientNameNil

`func (o *AdminPoppySessionsListResponseDataItem) SetClientNameNil(b bool)`

 SetClientNameNil sets the value for ClientName to be an explicit nil

### UnsetClientName
`func (o *AdminPoppySessionsListResponseDataItem) UnsetClientName()`

UnsetClientName ensures that no value is present for ClientName, not even an explicit nil
### GetUserId

`func (o *AdminPoppySessionsListResponseDataItem) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *AdminPoppySessionsListResponseDataItem) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *AdminPoppySessionsListResponseDataItem) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *AdminPoppySessionsListResponseDataItem) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetAgentId

`func (o *AdminPoppySessionsListResponseDataItem) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *AdminPoppySessionsListResponseDataItem) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *AdminPoppySessionsListResponseDataItem) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *AdminPoppySessionsListResponseDataItem) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### SetAgentIdNil

`func (o *AdminPoppySessionsListResponseDataItem) SetAgentIdNil(b bool)`

 SetAgentIdNil sets the value for AgentId to be an explicit nil

### UnsetAgentId
`func (o *AdminPoppySessionsListResponseDataItem) UnsetAgentId()`

UnsetAgentId ensures that no value is present for AgentId, not even an explicit nil
### GetSignedIn

`func (o *AdminPoppySessionsListResponseDataItem) GetSignedIn() bool`

GetSignedIn returns the SignedIn field if non-nil, zero value otherwise.

### GetSignedInOk

`func (o *AdminPoppySessionsListResponseDataItem) GetSignedInOk() (*bool, bool)`

GetSignedInOk returns a tuple with the SignedIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignedIn

`func (o *AdminPoppySessionsListResponseDataItem) SetSignedIn(v bool)`

SetSignedIn sets SignedIn field to given value.

### HasSignedIn

`func (o *AdminPoppySessionsListResponseDataItem) HasSignedIn() bool`

HasSignedIn returns a boolean if a field has been set.

### GetAccountId

`func (o *AdminPoppySessionsListResponseDataItem) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *AdminPoppySessionsListResponseDataItem) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *AdminPoppySessionsListResponseDataItem) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.

### HasAccountId

`func (o *AdminPoppySessionsListResponseDataItem) HasAccountId() bool`

HasAccountId returns a boolean if a field has been set.

### SetAccountIdNil

`func (o *AdminPoppySessionsListResponseDataItem) SetAccountIdNil(b bool)`

 SetAccountIdNil sets the value for AccountId to be an explicit nil

### UnsetAccountId
`func (o *AdminPoppySessionsListResponseDataItem) UnsetAccountId()`

UnsetAccountId ensures that no value is present for AccountId, not even an explicit nil
### GetStatus

`func (o *AdminPoppySessionsListResponseDataItem) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AdminPoppySessionsListResponseDataItem) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AdminPoppySessionsListResponseDataItem) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AdminPoppySessionsListResponseDataItem) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetEndedReason

`func (o *AdminPoppySessionsListResponseDataItem) GetEndedReason() string`

GetEndedReason returns the EndedReason field if non-nil, zero value otherwise.

### GetEndedReasonOk

`func (o *AdminPoppySessionsListResponseDataItem) GetEndedReasonOk() (*string, bool)`

GetEndedReasonOk returns a tuple with the EndedReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndedReason

`func (o *AdminPoppySessionsListResponseDataItem) SetEndedReason(v string)`

SetEndedReason sets EndedReason field to given value.

### HasEndedReason

`func (o *AdminPoppySessionsListResponseDataItem) HasEndedReason() bool`

HasEndedReason returns a boolean if a field has been set.

### SetEndedReasonNil

`func (o *AdminPoppySessionsListResponseDataItem) SetEndedReasonNil(b bool)`

 SetEndedReasonNil sets the value for EndedReason to be an explicit nil

### UnsetEndedReason
`func (o *AdminPoppySessionsListResponseDataItem) UnsetEndedReason()`

UnsetEndedReason ensures that no value is present for EndedReason, not even an explicit nil
### GetProtocolVersion

`func (o *AdminPoppySessionsListResponseDataItem) GetProtocolVersion() string`

GetProtocolVersion returns the ProtocolVersion field if non-nil, zero value otherwise.

### GetProtocolVersionOk

`func (o *AdminPoppySessionsListResponseDataItem) GetProtocolVersionOk() (*string, bool)`

GetProtocolVersionOk returns a tuple with the ProtocolVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocolVersion

`func (o *AdminPoppySessionsListResponseDataItem) SetProtocolVersion(v string)`

SetProtocolVersion sets ProtocolVersion field to given value.

### HasProtocolVersion

`func (o *AdminPoppySessionsListResponseDataItem) HasProtocolVersion() bool`

HasProtocolVersion returns a boolean if a field has been set.

### GetCreatedAt

`func (o *AdminPoppySessionsListResponseDataItem) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AdminPoppySessionsListResponseDataItem) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AdminPoppySessionsListResponseDataItem) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *AdminPoppySessionsListResponseDataItem) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetLastSeenAt

`func (o *AdminPoppySessionsListResponseDataItem) GetLastSeenAt() time.Time`

GetLastSeenAt returns the LastSeenAt field if non-nil, zero value otherwise.

### GetLastSeenAtOk

`func (o *AdminPoppySessionsListResponseDataItem) GetLastSeenAtOk() (*time.Time, bool)`

GetLastSeenAtOk returns a tuple with the LastSeenAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSeenAt

`func (o *AdminPoppySessionsListResponseDataItem) SetLastSeenAt(v time.Time)`

SetLastSeenAt sets LastSeenAt field to given value.

### HasLastSeenAt

`func (o *AdminPoppySessionsListResponseDataItem) HasLastSeenAt() bool`

HasLastSeenAt returns a boolean if a field has been set.

### GetEndedAt

`func (o *AdminPoppySessionsListResponseDataItem) GetEndedAt() time.Time`

GetEndedAt returns the EndedAt field if non-nil, zero value otherwise.

### GetEndedAtOk

`func (o *AdminPoppySessionsListResponseDataItem) GetEndedAtOk() (*time.Time, bool)`

GetEndedAtOk returns a tuple with the EndedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndedAt

`func (o *AdminPoppySessionsListResponseDataItem) SetEndedAt(v time.Time)`

SetEndedAt sets EndedAt field to given value.

### HasEndedAt

`func (o *AdminPoppySessionsListResponseDataItem) HasEndedAt() bool`

HasEndedAt returns a boolean if a field has been set.

### SetEndedAtNil

`func (o *AdminPoppySessionsListResponseDataItem) SetEndedAtNil(b bool)`

 SetEndedAtNil sets the value for EndedAt to be an explicit nil

### UnsetEndedAt
`func (o *AdminPoppySessionsListResponseDataItem) UnsetEndedAt()`

UnsetEndedAt ensures that no value is present for EndedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


