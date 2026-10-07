# CreateApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | Option<**String**> | Agent task identifier (<=128 chars). | [optional]
**reason** | Option<**String**> | Human-readable action description (<=480 chars). | [optional]
**impact** | Option<**String**> | One of low, medium, high, critical. | [optional]
**on_behalf_of** | Option<**String**> | User id or email the agent acts for (delegation required). | [optional]
**meta** | Option<[**serde_json::Value**](.md)> | Optional action metadata. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


