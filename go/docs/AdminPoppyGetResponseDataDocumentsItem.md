# AdminPoppyGetResponseDataDocumentsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | Pointer to **string** |  | [optional] 
**PoppyJson** | Pointer to **map[string]interface{}** | The generated poppy.json of the domain. | [optional] 
**ProtectedResourceMetadata** | Pointer to **map[string]interface{}** | The generated RFC 9728 document of the domain. | [optional] 
**Hosted** | Pointer to [**AdminPoppyGetResponseDataDocumentsItemHosted**](AdminPoppyGetResponseDataDocumentsItemHosted.md) |  | [optional] 
**ServeAt** | Pointer to [**AdminPoppyGetResponseDataDocumentsItemServeAt**](AdminPoppyGetResponseDataDocumentsItemServeAt.md) |  | [optional] 

## Methods

### NewAdminPoppyGetResponseDataDocumentsItem

`func NewAdminPoppyGetResponseDataDocumentsItem() *AdminPoppyGetResponseDataDocumentsItem`

NewAdminPoppyGetResponseDataDocumentsItem instantiates a new AdminPoppyGetResponseDataDocumentsItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPoppyGetResponseDataDocumentsItemWithDefaults

`func NewAdminPoppyGetResponseDataDocumentsItemWithDefaults() *AdminPoppyGetResponseDataDocumentsItem`

NewAdminPoppyGetResponseDataDocumentsItemWithDefaults instantiates a new AdminPoppyGetResponseDataDocumentsItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDomain

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetDomain() string`

GetDomain returns the Domain field if non-nil, zero value otherwise.

### GetDomainOk

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetDomainOk() (*string, bool)`

GetDomainOk returns a tuple with the Domain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomain

`func (o *AdminPoppyGetResponseDataDocumentsItem) SetDomain(v string)`

SetDomain sets Domain field to given value.

### HasDomain

`func (o *AdminPoppyGetResponseDataDocumentsItem) HasDomain() bool`

HasDomain returns a boolean if a field has been set.

### GetPoppyJson

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetPoppyJson() map[string]interface{}`

GetPoppyJson returns the PoppyJson field if non-nil, zero value otherwise.

### GetPoppyJsonOk

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetPoppyJsonOk() (*map[string]interface{}, bool)`

GetPoppyJsonOk returns a tuple with the PoppyJson field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoppyJson

`func (o *AdminPoppyGetResponseDataDocumentsItem) SetPoppyJson(v map[string]interface{})`

SetPoppyJson sets PoppyJson field to given value.

### HasPoppyJson

`func (o *AdminPoppyGetResponseDataDocumentsItem) HasPoppyJson() bool`

HasPoppyJson returns a boolean if a field has been set.

### GetProtectedResourceMetadata

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetProtectedResourceMetadata() map[string]interface{}`

GetProtectedResourceMetadata returns the ProtectedResourceMetadata field if non-nil, zero value otherwise.

### GetProtectedResourceMetadataOk

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetProtectedResourceMetadataOk() (*map[string]interface{}, bool)`

GetProtectedResourceMetadataOk returns a tuple with the ProtectedResourceMetadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtectedResourceMetadata

`func (o *AdminPoppyGetResponseDataDocumentsItem) SetProtectedResourceMetadata(v map[string]interface{})`

SetProtectedResourceMetadata sets ProtectedResourceMetadata field to given value.

### HasProtectedResourceMetadata

`func (o *AdminPoppyGetResponseDataDocumentsItem) HasProtectedResourceMetadata() bool`

HasProtectedResourceMetadata returns a boolean if a field has been set.

### GetHosted

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetHosted() AdminPoppyGetResponseDataDocumentsItemHosted`

GetHosted returns the Hosted field if non-nil, zero value otherwise.

### GetHostedOk

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetHostedOk() (*AdminPoppyGetResponseDataDocumentsItemHosted, bool)`

GetHostedOk returns a tuple with the Hosted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHosted

`func (o *AdminPoppyGetResponseDataDocumentsItem) SetHosted(v AdminPoppyGetResponseDataDocumentsItemHosted)`

SetHosted sets Hosted field to given value.

### HasHosted

`func (o *AdminPoppyGetResponseDataDocumentsItem) HasHosted() bool`

HasHosted returns a boolean if a field has been set.

### GetServeAt

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetServeAt() AdminPoppyGetResponseDataDocumentsItemServeAt`

GetServeAt returns the ServeAt field if non-nil, zero value otherwise.

### GetServeAtOk

`func (o *AdminPoppyGetResponseDataDocumentsItem) GetServeAtOk() (*AdminPoppyGetResponseDataDocumentsItemServeAt, bool)`

GetServeAtOk returns a tuple with the ServeAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServeAt

`func (o *AdminPoppyGetResponseDataDocumentsItem) SetServeAt(v AdminPoppyGetResponseDataDocumentsItemServeAt)`

SetServeAt sets ServeAt field to given value.

### HasServeAt

`func (o *AdminPoppyGetResponseDataDocumentsItem) HasServeAt() bool`

HasServeAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


