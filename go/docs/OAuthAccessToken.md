# OAuthAccessToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**ClientId** | Pointer to **NullableString** |  | [optional] 
**UserId** | Pointer to **NullableString** |  | [optional] 
**Scopes** | Pointer to **[]string** |  | [optional] 
**Revoked** | Pointer to **bool** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**IsExpired** | Pointer to **bool** |  | [optional] 

## Methods

### NewOAuthAccessToken

`func NewOAuthAccessToken() *OAuthAccessToken`

NewOAuthAccessToken instantiates a new OAuthAccessToken object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthAccessTokenWithDefaults

`func NewOAuthAccessTokenWithDefaults() *OAuthAccessToken`

NewOAuthAccessTokenWithDefaults instantiates a new OAuthAccessToken object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OAuthAccessToken) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OAuthAccessToken) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OAuthAccessToken) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *OAuthAccessToken) HasId() bool`

HasId returns a boolean if a field has been set.

### GetClientId

`func (o *OAuthAccessToken) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *OAuthAccessToken) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *OAuthAccessToken) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *OAuthAccessToken) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### SetClientIdNil

`func (o *OAuthAccessToken) SetClientIdNil(b bool)`

 SetClientIdNil sets the value for ClientId to be an explicit nil

### UnsetClientId
`func (o *OAuthAccessToken) UnsetClientId()`

UnsetClientId ensures that no value is present for ClientId, not even an explicit nil
### GetUserId

`func (o *OAuthAccessToken) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *OAuthAccessToken) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *OAuthAccessToken) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *OAuthAccessToken) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### SetUserIdNil

`func (o *OAuthAccessToken) SetUserIdNil(b bool)`

 SetUserIdNil sets the value for UserId to be an explicit nil

### UnsetUserId
`func (o *OAuthAccessToken) UnsetUserId()`

UnsetUserId ensures that no value is present for UserId, not even an explicit nil
### GetScopes

`func (o *OAuthAccessToken) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *OAuthAccessToken) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *OAuthAccessToken) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *OAuthAccessToken) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetRevoked

`func (o *OAuthAccessToken) GetRevoked() bool`

GetRevoked returns the Revoked field if non-nil, zero value otherwise.

### GetRevokedOk

`func (o *OAuthAccessToken) GetRevokedOk() (*bool, bool)`

GetRevokedOk returns a tuple with the Revoked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevoked

`func (o *OAuthAccessToken) SetRevoked(v bool)`

SetRevoked sets Revoked field to given value.

### HasRevoked

`func (o *OAuthAccessToken) HasRevoked() bool`

HasRevoked returns a boolean if a field has been set.

### GetExpiresAt

`func (o *OAuthAccessToken) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *OAuthAccessToken) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *OAuthAccessToken) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *OAuthAccessToken) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetCreatedAt

`func (o *OAuthAccessToken) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *OAuthAccessToken) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *OAuthAccessToken) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *OAuthAccessToken) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetIsExpired

`func (o *OAuthAccessToken) GetIsExpired() bool`

GetIsExpired returns the IsExpired field if non-nil, zero value otherwise.

### GetIsExpiredOk

`func (o *OAuthAccessToken) GetIsExpiredOk() (*bool, bool)`

GetIsExpiredOk returns a tuple with the IsExpired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsExpired

`func (o *OAuthAccessToken) SetIsExpired(v bool)`

SetIsExpired sets IsExpired field to given value.

### HasIsExpired

`func (o *OAuthAccessToken) HasIsExpired() bool`

HasIsExpired returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


