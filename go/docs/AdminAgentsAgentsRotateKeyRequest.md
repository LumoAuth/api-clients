# AdminAgentsAgentsRotateKeyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiKeyExpiresInDays** | Pointer to **NullableInt32** | Days until the new key expires; null for a key that never expires. | [optional] 
**ApiKeyExpiresAt** | Pointer to **NullableTime** | Exact expiry of the new key (ISO 8601, in the future); null for never. Ignored when apiKeyExpiresInDays is sent. | [optional] 

## Methods

### NewAdminAgentsAgentsRotateKeyRequest

`func NewAdminAgentsAgentsRotateKeyRequest() *AdminAgentsAgentsRotateKeyRequest`

NewAdminAgentsAgentsRotateKeyRequest instantiates a new AdminAgentsAgentsRotateKeyRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAgentsAgentsRotateKeyRequestWithDefaults

`func NewAdminAgentsAgentsRotateKeyRequestWithDefaults() *AdminAgentsAgentsRotateKeyRequest`

NewAdminAgentsAgentsRotateKeyRequestWithDefaults instantiates a new AdminAgentsAgentsRotateKeyRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApiKeyExpiresInDays

`func (o *AdminAgentsAgentsRotateKeyRequest) GetApiKeyExpiresInDays() int32`

GetApiKeyExpiresInDays returns the ApiKeyExpiresInDays field if non-nil, zero value otherwise.

### GetApiKeyExpiresInDaysOk

`func (o *AdminAgentsAgentsRotateKeyRequest) GetApiKeyExpiresInDaysOk() (*int32, bool)`

GetApiKeyExpiresInDaysOk returns a tuple with the ApiKeyExpiresInDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApiKeyExpiresInDays

`func (o *AdminAgentsAgentsRotateKeyRequest) SetApiKeyExpiresInDays(v int32)`

SetApiKeyExpiresInDays sets ApiKeyExpiresInDays field to given value.

### HasApiKeyExpiresInDays

`func (o *AdminAgentsAgentsRotateKeyRequest) HasApiKeyExpiresInDays() bool`

HasApiKeyExpiresInDays returns a boolean if a field has been set.

### SetApiKeyExpiresInDaysNil

`func (o *AdminAgentsAgentsRotateKeyRequest) SetApiKeyExpiresInDaysNil(b bool)`

 SetApiKeyExpiresInDaysNil sets the value for ApiKeyExpiresInDays to be an explicit nil

### UnsetApiKeyExpiresInDays
`func (o *AdminAgentsAgentsRotateKeyRequest) UnsetApiKeyExpiresInDays()`

UnsetApiKeyExpiresInDays ensures that no value is present for ApiKeyExpiresInDays, not even an explicit nil
### GetApiKeyExpiresAt

`func (o *AdminAgentsAgentsRotateKeyRequest) GetApiKeyExpiresAt() time.Time`

GetApiKeyExpiresAt returns the ApiKeyExpiresAt field if non-nil, zero value otherwise.

### GetApiKeyExpiresAtOk

`func (o *AdminAgentsAgentsRotateKeyRequest) GetApiKeyExpiresAtOk() (*time.Time, bool)`

GetApiKeyExpiresAtOk returns a tuple with the ApiKeyExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApiKeyExpiresAt

`func (o *AdminAgentsAgentsRotateKeyRequest) SetApiKeyExpiresAt(v time.Time)`

SetApiKeyExpiresAt sets ApiKeyExpiresAt field to given value.

### HasApiKeyExpiresAt

`func (o *AdminAgentsAgentsRotateKeyRequest) HasApiKeyExpiresAt() bool`

HasApiKeyExpiresAt returns a boolean if a field has been set.

### SetApiKeyExpiresAtNil

`func (o *AdminAgentsAgentsRotateKeyRequest) SetApiKeyExpiresAtNil(b bool)`

 SetApiKeyExpiresAtNil sets the value for ApiKeyExpiresAt to be an explicit nil

### UnsetApiKeyExpiresAt
`func (o *AdminAgentsAgentsRotateKeyRequest) UnsetApiKeyExpiresAt()`

UnsetApiKeyExpiresAt ensures that no value is present for ApiKeyExpiresAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


