# GetProtectedResourceMetadataRootResponse1ResourcesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** |  | 
**ResourceMetadataUrl** | **string** | Per-server protected resource metadata URL. | 
**AuthorizationServers** | **[]string** |  | 

## Methods

### NewGetProtectedResourceMetadataRootResponse1ResourcesItem

`func NewGetProtectedResourceMetadataRootResponse1ResourcesItem(resource string, resourceMetadataUrl string, authorizationServers []string, ) *GetProtectedResourceMetadataRootResponse1ResourcesItem`

NewGetProtectedResourceMetadataRootResponse1ResourcesItem instantiates a new GetProtectedResourceMetadataRootResponse1ResourcesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetProtectedResourceMetadataRootResponse1ResourcesItemWithDefaults

`func NewGetProtectedResourceMetadataRootResponse1ResourcesItemWithDefaults() *GetProtectedResourceMetadataRootResponse1ResourcesItem`

NewGetProtectedResourceMetadataRootResponse1ResourcesItemWithDefaults instantiates a new GetProtectedResourceMetadataRootResponse1ResourcesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResource

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) SetResource(v string)`

SetResource sets Resource field to given value.


### GetResourceMetadataUrl

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) GetResourceMetadataUrl() string`

GetResourceMetadataUrl returns the ResourceMetadataUrl field if non-nil, zero value otherwise.

### GetResourceMetadataUrlOk

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) GetResourceMetadataUrlOk() (*string, bool)`

GetResourceMetadataUrlOk returns a tuple with the ResourceMetadataUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceMetadataUrl

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) SetResourceMetadataUrl(v string)`

SetResourceMetadataUrl sets ResourceMetadataUrl field to given value.


### GetAuthorizationServers

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) GetAuthorizationServers() []string`

GetAuthorizationServers returns the AuthorizationServers field if non-nil, zero value otherwise.

### GetAuthorizationServersOk

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) GetAuthorizationServersOk() (*[]string, bool)`

GetAuthorizationServersOk returns a tuple with the AuthorizationServers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationServers

`func (o *GetProtectedResourceMetadataRootResponse1ResourcesItem) SetAuthorizationServers(v []string)`

SetAuthorizationServers sets AuthorizationServers field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


