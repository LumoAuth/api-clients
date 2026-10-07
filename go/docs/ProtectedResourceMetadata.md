# ProtectedResourceMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** | The MCP server&#39;s resource identifier. | 
**AuthorizationServers** | **[]string** | This organization&#39;s authorization server metadata URL. | 
**BearerMethodsSupported** | **[]string** |  | 
**ScopesSupported** | Pointer to **[]string** |  | [optional] 
**DpopBoundAccessTokensRequired** | Pointer to **bool** | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional] 
**DpopSigningAlgValuesSupported** | Pointer to **[]string** | Only with dpop_bound_access_tokens_required. | [optional] 

## Methods

### NewProtectedResourceMetadata

`func NewProtectedResourceMetadata(resource string, authorizationServers []string, bearerMethodsSupported []string, ) *ProtectedResourceMetadata`

NewProtectedResourceMetadata instantiates a new ProtectedResourceMetadata object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProtectedResourceMetadataWithDefaults

`func NewProtectedResourceMetadataWithDefaults() *ProtectedResourceMetadata`

NewProtectedResourceMetadataWithDefaults instantiates a new ProtectedResourceMetadata object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResource

`func (o *ProtectedResourceMetadata) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *ProtectedResourceMetadata) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *ProtectedResourceMetadata) SetResource(v string)`

SetResource sets Resource field to given value.


### GetAuthorizationServers

`func (o *ProtectedResourceMetadata) GetAuthorizationServers() []string`

GetAuthorizationServers returns the AuthorizationServers field if non-nil, zero value otherwise.

### GetAuthorizationServersOk

`func (o *ProtectedResourceMetadata) GetAuthorizationServersOk() (*[]string, bool)`

GetAuthorizationServersOk returns a tuple with the AuthorizationServers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationServers

`func (o *ProtectedResourceMetadata) SetAuthorizationServers(v []string)`

SetAuthorizationServers sets AuthorizationServers field to given value.


### GetBearerMethodsSupported

`func (o *ProtectedResourceMetadata) GetBearerMethodsSupported() []string`

GetBearerMethodsSupported returns the BearerMethodsSupported field if non-nil, zero value otherwise.

### GetBearerMethodsSupportedOk

`func (o *ProtectedResourceMetadata) GetBearerMethodsSupportedOk() (*[]string, bool)`

GetBearerMethodsSupportedOk returns a tuple with the BearerMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerMethodsSupported

`func (o *ProtectedResourceMetadata) SetBearerMethodsSupported(v []string)`

SetBearerMethodsSupported sets BearerMethodsSupported field to given value.


### GetScopesSupported

`func (o *ProtectedResourceMetadata) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *ProtectedResourceMetadata) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *ProtectedResourceMetadata) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *ProtectedResourceMetadata) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetDpopBoundAccessTokensRequired

`func (o *ProtectedResourceMetadata) GetDpopBoundAccessTokensRequired() bool`

GetDpopBoundAccessTokensRequired returns the DpopBoundAccessTokensRequired field if non-nil, zero value otherwise.

### GetDpopBoundAccessTokensRequiredOk

`func (o *ProtectedResourceMetadata) GetDpopBoundAccessTokensRequiredOk() (*bool, bool)`

GetDpopBoundAccessTokensRequiredOk returns a tuple with the DpopBoundAccessTokensRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopBoundAccessTokensRequired

`func (o *ProtectedResourceMetadata) SetDpopBoundAccessTokensRequired(v bool)`

SetDpopBoundAccessTokensRequired sets DpopBoundAccessTokensRequired field to given value.

### HasDpopBoundAccessTokensRequired

`func (o *ProtectedResourceMetadata) HasDpopBoundAccessTokensRequired() bool`

HasDpopBoundAccessTokensRequired returns a boolean if a field has been set.

### GetDpopSigningAlgValuesSupported

`func (o *ProtectedResourceMetadata) GetDpopSigningAlgValuesSupported() []string`

GetDpopSigningAlgValuesSupported returns the DpopSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetDpopSigningAlgValuesSupportedOk

`func (o *ProtectedResourceMetadata) GetDpopSigningAlgValuesSupportedOk() (*[]string, bool)`

GetDpopSigningAlgValuesSupportedOk returns a tuple with the DpopSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopSigningAlgValuesSupported

`func (o *ProtectedResourceMetadata) SetDpopSigningAlgValuesSupported(v []string)`

SetDpopSigningAlgValuesSupported sets DpopSigningAlgValuesSupported field to given value.

### HasDpopSigningAlgValuesSupported

`func (o *ProtectedResourceMetadata) HasDpopSigningAlgValuesSupported() bool`

HasDpopSigningAlgValuesSupported returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


