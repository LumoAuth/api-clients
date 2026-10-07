# CreateApprovalRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taskId** | **String** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] 
**reason** | **String** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] 
**impact** | **String** | One of low, medium, high, critical. | [optional] 
**onBehalfOf** | **String** | User id or email the agent acts for (delegation required). | [optional] 
**meta** | **AnyCodable** | Optional action metadata. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


