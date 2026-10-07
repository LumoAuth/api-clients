# ListConnectionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | [**ListConnectionsResponseAgent**](ListConnectionsResponseAgent.md) |  | 
**Connections** | [**[]AgentOutboundConnection**](AgentOutboundConnection.md) |  | 
**Data** | **[]map[string]interface{}** | Same items as connections. | 
**Pagination** | [**PaginationMeta**](PaginationMeta.md) |  | 

## Methods

### NewListConnectionsResponse

`func NewListConnectionsResponse(agent ListConnectionsResponseAgent, connections []AgentOutboundConnection, data []map[string]interface{}, pagination PaginationMeta, ) *ListConnectionsResponse`

NewListConnectionsResponse instantiates a new ListConnectionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListConnectionsResponseWithDefaults

`func NewListConnectionsResponseWithDefaults() *ListConnectionsResponse`

NewListConnectionsResponseWithDefaults instantiates a new ListConnectionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAgent

`func (o *ListConnectionsResponse) GetAgent() ListConnectionsResponseAgent`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *ListConnectionsResponse) GetAgentOk() (*ListConnectionsResponseAgent, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *ListConnectionsResponse) SetAgent(v ListConnectionsResponseAgent)`

SetAgent sets Agent field to given value.


### GetConnections

`func (o *ListConnectionsResponse) GetConnections() []AgentOutboundConnection`

GetConnections returns the Connections field if non-nil, zero value otherwise.

### GetConnectionsOk

`func (o *ListConnectionsResponse) GetConnectionsOk() (*[]AgentOutboundConnection, bool)`

GetConnectionsOk returns a tuple with the Connections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnections

`func (o *ListConnectionsResponse) SetConnections(v []AgentOutboundConnection)`

SetConnections sets Connections field to given value.


### GetData

`func (o *ListConnectionsResponse) GetData() []map[string]interface{}`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ListConnectionsResponse) GetDataOk() (*[]map[string]interface{}, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ListConnectionsResponse) SetData(v []map[string]interface{})`

SetData sets Data field to given value.


### GetPagination

`func (o *ListConnectionsResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *ListConnectionsResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *ListConnectionsResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


