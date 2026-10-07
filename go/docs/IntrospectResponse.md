# IntrospectResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **bool** |  | 
**TokenType** | Pointer to **string** | Bearer for access tokens; refresh_token for refresh tokens. | [optional] 
**Scope** | Pointer to **string** | Space-separated scopes. | [optional] 
**ClientId** | Pointer to **NullableString** |  | [optional] 
**Sub** | Pointer to **string** | User id, or client_… / agent_… for non-user subjects. | [optional] 
**Username** | Pointer to **string** | The user&#39;s email (user-bound tokens only). | [optional] 
**Exp** | Pointer to **int32** | Expiry, Unix seconds. | [optional] 
**Iat** | Pointer to **int32** | Issued-at, Unix seconds. | [optional] 
**Nbf** | Pointer to **int32** | Not-before, Unix seconds (JWT tokens only). | [optional] 
**Iss** | Pointer to **string** | Issuer identifier of this organization. | [optional] 
**Aud** | Pointer to [**IntrospectResponseAud**](IntrospectResponseAud.md) |  | [optional] 
**Jti** | Pointer to **string** | JWT id (JWT tokens only). | [optional] 

## Methods

### NewIntrospectResponse

`func NewIntrospectResponse(active bool, ) *IntrospectResponse`

NewIntrospectResponse instantiates a new IntrospectResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIntrospectResponseWithDefaults

`func NewIntrospectResponseWithDefaults() *IntrospectResponse`

NewIntrospectResponseWithDefaults instantiates a new IntrospectResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetActive

`func (o *IntrospectResponse) GetActive() bool`

GetActive returns the Active field if non-nil, zero value otherwise.

### GetActiveOk

`func (o *IntrospectResponse) GetActiveOk() (*bool, bool)`

GetActiveOk returns a tuple with the Active field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActive

`func (o *IntrospectResponse) SetActive(v bool)`

SetActive sets Active field to given value.


### GetTokenType

`func (o *IntrospectResponse) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *IntrospectResponse) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *IntrospectResponse) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.

### HasTokenType

`func (o *IntrospectResponse) HasTokenType() bool`

HasTokenType returns a boolean if a field has been set.

### GetScope

`func (o *IntrospectResponse) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *IntrospectResponse) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *IntrospectResponse) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *IntrospectResponse) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetClientId

`func (o *IntrospectResponse) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *IntrospectResponse) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *IntrospectResponse) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *IntrospectResponse) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### SetClientIdNil

`func (o *IntrospectResponse) SetClientIdNil(b bool)`

 SetClientIdNil sets the value for ClientId to be an explicit nil

### UnsetClientId
`func (o *IntrospectResponse) UnsetClientId()`

UnsetClientId ensures that no value is present for ClientId, not even an explicit nil
### GetSub

`func (o *IntrospectResponse) GetSub() string`

GetSub returns the Sub field if non-nil, zero value otherwise.

### GetSubOk

`func (o *IntrospectResponse) GetSubOk() (*string, bool)`

GetSubOk returns a tuple with the Sub field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSub

`func (o *IntrospectResponse) SetSub(v string)`

SetSub sets Sub field to given value.

### HasSub

`func (o *IntrospectResponse) HasSub() bool`

HasSub returns a boolean if a field has been set.

### GetUsername

`func (o *IntrospectResponse) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *IntrospectResponse) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *IntrospectResponse) SetUsername(v string)`

SetUsername sets Username field to given value.

### HasUsername

`func (o *IntrospectResponse) HasUsername() bool`

HasUsername returns a boolean if a field has been set.

### GetExp

`func (o *IntrospectResponse) GetExp() int32`

GetExp returns the Exp field if non-nil, zero value otherwise.

### GetExpOk

`func (o *IntrospectResponse) GetExpOk() (*int32, bool)`

GetExpOk returns a tuple with the Exp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExp

`func (o *IntrospectResponse) SetExp(v int32)`

SetExp sets Exp field to given value.

### HasExp

`func (o *IntrospectResponse) HasExp() bool`

HasExp returns a boolean if a field has been set.

### GetIat

`func (o *IntrospectResponse) GetIat() int32`

GetIat returns the Iat field if non-nil, zero value otherwise.

### GetIatOk

`func (o *IntrospectResponse) GetIatOk() (*int32, bool)`

GetIatOk returns a tuple with the Iat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIat

`func (o *IntrospectResponse) SetIat(v int32)`

SetIat sets Iat field to given value.

### HasIat

`func (o *IntrospectResponse) HasIat() bool`

HasIat returns a boolean if a field has been set.

### GetNbf

`func (o *IntrospectResponse) GetNbf() int32`

GetNbf returns the Nbf field if non-nil, zero value otherwise.

### GetNbfOk

`func (o *IntrospectResponse) GetNbfOk() (*int32, bool)`

GetNbfOk returns a tuple with the Nbf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNbf

`func (o *IntrospectResponse) SetNbf(v int32)`

SetNbf sets Nbf field to given value.

### HasNbf

`func (o *IntrospectResponse) HasNbf() bool`

HasNbf returns a boolean if a field has been set.

### GetIss

`func (o *IntrospectResponse) GetIss() string`

GetIss returns the Iss field if non-nil, zero value otherwise.

### GetIssOk

`func (o *IntrospectResponse) GetIssOk() (*string, bool)`

GetIssOk returns a tuple with the Iss field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIss

`func (o *IntrospectResponse) SetIss(v string)`

SetIss sets Iss field to given value.

### HasIss

`func (o *IntrospectResponse) HasIss() bool`

HasIss returns a boolean if a field has been set.

### GetAud

`func (o *IntrospectResponse) GetAud() IntrospectResponseAud`

GetAud returns the Aud field if non-nil, zero value otherwise.

### GetAudOk

`func (o *IntrospectResponse) GetAudOk() (*IntrospectResponseAud, bool)`

GetAudOk returns a tuple with the Aud field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAud

`func (o *IntrospectResponse) SetAud(v IntrospectResponseAud)`

SetAud sets Aud field to given value.

### HasAud

`func (o *IntrospectResponse) HasAud() bool`

HasAud returns a boolean if a field has been set.

### GetJti

`func (o *IntrospectResponse) GetJti() string`

GetJti returns the Jti field if non-nil, zero value otherwise.

### GetJtiOk

`func (o *IntrospectResponse) GetJtiOk() (*string, bool)`

GetJtiOk returns a tuple with the Jti field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJti

`func (o *IntrospectResponse) SetJti(v string)`

SetJti sets Jti field to given value.

### HasJti

`func (o *IntrospectResponse) HasJti() bool`

HasJti returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


