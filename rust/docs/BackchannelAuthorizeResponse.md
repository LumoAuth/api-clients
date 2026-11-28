# BackchannelAuthorizeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_req_id** | **String** |  | 
**expires_in** | **i32** | Lifetime of the auth_req_id in seconds: for an application 120, or a shorter requested_expiry (at least 30); for an agent-initiated request 300, or a requested_expiry between 30 and 600. | 
**interval** | Option<**i32**> | Minimum polling interval in seconds (poll / ping modes). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


