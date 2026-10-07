# GetMfaPolicyResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**MfaPolicy**](MfaPolicy.md) |  | [optional] 
**EffectiveAllowedFactors** | Pointer to **[]string** |  | [optional] 

## Methods

### NewGetMfaPolicyResponse

`func NewGetMfaPolicyResponse() *GetMfaPolicyResponse`

NewGetMfaPolicyResponse instantiates a new GetMfaPolicyResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetMfaPolicyResponseWithDefaults

`func NewGetMfaPolicyResponseWithDefaults() *GetMfaPolicyResponse`

NewGetMfaPolicyResponseWithDefaults instantiates a new GetMfaPolicyResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *GetMfaPolicyResponse) GetData() MfaPolicy`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *GetMfaPolicyResponse) GetDataOk() (*MfaPolicy, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *GetMfaPolicyResponse) SetData(v MfaPolicy)`

SetData sets Data field to given value.

### HasData

`func (o *GetMfaPolicyResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetEffectiveAllowedFactors

`func (o *GetMfaPolicyResponse) GetEffectiveAllowedFactors() []string`

GetEffectiveAllowedFactors returns the EffectiveAllowedFactors field if non-nil, zero value otherwise.

### GetEffectiveAllowedFactorsOk

`func (o *GetMfaPolicyResponse) GetEffectiveAllowedFactorsOk() (*[]string, bool)`

GetEffectiveAllowedFactorsOk returns a tuple with the EffectiveAllowedFactors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveAllowedFactors

`func (o *GetMfaPolicyResponse) SetEffectiveAllowedFactors(v []string)`

SetEffectiveAllowedFactors sets EffectiveAllowedFactors field to given value.

### HasEffectiveAllowedFactors

`func (o *GetMfaPolicyResponse) HasEffectiveAllowedFactors() bool`

HasEffectiveAllowedFactors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


