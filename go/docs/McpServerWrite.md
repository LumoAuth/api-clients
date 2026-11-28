# McpServerWrite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**ResourceUri** | Pointer to **string** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**EndpointUrl** | Pointer to **NullableString** | Address that the server is reached at, when it differs from resource_uri. | [optional] 
**Transport** | Pointer to **string** |  | [optional] [default to "http_streamable"]
**AuthMode** | Pointer to **string** |  | [optional] [default to "oauth"]
**Status** | Pointer to **string** | Update only; a new server is active. | [optional] 
**ScopesSupported** | Pointer to [**McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  | [optional] 
**BasicScopes** | Pointer to [**McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  | [optional] 
**ScopeDescriptions** | Pointer to **map[string]string** | Text per scope of scopes_supported, for the portal and the consent page. | [optional] 
**AllowedClientIds** | Pointer to **[]string** | Clients of this organization that may get tokens for the server; every client when empty. | [optional] 
**ToolAuthorizerClientIds** | Pointer to **[]string** | The server&#39;s own clients that may call the per-tool authorization endpoint. | [optional] 
**TokenLifetime** | Pointer to **int32** |  | [optional] [default to 3600]
**RequirePkce** | Pointer to **bool** |  | [optional] [default to true]
**RequireResourceParam** | Pointer to **bool** |  | [optional] [default to true]
**RequireDpop** | Pointer to **bool** |  | [optional] [default to false]

## Methods

### NewMcpServerWrite

`func NewMcpServerWrite() *McpServerWrite`

NewMcpServerWrite instantiates a new McpServerWrite object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMcpServerWriteWithDefaults

`func NewMcpServerWriteWithDefaults() *McpServerWrite`

NewMcpServerWriteWithDefaults instantiates a new McpServerWrite object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *McpServerWrite) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *McpServerWrite) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *McpServerWrite) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *McpServerWrite) HasName() bool`

HasName returns a boolean if a field has been set.

### GetResourceUri

`func (o *McpServerWrite) GetResourceUri() string`

GetResourceUri returns the ResourceUri field if non-nil, zero value otherwise.

### GetResourceUriOk

`func (o *McpServerWrite) GetResourceUriOk() (*string, bool)`

GetResourceUriOk returns a tuple with the ResourceUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceUri

`func (o *McpServerWrite) SetResourceUri(v string)`

SetResourceUri sets ResourceUri field to given value.

### HasResourceUri

`func (o *McpServerWrite) HasResourceUri() bool`

HasResourceUri returns a boolean if a field has been set.

### GetDescription

`func (o *McpServerWrite) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *McpServerWrite) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *McpServerWrite) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *McpServerWrite) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *McpServerWrite) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *McpServerWrite) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetEndpointUrl

`func (o *McpServerWrite) GetEndpointUrl() string`

GetEndpointUrl returns the EndpointUrl field if non-nil, zero value otherwise.

### GetEndpointUrlOk

`func (o *McpServerWrite) GetEndpointUrlOk() (*string, bool)`

GetEndpointUrlOk returns a tuple with the EndpointUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpointUrl

`func (o *McpServerWrite) SetEndpointUrl(v string)`

SetEndpointUrl sets EndpointUrl field to given value.

### HasEndpointUrl

`func (o *McpServerWrite) HasEndpointUrl() bool`

HasEndpointUrl returns a boolean if a field has been set.

### SetEndpointUrlNil

`func (o *McpServerWrite) SetEndpointUrlNil(b bool)`

 SetEndpointUrlNil sets the value for EndpointUrl to be an explicit nil

### UnsetEndpointUrl
`func (o *McpServerWrite) UnsetEndpointUrl()`

UnsetEndpointUrl ensures that no value is present for EndpointUrl, not even an explicit nil
### GetTransport

`func (o *McpServerWrite) GetTransport() string`

GetTransport returns the Transport field if non-nil, zero value otherwise.

### GetTransportOk

`func (o *McpServerWrite) GetTransportOk() (*string, bool)`

GetTransportOk returns a tuple with the Transport field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransport

`func (o *McpServerWrite) SetTransport(v string)`

SetTransport sets Transport field to given value.

### HasTransport

`func (o *McpServerWrite) HasTransport() bool`

HasTransport returns a boolean if a field has been set.

### GetAuthMode

`func (o *McpServerWrite) GetAuthMode() string`

GetAuthMode returns the AuthMode field if non-nil, zero value otherwise.

### GetAuthModeOk

`func (o *McpServerWrite) GetAuthModeOk() (*string, bool)`

GetAuthModeOk returns a tuple with the AuthMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthMode

`func (o *McpServerWrite) SetAuthMode(v string)`

SetAuthMode sets AuthMode field to given value.

### HasAuthMode

`func (o *McpServerWrite) HasAuthMode() bool`

HasAuthMode returns a boolean if a field has been set.

### GetStatus

`func (o *McpServerWrite) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *McpServerWrite) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *McpServerWrite) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *McpServerWrite) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetScopesSupported

`func (o *McpServerWrite) GetScopesSupported() McpServerWriteScopesSupported`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *McpServerWrite) GetScopesSupportedOk() (*McpServerWriteScopesSupported, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *McpServerWrite) SetScopesSupported(v McpServerWriteScopesSupported)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *McpServerWrite) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetBasicScopes

`func (o *McpServerWrite) GetBasicScopes() McpServerWriteBasicScopes`

GetBasicScopes returns the BasicScopes field if non-nil, zero value otherwise.

### GetBasicScopesOk

`func (o *McpServerWrite) GetBasicScopesOk() (*McpServerWriteBasicScopes, bool)`

GetBasicScopesOk returns a tuple with the BasicScopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBasicScopes

`func (o *McpServerWrite) SetBasicScopes(v McpServerWriteBasicScopes)`

SetBasicScopes sets BasicScopes field to given value.

### HasBasicScopes

`func (o *McpServerWrite) HasBasicScopes() bool`

HasBasicScopes returns a boolean if a field has been set.

### GetScopeDescriptions

`func (o *McpServerWrite) GetScopeDescriptions() map[string]string`

GetScopeDescriptions returns the ScopeDescriptions field if non-nil, zero value otherwise.

### GetScopeDescriptionsOk

`func (o *McpServerWrite) GetScopeDescriptionsOk() (*map[string]string, bool)`

GetScopeDescriptionsOk returns a tuple with the ScopeDescriptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopeDescriptions

`func (o *McpServerWrite) SetScopeDescriptions(v map[string]string)`

SetScopeDescriptions sets ScopeDescriptions field to given value.

### HasScopeDescriptions

`func (o *McpServerWrite) HasScopeDescriptions() bool`

HasScopeDescriptions returns a boolean if a field has been set.

### GetAllowedClientIds

`func (o *McpServerWrite) GetAllowedClientIds() []string`

GetAllowedClientIds returns the AllowedClientIds field if non-nil, zero value otherwise.

### GetAllowedClientIdsOk

`func (o *McpServerWrite) GetAllowedClientIdsOk() (*[]string, bool)`

GetAllowedClientIdsOk returns a tuple with the AllowedClientIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedClientIds

`func (o *McpServerWrite) SetAllowedClientIds(v []string)`

SetAllowedClientIds sets AllowedClientIds field to given value.

### HasAllowedClientIds

`func (o *McpServerWrite) HasAllowedClientIds() bool`

HasAllowedClientIds returns a boolean if a field has been set.

### GetToolAuthorizerClientIds

`func (o *McpServerWrite) GetToolAuthorizerClientIds() []string`

GetToolAuthorizerClientIds returns the ToolAuthorizerClientIds field if non-nil, zero value otherwise.

### GetToolAuthorizerClientIdsOk

`func (o *McpServerWrite) GetToolAuthorizerClientIdsOk() (*[]string, bool)`

GetToolAuthorizerClientIdsOk returns a tuple with the ToolAuthorizerClientIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToolAuthorizerClientIds

`func (o *McpServerWrite) SetToolAuthorizerClientIds(v []string)`

SetToolAuthorizerClientIds sets ToolAuthorizerClientIds field to given value.

### HasToolAuthorizerClientIds

`func (o *McpServerWrite) HasToolAuthorizerClientIds() bool`

HasToolAuthorizerClientIds returns a boolean if a field has been set.

### GetTokenLifetime

`func (o *McpServerWrite) GetTokenLifetime() int32`

GetTokenLifetime returns the TokenLifetime field if non-nil, zero value otherwise.

### GetTokenLifetimeOk

`func (o *McpServerWrite) GetTokenLifetimeOk() (*int32, bool)`

GetTokenLifetimeOk returns a tuple with the TokenLifetime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenLifetime

`func (o *McpServerWrite) SetTokenLifetime(v int32)`

SetTokenLifetime sets TokenLifetime field to given value.

### HasTokenLifetime

`func (o *McpServerWrite) HasTokenLifetime() bool`

HasTokenLifetime returns a boolean if a field has been set.

### GetRequirePkce

`func (o *McpServerWrite) GetRequirePkce() bool`

GetRequirePkce returns the RequirePkce field if non-nil, zero value otherwise.

### GetRequirePkceOk

`func (o *McpServerWrite) GetRequirePkceOk() (*bool, bool)`

GetRequirePkceOk returns a tuple with the RequirePkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePkce

`func (o *McpServerWrite) SetRequirePkce(v bool)`

SetRequirePkce sets RequirePkce field to given value.

### HasRequirePkce

`func (o *McpServerWrite) HasRequirePkce() bool`

HasRequirePkce returns a boolean if a field has been set.

### GetRequireResourceParam

`func (o *McpServerWrite) GetRequireResourceParam() bool`

GetRequireResourceParam returns the RequireResourceParam field if non-nil, zero value otherwise.

### GetRequireResourceParamOk

`func (o *McpServerWrite) GetRequireResourceParamOk() (*bool, bool)`

GetRequireResourceParamOk returns a tuple with the RequireResourceParam field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireResourceParam

`func (o *McpServerWrite) SetRequireResourceParam(v bool)`

SetRequireResourceParam sets RequireResourceParam field to given value.

### HasRequireResourceParam

`func (o *McpServerWrite) HasRequireResourceParam() bool`

HasRequireResourceParam returns a boolean if a field has been set.

### GetRequireDpop

`func (o *McpServerWrite) GetRequireDpop() bool`

GetRequireDpop returns the RequireDpop field if non-nil, zero value otherwise.

### GetRequireDpopOk

`func (o *McpServerWrite) GetRequireDpopOk() (*bool, bool)`

GetRequireDpopOk returns a tuple with the RequireDpop field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireDpop

`func (o *McpServerWrite) SetRequireDpop(v bool)`

SetRequireDpop sets RequireDpop field to given value.

### HasRequireDpop

`func (o *McpServerWrite) HasRequireDpop() bool`

HasRequireDpop returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


