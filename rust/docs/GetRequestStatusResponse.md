# GetRequestStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | Option<**String**> |  | [optional]
**status** | Option<**String**> |  | [optional]
**risk_level** | Option<**String**> |  | [optional]
**task_id** | Option<**String**> |  | [optional]
**token_url** | Option<**String**> | Present when approved. | [optional]
**granted_ttl** | Option<**i32**> | Present when approved. | [optional]
**has_notes** | Option<**bool**> | Present when decided: whether the reviewer left notes (the notes themselves are never returned). | [optional]
**agent_message** | Option<**String**> | Present when decided: message the reviewer explicitly wrote for the agent. | [optional]
**delegation_consent_required** | Option<**bool**> | Present when pending: the on_behalf_of user must consent. | [optional]
**expires_at** | Option<**String**> | Present when pending. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


