# LumoAuth.ApiClient.Model.CreateApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | **string** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] 
**Reason** | **string** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] 
**Impact** | **string** | One of low, medium, high, critical. | [optional] 
**OnBehalfOf** | **string** | User id or email the agent acts for (delegation required). When it is the agent&#39;s owner, the request also goes to the organization&#39;s Slack and Discord approval channels that have agent approvals switched on. | [optional] 
**ExpiresIn** | **int** | Seconds the person has to answer (60-600, default 120). An integer outside the range is clamped. | [optional] [default to 120]
**Meta** | [**CreateApprovalRequestMeta**](CreateApprovalRequestMeta.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

