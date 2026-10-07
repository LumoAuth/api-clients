# ListMyAuthenticatorsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | Pointer to **string** |  | [optional] 
**Default** | Pointer to **NullableString** |  | [optional] 
**Authenticators** | Pointer to [**[]MfaAuthenticator**](MfaAuthenticator.md) |  | [optional] 
**RecoveryCodes** | Pointer to [**ListMyAuthenticatorsResponseRecoveryCodes**](ListMyAuthenticatorsResponseRecoveryCodes.md) |  | [optional] 
**AllowedTypes** | Pointer to **[]string** |  | [optional] 
**RecommendedType** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewListMyAuthenticatorsResponse

`func NewListMyAuthenticatorsResponse() *ListMyAuthenticatorsResponse`

NewListMyAuthenticatorsResponse instantiates a new ListMyAuthenticatorsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListMyAuthenticatorsResponseWithDefaults

`func NewListMyAuthenticatorsResponseWithDefaults() *ListMyAuthenticatorsResponse`

NewListMyAuthenticatorsResponseWithDefaults instantiates a new ListMyAuthenticatorsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *ListMyAuthenticatorsResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ListMyAuthenticatorsResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ListMyAuthenticatorsResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ListMyAuthenticatorsResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetDefault

`func (o *ListMyAuthenticatorsResponse) GetDefault() string`

GetDefault returns the Default field if non-nil, zero value otherwise.

### GetDefaultOk

`func (o *ListMyAuthenticatorsResponse) GetDefaultOk() (*string, bool)`

GetDefaultOk returns a tuple with the Default field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefault

`func (o *ListMyAuthenticatorsResponse) SetDefault(v string)`

SetDefault sets Default field to given value.

### HasDefault

`func (o *ListMyAuthenticatorsResponse) HasDefault() bool`

HasDefault returns a boolean if a field has been set.

### SetDefaultNil

`func (o *ListMyAuthenticatorsResponse) SetDefaultNil(b bool)`

 SetDefaultNil sets the value for Default to be an explicit nil

### UnsetDefault
`func (o *ListMyAuthenticatorsResponse) UnsetDefault()`

UnsetDefault ensures that no value is present for Default, not even an explicit nil
### GetAuthenticators

`func (o *ListMyAuthenticatorsResponse) GetAuthenticators() []MfaAuthenticator`

GetAuthenticators returns the Authenticators field if non-nil, zero value otherwise.

### GetAuthenticatorsOk

`func (o *ListMyAuthenticatorsResponse) GetAuthenticatorsOk() (*[]MfaAuthenticator, bool)`

GetAuthenticatorsOk returns a tuple with the Authenticators field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthenticators

`func (o *ListMyAuthenticatorsResponse) SetAuthenticators(v []MfaAuthenticator)`

SetAuthenticators sets Authenticators field to given value.

### HasAuthenticators

`func (o *ListMyAuthenticatorsResponse) HasAuthenticators() bool`

HasAuthenticators returns a boolean if a field has been set.

### GetRecoveryCodes

`func (o *ListMyAuthenticatorsResponse) GetRecoveryCodes() ListMyAuthenticatorsResponseRecoveryCodes`

GetRecoveryCodes returns the RecoveryCodes field if non-nil, zero value otherwise.

### GetRecoveryCodesOk

`func (o *ListMyAuthenticatorsResponse) GetRecoveryCodesOk() (*ListMyAuthenticatorsResponseRecoveryCodes, bool)`

GetRecoveryCodesOk returns a tuple with the RecoveryCodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecoveryCodes

`func (o *ListMyAuthenticatorsResponse) SetRecoveryCodes(v ListMyAuthenticatorsResponseRecoveryCodes)`

SetRecoveryCodes sets RecoveryCodes field to given value.

### HasRecoveryCodes

`func (o *ListMyAuthenticatorsResponse) HasRecoveryCodes() bool`

HasRecoveryCodes returns a boolean if a field has been set.

### GetAllowedTypes

`func (o *ListMyAuthenticatorsResponse) GetAllowedTypes() []string`

GetAllowedTypes returns the AllowedTypes field if non-nil, zero value otherwise.

### GetAllowedTypesOk

`func (o *ListMyAuthenticatorsResponse) GetAllowedTypesOk() (*[]string, bool)`

GetAllowedTypesOk returns a tuple with the AllowedTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedTypes

`func (o *ListMyAuthenticatorsResponse) SetAllowedTypes(v []string)`

SetAllowedTypes sets AllowedTypes field to given value.

### HasAllowedTypes

`func (o *ListMyAuthenticatorsResponse) HasAllowedTypes() bool`

HasAllowedTypes returns a boolean if a field has been set.

### GetRecommendedType

`func (o *ListMyAuthenticatorsResponse) GetRecommendedType() string`

GetRecommendedType returns the RecommendedType field if non-nil, zero value otherwise.

### GetRecommendedTypeOk

`func (o *ListMyAuthenticatorsResponse) GetRecommendedTypeOk() (*string, bool)`

GetRecommendedTypeOk returns a tuple with the RecommendedType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecommendedType

`func (o *ListMyAuthenticatorsResponse) SetRecommendedType(v string)`

SetRecommendedType sets RecommendedType field to given value.

### HasRecommendedType

`func (o *ListMyAuthenticatorsResponse) HasRecommendedType() bool`

HasRecommendedType returns a boolean if a field has been set.

### SetRecommendedTypeNil

`func (o *ListMyAuthenticatorsResponse) SetRecommendedTypeNil(b bool)`

 SetRecommendedTypeNil sets the value for RecommendedType to be an explicit nil

### UnsetRecommendedType
`func (o *ListMyAuthenticatorsResponse) UnsetRecommendedType()`

UnsetRecommendedType ensures that no value is present for RecommendedType, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


