# GetRecoveryCodeStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Remaining** | Pointer to **NullableInt32** |  | [optional] 
**GeneratedAt** | Pointer to **NullableTime** |  | [optional] 
**Low** | Pointer to **bool** |  | [optional] 

## Methods

### NewGetRecoveryCodeStatusResponse

`func NewGetRecoveryCodeStatusResponse() *GetRecoveryCodeStatusResponse`

NewGetRecoveryCodeStatusResponse instantiates a new GetRecoveryCodeStatusResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRecoveryCodeStatusResponseWithDefaults

`func NewGetRecoveryCodeStatusResponseWithDefaults() *GetRecoveryCodeStatusResponse`

NewGetRecoveryCodeStatusResponseWithDefaults instantiates a new GetRecoveryCodeStatusResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRemaining

`func (o *GetRecoveryCodeStatusResponse) GetRemaining() int32`

GetRemaining returns the Remaining field if non-nil, zero value otherwise.

### GetRemainingOk

`func (o *GetRecoveryCodeStatusResponse) GetRemainingOk() (*int32, bool)`

GetRemainingOk returns a tuple with the Remaining field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemaining

`func (o *GetRecoveryCodeStatusResponse) SetRemaining(v int32)`

SetRemaining sets Remaining field to given value.

### HasRemaining

`func (o *GetRecoveryCodeStatusResponse) HasRemaining() bool`

HasRemaining returns a boolean if a field has been set.

### SetRemainingNil

`func (o *GetRecoveryCodeStatusResponse) SetRemainingNil(b bool)`

 SetRemainingNil sets the value for Remaining to be an explicit nil

### UnsetRemaining
`func (o *GetRecoveryCodeStatusResponse) UnsetRemaining()`

UnsetRemaining ensures that no value is present for Remaining, not even an explicit nil
### GetGeneratedAt

`func (o *GetRecoveryCodeStatusResponse) GetGeneratedAt() time.Time`

GetGeneratedAt returns the GeneratedAt field if non-nil, zero value otherwise.

### GetGeneratedAtOk

`func (o *GetRecoveryCodeStatusResponse) GetGeneratedAtOk() (*time.Time, bool)`

GetGeneratedAtOk returns a tuple with the GeneratedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedAt

`func (o *GetRecoveryCodeStatusResponse) SetGeneratedAt(v time.Time)`

SetGeneratedAt sets GeneratedAt field to given value.

### HasGeneratedAt

`func (o *GetRecoveryCodeStatusResponse) HasGeneratedAt() bool`

HasGeneratedAt returns a boolean if a field has been set.

### SetGeneratedAtNil

`func (o *GetRecoveryCodeStatusResponse) SetGeneratedAtNil(b bool)`

 SetGeneratedAtNil sets the value for GeneratedAt to be an explicit nil

### UnsetGeneratedAt
`func (o *GetRecoveryCodeStatusResponse) UnsetGeneratedAt()`

UnsetGeneratedAt ensures that no value is present for GeneratedAt, not even an explicit nil
### GetLow

`func (o *GetRecoveryCodeStatusResponse) GetLow() bool`

GetLow returns the Low field if non-nil, zero value otherwise.

### GetLowOk

`func (o *GetRecoveryCodeStatusResponse) GetLowOk() (*bool, bool)`

GetLowOk returns a tuple with the Low field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLow

`func (o *GetRecoveryCodeStatusResponse) SetLow(v bool)`

SetLow sets Low field to given value.

### HasLow

`func (o *GetRecoveryCodeStatusResponse) HasLow() bool`

HasLow returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


