# AdminSandboxSpawnResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Slug** | **string** |  | 
**Name** | **string** |  | 
**CreatedAt** | **time.Time** |  | 
**ExpiresAt** | Pointer to **NullableTime** |  | [optional] 
**OwnerEmail** | Pointer to **NullableString** |  | [optional] 
**SpawnedFrom** | Pointer to **NullableString** |  | [optional] 
**ApiKey** | **string** | API key of the sandbox, with every Admin API scope. Shown only in this response; it expires with the sandbox. | 

## Methods

### NewAdminSandboxSpawnResponseData

`func NewAdminSandboxSpawnResponseData(slug string, name string, createdAt time.Time, apiKey string, ) *AdminSandboxSpawnResponseData`

NewAdminSandboxSpawnResponseData instantiates a new AdminSandboxSpawnResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSandboxSpawnResponseDataWithDefaults

`func NewAdminSandboxSpawnResponseDataWithDefaults() *AdminSandboxSpawnResponseData`

NewAdminSandboxSpawnResponseDataWithDefaults instantiates a new AdminSandboxSpawnResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSlug

`func (o *AdminSandboxSpawnResponseData) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AdminSandboxSpawnResponseData) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AdminSandboxSpawnResponseData) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetName

`func (o *AdminSandboxSpawnResponseData) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdminSandboxSpawnResponseData) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdminSandboxSpawnResponseData) SetName(v string)`

SetName sets Name field to given value.


### GetCreatedAt

`func (o *AdminSandboxSpawnResponseData) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AdminSandboxSpawnResponseData) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AdminSandboxSpawnResponseData) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetExpiresAt

`func (o *AdminSandboxSpawnResponseData) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *AdminSandboxSpawnResponseData) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *AdminSandboxSpawnResponseData) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *AdminSandboxSpawnResponseData) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### SetExpiresAtNil

`func (o *AdminSandboxSpawnResponseData) SetExpiresAtNil(b bool)`

 SetExpiresAtNil sets the value for ExpiresAt to be an explicit nil

### UnsetExpiresAt
`func (o *AdminSandboxSpawnResponseData) UnsetExpiresAt()`

UnsetExpiresAt ensures that no value is present for ExpiresAt, not even an explicit nil
### GetOwnerEmail

`func (o *AdminSandboxSpawnResponseData) GetOwnerEmail() string`

GetOwnerEmail returns the OwnerEmail field if non-nil, zero value otherwise.

### GetOwnerEmailOk

`func (o *AdminSandboxSpawnResponseData) GetOwnerEmailOk() (*string, bool)`

GetOwnerEmailOk returns a tuple with the OwnerEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerEmail

`func (o *AdminSandboxSpawnResponseData) SetOwnerEmail(v string)`

SetOwnerEmail sets OwnerEmail field to given value.

### HasOwnerEmail

`func (o *AdminSandboxSpawnResponseData) HasOwnerEmail() bool`

HasOwnerEmail returns a boolean if a field has been set.

### SetOwnerEmailNil

`func (o *AdminSandboxSpawnResponseData) SetOwnerEmailNil(b bool)`

 SetOwnerEmailNil sets the value for OwnerEmail to be an explicit nil

### UnsetOwnerEmail
`func (o *AdminSandboxSpawnResponseData) UnsetOwnerEmail()`

UnsetOwnerEmail ensures that no value is present for OwnerEmail, not even an explicit nil
### GetSpawnedFrom

`func (o *AdminSandboxSpawnResponseData) GetSpawnedFrom() string`

GetSpawnedFrom returns the SpawnedFrom field if non-nil, zero value otherwise.

### GetSpawnedFromOk

`func (o *AdminSandboxSpawnResponseData) GetSpawnedFromOk() (*string, bool)`

GetSpawnedFromOk returns a tuple with the SpawnedFrom field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpawnedFrom

`func (o *AdminSandboxSpawnResponseData) SetSpawnedFrom(v string)`

SetSpawnedFrom sets SpawnedFrom field to given value.

### HasSpawnedFrom

`func (o *AdminSandboxSpawnResponseData) HasSpawnedFrom() bool`

HasSpawnedFrom returns a boolean if a field has been set.

### SetSpawnedFromNil

`func (o *AdminSandboxSpawnResponseData) SetSpawnedFromNil(b bool)`

 SetSpawnedFromNil sets the value for SpawnedFrom to be an explicit nil

### UnsetSpawnedFrom
`func (o *AdminSandboxSpawnResponseData) UnsetSpawnedFrom()`

UnsetSpawnedFrom ensures that no value is present for SpawnedFrom, not even an explicit nil
### GetApiKey

`func (o *AdminSandboxSpawnResponseData) GetApiKey() string`

GetApiKey returns the ApiKey field if non-nil, zero value otherwise.

### GetApiKeyOk

`func (o *AdminSandboxSpawnResponseData) GetApiKeyOk() (*string, bool)`

GetApiKeyOk returns a tuple with the ApiKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApiKey

`func (o *AdminSandboxSpawnResponseData) SetApiKey(v string)`

SetApiKey sets ApiKey field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


