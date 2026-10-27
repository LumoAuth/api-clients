# McpServerToolAuthorizeRequestSubject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**Id** | **string** | User UUID, or agent id (agt_…). For an MCP token, the user id is &#x60;sub&#x60;; for an agent token &#x60;sub&#x60; is &#x60;agent_&lt;id&gt;&#x60;. | 

## Methods

### NewMcpServerToolAuthorizeRequestSubject

`func NewMcpServerToolAuthorizeRequestSubject(type_ string, id string, ) *McpServerToolAuthorizeRequestSubject`

NewMcpServerToolAuthorizeRequestSubject instantiates a new McpServerToolAuthorizeRequestSubject object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMcpServerToolAuthorizeRequestSubjectWithDefaults

`func NewMcpServerToolAuthorizeRequestSubjectWithDefaults() *McpServerToolAuthorizeRequestSubject`

NewMcpServerToolAuthorizeRequestSubjectWithDefaults instantiates a new McpServerToolAuthorizeRequestSubject object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *McpServerToolAuthorizeRequestSubject) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *McpServerToolAuthorizeRequestSubject) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *McpServerToolAuthorizeRequestSubject) SetType(v string)`

SetType sets Type field to given value.


### GetId

`func (o *McpServerToolAuthorizeRequestSubject) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *McpServerToolAuthorizeRequestSubject) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *McpServerToolAuthorizeRequestSubject) SetId(v string)`

SetId sets Id field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


