# AdminAgentsGenerateTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpiresIn** | Pointer to **int32** | Token lifetime in seconds. Default 3600, minimum 60, at most 86400 (24 hours). Above 3600 only together with &#x60;resource&#x60;: a long-lived token is always bound to one MCP server, never to the organization API. | [optional] 
**Scopes** | Pointer to **[]string** | Optional subset of the agent&#39;s capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. | [optional] 
**Resource** | Pointer to **string** | Optional resource URI of an active MCP server of this organization. The token is then audience-bound to that server (and no longer works on the LumoAuth API) and lives at most the server&#39;s token lifetime. Servers that require DPoP are refused with 400. | [optional] 

## Methods

### NewAdminAgentsGenerateTokenRequest

`func NewAdminAgentsGenerateTokenRequest() *AdminAgentsGenerateTokenRequest`

NewAdminAgentsGenerateTokenRequest instantiates a new AdminAgentsGenerateTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAgentsGenerateTokenRequestWithDefaults

`func NewAdminAgentsGenerateTokenRequestWithDefaults() *AdminAgentsGenerateTokenRequest`

NewAdminAgentsGenerateTokenRequestWithDefaults instantiates a new AdminAgentsGenerateTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExpiresIn

`func (o *AdminAgentsGenerateTokenRequest) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *AdminAgentsGenerateTokenRequest) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *AdminAgentsGenerateTokenRequest) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.

### HasExpiresIn

`func (o *AdminAgentsGenerateTokenRequest) HasExpiresIn() bool`

HasExpiresIn returns a boolean if a field has been set.

### GetScopes

`func (o *AdminAgentsGenerateTokenRequest) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *AdminAgentsGenerateTokenRequest) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *AdminAgentsGenerateTokenRequest) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *AdminAgentsGenerateTokenRequest) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetResource

`func (o *AdminAgentsGenerateTokenRequest) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *AdminAgentsGenerateTokenRequest) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *AdminAgentsGenerateTokenRequest) SetResource(v string)`

SetResource sets Resource field to given value.

### HasResource

`func (o *AdminAgentsGenerateTokenRequest) HasResource() bool`

HasResource returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


