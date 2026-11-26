# LumoAuth.ApiClient.Model.GetPoppySessionStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** | unknown: no Session with this sid (never started, or forgotten after the idle period). | 
**UserId** | **string** |  | [optional] 
**AgentId** | **string** |  | [optional] 
**Account** | **string** | The id of the account that the Session used, if any. | [optional] 
**SignedIn** | **bool** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. | 
**LastSeenAt** | **DateTime?** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

