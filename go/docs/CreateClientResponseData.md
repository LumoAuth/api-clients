# CreateClientResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**ClientId** | **string** |  | 
**Name** | **string** |  | 
**IsConfidential** | **bool** |  | 
**IsPublic** | **bool** |  | 
**IsActive** | **bool** |  | 
**RequiresPkce** | **bool** |  | 
**CreatedAt** | **time.Time** |  | 
**RedirectUris** | Pointer to **[]string** | Detailed responses only | [optional] 
**Scopes** | Pointer to **[]string** | Detailed responses only | [optional] 
**GrantTypes** | Pointer to **[]string** | Detailed responses only | [optional] 
**Secret** | Pointer to **string** | Plaintext client secret — returned only once, never retrievable again | [optional] 
**Note** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateClientResponseData

`func NewCreateClientResponseData(id int32, clientId string, name string, isConfidential bool, isPublic bool, isActive bool, requiresPkce bool, createdAt time.Time, ) *CreateClientResponseData`

NewCreateClientResponseData instantiates a new CreateClientResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateClientResponseDataWithDefaults

`func NewCreateClientResponseDataWithDefaults() *CreateClientResponseData`

NewCreateClientResponseDataWithDefaults instantiates a new CreateClientResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *CreateClientResponseData) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CreateClientResponseData) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CreateClientResponseData) SetId(v int32)`

SetId sets Id field to given value.


### GetClientId

`func (o *CreateClientResponseData) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *CreateClientResponseData) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *CreateClientResponseData) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetName

`func (o *CreateClientResponseData) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CreateClientResponseData) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CreateClientResponseData) SetName(v string)`

SetName sets Name field to given value.


### GetIsConfidential

`func (o *CreateClientResponseData) GetIsConfidential() bool`

GetIsConfidential returns the IsConfidential field if non-nil, zero value otherwise.

### GetIsConfidentialOk

`func (o *CreateClientResponseData) GetIsConfidentialOk() (*bool, bool)`

GetIsConfidentialOk returns a tuple with the IsConfidential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsConfidential

`func (o *CreateClientResponseData) SetIsConfidential(v bool)`

SetIsConfidential sets IsConfidential field to given value.


### GetIsPublic

`func (o *CreateClientResponseData) GetIsPublic() bool`

GetIsPublic returns the IsPublic field if non-nil, zero value otherwise.

### GetIsPublicOk

`func (o *CreateClientResponseData) GetIsPublicOk() (*bool, bool)`

GetIsPublicOk returns a tuple with the IsPublic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPublic

`func (o *CreateClientResponseData) SetIsPublic(v bool)`

SetIsPublic sets IsPublic field to given value.


### GetIsActive

`func (o *CreateClientResponseData) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *CreateClientResponseData) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *CreateClientResponseData) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.


### GetRequiresPkce

`func (o *CreateClientResponseData) GetRequiresPkce() bool`

GetRequiresPkce returns the RequiresPkce field if non-nil, zero value otherwise.

### GetRequiresPkceOk

`func (o *CreateClientResponseData) GetRequiresPkceOk() (*bool, bool)`

GetRequiresPkceOk returns a tuple with the RequiresPkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiresPkce

`func (o *CreateClientResponseData) SetRequiresPkce(v bool)`

SetRequiresPkce sets RequiresPkce field to given value.


### GetCreatedAt

`func (o *CreateClientResponseData) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *CreateClientResponseData) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *CreateClientResponseData) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetRedirectUris

`func (o *CreateClientResponseData) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *CreateClientResponseData) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *CreateClientResponseData) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.

### HasRedirectUris

`func (o *CreateClientResponseData) HasRedirectUris() bool`

HasRedirectUris returns a boolean if a field has been set.

### GetScopes

`func (o *CreateClientResponseData) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *CreateClientResponseData) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *CreateClientResponseData) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *CreateClientResponseData) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetGrantTypes

`func (o *CreateClientResponseData) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *CreateClientResponseData) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *CreateClientResponseData) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.

### HasGrantTypes

`func (o *CreateClientResponseData) HasGrantTypes() bool`

HasGrantTypes returns a boolean if a field has been set.

### GetSecret

`func (o *CreateClientResponseData) GetSecret() string`

GetSecret returns the Secret field if non-nil, zero value otherwise.

### GetSecretOk

`func (o *CreateClientResponseData) GetSecretOk() (*string, bool)`

GetSecretOk returns a tuple with the Secret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecret

`func (o *CreateClientResponseData) SetSecret(v string)`

SetSecret sets Secret field to given value.

### HasSecret

`func (o *CreateClientResponseData) HasSecret() bool`

HasSecret returns a boolean if a field has been set.

### GetNote

`func (o *CreateClientResponseData) GetNote() string`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *CreateClientResponseData) GetNoteOk() (*string, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *CreateClientResponseData) SetNote(v string)`

SetNote sets Note field to given value.

### HasNote

`func (o *CreateClientResponseData) HasNote() bool`

HasNote returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


