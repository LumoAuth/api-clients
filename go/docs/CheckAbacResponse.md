# CheckAbacResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowed** | Pointer to **bool** |  | [optional] 
**Reason** | Pointer to **string** |  | [optional] 
**MatchedPolicies** | Pointer to [**[]CheckAbacResponseMatchedPoliciesItem**](CheckAbacResponseMatchedPoliciesItem.md) | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional] 
**UserId** | Pointer to **string** |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 
**Action** | Pointer to **string** |  | [optional] 
**ResourceId** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewCheckAbacResponse

`func NewCheckAbacResponse() *CheckAbacResponse`

NewCheckAbacResponse instantiates a new CheckAbacResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckAbacResponseWithDefaults

`func NewCheckAbacResponseWithDefaults() *CheckAbacResponse`

NewCheckAbacResponseWithDefaults instantiates a new CheckAbacResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAllowed

`func (o *CheckAbacResponse) GetAllowed() bool`

GetAllowed returns the Allowed field if non-nil, zero value otherwise.

### GetAllowedOk

`func (o *CheckAbacResponse) GetAllowedOk() (*bool, bool)`

GetAllowedOk returns a tuple with the Allowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowed

`func (o *CheckAbacResponse) SetAllowed(v bool)`

SetAllowed sets Allowed field to given value.

### HasAllowed

`func (o *CheckAbacResponse) HasAllowed() bool`

HasAllowed returns a boolean if a field has been set.

### GetReason

`func (o *CheckAbacResponse) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *CheckAbacResponse) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *CheckAbacResponse) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *CheckAbacResponse) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetMatchedPolicies

`func (o *CheckAbacResponse) GetMatchedPolicies() []CheckAbacResponseMatchedPoliciesItem`

GetMatchedPolicies returns the MatchedPolicies field if non-nil, zero value otherwise.

### GetMatchedPoliciesOk

`func (o *CheckAbacResponse) GetMatchedPoliciesOk() (*[]CheckAbacResponseMatchedPoliciesItem, bool)`

GetMatchedPoliciesOk returns a tuple with the MatchedPolicies field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMatchedPolicies

`func (o *CheckAbacResponse) SetMatchedPolicies(v []CheckAbacResponseMatchedPoliciesItem)`

SetMatchedPolicies sets MatchedPolicies field to given value.

### HasMatchedPolicies

`func (o *CheckAbacResponse) HasMatchedPolicies() bool`

HasMatchedPolicies returns a boolean if a field has been set.

### GetUserId

`func (o *CheckAbacResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *CheckAbacResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *CheckAbacResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *CheckAbacResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetResourceType

`func (o *CheckAbacResponse) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *CheckAbacResponse) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *CheckAbacResponse) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *CheckAbacResponse) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.

### GetAction

`func (o *CheckAbacResponse) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *CheckAbacResponse) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *CheckAbacResponse) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *CheckAbacResponse) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetResourceId

`func (o *CheckAbacResponse) GetResourceId() string`

GetResourceId returns the ResourceId field if non-nil, zero value otherwise.

### GetResourceIdOk

`func (o *CheckAbacResponse) GetResourceIdOk() (*string, bool)`

GetResourceIdOk returns a tuple with the ResourceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceId

`func (o *CheckAbacResponse) SetResourceId(v string)`

SetResourceId sets ResourceId field to given value.

### HasResourceId

`func (o *CheckAbacResponse) HasResourceId() bool`

HasResourceId returns a boolean if a field has been set.

### SetResourceIdNil

`func (o *CheckAbacResponse) SetResourceIdNil(b bool)`

 SetResourceIdNil sets the value for ResourceId to be an explicit nil

### UnsetResourceId
`func (o *CheckAbacResponse) UnsetResourceId()`

UnsetResourceId ensures that no value is present for ResourceId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


