# McpServerToolAuthorizeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | [**McpServerToolAuthorizeRequestSubject**](McpServerToolAuthorizeRequestSubject.md) |  | 
**Tool** | **string** |  | 

## Methods

### NewMcpServerToolAuthorizeRequest

`func NewMcpServerToolAuthorizeRequest(subject McpServerToolAuthorizeRequestSubject, tool string, ) *McpServerToolAuthorizeRequest`

NewMcpServerToolAuthorizeRequest instantiates a new McpServerToolAuthorizeRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMcpServerToolAuthorizeRequestWithDefaults

`func NewMcpServerToolAuthorizeRequestWithDefaults() *McpServerToolAuthorizeRequest`

NewMcpServerToolAuthorizeRequestWithDefaults instantiates a new McpServerToolAuthorizeRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSubject

`func (o *McpServerToolAuthorizeRequest) GetSubject() McpServerToolAuthorizeRequestSubject`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *McpServerToolAuthorizeRequest) GetSubjectOk() (*McpServerToolAuthorizeRequestSubject, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *McpServerToolAuthorizeRequest) SetSubject(v McpServerToolAuthorizeRequestSubject)`

SetSubject sets Subject field to given value.


### GetTool

`func (o *McpServerToolAuthorizeRequest) GetTool() string`

GetTool returns the Tool field if non-nil, zero value otherwise.

### GetToolOk

`func (o *McpServerToolAuthorizeRequest) GetToolOk() (*string, bool)`

GetToolOk returns a tuple with the Tool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTool

`func (o *McpServerToolAuthorizeRequest) SetTool(v string)`

SetTool sets Tool field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


