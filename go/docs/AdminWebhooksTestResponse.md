# AdminWebhooksTestResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | Pointer to **bool** |  | [optional] 
**StatusCode** | Pointer to **int32** | HTTP status returned by the receiver | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminWebhooksTestResponse

`func NewAdminWebhooksTestResponse() *AdminWebhooksTestResponse`

NewAdminWebhooksTestResponse instantiates a new AdminWebhooksTestResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksTestResponseWithDefaults

`func NewAdminWebhooksTestResponseWithDefaults() *AdminWebhooksTestResponse`

NewAdminWebhooksTestResponseWithDefaults instantiates a new AdminWebhooksTestResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSuccess

`func (o *AdminWebhooksTestResponse) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *AdminWebhooksTestResponse) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *AdminWebhooksTestResponse) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *AdminWebhooksTestResponse) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetStatusCode

`func (o *AdminWebhooksTestResponse) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *AdminWebhooksTestResponse) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *AdminWebhooksTestResponse) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *AdminWebhooksTestResponse) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetMessage

`func (o *AdminWebhooksTestResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AdminWebhooksTestResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AdminWebhooksTestResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AdminWebhooksTestResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


