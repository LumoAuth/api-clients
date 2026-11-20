# AskRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | Pointer to **string** | The action to authorize. | [optional] 
**Context** | Pointer to **map[string]interface{}** | Optional resource/attribute context for the decision. | [optional] 
**Audit** | Pointer to **string** | Which decisions go to the audit log. denials (default): refusals only. always: allowed decisions too (agent.capability_check_allowed), for a tool-call hook that wants every decision on record. | [optional] [default to "denials"]

## Methods

### NewAskRequest

`func NewAskRequest() *AskRequest`

NewAskRequest instantiates a new AskRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAskRequestWithDefaults

`func NewAskRequestWithDefaults() *AskRequest`

NewAskRequestWithDefaults instantiates a new AskRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAction

`func (o *AskRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AskRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AskRequest) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *AskRequest) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetContext

`func (o *AskRequest) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *AskRequest) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *AskRequest) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *AskRequest) HasContext() bool`

HasContext returns a boolean if a field has been set.

### GetAudit

`func (o *AskRequest) GetAudit() string`

GetAudit returns the Audit field if non-nil, zero value otherwise.

### GetAuditOk

`func (o *AskRequest) GetAuditOk() (*string, bool)`

GetAuditOk returns a tuple with the Audit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudit

`func (o *AskRequest) SetAudit(v string)`

SetAudit sets Audit field to given value.

### HasAudit

`func (o *AskRequest) HasAudit() bool`

HasAudit returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


