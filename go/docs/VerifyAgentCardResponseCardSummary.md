# VerifyAgentCardResponseCardSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtocolVersion** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Url** | Pointer to **NullableString** |  | [optional] 
**Version** | Pointer to **NullableString** |  | [optional] 
**Provider** | Pointer to **map[string]interface{}** |  | [optional] 
**Skills** | Pointer to **int32** | Number of skills declared on the card. | [optional] 

## Methods

### NewVerifyAgentCardResponseCardSummary

`func NewVerifyAgentCardResponseCardSummary() *VerifyAgentCardResponseCardSummary`

NewVerifyAgentCardResponseCardSummary instantiates a new VerifyAgentCardResponseCardSummary object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyAgentCardResponseCardSummaryWithDefaults

`func NewVerifyAgentCardResponseCardSummaryWithDefaults() *VerifyAgentCardResponseCardSummary`

NewVerifyAgentCardResponseCardSummaryWithDefaults instantiates a new VerifyAgentCardResponseCardSummary object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProtocolVersion

`func (o *VerifyAgentCardResponseCardSummary) GetProtocolVersion() string`

GetProtocolVersion returns the ProtocolVersion field if non-nil, zero value otherwise.

### GetProtocolVersionOk

`func (o *VerifyAgentCardResponseCardSummary) GetProtocolVersionOk() (*string, bool)`

GetProtocolVersionOk returns a tuple with the ProtocolVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocolVersion

`func (o *VerifyAgentCardResponseCardSummary) SetProtocolVersion(v string)`

SetProtocolVersion sets ProtocolVersion field to given value.

### HasProtocolVersion

`func (o *VerifyAgentCardResponseCardSummary) HasProtocolVersion() bool`

HasProtocolVersion returns a boolean if a field has been set.

### SetProtocolVersionNil

`func (o *VerifyAgentCardResponseCardSummary) SetProtocolVersionNil(b bool)`

 SetProtocolVersionNil sets the value for ProtocolVersion to be an explicit nil

### UnsetProtocolVersion
`func (o *VerifyAgentCardResponseCardSummary) UnsetProtocolVersion()`

UnsetProtocolVersion ensures that no value is present for ProtocolVersion, not even an explicit nil
### GetName

`func (o *VerifyAgentCardResponseCardSummary) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *VerifyAgentCardResponseCardSummary) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *VerifyAgentCardResponseCardSummary) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *VerifyAgentCardResponseCardSummary) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *VerifyAgentCardResponseCardSummary) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *VerifyAgentCardResponseCardSummary) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetUrl

`func (o *VerifyAgentCardResponseCardSummary) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *VerifyAgentCardResponseCardSummary) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *VerifyAgentCardResponseCardSummary) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *VerifyAgentCardResponseCardSummary) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### SetUrlNil

`func (o *VerifyAgentCardResponseCardSummary) SetUrlNil(b bool)`

 SetUrlNil sets the value for Url to be an explicit nil

### UnsetUrl
`func (o *VerifyAgentCardResponseCardSummary) UnsetUrl()`

UnsetUrl ensures that no value is present for Url, not even an explicit nil
### GetVersion

`func (o *VerifyAgentCardResponseCardSummary) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *VerifyAgentCardResponseCardSummary) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *VerifyAgentCardResponseCardSummary) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *VerifyAgentCardResponseCardSummary) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### SetVersionNil

`func (o *VerifyAgentCardResponseCardSummary) SetVersionNil(b bool)`

 SetVersionNil sets the value for Version to be an explicit nil

### UnsetVersion
`func (o *VerifyAgentCardResponseCardSummary) UnsetVersion()`

UnsetVersion ensures that no value is present for Version, not even an explicit nil
### GetProvider

`func (o *VerifyAgentCardResponseCardSummary) GetProvider() map[string]interface{}`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *VerifyAgentCardResponseCardSummary) GetProviderOk() (*map[string]interface{}, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *VerifyAgentCardResponseCardSummary) SetProvider(v map[string]interface{})`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *VerifyAgentCardResponseCardSummary) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### SetProviderNil

`func (o *VerifyAgentCardResponseCardSummary) SetProviderNil(b bool)`

 SetProviderNil sets the value for Provider to be an explicit nil

### UnsetProvider
`func (o *VerifyAgentCardResponseCardSummary) UnsetProvider()`

UnsetProvider ensures that no value is present for Provider, not even an explicit nil
### GetSkills

`func (o *VerifyAgentCardResponseCardSummary) GetSkills() int32`

GetSkills returns the Skills field if non-nil, zero value otherwise.

### GetSkillsOk

`func (o *VerifyAgentCardResponseCardSummary) GetSkillsOk() (*int32, bool)`

GetSkillsOk returns a tuple with the Skills field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkills

`func (o *VerifyAgentCardResponseCardSummary) SetSkills(v int32)`

SetSkills sets Skills field to given value.

### HasSkills

`func (o *VerifyAgentCardResponseCardSummary) HasSkills() bool`

HasSkills returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


