# AdminAgentsGenerateTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scopes** | Pointer to **[]string** | Optional scopes to embed in the token. | [optional] 
**Ttl** | Pointer to **int32** | Optional token lifetime in seconds. | [optional] 

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

### GetTtl

`func (o *AdminAgentsGenerateTokenRequest) GetTtl() int32`

GetTtl returns the Ttl field if non-nil, zero value otherwise.

### GetTtlOk

`func (o *AdminAgentsGenerateTokenRequest) GetTtlOk() (*int32, bool)`

GetTtlOk returns a tuple with the Ttl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTtl

`func (o *AdminAgentsGenerateTokenRequest) SetTtl(v int32)`

SetTtl sets Ttl field to given value.

### HasTtl

`func (o *AdminAgentsGenerateTokenRequest) HasTtl() bool`

HasTtl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


