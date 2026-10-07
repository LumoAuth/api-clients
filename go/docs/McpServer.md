# McpServer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**ServerId** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**ResourceUri** | Pointer to **string** |  | [optional] 
**EndpointUrl** | Pointer to **NullableString** |  | [optional] 
**Transport** | Pointer to **string** |  | [optional] 
**AuthMode** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**ScopesSupported** | Pointer to **[]string** |  | [optional] 
**ScopeDescriptions** | Pointer to **map[string]string** |  | [optional] 
**AllowedClientIds** | Pointer to **[]string** |  | [optional] 
**RequirePkce** | Pointer to **bool** |  | [optional] 
**RequireResourceParam** | Pointer to **bool** |  | [optional] 
**RequireDpop** | Pointer to **bool** |  | [optional] 
**TokenLifetime** | Pointer to **int32** |  | [optional] 
**Posture** | Pointer to [**McpServerPosture**](McpServerPosture.md) |  | [optional] 
**Capabilities** | Pointer to **[]string** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewMcpServer

`func NewMcpServer() *McpServer`

NewMcpServer instantiates a new McpServer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMcpServerWithDefaults

`func NewMcpServerWithDefaults() *McpServer`

NewMcpServerWithDefaults instantiates a new McpServer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *McpServer) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *McpServer) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *McpServer) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *McpServer) HasId() bool`

HasId returns a boolean if a field has been set.

### GetServerId

`func (o *McpServer) GetServerId() string`

GetServerId returns the ServerId field if non-nil, zero value otherwise.

### GetServerIdOk

`func (o *McpServer) GetServerIdOk() (*string, bool)`

GetServerIdOk returns a tuple with the ServerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServerId

`func (o *McpServer) SetServerId(v string)`

SetServerId sets ServerId field to given value.

### HasServerId

`func (o *McpServer) HasServerId() bool`

HasServerId returns a boolean if a field has been set.

### GetName

`func (o *McpServer) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *McpServer) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *McpServer) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *McpServer) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *McpServer) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *McpServer) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *McpServer) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *McpServer) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *McpServer) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *McpServer) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetResourceUri

`func (o *McpServer) GetResourceUri() string`

GetResourceUri returns the ResourceUri field if non-nil, zero value otherwise.

### GetResourceUriOk

`func (o *McpServer) GetResourceUriOk() (*string, bool)`

GetResourceUriOk returns a tuple with the ResourceUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceUri

`func (o *McpServer) SetResourceUri(v string)`

SetResourceUri sets ResourceUri field to given value.

### HasResourceUri

`func (o *McpServer) HasResourceUri() bool`

HasResourceUri returns a boolean if a field has been set.

### GetEndpointUrl

`func (o *McpServer) GetEndpointUrl() string`

GetEndpointUrl returns the EndpointUrl field if non-nil, zero value otherwise.

### GetEndpointUrlOk

`func (o *McpServer) GetEndpointUrlOk() (*string, bool)`

GetEndpointUrlOk returns a tuple with the EndpointUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpointUrl

`func (o *McpServer) SetEndpointUrl(v string)`

SetEndpointUrl sets EndpointUrl field to given value.

### HasEndpointUrl

`func (o *McpServer) HasEndpointUrl() bool`

HasEndpointUrl returns a boolean if a field has been set.

### SetEndpointUrlNil

`func (o *McpServer) SetEndpointUrlNil(b bool)`

 SetEndpointUrlNil sets the value for EndpointUrl to be an explicit nil

### UnsetEndpointUrl
`func (o *McpServer) UnsetEndpointUrl()`

UnsetEndpointUrl ensures that no value is present for EndpointUrl, not even an explicit nil
### GetTransport

`func (o *McpServer) GetTransport() string`

GetTransport returns the Transport field if non-nil, zero value otherwise.

### GetTransportOk

`func (o *McpServer) GetTransportOk() (*string, bool)`

GetTransportOk returns a tuple with the Transport field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransport

`func (o *McpServer) SetTransport(v string)`

SetTransport sets Transport field to given value.

### HasTransport

`func (o *McpServer) HasTransport() bool`

HasTransport returns a boolean if a field has been set.

### GetAuthMode

`func (o *McpServer) GetAuthMode() string`

GetAuthMode returns the AuthMode field if non-nil, zero value otherwise.

### GetAuthModeOk

`func (o *McpServer) GetAuthModeOk() (*string, bool)`

GetAuthModeOk returns a tuple with the AuthMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthMode

`func (o *McpServer) SetAuthMode(v string)`

SetAuthMode sets AuthMode field to given value.

### HasAuthMode

`func (o *McpServer) HasAuthMode() bool`

HasAuthMode returns a boolean if a field has been set.

### GetStatus

`func (o *McpServer) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *McpServer) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *McpServer) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *McpServer) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetScopesSupported

`func (o *McpServer) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *McpServer) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *McpServer) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *McpServer) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetScopeDescriptions

`func (o *McpServer) GetScopeDescriptions() map[string]string`

GetScopeDescriptions returns the ScopeDescriptions field if non-nil, zero value otherwise.

### GetScopeDescriptionsOk

`func (o *McpServer) GetScopeDescriptionsOk() (*map[string]string, bool)`

GetScopeDescriptionsOk returns a tuple with the ScopeDescriptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopeDescriptions

`func (o *McpServer) SetScopeDescriptions(v map[string]string)`

SetScopeDescriptions sets ScopeDescriptions field to given value.

### HasScopeDescriptions

`func (o *McpServer) HasScopeDescriptions() bool`

HasScopeDescriptions returns a boolean if a field has been set.

### GetAllowedClientIds

`func (o *McpServer) GetAllowedClientIds() []string`

GetAllowedClientIds returns the AllowedClientIds field if non-nil, zero value otherwise.

### GetAllowedClientIdsOk

`func (o *McpServer) GetAllowedClientIdsOk() (*[]string, bool)`

GetAllowedClientIdsOk returns a tuple with the AllowedClientIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedClientIds

`func (o *McpServer) SetAllowedClientIds(v []string)`

SetAllowedClientIds sets AllowedClientIds field to given value.

### HasAllowedClientIds

`func (o *McpServer) HasAllowedClientIds() bool`

HasAllowedClientIds returns a boolean if a field has been set.

### GetRequirePkce

`func (o *McpServer) GetRequirePkce() bool`

GetRequirePkce returns the RequirePkce field if non-nil, zero value otherwise.

### GetRequirePkceOk

`func (o *McpServer) GetRequirePkceOk() (*bool, bool)`

GetRequirePkceOk returns a tuple with the RequirePkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePkce

`func (o *McpServer) SetRequirePkce(v bool)`

SetRequirePkce sets RequirePkce field to given value.

### HasRequirePkce

`func (o *McpServer) HasRequirePkce() bool`

HasRequirePkce returns a boolean if a field has been set.

### GetRequireResourceParam

`func (o *McpServer) GetRequireResourceParam() bool`

GetRequireResourceParam returns the RequireResourceParam field if non-nil, zero value otherwise.

### GetRequireResourceParamOk

`func (o *McpServer) GetRequireResourceParamOk() (*bool, bool)`

GetRequireResourceParamOk returns a tuple with the RequireResourceParam field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireResourceParam

`func (o *McpServer) SetRequireResourceParam(v bool)`

SetRequireResourceParam sets RequireResourceParam field to given value.

### HasRequireResourceParam

`func (o *McpServer) HasRequireResourceParam() bool`

HasRequireResourceParam returns a boolean if a field has been set.

### GetRequireDpop

`func (o *McpServer) GetRequireDpop() bool`

GetRequireDpop returns the RequireDpop field if non-nil, zero value otherwise.

### GetRequireDpopOk

`func (o *McpServer) GetRequireDpopOk() (*bool, bool)`

GetRequireDpopOk returns a tuple with the RequireDpop field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireDpop

`func (o *McpServer) SetRequireDpop(v bool)`

SetRequireDpop sets RequireDpop field to given value.

### HasRequireDpop

`func (o *McpServer) HasRequireDpop() bool`

HasRequireDpop returns a boolean if a field has been set.

### GetTokenLifetime

`func (o *McpServer) GetTokenLifetime() int32`

GetTokenLifetime returns the TokenLifetime field if non-nil, zero value otherwise.

### GetTokenLifetimeOk

`func (o *McpServer) GetTokenLifetimeOk() (*int32, bool)`

GetTokenLifetimeOk returns a tuple with the TokenLifetime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenLifetime

`func (o *McpServer) SetTokenLifetime(v int32)`

SetTokenLifetime sets TokenLifetime field to given value.

### HasTokenLifetime

`func (o *McpServer) HasTokenLifetime() bool`

HasTokenLifetime returns a boolean if a field has been set.

### GetPosture

`func (o *McpServer) GetPosture() McpServerPosture`

GetPosture returns the Posture field if non-nil, zero value otherwise.

### GetPostureOk

`func (o *McpServer) GetPostureOk() (*McpServerPosture, bool)`

GetPostureOk returns a tuple with the Posture field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPosture

`func (o *McpServer) SetPosture(v McpServerPosture)`

SetPosture sets Posture field to given value.

### HasPosture

`func (o *McpServer) HasPosture() bool`

HasPosture returns a boolean if a field has been set.

### GetCapabilities

`func (o *McpServer) GetCapabilities() []string`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *McpServer) GetCapabilitiesOk() (*[]string, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *McpServer) SetCapabilities(v []string)`

SetCapabilities sets Capabilities field to given value.

### HasCapabilities

`func (o *McpServer) HasCapabilities() bool`

HasCapabilities returns a boolean if a field has been set.

### GetCreatedAt

`func (o *McpServer) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *McpServer) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *McpServer) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *McpServer) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


