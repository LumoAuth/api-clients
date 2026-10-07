# UserSession

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**UserId** | Pointer to **string** |  | [optional] 
**UserEmail** | Pointer to **string** |  | [optional] 
**IpAddress** | Pointer to **NullableString** |  | [optional] 
**UserAgent** | Pointer to **NullableString** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**LastActivityAt** | Pointer to **NullableTime** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**IsActive** | Pointer to **bool** |  | [optional] 

## Methods

### NewUserSession

`func NewUserSession() *UserSession`

NewUserSession instantiates a new UserSession object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserSessionWithDefaults

`func NewUserSessionWithDefaults() *UserSession`

NewUserSessionWithDefaults instantiates a new UserSession object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *UserSession) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UserSession) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UserSession) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *UserSession) HasId() bool`

HasId returns a boolean if a field has been set.

### GetUserId

`func (o *UserSession) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *UserSession) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *UserSession) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *UserSession) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetUserEmail

`func (o *UserSession) GetUserEmail() string`

GetUserEmail returns the UserEmail field if non-nil, zero value otherwise.

### GetUserEmailOk

`func (o *UserSession) GetUserEmailOk() (*string, bool)`

GetUserEmailOk returns a tuple with the UserEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserEmail

`func (o *UserSession) SetUserEmail(v string)`

SetUserEmail sets UserEmail field to given value.

### HasUserEmail

`func (o *UserSession) HasUserEmail() bool`

HasUserEmail returns a boolean if a field has been set.

### GetIpAddress

`func (o *UserSession) GetIpAddress() string`

GetIpAddress returns the IpAddress field if non-nil, zero value otherwise.

### GetIpAddressOk

`func (o *UserSession) GetIpAddressOk() (*string, bool)`

GetIpAddressOk returns a tuple with the IpAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIpAddress

`func (o *UserSession) SetIpAddress(v string)`

SetIpAddress sets IpAddress field to given value.

### HasIpAddress

`func (o *UserSession) HasIpAddress() bool`

HasIpAddress returns a boolean if a field has been set.

### SetIpAddressNil

`func (o *UserSession) SetIpAddressNil(b bool)`

 SetIpAddressNil sets the value for IpAddress to be an explicit nil

### UnsetIpAddress
`func (o *UserSession) UnsetIpAddress()`

UnsetIpAddress ensures that no value is present for IpAddress, not even an explicit nil
### GetUserAgent

`func (o *UserSession) GetUserAgent() string`

GetUserAgent returns the UserAgent field if non-nil, zero value otherwise.

### GetUserAgentOk

`func (o *UserSession) GetUserAgentOk() (*string, bool)`

GetUserAgentOk returns a tuple with the UserAgent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserAgent

`func (o *UserSession) SetUserAgent(v string)`

SetUserAgent sets UserAgent field to given value.

### HasUserAgent

`func (o *UserSession) HasUserAgent() bool`

HasUserAgent returns a boolean if a field has been set.

### SetUserAgentNil

`func (o *UserSession) SetUserAgentNil(b bool)`

 SetUserAgentNil sets the value for UserAgent to be an explicit nil

### UnsetUserAgent
`func (o *UserSession) UnsetUserAgent()`

UnsetUserAgent ensures that no value is present for UserAgent, not even an explicit nil
### GetCreatedAt

`func (o *UserSession) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *UserSession) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *UserSession) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *UserSession) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetLastActivityAt

`func (o *UserSession) GetLastActivityAt() time.Time`

GetLastActivityAt returns the LastActivityAt field if non-nil, zero value otherwise.

### GetLastActivityAtOk

`func (o *UserSession) GetLastActivityAtOk() (*time.Time, bool)`

GetLastActivityAtOk returns a tuple with the LastActivityAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastActivityAt

`func (o *UserSession) SetLastActivityAt(v time.Time)`

SetLastActivityAt sets LastActivityAt field to given value.

### HasLastActivityAt

`func (o *UserSession) HasLastActivityAt() bool`

HasLastActivityAt returns a boolean if a field has been set.

### SetLastActivityAtNil

`func (o *UserSession) SetLastActivityAtNil(b bool)`

 SetLastActivityAtNil sets the value for LastActivityAt to be an explicit nil

### UnsetLastActivityAt
`func (o *UserSession) UnsetLastActivityAt()`

UnsetLastActivityAt ensures that no value is present for LastActivityAt, not even an explicit nil
### GetExpiresAt

`func (o *UserSession) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *UserSession) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *UserSession) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *UserSession) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetIsActive

`func (o *UserSession) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *UserSession) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *UserSession) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *UserSession) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


