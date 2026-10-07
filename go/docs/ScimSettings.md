# ScimSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Inbound** | Pointer to [**ScimSettingsInbound**](ScimSettingsInbound.md) |  | [optional] 
**Outbound** | Pointer to [**ScimSettingsOutbound**](ScimSettingsOutbound.md) |  | [optional] 

## Methods

### NewScimSettings

`func NewScimSettings() *ScimSettings`

NewScimSettings instantiates a new ScimSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewScimSettingsWithDefaults

`func NewScimSettingsWithDefaults() *ScimSettings`

NewScimSettingsWithDefaults instantiates a new ScimSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInbound

`func (o *ScimSettings) GetInbound() ScimSettingsInbound`

GetInbound returns the Inbound field if non-nil, zero value otherwise.

### GetInboundOk

`func (o *ScimSettings) GetInboundOk() (*ScimSettingsInbound, bool)`

GetInboundOk returns a tuple with the Inbound field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInbound

`func (o *ScimSettings) SetInbound(v ScimSettingsInbound)`

SetInbound sets Inbound field to given value.

### HasInbound

`func (o *ScimSettings) HasInbound() bool`

HasInbound returns a boolean if a field has been set.

### GetOutbound

`func (o *ScimSettings) GetOutbound() ScimSettingsOutbound`

GetOutbound returns the Outbound field if non-nil, zero value otherwise.

### GetOutboundOk

`func (o *ScimSettings) GetOutboundOk() (*ScimSettingsOutbound, bool)`

GetOutboundOk returns a tuple with the Outbound field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOutbound

`func (o *ScimSettings) SetOutbound(v ScimSettingsOutbound)`

SetOutbound sets Outbound field to given value.

### HasOutbound

`func (o *ScimSettings) HasOutbound() bool`

HasOutbound returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


