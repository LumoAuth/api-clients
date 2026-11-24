# # CreateApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taskId** | **string** | Agent task identifier (&lt;&#x3D;128 chars). | [optional]
**reason** | **string** | Human-readable action description (&lt;&#x3D;480 chars). | [optional]
**impact** | **string** | One of low, medium, high, critical. | [optional]
**onBehalfOf** | **string** | User id or email the agent acts for (delegation required). When it is the agent&#39;s owner, the request also goes to the organization&#39;s Slack and Discord approval channels that have agent approvals switched on. | [optional]
**expiresIn** | **int** | Seconds the person has to answer (60-600, default 120). An integer outside the range is clamped. | [optional] [default to 120]
**meta** | [**\LumoAuth\ApiClient\Model\CreateApprovalRequestMeta**](CreateApprovalRequestMeta.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
