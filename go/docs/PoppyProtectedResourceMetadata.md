# PoppyProtectedResourceMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** |  | 
**AuthorizationServers** | **[]string** |  | 
**BearerMethodsSupported** | Pointer to **[]string** |  | [optional] 
**ScopesSupported** | Pointer to **[]string** |  | [optional] 

## Methods

### NewPoppyProtectedResourceMetadata

`func NewPoppyProtectedResourceMetadata(resource string, authorizationServers []string, ) *PoppyProtectedResourceMetadata`

NewPoppyProtectedResourceMetadata instantiates a new PoppyProtectedResourceMetadata object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyProtectedResourceMetadataWithDefaults

`func NewPoppyProtectedResourceMetadataWithDefaults() *PoppyProtectedResourceMetadata`

NewPoppyProtectedResourceMetadataWithDefaults instantiates a new PoppyProtectedResourceMetadata object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResource

`func (o *PoppyProtectedResourceMetadata) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *PoppyProtectedResourceMetadata) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *PoppyProtectedResourceMetadata) SetResource(v string)`

SetResource sets Resource field to given value.


### GetAuthorizationServers

`func (o *PoppyProtectedResourceMetadata) GetAuthorizationServers() []string`

GetAuthorizationServers returns the AuthorizationServers field if non-nil, zero value otherwise.

### GetAuthorizationServersOk

`func (o *PoppyProtectedResourceMetadata) GetAuthorizationServersOk() (*[]string, bool)`

GetAuthorizationServersOk returns a tuple with the AuthorizationServers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationServers

`func (o *PoppyProtectedResourceMetadata) SetAuthorizationServers(v []string)`

SetAuthorizationServers sets AuthorizationServers field to given value.


### GetBearerMethodsSupported

`func (o *PoppyProtectedResourceMetadata) GetBearerMethodsSupported() []string`

GetBearerMethodsSupported returns the BearerMethodsSupported field if non-nil, zero value otherwise.

### GetBearerMethodsSupportedOk

`func (o *PoppyProtectedResourceMetadata) GetBearerMethodsSupportedOk() (*[]string, bool)`

GetBearerMethodsSupportedOk returns a tuple with the BearerMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerMethodsSupported

`func (o *PoppyProtectedResourceMetadata) SetBearerMethodsSupported(v []string)`

SetBearerMethodsSupported sets BearerMethodsSupported field to given value.

### HasBearerMethodsSupported

`func (o *PoppyProtectedResourceMetadata) HasBearerMethodsSupported() bool`

HasBearerMethodsSupported returns a boolean if a field has been set.

### GetScopesSupported

`func (o *PoppyProtectedResourceMetadata) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *PoppyProtectedResourceMetadata) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *PoppyProtectedResourceMetadata) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *PoppyProtectedResourceMetadata) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


