# GenerateRecoveryCodesResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Codes** | Pointer to **[]string** |  | [optional] 
**Remaining** | Pointer to **int32** |  | [optional] 
**GeneratedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewGenerateRecoveryCodesResponse

`func NewGenerateRecoveryCodesResponse() *GenerateRecoveryCodesResponse`

NewGenerateRecoveryCodesResponse instantiates a new GenerateRecoveryCodesResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGenerateRecoveryCodesResponseWithDefaults

`func NewGenerateRecoveryCodesResponseWithDefaults() *GenerateRecoveryCodesResponse`

NewGenerateRecoveryCodesResponseWithDefaults instantiates a new GenerateRecoveryCodesResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCodes

`func (o *GenerateRecoveryCodesResponse) GetCodes() []string`

GetCodes returns the Codes field if non-nil, zero value otherwise.

### GetCodesOk

`func (o *GenerateRecoveryCodesResponse) GetCodesOk() (*[]string, bool)`

GetCodesOk returns a tuple with the Codes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodes

`func (o *GenerateRecoveryCodesResponse) SetCodes(v []string)`

SetCodes sets Codes field to given value.

### HasCodes

`func (o *GenerateRecoveryCodesResponse) HasCodes() bool`

HasCodes returns a boolean if a field has been set.

### GetRemaining

`func (o *GenerateRecoveryCodesResponse) GetRemaining() int32`

GetRemaining returns the Remaining field if non-nil, zero value otherwise.

### GetRemainingOk

`func (o *GenerateRecoveryCodesResponse) GetRemainingOk() (*int32, bool)`

GetRemainingOk returns a tuple with the Remaining field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemaining

`func (o *GenerateRecoveryCodesResponse) SetRemaining(v int32)`

SetRemaining sets Remaining field to given value.

### HasRemaining

`func (o *GenerateRecoveryCodesResponse) HasRemaining() bool`

HasRemaining returns a boolean if a field has been set.

### GetGeneratedAt

`func (o *GenerateRecoveryCodesResponse) GetGeneratedAt() time.Time`

GetGeneratedAt returns the GeneratedAt field if non-nil, zero value otherwise.

### GetGeneratedAtOk

`func (o *GenerateRecoveryCodesResponse) GetGeneratedAtOk() (*time.Time, bool)`

GetGeneratedAtOk returns a tuple with the GeneratedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedAt

`func (o *GenerateRecoveryCodesResponse) SetGeneratedAt(v time.Time)`

SetGeneratedAt sets GeneratedAt field to given value.

### HasGeneratedAt

`func (o *GenerateRecoveryCodesResponse) HasGeneratedAt() bool`

HasGeneratedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


