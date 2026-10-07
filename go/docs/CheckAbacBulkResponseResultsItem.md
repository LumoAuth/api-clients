# CheckAbacBulkResponseResultsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Index** | Pointer to **int32** |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 
**Action** | Pointer to **string** |  | [optional] 
**ResourceId** | Pointer to **NullableString** |  | [optional] 
**Allowed** | Pointer to **bool** |  | [optional] 
**Reason** | Pointer to **string** |  | [optional] 
**Error** | Pointer to **string** | Only present for invalid entries | [optional] 

## Methods

### NewCheckAbacBulkResponseResultsItem

`func NewCheckAbacBulkResponseResultsItem() *CheckAbacBulkResponseResultsItem`

NewCheckAbacBulkResponseResultsItem instantiates a new CheckAbacBulkResponseResultsItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckAbacBulkResponseResultsItemWithDefaults

`func NewCheckAbacBulkResponseResultsItemWithDefaults() *CheckAbacBulkResponseResultsItem`

NewCheckAbacBulkResponseResultsItemWithDefaults instantiates a new CheckAbacBulkResponseResultsItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIndex

`func (o *CheckAbacBulkResponseResultsItem) GetIndex() int32`

GetIndex returns the Index field if non-nil, zero value otherwise.

### GetIndexOk

`func (o *CheckAbacBulkResponseResultsItem) GetIndexOk() (*int32, bool)`

GetIndexOk returns a tuple with the Index field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndex

`func (o *CheckAbacBulkResponseResultsItem) SetIndex(v int32)`

SetIndex sets Index field to given value.

### HasIndex

`func (o *CheckAbacBulkResponseResultsItem) HasIndex() bool`

HasIndex returns a boolean if a field has been set.

### GetResourceType

`func (o *CheckAbacBulkResponseResultsItem) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *CheckAbacBulkResponseResultsItem) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *CheckAbacBulkResponseResultsItem) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *CheckAbacBulkResponseResultsItem) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.

### GetAction

`func (o *CheckAbacBulkResponseResultsItem) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *CheckAbacBulkResponseResultsItem) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *CheckAbacBulkResponseResultsItem) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *CheckAbacBulkResponseResultsItem) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetResourceId

`func (o *CheckAbacBulkResponseResultsItem) GetResourceId() string`

GetResourceId returns the ResourceId field if non-nil, zero value otherwise.

### GetResourceIdOk

`func (o *CheckAbacBulkResponseResultsItem) GetResourceIdOk() (*string, bool)`

GetResourceIdOk returns a tuple with the ResourceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceId

`func (o *CheckAbacBulkResponseResultsItem) SetResourceId(v string)`

SetResourceId sets ResourceId field to given value.

### HasResourceId

`func (o *CheckAbacBulkResponseResultsItem) HasResourceId() bool`

HasResourceId returns a boolean if a field has been set.

### SetResourceIdNil

`func (o *CheckAbacBulkResponseResultsItem) SetResourceIdNil(b bool)`

 SetResourceIdNil sets the value for ResourceId to be an explicit nil

### UnsetResourceId
`func (o *CheckAbacBulkResponseResultsItem) UnsetResourceId()`

UnsetResourceId ensures that no value is present for ResourceId, not even an explicit nil
### GetAllowed

`func (o *CheckAbacBulkResponseResultsItem) GetAllowed() bool`

GetAllowed returns the Allowed field if non-nil, zero value otherwise.

### GetAllowedOk

`func (o *CheckAbacBulkResponseResultsItem) GetAllowedOk() (*bool, bool)`

GetAllowedOk returns a tuple with the Allowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowed

`func (o *CheckAbacBulkResponseResultsItem) SetAllowed(v bool)`

SetAllowed sets Allowed field to given value.

### HasAllowed

`func (o *CheckAbacBulkResponseResultsItem) HasAllowed() bool`

HasAllowed returns a boolean if a field has been set.

### GetReason

`func (o *CheckAbacBulkResponseResultsItem) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *CheckAbacBulkResponseResultsItem) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *CheckAbacBulkResponseResultsItem) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *CheckAbacBulkResponseResultsItem) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetError

`func (o *CheckAbacBulkResponseResultsItem) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *CheckAbacBulkResponseResultsItem) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *CheckAbacBulkResponseResultsItem) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *CheckAbacBulkResponseResultsItem) HasError() bool`

HasError returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


