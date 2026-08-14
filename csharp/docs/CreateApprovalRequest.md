# LumoAuth.ApiClient.Model.CreateApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | **string** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] 
**Reason** | **string** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] 
**Impact** | **string** | One of low, medium, high, critical. | [optional] 
**OnBehalfOf** | **string** | User id or email the agent acts for (delegation required). | [optional] 
**Meta** | **Object** | Optional action metadata. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

