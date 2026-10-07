# RevokeAgentTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Token** | Pointer to **string** | The auth token JTI or refresh token value to revoke. | [optional] 
**TokenType** | Pointer to **string** | auth_token (default) or refresh_token. | [optional] 

## Methods

### NewRevokeAgentTokenRequest

`func NewRevokeAgentTokenRequest() *RevokeAgentTokenRequest`

NewRevokeAgentTokenRequest instantiates a new RevokeAgentTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRevokeAgentTokenRequestWithDefaults

`func NewRevokeAgentTokenRequestWithDefaults() *RevokeAgentTokenRequest`

NewRevokeAgentTokenRequestWithDefaults instantiates a new RevokeAgentTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetToken

`func (o *RevokeAgentTokenRequest) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *RevokeAgentTokenRequest) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *RevokeAgentTokenRequest) SetToken(v string)`

SetToken sets Token field to given value.

### HasToken

`func (o *RevokeAgentTokenRequest) HasToken() bool`

HasToken returns a boolean if a field has been set.

### GetTokenType

`func (o *RevokeAgentTokenRequest) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *RevokeAgentTokenRequest) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *RevokeAgentTokenRequest) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.

### HasTokenType

`func (o *RevokeAgentTokenRequest) HasTokenType() bool`

HasTokenType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


