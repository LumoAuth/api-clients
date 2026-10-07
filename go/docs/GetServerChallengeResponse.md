# GetServerChallengeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** |  | 
**Server** | **string** | MCP server display name. | 
**ServerId** | **string** |  | 

## Methods

### NewGetServerChallengeResponse

`func NewGetServerChallengeResponse(status string, server string, serverId string, ) *GetServerChallengeResponse`

NewGetServerChallengeResponse instantiates a new GetServerChallengeResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetServerChallengeResponseWithDefaults

`func NewGetServerChallengeResponseWithDefaults() *GetServerChallengeResponse`

NewGetServerChallengeResponseWithDefaults instantiates a new GetServerChallengeResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *GetServerChallengeResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *GetServerChallengeResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *GetServerChallengeResponse) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetServer

`func (o *GetServerChallengeResponse) GetServer() string`

GetServer returns the Server field if non-nil, zero value otherwise.

### GetServerOk

`func (o *GetServerChallengeResponse) GetServerOk() (*string, bool)`

GetServerOk returns a tuple with the Server field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServer

`func (o *GetServerChallengeResponse) SetServer(v string)`

SetServer sets Server field to given value.


### GetServerId

`func (o *GetServerChallengeResponse) GetServerId() string`

GetServerId returns the ServerId field if non-nil, zero value otherwise.

### GetServerIdOk

`func (o *GetServerChallengeResponse) GetServerIdOk() (*string, bool)`

GetServerIdOk returns a tuple with the ServerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServerId

`func (o *GetServerChallengeResponse) SetServerId(v string)`

SetServerId sets ServerId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


