# IssuePlatformTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | Pointer to **string** |  | [optional] 
**IssuedTokenType** | Pointer to **string** |  | [optional] 
**TokenType** | Pointer to **string** |  | [optional] 
**ExpiresIn** | Pointer to **int32** |  | [optional] 
**Scope** | Pointer to **string** |  | [optional] 
**AgentId** | Pointer to **string** |  | [optional] 
**CnfJkt** | Pointer to **NullableString** | RFC 7638 thumbprint of the agent key the token is bound to. | [optional] 

## Methods

### NewIssuePlatformTokenResponse

`func NewIssuePlatformTokenResponse() *IssuePlatformTokenResponse`

NewIssuePlatformTokenResponse instantiates a new IssuePlatformTokenResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIssuePlatformTokenResponseWithDefaults

`func NewIssuePlatformTokenResponseWithDefaults() *IssuePlatformTokenResponse`

NewIssuePlatformTokenResponseWithDefaults instantiates a new IssuePlatformTokenResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessToken

`func (o *IssuePlatformTokenResponse) GetAccessToken() string`

GetAccessToken returns the AccessToken field if non-nil, zero value otherwise.

### GetAccessTokenOk

`func (o *IssuePlatformTokenResponse) GetAccessTokenOk() (*string, bool)`

GetAccessTokenOk returns a tuple with the AccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessToken

`func (o *IssuePlatformTokenResponse) SetAccessToken(v string)`

SetAccessToken sets AccessToken field to given value.

### HasAccessToken

`func (o *IssuePlatformTokenResponse) HasAccessToken() bool`

HasAccessToken returns a boolean if a field has been set.

### GetIssuedTokenType

`func (o *IssuePlatformTokenResponse) GetIssuedTokenType() string`

GetIssuedTokenType returns the IssuedTokenType field if non-nil, zero value otherwise.

### GetIssuedTokenTypeOk

`func (o *IssuePlatformTokenResponse) GetIssuedTokenTypeOk() (*string, bool)`

GetIssuedTokenTypeOk returns a tuple with the IssuedTokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuedTokenType

`func (o *IssuePlatformTokenResponse) SetIssuedTokenType(v string)`

SetIssuedTokenType sets IssuedTokenType field to given value.

### HasIssuedTokenType

`func (o *IssuePlatformTokenResponse) HasIssuedTokenType() bool`

HasIssuedTokenType returns a boolean if a field has been set.

### GetTokenType

`func (o *IssuePlatformTokenResponse) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *IssuePlatformTokenResponse) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *IssuePlatformTokenResponse) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.

### HasTokenType

`func (o *IssuePlatformTokenResponse) HasTokenType() bool`

HasTokenType returns a boolean if a field has been set.

### GetExpiresIn

`func (o *IssuePlatformTokenResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *IssuePlatformTokenResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *IssuePlatformTokenResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.

### HasExpiresIn

`func (o *IssuePlatformTokenResponse) HasExpiresIn() bool`

HasExpiresIn returns a boolean if a field has been set.

### GetScope

`func (o *IssuePlatformTokenResponse) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *IssuePlatformTokenResponse) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *IssuePlatformTokenResponse) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *IssuePlatformTokenResponse) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetAgentId

`func (o *IssuePlatformTokenResponse) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *IssuePlatformTokenResponse) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *IssuePlatformTokenResponse) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *IssuePlatformTokenResponse) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### GetCnfJkt

`func (o *IssuePlatformTokenResponse) GetCnfJkt() string`

GetCnfJkt returns the CnfJkt field if non-nil, zero value otherwise.

### GetCnfJktOk

`func (o *IssuePlatformTokenResponse) GetCnfJktOk() (*string, bool)`

GetCnfJktOk returns a tuple with the CnfJkt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCnfJkt

`func (o *IssuePlatformTokenResponse) SetCnfJkt(v string)`

SetCnfJkt sets CnfJkt field to given value.

### HasCnfJkt

`func (o *IssuePlatformTokenResponse) HasCnfJkt() bool`

HasCnfJkt returns a boolean if a field has been set.

### SetCnfJktNil

`func (o *IssuePlatformTokenResponse) SetCnfJktNil(b bool)`

 SetCnfJktNil sets the value for CnfJkt to be an explicit nil

### UnsetCnfJkt
`func (o *IssuePlatformTokenResponse) UnsetCnfJkt()`

UnsetCnfJkt ensures that no value is present for CnfJkt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


