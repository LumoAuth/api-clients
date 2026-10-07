# SignedAgentCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtocolVersion** | **string** |  | 
**Name** | **string** |  | 
**Description** | **string** |  | 
**Url** | **string** | The agent&#39;s A2A endpoint. | 
**PreferredTransport** | **string** |  | 
**Provider** | [**GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  | 
**Capabilities** | [**GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  | 
**DefaultInputModes** | **[]string** |  | 
**DefaultOutputModes** | **[]string** |  | 
**SecuritySchemes** | **map[string]interface{}** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization&#39;s token endpoint and lists the agent&#39;s capabilities as scopes. | 
**Security** | [**[]map[string][]string**](map[string][]string.md) | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. | 
**Skills** | [**[]GetAgentCardResponseSkillsItem**](GetAgentCardResponseSkillsItem.md) |  | 
**Version** | **string** | Declared metadata version suffixed with a content digest. | 
**Signatures** | [**[]GetAgentCardResponseSignaturesItem**](GetAgentCardResponseSignaturesItem.md) |  | 

## Methods

### NewSignedAgentCard

`func NewSignedAgentCard(protocolVersion string, name string, description string, url string, preferredTransport string, provider GetAgentCardResponseProvider, capabilities GetAgentCardResponseCapabilities, defaultInputModes []string, defaultOutputModes []string, securitySchemes map[string]interface{}, security []map[string][]string, skills []GetAgentCardResponseSkillsItem, version string, signatures []GetAgentCardResponseSignaturesItem, ) *SignedAgentCard`

NewSignedAgentCard instantiates a new SignedAgentCard object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSignedAgentCardWithDefaults

`func NewSignedAgentCardWithDefaults() *SignedAgentCard`

NewSignedAgentCardWithDefaults instantiates a new SignedAgentCard object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProtocolVersion

`func (o *SignedAgentCard) GetProtocolVersion() string`

GetProtocolVersion returns the ProtocolVersion field if non-nil, zero value otherwise.

### GetProtocolVersionOk

`func (o *SignedAgentCard) GetProtocolVersionOk() (*string, bool)`

GetProtocolVersionOk returns a tuple with the ProtocolVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocolVersion

`func (o *SignedAgentCard) SetProtocolVersion(v string)`

SetProtocolVersion sets ProtocolVersion field to given value.


### GetName

`func (o *SignedAgentCard) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SignedAgentCard) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SignedAgentCard) SetName(v string)`

SetName sets Name field to given value.


### GetDescription

`func (o *SignedAgentCard) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SignedAgentCard) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SignedAgentCard) SetDescription(v string)`

SetDescription sets Description field to given value.


### GetUrl

`func (o *SignedAgentCard) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *SignedAgentCard) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *SignedAgentCard) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetPreferredTransport

`func (o *SignedAgentCard) GetPreferredTransport() string`

GetPreferredTransport returns the PreferredTransport field if non-nil, zero value otherwise.

### GetPreferredTransportOk

`func (o *SignedAgentCard) GetPreferredTransportOk() (*string, bool)`

GetPreferredTransportOk returns a tuple with the PreferredTransport field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreferredTransport

`func (o *SignedAgentCard) SetPreferredTransport(v string)`

SetPreferredTransport sets PreferredTransport field to given value.


### GetProvider

`func (o *SignedAgentCard) GetProvider() GetAgentCardResponseProvider`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *SignedAgentCard) GetProviderOk() (*GetAgentCardResponseProvider, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *SignedAgentCard) SetProvider(v GetAgentCardResponseProvider)`

SetProvider sets Provider field to given value.


### GetCapabilities

`func (o *SignedAgentCard) GetCapabilities() GetAgentCardResponseCapabilities`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *SignedAgentCard) GetCapabilitiesOk() (*GetAgentCardResponseCapabilities, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *SignedAgentCard) SetCapabilities(v GetAgentCardResponseCapabilities)`

SetCapabilities sets Capabilities field to given value.


### GetDefaultInputModes

`func (o *SignedAgentCard) GetDefaultInputModes() []string`

GetDefaultInputModes returns the DefaultInputModes field if non-nil, zero value otherwise.

### GetDefaultInputModesOk

`func (o *SignedAgentCard) GetDefaultInputModesOk() (*[]string, bool)`

GetDefaultInputModesOk returns a tuple with the DefaultInputModes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultInputModes

`func (o *SignedAgentCard) SetDefaultInputModes(v []string)`

SetDefaultInputModes sets DefaultInputModes field to given value.


### GetDefaultOutputModes

`func (o *SignedAgentCard) GetDefaultOutputModes() []string`

GetDefaultOutputModes returns the DefaultOutputModes field if non-nil, zero value otherwise.

### GetDefaultOutputModesOk

`func (o *SignedAgentCard) GetDefaultOutputModesOk() (*[]string, bool)`

GetDefaultOutputModesOk returns a tuple with the DefaultOutputModes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultOutputModes

`func (o *SignedAgentCard) SetDefaultOutputModes(v []string)`

SetDefaultOutputModes sets DefaultOutputModes field to given value.


### GetSecuritySchemes

`func (o *SignedAgentCard) GetSecuritySchemes() map[string]interface{}`

GetSecuritySchemes returns the SecuritySchemes field if non-nil, zero value otherwise.

### GetSecuritySchemesOk

`func (o *SignedAgentCard) GetSecuritySchemesOk() (*map[string]interface{}, bool)`

GetSecuritySchemesOk returns a tuple with the SecuritySchemes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecuritySchemes

`func (o *SignedAgentCard) SetSecuritySchemes(v map[string]interface{})`

SetSecuritySchemes sets SecuritySchemes field to given value.


### GetSecurity

`func (o *SignedAgentCard) GetSecurity() []map[string][]string`

GetSecurity returns the Security field if non-nil, zero value otherwise.

### GetSecurityOk

`func (o *SignedAgentCard) GetSecurityOk() (*[]map[string][]string, bool)`

GetSecurityOk returns a tuple with the Security field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurity

`func (o *SignedAgentCard) SetSecurity(v []map[string][]string)`

SetSecurity sets Security field to given value.


### GetSkills

`func (o *SignedAgentCard) GetSkills() []GetAgentCardResponseSkillsItem`

GetSkills returns the Skills field if non-nil, zero value otherwise.

### GetSkillsOk

`func (o *SignedAgentCard) GetSkillsOk() (*[]GetAgentCardResponseSkillsItem, bool)`

GetSkillsOk returns a tuple with the Skills field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkills

`func (o *SignedAgentCard) SetSkills(v []GetAgentCardResponseSkillsItem)`

SetSkills sets Skills field to given value.


### GetVersion

`func (o *SignedAgentCard) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *SignedAgentCard) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *SignedAgentCard) SetVersion(v string)`

SetVersion sets Version field to given value.


### GetSignatures

`func (o *SignedAgentCard) GetSignatures() []GetAgentCardResponseSignaturesItem`

GetSignatures returns the Signatures field if non-nil, zero value otherwise.

### GetSignaturesOk

`func (o *SignedAgentCard) GetSignaturesOk() (*[]GetAgentCardResponseSignaturesItem, bool)`

GetSignaturesOk returns a tuple with the Signatures field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignatures

`func (o *SignedAgentCard) SetSignatures(v []GetAgentCardResponseSignaturesItem)`

SetSignatures sets Signatures field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


