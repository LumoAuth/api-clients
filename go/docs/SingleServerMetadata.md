# SingleServerMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** |  | 
**AuthorizationServers** | **[]string** |  | 
**BearerMethodsSupported** | **[]string** |  | 
**ScopesSupported** | Pointer to **[]string** |  | [optional] 
**DpopBoundAccessTokensRequired** | Pointer to **bool** |  | [optional] 
**DpopSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 

## Methods

### NewSingleServerMetadata

`func NewSingleServerMetadata(resource string, authorizationServers []string, bearerMethodsSupported []string, ) *SingleServerMetadata`

NewSingleServerMetadata instantiates a new SingleServerMetadata object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSingleServerMetadataWithDefaults

`func NewSingleServerMetadataWithDefaults() *SingleServerMetadata`

NewSingleServerMetadataWithDefaults instantiates a new SingleServerMetadata object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResource

`func (o *SingleServerMetadata) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *SingleServerMetadata) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *SingleServerMetadata) SetResource(v string)`

SetResource sets Resource field to given value.


### GetAuthorizationServers

`func (o *SingleServerMetadata) GetAuthorizationServers() []string`

GetAuthorizationServers returns the AuthorizationServers field if non-nil, zero value otherwise.

### GetAuthorizationServersOk

`func (o *SingleServerMetadata) GetAuthorizationServersOk() (*[]string, bool)`

GetAuthorizationServersOk returns a tuple with the AuthorizationServers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationServers

`func (o *SingleServerMetadata) SetAuthorizationServers(v []string)`

SetAuthorizationServers sets AuthorizationServers field to given value.


### GetBearerMethodsSupported

`func (o *SingleServerMetadata) GetBearerMethodsSupported() []string`

GetBearerMethodsSupported returns the BearerMethodsSupported field if non-nil, zero value otherwise.

### GetBearerMethodsSupportedOk

`func (o *SingleServerMetadata) GetBearerMethodsSupportedOk() (*[]string, bool)`

GetBearerMethodsSupportedOk returns a tuple with the BearerMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerMethodsSupported

`func (o *SingleServerMetadata) SetBearerMethodsSupported(v []string)`

SetBearerMethodsSupported sets BearerMethodsSupported field to given value.


### GetScopesSupported

`func (o *SingleServerMetadata) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *SingleServerMetadata) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *SingleServerMetadata) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *SingleServerMetadata) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetDpopBoundAccessTokensRequired

`func (o *SingleServerMetadata) GetDpopBoundAccessTokensRequired() bool`

GetDpopBoundAccessTokensRequired returns the DpopBoundAccessTokensRequired field if non-nil, zero value otherwise.

### GetDpopBoundAccessTokensRequiredOk

`func (o *SingleServerMetadata) GetDpopBoundAccessTokensRequiredOk() (*bool, bool)`

GetDpopBoundAccessTokensRequiredOk returns a tuple with the DpopBoundAccessTokensRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopBoundAccessTokensRequired

`func (o *SingleServerMetadata) SetDpopBoundAccessTokensRequired(v bool)`

SetDpopBoundAccessTokensRequired sets DpopBoundAccessTokensRequired field to given value.

### HasDpopBoundAccessTokensRequired

`func (o *SingleServerMetadata) HasDpopBoundAccessTokensRequired() bool`

HasDpopBoundAccessTokensRequired returns a boolean if a field has been set.

### GetDpopSigningAlgValuesSupported

`func (o *SingleServerMetadata) GetDpopSigningAlgValuesSupported() []string`

GetDpopSigningAlgValuesSupported returns the DpopSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetDpopSigningAlgValuesSupportedOk

`func (o *SingleServerMetadata) GetDpopSigningAlgValuesSupportedOk() (*[]string, bool)`

GetDpopSigningAlgValuesSupportedOk returns a tuple with the DpopSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopSigningAlgValuesSupported

`func (o *SingleServerMetadata) SetDpopSigningAlgValuesSupported(v []string)`

SetDpopSigningAlgValuesSupported sets DpopSigningAlgValuesSupported field to given value.

### HasDpopSigningAlgValuesSupported

`func (o *SingleServerMetadata) HasDpopSigningAlgValuesSupported() bool`

HasDpopSigningAlgValuesSupported returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


