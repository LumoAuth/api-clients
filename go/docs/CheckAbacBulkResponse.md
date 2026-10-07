# CheckAbacBulkResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | Pointer to [**[]CheckAbacBulkResponseResultsItem**](CheckAbacBulkResponseResultsItem.md) |  | [optional] 
**UserId** | Pointer to **string** |  | [optional] 

## Methods

### NewCheckAbacBulkResponse

`func NewCheckAbacBulkResponse() *CheckAbacBulkResponse`

NewCheckAbacBulkResponse instantiates a new CheckAbacBulkResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckAbacBulkResponseWithDefaults

`func NewCheckAbacBulkResponseWithDefaults() *CheckAbacBulkResponse`

NewCheckAbacBulkResponseWithDefaults instantiates a new CheckAbacBulkResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *CheckAbacBulkResponse) GetResults() []CheckAbacBulkResponseResultsItem`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *CheckAbacBulkResponse) GetResultsOk() (*[]CheckAbacBulkResponseResultsItem, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *CheckAbacBulkResponse) SetResults(v []CheckAbacBulkResponseResultsItem)`

SetResults sets Results field to given value.

### HasResults

`func (o *CheckAbacBulkResponse) HasResults() bool`

HasResults returns a boolean if a field has been set.

### GetUserId

`func (o *CheckAbacBulkResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *CheckAbacBulkResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *CheckAbacBulkResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *CheckAbacBulkResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


