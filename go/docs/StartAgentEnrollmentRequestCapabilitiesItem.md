# StartAgentEnrollmentRequestCapabilitiesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | **string** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). | 
**Risk** | **string** | The machine&#39;s own classification. It can raise the level that the approval page shows for the scope, never lower it. | 
**Label** | Pointer to **string** | Shown under the scope as the machine&#39;s description. | [optional] 
**Checked** | Pointer to **bool** | Asks for the capability to be pre-ticked. Honoured only for a capability that the page reads as a plain read (no wildcard); every other one starts unticked. | [optional] 

## Methods

### NewStartAgentEnrollmentRequestCapabilitiesItem

`func NewStartAgentEnrollmentRequestCapabilitiesItem(scope string, risk string, ) *StartAgentEnrollmentRequestCapabilitiesItem`

NewStartAgentEnrollmentRequestCapabilitiesItem instantiates a new StartAgentEnrollmentRequestCapabilitiesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStartAgentEnrollmentRequestCapabilitiesItemWithDefaults

`func NewStartAgentEnrollmentRequestCapabilitiesItemWithDefaults() *StartAgentEnrollmentRequestCapabilitiesItem`

NewStartAgentEnrollmentRequestCapabilitiesItemWithDefaults instantiates a new StartAgentEnrollmentRequestCapabilitiesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetScope

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) SetScope(v string)`

SetScope sets Scope field to given value.


### GetRisk

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetRisk() string`

GetRisk returns the Risk field if non-nil, zero value otherwise.

### GetRiskOk

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetRiskOk() (*string, bool)`

GetRiskOk returns a tuple with the Risk field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRisk

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) SetRisk(v string)`

SetRisk sets Risk field to given value.


### GetLabel

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetChecked

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetChecked() bool`

GetChecked returns the Checked field if non-nil, zero value otherwise.

### GetCheckedOk

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) GetCheckedOk() (*bool, bool)`

GetCheckedOk returns a tuple with the Checked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChecked

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) SetChecked(v bool)`

SetChecked sets Checked field to given value.

### HasChecked

`func (o *StartAgentEnrollmentRequestCapabilitiesItem) HasChecked() bool`

HasChecked returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


