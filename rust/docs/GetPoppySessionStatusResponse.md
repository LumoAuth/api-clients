# GetPoppySessionStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | unknown: no Session with this sid (never started, or forgotten after the idle period). | 
**user_id** | Option<**String**> |  | [optional]
**agent_id** | Option<**String**> |  | [optional]
**account** | Option<**String**> | The id of the account that the Session used, if any. | [optional]
**signed_in** | **bool** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. | 
**last_seen_at** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


