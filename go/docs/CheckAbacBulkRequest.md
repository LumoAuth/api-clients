# CheckAbacBulkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Checks** | **[]map[string]interface{}** | Each {\&quot;resourceType\&quot;, \&quot;action\&quot;, \&quot;resourceId\&quot;}. | 
**Environment** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewCheckAbacBulkRequest

`func NewCheckAbacBulkRequest(checks []map[string]interface{}, ) *CheckAbacBulkRequest`

NewCheckAbacBulkRequest instantiates a new CheckAbacBulkRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckAbacBulkRequestWithDefaults

`func NewCheckAbacBulkRequestWithDefaults() *CheckAbacBulkRequest`

NewCheckAbacBulkRequestWithDefaults instantiates a new CheckAbacBulkRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChecks

`func (o *CheckAbacBulkRequest) GetChecks() []map[string]interface{}`

GetChecks returns the Checks field if non-nil, zero value otherwise.

### GetChecksOk

`func (o *CheckAbacBulkRequest) GetChecksOk() (*[]map[string]interface{}, bool)`

GetChecksOk returns a tuple with the Checks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChecks

`func (o *CheckAbacBulkRequest) SetChecks(v []map[string]interface{})`

SetChecks sets Checks field to given value.


### GetEnvironment

`func (o *CheckAbacBulkRequest) GetEnvironment() map[string]interface{}`

GetEnvironment returns the Environment field if non-nil, zero value otherwise.

### GetEnvironmentOk

`func (o *CheckAbacBulkRequest) GetEnvironmentOk() (*map[string]interface{}, bool)`

GetEnvironmentOk returns a tuple with the Environment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnvironment

`func (o *CheckAbacBulkRequest) SetEnvironment(v map[string]interface{})`

SetEnvironment sets Environment field to given value.

### HasEnvironment

`func (o *CheckAbacBulkRequest) HasEnvironment() bool`

HasEnvironment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


