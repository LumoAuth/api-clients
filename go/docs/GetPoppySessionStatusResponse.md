# GetPoppySessionStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** | unknown: no Session with this sid (never started, or forgotten after the idle period). | 
**UserId** | Pointer to **NullableString** |  | [optional] 
**AgentId** | Pointer to **NullableString** |  | [optional] 
**Account** | Pointer to **NullableString** | The id of the account that the Session used, if any. | [optional] 
**SignedIn** | **bool** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. | 
**LastSeenAt** | Pointer to **NullableTime** |  | [optional] 

## Methods

### NewGetPoppySessionStatusResponse

`func NewGetPoppySessionStatusResponse(status string, signedIn bool, ) *GetPoppySessionStatusResponse`

NewGetPoppySessionStatusResponse instantiates a new GetPoppySessionStatusResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetPoppySessionStatusResponseWithDefaults

`func NewGetPoppySessionStatusResponseWithDefaults() *GetPoppySessionStatusResponse`

NewGetPoppySessionStatusResponseWithDefaults instantiates a new GetPoppySessionStatusResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *GetPoppySessionStatusResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *GetPoppySessionStatusResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *GetPoppySessionStatusResponse) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetUserId

`func (o *GetPoppySessionStatusResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *GetPoppySessionStatusResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *GetPoppySessionStatusResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *GetPoppySessionStatusResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### SetUserIdNil

`func (o *GetPoppySessionStatusResponse) SetUserIdNil(b bool)`

 SetUserIdNil sets the value for UserId to be an explicit nil

### UnsetUserId
`func (o *GetPoppySessionStatusResponse) UnsetUserId()`

UnsetUserId ensures that no value is present for UserId, not even an explicit nil
### GetAgentId

`func (o *GetPoppySessionStatusResponse) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *GetPoppySessionStatusResponse) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *GetPoppySessionStatusResponse) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *GetPoppySessionStatusResponse) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### SetAgentIdNil

`func (o *GetPoppySessionStatusResponse) SetAgentIdNil(b bool)`

 SetAgentIdNil sets the value for AgentId to be an explicit nil

### UnsetAgentId
`func (o *GetPoppySessionStatusResponse) UnsetAgentId()`

UnsetAgentId ensures that no value is present for AgentId, not even an explicit nil
### GetAccount

`func (o *GetPoppySessionStatusResponse) GetAccount() string`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *GetPoppySessionStatusResponse) GetAccountOk() (*string, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *GetPoppySessionStatusResponse) SetAccount(v string)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *GetPoppySessionStatusResponse) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### SetAccountNil

`func (o *GetPoppySessionStatusResponse) SetAccountNil(b bool)`

 SetAccountNil sets the value for Account to be an explicit nil

### UnsetAccount
`func (o *GetPoppySessionStatusResponse) UnsetAccount()`

UnsetAccount ensures that no value is present for Account, not even an explicit nil
### GetSignedIn

`func (o *GetPoppySessionStatusResponse) GetSignedIn() bool`

GetSignedIn returns the SignedIn field if non-nil, zero value otherwise.

### GetSignedInOk

`func (o *GetPoppySessionStatusResponse) GetSignedInOk() (*bool, bool)`

GetSignedInOk returns a tuple with the SignedIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignedIn

`func (o *GetPoppySessionStatusResponse) SetSignedIn(v bool)`

SetSignedIn sets SignedIn field to given value.


### GetLastSeenAt

`func (o *GetPoppySessionStatusResponse) GetLastSeenAt() time.Time`

GetLastSeenAt returns the LastSeenAt field if non-nil, zero value otherwise.

### GetLastSeenAtOk

`func (o *GetPoppySessionStatusResponse) GetLastSeenAtOk() (*time.Time, bool)`

GetLastSeenAtOk returns a tuple with the LastSeenAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSeenAt

`func (o *GetPoppySessionStatusResponse) SetLastSeenAt(v time.Time)`

SetLastSeenAt sets LastSeenAt field to given value.

### HasLastSeenAt

`func (o *GetPoppySessionStatusResponse) HasLastSeenAt() bool`

HasLastSeenAt returns a boolean if a field has been set.

### SetLastSeenAtNil

`func (o *GetPoppySessionStatusResponse) SetLastSeenAtNil(b bool)`

 SetLastSeenAtNil sets the value for LastSeenAt to be an explicit nil

### UnsetLastSeenAt
`func (o *GetPoppySessionStatusResponse) UnsetLastSeenAt()`

UnsetLastSeenAt ensures that no value is present for LastSeenAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


