# # GetPoppySessionStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | unknown: no Session with this sid (never started, or forgotten after the idle period). |
**userId** | **string** |  | [optional]
**agentId** | **string** |  | [optional]
**account** | **string** | The id of the account that the Session used, if any. | [optional]
**signedIn** | **bool** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. |
**lastSeenAt** | **\DateTime** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
