# AdminClientsCimdCheckRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **string** | The Client Identifier URL (https, with a path). | 
**Refresh** | Pointer to **bool** | Ignore the cached document and fetch it again. | [optional] [default to false]

## Methods

### NewAdminClientsCimdCheckRequest

`func NewAdminClientsCimdCheckRequest(clientId string, ) *AdminClientsCimdCheckRequest`

NewAdminClientsCimdCheckRequest instantiates a new AdminClientsCimdCheckRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminClientsCimdCheckRequestWithDefaults

`func NewAdminClientsCimdCheckRequestWithDefaults() *AdminClientsCimdCheckRequest`

NewAdminClientsCimdCheckRequestWithDefaults instantiates a new AdminClientsCimdCheckRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClientId

`func (o *AdminClientsCimdCheckRequest) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *AdminClientsCimdCheckRequest) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *AdminClientsCimdCheckRequest) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetRefresh

`func (o *AdminClientsCimdCheckRequest) GetRefresh() bool`

GetRefresh returns the Refresh field if non-nil, zero value otherwise.

### GetRefreshOk

`func (o *AdminClientsCimdCheckRequest) GetRefreshOk() (*bool, bool)`

GetRefreshOk returns a tuple with the Refresh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRefresh

`func (o *AdminClientsCimdCheckRequest) SetRefresh(v bool)`

SetRefresh sets Refresh field to given value.

### HasRefresh

`func (o *AdminClientsCimdCheckRequest) HasRefresh() bool`

HasRefresh returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


