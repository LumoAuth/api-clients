# GetServerResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**ServerId** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**ResourceUri** | Pointer to **string** |  | [optional] 
**EndpointUrl** | Pointer to **string** |  | [optional] 
**Transport** | Pointer to **string** |  | [optional] 
**AuthMode** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**ScopesSupported** | Pointer to **[]string** |  | [optional] 
**RequirePkce** | Pointer to **bool** |  | [optional] 
**TokenLifetime** | Pointer to **int32** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**UpdatedAt** | Pointer to **time.Time** |  | [optional] 
**Discovery** | Pointer to [**GetServerResponseDiscovery**](GetServerResponseDiscovery.md) |  | [optional] 

## Methods

### NewGetServerResponse

`func NewGetServerResponse() *GetServerResponse`

NewGetServerResponse instantiates a new GetServerResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetServerResponseWithDefaults

`func NewGetServerResponseWithDefaults() *GetServerResponse`

NewGetServerResponseWithDefaults instantiates a new GetServerResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetServerResponse) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetServerResponse) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetServerResponse) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *GetServerResponse) HasId() bool`

HasId returns a boolean if a field has been set.

### GetServerId

`func (o *GetServerResponse) GetServerId() string`

GetServerId returns the ServerId field if non-nil, zero value otherwise.

### GetServerIdOk

`func (o *GetServerResponse) GetServerIdOk() (*string, bool)`

GetServerIdOk returns a tuple with the ServerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServerId

`func (o *GetServerResponse) SetServerId(v string)`

SetServerId sets ServerId field to given value.

### HasServerId

`func (o *GetServerResponse) HasServerId() bool`

HasServerId returns a boolean if a field has been set.

### GetName

`func (o *GetServerResponse) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GetServerResponse) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GetServerResponse) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *GetServerResponse) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *GetServerResponse) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *GetServerResponse) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *GetServerResponse) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *GetServerResponse) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetResourceUri

`func (o *GetServerResponse) GetResourceUri() string`

GetResourceUri returns the ResourceUri field if non-nil, zero value otherwise.

### GetResourceUriOk

`func (o *GetServerResponse) GetResourceUriOk() (*string, bool)`

GetResourceUriOk returns a tuple with the ResourceUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceUri

`func (o *GetServerResponse) SetResourceUri(v string)`

SetResourceUri sets ResourceUri field to given value.

### HasResourceUri

`func (o *GetServerResponse) HasResourceUri() bool`

HasResourceUri returns a boolean if a field has been set.

### GetEndpointUrl

`func (o *GetServerResponse) GetEndpointUrl() string`

GetEndpointUrl returns the EndpointUrl field if non-nil, zero value otherwise.

### GetEndpointUrlOk

`func (o *GetServerResponse) GetEndpointUrlOk() (*string, bool)`

GetEndpointUrlOk returns a tuple with the EndpointUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpointUrl

`func (o *GetServerResponse) SetEndpointUrl(v string)`

SetEndpointUrl sets EndpointUrl field to given value.

### HasEndpointUrl

`func (o *GetServerResponse) HasEndpointUrl() bool`

HasEndpointUrl returns a boolean if a field has been set.

### GetTransport

`func (o *GetServerResponse) GetTransport() string`

GetTransport returns the Transport field if non-nil, zero value otherwise.

### GetTransportOk

`func (o *GetServerResponse) GetTransportOk() (*string, bool)`

GetTransportOk returns a tuple with the Transport field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransport

`func (o *GetServerResponse) SetTransport(v string)`

SetTransport sets Transport field to given value.

### HasTransport

`func (o *GetServerResponse) HasTransport() bool`

HasTransport returns a boolean if a field has been set.

### GetAuthMode

`func (o *GetServerResponse) GetAuthMode() string`

GetAuthMode returns the AuthMode field if non-nil, zero value otherwise.

### GetAuthModeOk

`func (o *GetServerResponse) GetAuthModeOk() (*string, bool)`

GetAuthModeOk returns a tuple with the AuthMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthMode

`func (o *GetServerResponse) SetAuthMode(v string)`

SetAuthMode sets AuthMode field to given value.

### HasAuthMode

`func (o *GetServerResponse) HasAuthMode() bool`

HasAuthMode returns a boolean if a field has been set.

### GetStatus

`func (o *GetServerResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *GetServerResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *GetServerResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *GetServerResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetScopesSupported

`func (o *GetServerResponse) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *GetServerResponse) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *GetServerResponse) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *GetServerResponse) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetRequirePkce

`func (o *GetServerResponse) GetRequirePkce() bool`

GetRequirePkce returns the RequirePkce field if non-nil, zero value otherwise.

### GetRequirePkceOk

`func (o *GetServerResponse) GetRequirePkceOk() (*bool, bool)`

GetRequirePkceOk returns a tuple with the RequirePkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePkce

`func (o *GetServerResponse) SetRequirePkce(v bool)`

SetRequirePkce sets RequirePkce field to given value.

### HasRequirePkce

`func (o *GetServerResponse) HasRequirePkce() bool`

HasRequirePkce returns a boolean if a field has been set.

### GetTokenLifetime

`func (o *GetServerResponse) GetTokenLifetime() int32`

GetTokenLifetime returns the TokenLifetime field if non-nil, zero value otherwise.

### GetTokenLifetimeOk

`func (o *GetServerResponse) GetTokenLifetimeOk() (*int32, bool)`

GetTokenLifetimeOk returns a tuple with the TokenLifetime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenLifetime

`func (o *GetServerResponse) SetTokenLifetime(v int32)`

SetTokenLifetime sets TokenLifetime field to given value.

### HasTokenLifetime

`func (o *GetServerResponse) HasTokenLifetime() bool`

HasTokenLifetime returns a boolean if a field has been set.

### GetCreatedAt

`func (o *GetServerResponse) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *GetServerResponse) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *GetServerResponse) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *GetServerResponse) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *GetServerResponse) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *GetServerResponse) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *GetServerResponse) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *GetServerResponse) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetDiscovery

`func (o *GetServerResponse) GetDiscovery() GetServerResponseDiscovery`

GetDiscovery returns the Discovery field if non-nil, zero value otherwise.

### GetDiscoveryOk

`func (o *GetServerResponse) GetDiscoveryOk() (*GetServerResponseDiscovery, bool)`

GetDiscoveryOk returns a tuple with the Discovery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiscovery

`func (o *GetServerResponse) SetDiscovery(v GetServerResponseDiscovery)`

SetDiscovery sets Discovery field to given value.

### HasDiscovery

`func (o *GetServerResponse) HasDiscovery() bool`

HasDiscovery returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


