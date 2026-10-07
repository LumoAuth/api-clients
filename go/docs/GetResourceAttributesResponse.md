# GetResourceAttributesResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceType** | Pointer to **string** |  | [optional] 
**ResourceId** | Pointer to **string** |  | [optional] 
**Attributes** | Pointer to [**GetResourceAttributesResponseAttributes**](GetResourceAttributesResponseAttributes.md) |  | [optional] 

## Methods

### NewGetResourceAttributesResponse

`func NewGetResourceAttributesResponse() *GetResourceAttributesResponse`

NewGetResourceAttributesResponse instantiates a new GetResourceAttributesResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetResourceAttributesResponseWithDefaults

`func NewGetResourceAttributesResponseWithDefaults() *GetResourceAttributesResponse`

NewGetResourceAttributesResponseWithDefaults instantiates a new GetResourceAttributesResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResourceType

`func (o *GetResourceAttributesResponse) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *GetResourceAttributesResponse) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *GetResourceAttributesResponse) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *GetResourceAttributesResponse) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.

### GetResourceId

`func (o *GetResourceAttributesResponse) GetResourceId() string`

GetResourceId returns the ResourceId field if non-nil, zero value otherwise.

### GetResourceIdOk

`func (o *GetResourceAttributesResponse) GetResourceIdOk() (*string, bool)`

GetResourceIdOk returns a tuple with the ResourceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceId

`func (o *GetResourceAttributesResponse) SetResourceId(v string)`

SetResourceId sets ResourceId field to given value.

### HasResourceId

`func (o *GetResourceAttributesResponse) HasResourceId() bool`

HasResourceId returns a boolean if a field has been set.

### GetAttributes

`func (o *GetResourceAttributesResponse) GetAttributes() GetResourceAttributesResponseAttributes`

GetAttributes returns the Attributes field if non-nil, zero value otherwise.

### GetAttributesOk

`func (o *GetResourceAttributesResponse) GetAttributesOk() (*GetResourceAttributesResponseAttributes, bool)`

GetAttributesOk returns a tuple with the Attributes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributes

`func (o *GetResourceAttributesResponse) SetAttributes(v GetResourceAttributesResponseAttributes)`

SetAttributes sets Attributes field to given value.

### HasAttributes

`func (o *GetResourceAttributesResponse) HasAttributes() bool`

HasAttributes returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


