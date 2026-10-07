# RequestPermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | Pointer to **string** | Required. Task context. | [optional] 
**AuthorizationDetails** | Pointer to **map[string]interface{}** | Required. RFC 9396 authorization_details object (needs a type). | [optional] 
**Justification** | Pointer to **string** | Optional human-readable justification. | [optional] 
**RequestedTtl** | Pointer to **int32** | Optional TTL in seconds (default 600). | [optional] 
**CallbackUrl** | Pointer to **string** | Optional HITL notification webhook. | [optional] 

## Methods

### NewRequestPermissionRequest

`func NewRequestPermissionRequest() *RequestPermissionRequest`

NewRequestPermissionRequest instantiates a new RequestPermissionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestPermissionRequestWithDefaults

`func NewRequestPermissionRequestWithDefaults() *RequestPermissionRequest`

NewRequestPermissionRequestWithDefaults instantiates a new RequestPermissionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTaskId

`func (o *RequestPermissionRequest) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *RequestPermissionRequest) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *RequestPermissionRequest) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *RequestPermissionRequest) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetAuthorizationDetails

`func (o *RequestPermissionRequest) GetAuthorizationDetails() map[string]interface{}`

GetAuthorizationDetails returns the AuthorizationDetails field if non-nil, zero value otherwise.

### GetAuthorizationDetailsOk

`func (o *RequestPermissionRequest) GetAuthorizationDetailsOk() (*map[string]interface{}, bool)`

GetAuthorizationDetailsOk returns a tuple with the AuthorizationDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationDetails

`func (o *RequestPermissionRequest) SetAuthorizationDetails(v map[string]interface{})`

SetAuthorizationDetails sets AuthorizationDetails field to given value.

### HasAuthorizationDetails

`func (o *RequestPermissionRequest) HasAuthorizationDetails() bool`

HasAuthorizationDetails returns a boolean if a field has been set.

### GetJustification

`func (o *RequestPermissionRequest) GetJustification() string`

GetJustification returns the Justification field if non-nil, zero value otherwise.

### GetJustificationOk

`func (o *RequestPermissionRequest) GetJustificationOk() (*string, bool)`

GetJustificationOk returns a tuple with the Justification field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJustification

`func (o *RequestPermissionRequest) SetJustification(v string)`

SetJustification sets Justification field to given value.

### HasJustification

`func (o *RequestPermissionRequest) HasJustification() bool`

HasJustification returns a boolean if a field has been set.

### GetRequestedTtl

`func (o *RequestPermissionRequest) GetRequestedTtl() int32`

GetRequestedTtl returns the RequestedTtl field if non-nil, zero value otherwise.

### GetRequestedTtlOk

`func (o *RequestPermissionRequest) GetRequestedTtlOk() (*int32, bool)`

GetRequestedTtlOk returns a tuple with the RequestedTtl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestedTtl

`func (o *RequestPermissionRequest) SetRequestedTtl(v int32)`

SetRequestedTtl sets RequestedTtl field to given value.

### HasRequestedTtl

`func (o *RequestPermissionRequest) HasRequestedTtl() bool`

HasRequestedTtl returns a boolean if a field has been set.

### GetCallbackUrl

`func (o *RequestPermissionRequest) GetCallbackUrl() string`

GetCallbackUrl returns the CallbackUrl field if non-nil, zero value otherwise.

### GetCallbackUrlOk

`func (o *RequestPermissionRequest) GetCallbackUrlOk() (*string, bool)`

GetCallbackUrlOk returns a tuple with the CallbackUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCallbackUrl

`func (o *RequestPermissionRequest) SetCallbackUrl(v string)`

SetCallbackUrl sets CallbackUrl field to given value.

### HasCallbackUrl

`func (o *RequestPermissionRequest) HasCallbackUrl() bool`

HasCallbackUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


