# TokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **string** |  | 
**TokenType** | **string** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). | 
**ExpiresIn** | **int32** |  | 
**Scope** | Pointer to **string** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional] 
**RefreshToken** | Pointer to **string** | Only when the client is registered for the refresh_token grant. | [optional] 
**IdToken** | Pointer to **string** | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional] 
**IssuedTokenType** | Pointer to **string** | Token exchange only (RFC 8693). | [optional] 
**AuthorizationDetails** | Pointer to **[]map[string]interface{}** | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional] 
**JitRequestId** | Pointer to **string** | Agent-initiated CIBA only. | [optional] 
**TaskId** | Pointer to **string** | Agent-initiated CIBA only. | [optional] 

## Methods

### NewTokenResponse

`func NewTokenResponse(accessToken string, tokenType string, expiresIn int32, ) *TokenResponse`

NewTokenResponse instantiates a new TokenResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTokenResponseWithDefaults

`func NewTokenResponseWithDefaults() *TokenResponse`

NewTokenResponseWithDefaults instantiates a new TokenResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessToken

`func (o *TokenResponse) GetAccessToken() string`

GetAccessToken returns the AccessToken field if non-nil, zero value otherwise.

### GetAccessTokenOk

`func (o *TokenResponse) GetAccessTokenOk() (*string, bool)`

GetAccessTokenOk returns a tuple with the AccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessToken

`func (o *TokenResponse) SetAccessToken(v string)`

SetAccessToken sets AccessToken field to given value.


### GetTokenType

`func (o *TokenResponse) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *TokenResponse) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *TokenResponse) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.


### GetExpiresIn

`func (o *TokenResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *TokenResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *TokenResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.


### GetScope

`func (o *TokenResponse) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *TokenResponse) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *TokenResponse) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *TokenResponse) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetRefreshToken

`func (o *TokenResponse) GetRefreshToken() string`

GetRefreshToken returns the RefreshToken field if non-nil, zero value otherwise.

### GetRefreshTokenOk

`func (o *TokenResponse) GetRefreshTokenOk() (*string, bool)`

GetRefreshTokenOk returns a tuple with the RefreshToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRefreshToken

`func (o *TokenResponse) SetRefreshToken(v string)`

SetRefreshToken sets RefreshToken field to given value.

### HasRefreshToken

`func (o *TokenResponse) HasRefreshToken() bool`

HasRefreshToken returns a boolean if a field has been set.

### GetIdToken

`func (o *TokenResponse) GetIdToken() string`

GetIdToken returns the IdToken field if non-nil, zero value otherwise.

### GetIdTokenOk

`func (o *TokenResponse) GetIdTokenOk() (*string, bool)`

GetIdTokenOk returns a tuple with the IdToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdToken

`func (o *TokenResponse) SetIdToken(v string)`

SetIdToken sets IdToken field to given value.

### HasIdToken

`func (o *TokenResponse) HasIdToken() bool`

HasIdToken returns a boolean if a field has been set.

### GetIssuedTokenType

`func (o *TokenResponse) GetIssuedTokenType() string`

GetIssuedTokenType returns the IssuedTokenType field if non-nil, zero value otherwise.

### GetIssuedTokenTypeOk

`func (o *TokenResponse) GetIssuedTokenTypeOk() (*string, bool)`

GetIssuedTokenTypeOk returns a tuple with the IssuedTokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuedTokenType

`func (o *TokenResponse) SetIssuedTokenType(v string)`

SetIssuedTokenType sets IssuedTokenType field to given value.

### HasIssuedTokenType

`func (o *TokenResponse) HasIssuedTokenType() bool`

HasIssuedTokenType returns a boolean if a field has been set.

### GetAuthorizationDetails

`func (o *TokenResponse) GetAuthorizationDetails() []map[string]interface{}`

GetAuthorizationDetails returns the AuthorizationDetails field if non-nil, zero value otherwise.

### GetAuthorizationDetailsOk

`func (o *TokenResponse) GetAuthorizationDetailsOk() (*[]map[string]interface{}, bool)`

GetAuthorizationDetailsOk returns a tuple with the AuthorizationDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationDetails

`func (o *TokenResponse) SetAuthorizationDetails(v []map[string]interface{})`

SetAuthorizationDetails sets AuthorizationDetails field to given value.

### HasAuthorizationDetails

`func (o *TokenResponse) HasAuthorizationDetails() bool`

HasAuthorizationDetails returns a boolean if a field has been set.

### GetJitRequestId

`func (o *TokenResponse) GetJitRequestId() string`

GetJitRequestId returns the JitRequestId field if non-nil, zero value otherwise.

### GetJitRequestIdOk

`func (o *TokenResponse) GetJitRequestIdOk() (*string, bool)`

GetJitRequestIdOk returns a tuple with the JitRequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJitRequestId

`func (o *TokenResponse) SetJitRequestId(v string)`

SetJitRequestId sets JitRequestId field to given value.

### HasJitRequestId

`func (o *TokenResponse) HasJitRequestId() bool`

HasJitRequestId returns a boolean if a field has been set.

### GetTaskId

`func (o *TokenResponse) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *TokenResponse) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *TokenResponse) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *TokenResponse) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


