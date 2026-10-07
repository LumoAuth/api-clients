# SandboxTenant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Slug** | **string** |  | 
**Name** | **string** |  | 
**CreatedAt** | **time.Time** |  | 
**ExpiresAt** | Pointer to **NullableTime** |  | [optional] 
**OwnerEmail** | Pointer to **NullableString** |  | [optional] 
**SpawnedFrom** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewSandboxTenant

`func NewSandboxTenant(slug string, name string, createdAt time.Time, ) *SandboxTenant`

NewSandboxTenant instantiates a new SandboxTenant object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSandboxTenantWithDefaults

`func NewSandboxTenantWithDefaults() *SandboxTenant`

NewSandboxTenantWithDefaults instantiates a new SandboxTenant object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSlug

`func (o *SandboxTenant) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *SandboxTenant) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *SandboxTenant) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetName

`func (o *SandboxTenant) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SandboxTenant) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SandboxTenant) SetName(v string)`

SetName sets Name field to given value.


### GetCreatedAt

`func (o *SandboxTenant) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *SandboxTenant) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *SandboxTenant) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetExpiresAt

`func (o *SandboxTenant) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *SandboxTenant) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *SandboxTenant) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *SandboxTenant) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### SetExpiresAtNil

`func (o *SandboxTenant) SetExpiresAtNil(b bool)`

 SetExpiresAtNil sets the value for ExpiresAt to be an explicit nil

### UnsetExpiresAt
`func (o *SandboxTenant) UnsetExpiresAt()`

UnsetExpiresAt ensures that no value is present for ExpiresAt, not even an explicit nil
### GetOwnerEmail

`func (o *SandboxTenant) GetOwnerEmail() string`

GetOwnerEmail returns the OwnerEmail field if non-nil, zero value otherwise.

### GetOwnerEmailOk

`func (o *SandboxTenant) GetOwnerEmailOk() (*string, bool)`

GetOwnerEmailOk returns a tuple with the OwnerEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerEmail

`func (o *SandboxTenant) SetOwnerEmail(v string)`

SetOwnerEmail sets OwnerEmail field to given value.

### HasOwnerEmail

`func (o *SandboxTenant) HasOwnerEmail() bool`

HasOwnerEmail returns a boolean if a field has been set.

### SetOwnerEmailNil

`func (o *SandboxTenant) SetOwnerEmailNil(b bool)`

 SetOwnerEmailNil sets the value for OwnerEmail to be an explicit nil

### UnsetOwnerEmail
`func (o *SandboxTenant) UnsetOwnerEmail()`

UnsetOwnerEmail ensures that no value is present for OwnerEmail, not even an explicit nil
### GetSpawnedFrom

`func (o *SandboxTenant) GetSpawnedFrom() string`

GetSpawnedFrom returns the SpawnedFrom field if non-nil, zero value otherwise.

### GetSpawnedFromOk

`func (o *SandboxTenant) GetSpawnedFromOk() (*string, bool)`

GetSpawnedFromOk returns a tuple with the SpawnedFrom field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpawnedFrom

`func (o *SandboxTenant) SetSpawnedFrom(v string)`

SetSpawnedFrom sets SpawnedFrom field to given value.

### HasSpawnedFrom

`func (o *SandboxTenant) HasSpawnedFrom() bool`

HasSpawnedFrom returns a boolean if a field has been set.

### SetSpawnedFromNil

`func (o *SandboxTenant) SetSpawnedFromNil(b bool)`

 SetSpawnedFromNil sets the value for SpawnedFrom to be an explicit nil

### UnsetSpawnedFrom
`func (o *SandboxTenant) UnsetSpawnedFrom()`

UnsetSpawnedFrom ensures that no value is present for SpawnedFrom, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


