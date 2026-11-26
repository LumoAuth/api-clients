# GetPoppySessionStatusResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | unknown: no Session with this sid (never started, or forgotten after the idle period). | 
**userId** | **String** |  | [optional] 
**agentId** | **String** |  | [optional] 
**account** | **String** | The id of the account that the Session used, if any. | [optional] 
**signedIn** | **Bool** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. | 
**lastSeenAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


