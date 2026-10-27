# McpServerToolAuthorizeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowed** | Pointer to **bool** |  | [optional] 
**Subject** | Pointer to **map[string]interface{}** |  | [optional] 
**Resource** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewMcpServerToolAuthorizeResponse

`func NewMcpServerToolAuthorizeResponse() *McpServerToolAuthorizeResponse`

NewMcpServerToolAuthorizeResponse instantiates a new McpServerToolAuthorizeResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMcpServerToolAuthorizeResponseWithDefaults

`func NewMcpServerToolAuthorizeResponseWithDefaults() *McpServerToolAuthorizeResponse`

NewMcpServerToolAuthorizeResponseWithDefaults instantiates a new McpServerToolAuthorizeResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAllowed

`func (o *McpServerToolAuthorizeResponse) GetAllowed() bool`

GetAllowed returns the Allowed field if non-nil, zero value otherwise.

### GetAllowedOk

`func (o *McpServerToolAuthorizeResponse) GetAllowedOk() (*bool, bool)`

GetAllowedOk returns a tuple with the Allowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowed

`func (o *McpServerToolAuthorizeResponse) SetAllowed(v bool)`

SetAllowed sets Allowed field to given value.

### HasAllowed

`func (o *McpServerToolAuthorizeResponse) HasAllowed() bool`

HasAllowed returns a boolean if a field has been set.

### GetSubject

`func (o *McpServerToolAuthorizeResponse) GetSubject() map[string]interface{}`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *McpServerToolAuthorizeResponse) GetSubjectOk() (*map[string]interface{}, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *McpServerToolAuthorizeResponse) SetSubject(v map[string]interface{})`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *McpServerToolAuthorizeResponse) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetResource

`func (o *McpServerToolAuthorizeResponse) GetResource() map[string]interface{}`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *McpServerToolAuthorizeResponse) GetResourceOk() (*map[string]interface{}, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *McpServerToolAuthorizeResponse) SetResource(v map[string]interface{})`

SetResource sets Resource field to given value.

### HasResource

`func (o *McpServerToolAuthorizeResponse) HasResource() bool`

HasResource returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


