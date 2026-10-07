# GetAgentCardResponseProvider

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** |  | [optional] 
**Url** | Pointer to **string** | The organization&#39;s issuer URL. | [optional] 

## Methods

### NewGetAgentCardResponseProvider

`func NewGetAgentCardResponseProvider() *GetAgentCardResponseProvider`

NewGetAgentCardResponseProvider instantiates a new GetAgentCardResponseProvider object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetAgentCardResponseProviderWithDefaults

`func NewGetAgentCardResponseProviderWithDefaults() *GetAgentCardResponseProvider`

NewGetAgentCardResponseProviderWithDefaults instantiates a new GetAgentCardResponseProvider object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *GetAgentCardResponseProvider) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *GetAgentCardResponseProvider) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *GetAgentCardResponseProvider) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *GetAgentCardResponseProvider) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetUrl

`func (o *GetAgentCardResponseProvider) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *GetAgentCardResponseProvider) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *GetAgentCardResponseProvider) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *GetAgentCardResponseProvider) HasUrl() bool`

HasUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


