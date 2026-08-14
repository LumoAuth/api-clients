# GetIssuerMetadataResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AauthVersion** | Pointer to **string** |  | [optional] 
**Issuer** | Pointer to **string** |  | [optional] 
**JwksUri** | Pointer to **string** |  | [optional] 
**AgentTokenEndpoint** | Pointer to **string** |  | [optional] 
**AgentAuthEndpoint** | Pointer to **string** |  | [optional] 
**AgentSigningAlgsSupported** | Pointer to **[]string** |  | [optional] 
**TokenSigningAlgsSupported** | Pointer to **[]string** |  | [optional] 
**RequestTypesSupported** | Pointer to **[]string** |  | [optional] 
**ScopesSupported** | Pointer to **[]string** |  | [optional] 

## Methods

### NewGetIssuerMetadataResponse

`func NewGetIssuerMetadataResponse() *GetIssuerMetadataResponse`

NewGetIssuerMetadataResponse instantiates a new GetIssuerMetadataResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetIssuerMetadataResponseWithDefaults

`func NewGetIssuerMetadataResponseWithDefaults() *GetIssuerMetadataResponse`

NewGetIssuerMetadataResponseWithDefaults instantiates a new GetIssuerMetadataResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAauthVersion

`func (o *GetIssuerMetadataResponse) GetAauthVersion() string`

GetAauthVersion returns the AauthVersion field if non-nil, zero value otherwise.

### GetAauthVersionOk

`func (o *GetIssuerMetadataResponse) GetAauthVersionOk() (*string, bool)`

GetAauthVersionOk returns a tuple with the AauthVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAauthVersion

`func (o *GetIssuerMetadataResponse) SetAauthVersion(v string)`

SetAauthVersion sets AauthVersion field to given value.

### HasAauthVersion

`func (o *GetIssuerMetadataResponse) HasAauthVersion() bool`

HasAauthVersion returns a boolean if a field has been set.

### GetIssuer

`func (o *GetIssuerMetadataResponse) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *GetIssuerMetadataResponse) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *GetIssuerMetadataResponse) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.

### HasIssuer

`func (o *GetIssuerMetadataResponse) HasIssuer() bool`

HasIssuer returns a boolean if a field has been set.

### GetJwksUri

`func (o *GetIssuerMetadataResponse) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *GetIssuerMetadataResponse) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *GetIssuerMetadataResponse) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *GetIssuerMetadataResponse) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### GetAgentTokenEndpoint

`func (o *GetIssuerMetadataResponse) GetAgentTokenEndpoint() string`

GetAgentTokenEndpoint returns the AgentTokenEndpoint field if non-nil, zero value otherwise.

### GetAgentTokenEndpointOk

`func (o *GetIssuerMetadataResponse) GetAgentTokenEndpointOk() (*string, bool)`

GetAgentTokenEndpointOk returns a tuple with the AgentTokenEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentTokenEndpoint

`func (o *GetIssuerMetadataResponse) SetAgentTokenEndpoint(v string)`

SetAgentTokenEndpoint sets AgentTokenEndpoint field to given value.

### HasAgentTokenEndpoint

`func (o *GetIssuerMetadataResponse) HasAgentTokenEndpoint() bool`

HasAgentTokenEndpoint returns a boolean if a field has been set.

### GetAgentAuthEndpoint

`func (o *GetIssuerMetadataResponse) GetAgentAuthEndpoint() string`

GetAgentAuthEndpoint returns the AgentAuthEndpoint field if non-nil, zero value otherwise.

### GetAgentAuthEndpointOk

`func (o *GetIssuerMetadataResponse) GetAgentAuthEndpointOk() (*string, bool)`

GetAgentAuthEndpointOk returns a tuple with the AgentAuthEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentAuthEndpoint

`func (o *GetIssuerMetadataResponse) SetAgentAuthEndpoint(v string)`

SetAgentAuthEndpoint sets AgentAuthEndpoint field to given value.

### HasAgentAuthEndpoint

`func (o *GetIssuerMetadataResponse) HasAgentAuthEndpoint() bool`

HasAgentAuthEndpoint returns a boolean if a field has been set.

### GetAgentSigningAlgsSupported

`func (o *GetIssuerMetadataResponse) GetAgentSigningAlgsSupported() []string`

GetAgentSigningAlgsSupported returns the AgentSigningAlgsSupported field if non-nil, zero value otherwise.

### GetAgentSigningAlgsSupportedOk

`func (o *GetIssuerMetadataResponse) GetAgentSigningAlgsSupportedOk() (*[]string, bool)`

GetAgentSigningAlgsSupportedOk returns a tuple with the AgentSigningAlgsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentSigningAlgsSupported

`func (o *GetIssuerMetadataResponse) SetAgentSigningAlgsSupported(v []string)`

SetAgentSigningAlgsSupported sets AgentSigningAlgsSupported field to given value.

### HasAgentSigningAlgsSupported

`func (o *GetIssuerMetadataResponse) HasAgentSigningAlgsSupported() bool`

HasAgentSigningAlgsSupported returns a boolean if a field has been set.

### GetTokenSigningAlgsSupported

`func (o *GetIssuerMetadataResponse) GetTokenSigningAlgsSupported() []string`

GetTokenSigningAlgsSupported returns the TokenSigningAlgsSupported field if non-nil, zero value otherwise.

### GetTokenSigningAlgsSupportedOk

`func (o *GetIssuerMetadataResponse) GetTokenSigningAlgsSupportedOk() (*[]string, bool)`

GetTokenSigningAlgsSupportedOk returns a tuple with the TokenSigningAlgsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenSigningAlgsSupported

`func (o *GetIssuerMetadataResponse) SetTokenSigningAlgsSupported(v []string)`

SetTokenSigningAlgsSupported sets TokenSigningAlgsSupported field to given value.

### HasTokenSigningAlgsSupported

`func (o *GetIssuerMetadataResponse) HasTokenSigningAlgsSupported() bool`

HasTokenSigningAlgsSupported returns a boolean if a field has been set.

### GetRequestTypesSupported

`func (o *GetIssuerMetadataResponse) GetRequestTypesSupported() []string`

GetRequestTypesSupported returns the RequestTypesSupported field if non-nil, zero value otherwise.

### GetRequestTypesSupportedOk

`func (o *GetIssuerMetadataResponse) GetRequestTypesSupportedOk() (*[]string, bool)`

GetRequestTypesSupportedOk returns a tuple with the RequestTypesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestTypesSupported

`func (o *GetIssuerMetadataResponse) SetRequestTypesSupported(v []string)`

SetRequestTypesSupported sets RequestTypesSupported field to given value.

### HasRequestTypesSupported

`func (o *GetIssuerMetadataResponse) HasRequestTypesSupported() bool`

HasRequestTypesSupported returns a boolean if a field has been set.

### GetScopesSupported

`func (o *GetIssuerMetadataResponse) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *GetIssuerMetadataResponse) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *GetIssuerMetadataResponse) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *GetIssuerMetadataResponse) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


