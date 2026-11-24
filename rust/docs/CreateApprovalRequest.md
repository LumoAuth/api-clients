# CreateApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | Option<**String**> | Agent task identifier (<=128 chars). | [optional]
**reason** | Option<**String**> | Human-readable action description (<=480 chars). | [optional]
**impact** | Option<**String**> | One of low, medium, high, critical. | [optional]
**on_behalf_of** | Option<**String**> | User id or email the agent acts for (delegation required). When it is the agent's owner, the request also goes to the organization's Slack and Discord approval channels that have agent approvals switched on. | [optional]
**expires_in** | Option<**i32**> | Seconds the person has to answer (60-600, default 120). An integer outside the range is clamped. | [optional][default to 120]
**meta** | Option<[**models::CreateApprovalRequestMeta**](CreateApprovalRequestMeta.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


