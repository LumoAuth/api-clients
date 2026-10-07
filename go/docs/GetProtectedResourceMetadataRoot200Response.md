# GetProtectedResourceMetadataRoot200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** |  | 
**AuthorizationServers** | **[]string** |  | 
**BearerMethodsSupported** | **[]string** |  | 
**ScopesSupported** | Pointer to **[]string** |  | [optional] 
**DpopBoundAccessTokensRequired** | Pointer to **bool** |  | [optional] 
**DpopSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 
**Resources** | [**[]GetProtectedResourceMetadataRootResponse1ResourcesItem**](GetProtectedResourceMetadataRootResponse1ResourcesItem.md) |  | 

## Methods

### NewGetProtectedResourceMetadataRoot200Response

`func NewGetProtectedResourceMetadataRoot200Response(resource string, authorizationServers []string, bearerMethodsSupported []string, resources []GetProtectedResourceMetadataRootResponse1ResourcesItem, ) *GetProtectedResourceMetadataRoot200Response`

NewGetProtectedResourceMetadataRoot200Response instantiates a new GetProtectedResourceMetadataRoot200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetProtectedResourceMetadataRoot200ResponseWithDefaults

`func NewGetProtectedResourceMetadataRoot200ResponseWithDefaults() *GetProtectedResourceMetadataRoot200Response`

NewGetProtectedResourceMetadataRoot200ResponseWithDefaults instantiates a new GetProtectedResourceMetadataRoot200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResource

`func (o *GetProtectedResourceMetadataRoot200Response) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *GetProtectedResourceMetadataRoot200Response) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *GetProtectedResourceMetadataRoot200Response) SetResource(v string)`

SetResource sets Resource field to given value.


### GetAuthorizationServers

`func (o *GetProtectedResourceMetadataRoot200Response) GetAuthorizationServers() []string`

GetAuthorizationServers returns the AuthorizationServers field if non-nil, zero value otherwise.

### GetAuthorizationServersOk

`func (o *GetProtectedResourceMetadataRoot200Response) GetAuthorizationServersOk() (*[]string, bool)`

GetAuthorizationServersOk returns a tuple with the AuthorizationServers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationServers

`func (o *GetProtectedResourceMetadataRoot200Response) SetAuthorizationServers(v []string)`

SetAuthorizationServers sets AuthorizationServers field to given value.


### GetBearerMethodsSupported

`func (o *GetProtectedResourceMetadataRoot200Response) GetBearerMethodsSupported() []string`

GetBearerMethodsSupported returns the BearerMethodsSupported field if non-nil, zero value otherwise.

### GetBearerMethodsSupportedOk

`func (o *GetProtectedResourceMetadataRoot200Response) GetBearerMethodsSupportedOk() (*[]string, bool)`

GetBearerMethodsSupportedOk returns a tuple with the BearerMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerMethodsSupported

`func (o *GetProtectedResourceMetadataRoot200Response) SetBearerMethodsSupported(v []string)`

SetBearerMethodsSupported sets BearerMethodsSupported field to given value.


### GetScopesSupported

`func (o *GetProtectedResourceMetadataRoot200Response) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *GetProtectedResourceMetadataRoot200Response) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *GetProtectedResourceMetadataRoot200Response) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *GetProtectedResourceMetadataRoot200Response) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetDpopBoundAccessTokensRequired

`func (o *GetProtectedResourceMetadataRoot200Response) GetDpopBoundAccessTokensRequired() bool`

GetDpopBoundAccessTokensRequired returns the DpopBoundAccessTokensRequired field if non-nil, zero value otherwise.

### GetDpopBoundAccessTokensRequiredOk

`func (o *GetProtectedResourceMetadataRoot200Response) GetDpopBoundAccessTokensRequiredOk() (*bool, bool)`

GetDpopBoundAccessTokensRequiredOk returns a tuple with the DpopBoundAccessTokensRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopBoundAccessTokensRequired

`func (o *GetProtectedResourceMetadataRoot200Response) SetDpopBoundAccessTokensRequired(v bool)`

SetDpopBoundAccessTokensRequired sets DpopBoundAccessTokensRequired field to given value.

### HasDpopBoundAccessTokensRequired

`func (o *GetProtectedResourceMetadataRoot200Response) HasDpopBoundAccessTokensRequired() bool`

HasDpopBoundAccessTokensRequired returns a boolean if a field has been set.

### GetDpopSigningAlgValuesSupported

`func (o *GetProtectedResourceMetadataRoot200Response) GetDpopSigningAlgValuesSupported() []string`

GetDpopSigningAlgValuesSupported returns the DpopSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetDpopSigningAlgValuesSupportedOk

`func (o *GetProtectedResourceMetadataRoot200Response) GetDpopSigningAlgValuesSupportedOk() (*[]string, bool)`

GetDpopSigningAlgValuesSupportedOk returns a tuple with the DpopSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopSigningAlgValuesSupported

`func (o *GetProtectedResourceMetadataRoot200Response) SetDpopSigningAlgValuesSupported(v []string)`

SetDpopSigningAlgValuesSupported sets DpopSigningAlgValuesSupported field to given value.

### HasDpopSigningAlgValuesSupported

`func (o *GetProtectedResourceMetadataRoot200Response) HasDpopSigningAlgValuesSupported() bool`

HasDpopSigningAlgValuesSupported returns a boolean if a field has been set.

### GetResources

`func (o *GetProtectedResourceMetadataRoot200Response) GetResources() []GetProtectedResourceMetadataRootResponse1ResourcesItem`

GetResources returns the Resources field if non-nil, zero value otherwise.

### GetResourcesOk

`func (o *GetProtectedResourceMetadataRoot200Response) GetResourcesOk() (*[]GetProtectedResourceMetadataRootResponse1ResourcesItem, bool)`

GetResourcesOk returns a tuple with the Resources field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResources

`func (o *GetProtectedResourceMetadataRoot200Response) SetResources(v []GetProtectedResourceMetadataRootResponse1ResourcesItem)`

SetResources sets Resources field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


