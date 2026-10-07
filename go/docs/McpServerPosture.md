# McpServerPosture

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Passes** | Pointer to **int32** |  | [optional] 
**Applicable** | Pointer to **int32** |  | [optional] 
**Checks** | Pointer to [**[]McpServerPostureChecksInner**](McpServerPostureChecksInner.md) |  | [optional] 

## Methods

### NewMcpServerPosture

`func NewMcpServerPosture() *McpServerPosture`

NewMcpServerPosture instantiates a new McpServerPosture object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMcpServerPostureWithDefaults

`func NewMcpServerPostureWithDefaults() *McpServerPosture`

NewMcpServerPostureWithDefaults instantiates a new McpServerPosture object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLevel

`func (o *McpServerPosture) GetLevel() string`

GetLevel returns the Level field if non-nil, zero value otherwise.

### GetLevelOk

`func (o *McpServerPosture) GetLevelOk() (*string, bool)`

GetLevelOk returns a tuple with the Level field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLevel

`func (o *McpServerPosture) SetLevel(v string)`

SetLevel sets Level field to given value.

### HasLevel

`func (o *McpServerPosture) HasLevel() bool`

HasLevel returns a boolean if a field has been set.

### GetLabel

`func (o *McpServerPosture) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *McpServerPosture) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *McpServerPosture) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *McpServerPosture) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetPasses

`func (o *McpServerPosture) GetPasses() int32`

GetPasses returns the Passes field if non-nil, zero value otherwise.

### GetPassesOk

`func (o *McpServerPosture) GetPassesOk() (*int32, bool)`

GetPassesOk returns a tuple with the Passes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasses

`func (o *McpServerPosture) SetPasses(v int32)`

SetPasses sets Passes field to given value.

### HasPasses

`func (o *McpServerPosture) HasPasses() bool`

HasPasses returns a boolean if a field has been set.

### GetApplicable

`func (o *McpServerPosture) GetApplicable() int32`

GetApplicable returns the Applicable field if non-nil, zero value otherwise.

### GetApplicableOk

`func (o *McpServerPosture) GetApplicableOk() (*int32, bool)`

GetApplicableOk returns a tuple with the Applicable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplicable

`func (o *McpServerPosture) SetApplicable(v int32)`

SetApplicable sets Applicable field to given value.

### HasApplicable

`func (o *McpServerPosture) HasApplicable() bool`

HasApplicable returns a boolean if a field has been set.

### GetChecks

`func (o *McpServerPosture) GetChecks() []McpServerPostureChecksInner`

GetChecks returns the Checks field if non-nil, zero value otherwise.

### GetChecksOk

`func (o *McpServerPosture) GetChecksOk() (*[]McpServerPostureChecksInner, bool)`

GetChecksOk returns a tuple with the Checks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChecks

`func (o *McpServerPosture) SetChecks(v []McpServerPostureChecksInner)`

SetChecks sets Checks field to given value.

### HasChecks

`func (o *McpServerPosture) HasChecks() bool`

HasChecks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


