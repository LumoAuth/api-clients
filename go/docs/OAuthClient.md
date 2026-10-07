# OAuthClient

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

## Methods

### NewOAuthClient

`func NewOAuthClient(id int32, clientId string, name string, isConfidential bool, isPublic bool, isActive bool, requiresPkce bool, createdAt time.Time, ) *OAuthClient`

NewOAuthClient instantiates a new OAuthClient object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthClientWithDefaults

`func NewOAuthClientWithDefaults() *OAuthClient`

NewOAuthClientWithDefaults instantiates a new OAuthClient object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OAuthClient) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OAuthClient) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OAuthClient) SetId(v int32)`

SetId sets Id field to given value.


### GetClientId

`func (o *OAuthClient) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *OAuthClient) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *OAuthClient) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetName

`func (o *OAuthClient) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *OAuthClient) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *OAuthClient) SetName(v string)`

SetName sets Name field to given value.


### GetIsConfidential

`func (o *OAuthClient) GetIsConfidential() bool`

GetIsConfidential returns the IsConfidential field if non-nil, zero value otherwise.

### GetIsConfidentialOk

`func (o *OAuthClient) GetIsConfidentialOk() (*bool, bool)`

GetIsConfidentialOk returns a tuple with the IsConfidential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsConfidential

`func (o *OAuthClient) SetIsConfidential(v bool)`

SetIsConfidential sets IsConfidential field to given value.


### GetIsPublic

`func (o *OAuthClient) GetIsPublic() bool`

GetIsPublic returns the IsPublic field if non-nil, zero value otherwise.

### GetIsPublicOk

`func (o *OAuthClient) GetIsPublicOk() (*bool, bool)`

GetIsPublicOk returns a tuple with the IsPublic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPublic

`func (o *OAuthClient) SetIsPublic(v bool)`

SetIsPublic sets IsPublic field to given value.


### GetIsActive

`func (o *OAuthClient) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *OAuthClient) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *OAuthClient) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.


### GetRequiresPkce

`func (o *OAuthClient) GetRequiresPkce() bool`

GetRequiresPkce returns the RequiresPkce field if non-nil, zero value otherwise.

### GetRequiresPkceOk

`func (o *OAuthClient) GetRequiresPkceOk() (*bool, bool)`

GetRequiresPkceOk returns a tuple with the RequiresPkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiresPkce

`func (o *OAuthClient) SetRequiresPkce(v bool)`

SetRequiresPkce sets RequiresPkce field to given value.


### GetCreatedAt

`func (o *OAuthClient) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *OAuthClient) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *OAuthClient) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetRedirectUris

`func (o *OAuthClient) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *OAuthClient) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *OAuthClient) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.

### HasRedirectUris

`func (o *OAuthClient) HasRedirectUris() bool`

HasRedirectUris returns a boolean if a field has been set.

### GetScopes

`func (o *OAuthClient) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *OAuthClient) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *OAuthClient) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *OAuthClient) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetGrantTypes

`func (o *OAuthClient) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *OAuthClient) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *OAuthClient) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.

### HasGrantTypes

`func (o *OAuthClient) HasGrantTypes() bool`

HasGrantTypes returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


