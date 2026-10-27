# AdminAgentsGenerateTokenResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | Pointer to **string** |  | [optional] 
**TokenType** | Pointer to **string** |  | [optional] 
**ExpiresIn** | Pointer to **int32** |  | [optional] 
**Scopes** | Pointer to **[]string** |  | [optional] 
**Resource** | Pointer to **NullableString** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. | [optional] 

## Methods

### NewAdminAgentsGenerateTokenResponseData

`func NewAdminAgentsGenerateTokenResponseData() *AdminAgentsGenerateTokenResponseData`

NewAdminAgentsGenerateTokenResponseData instantiates a new AdminAgentsGenerateTokenResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAgentsGenerateTokenResponseDataWithDefaults

`func NewAdminAgentsGenerateTokenResponseDataWithDefaults() *AdminAgentsGenerateTokenResponseData`

NewAdminAgentsGenerateTokenResponseDataWithDefaults instantiates a new AdminAgentsGenerateTokenResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessToken

`func (o *AdminAgentsGenerateTokenResponseData) GetAccessToken() string`

GetAccessToken returns the AccessToken field if non-nil, zero value otherwise.

### GetAccessTokenOk

`func (o *AdminAgentsGenerateTokenResponseData) GetAccessTokenOk() (*string, bool)`

GetAccessTokenOk returns a tuple with the AccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessToken

`func (o *AdminAgentsGenerateTokenResponseData) SetAccessToken(v string)`

SetAccessToken sets AccessToken field to given value.

### HasAccessToken

`func (o *AdminAgentsGenerateTokenResponseData) HasAccessToken() bool`

HasAccessToken returns a boolean if a field has been set.

### GetTokenType

`func (o *AdminAgentsGenerateTokenResponseData) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *AdminAgentsGenerateTokenResponseData) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *AdminAgentsGenerateTokenResponseData) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.

### HasTokenType

`func (o *AdminAgentsGenerateTokenResponseData) HasTokenType() bool`

HasTokenType returns a boolean if a field has been set.

### GetExpiresIn

`func (o *AdminAgentsGenerateTokenResponseData) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *AdminAgentsGenerateTokenResponseData) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *AdminAgentsGenerateTokenResponseData) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.

### HasExpiresIn

`func (o *AdminAgentsGenerateTokenResponseData) HasExpiresIn() bool`

HasExpiresIn returns a boolean if a field has been set.

### GetScopes

`func (o *AdminAgentsGenerateTokenResponseData) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *AdminAgentsGenerateTokenResponseData) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *AdminAgentsGenerateTokenResponseData) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *AdminAgentsGenerateTokenResponseData) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetResource

`func (o *AdminAgentsGenerateTokenResponseData) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *AdminAgentsGenerateTokenResponseData) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *AdminAgentsGenerateTokenResponseData) SetResource(v string)`

SetResource sets Resource field to given value.

### HasResource

`func (o *AdminAgentsGenerateTokenResponseData) HasResource() bool`

HasResource returns a boolean if a field has been set.

### SetResourceNil

`func (o *AdminAgentsGenerateTokenResponseData) SetResourceNil(b bool)`

 SetResourceNil sets the value for Resource to be an explicit nil

### UnsetResource
`func (o *AdminAgentsGenerateTokenResponseData) UnsetResource()`

UnsetResource ensures that no value is present for Resource, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


