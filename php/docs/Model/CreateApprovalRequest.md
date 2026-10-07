# # CreateApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taskId** | **string** | Agent task identifier (&lt;&#x3D;128 chars). | [optional]
**reason** | **string** | Human-readable action description (&lt;&#x3D;480 chars). | [optional]
**impact** | **string** | One of low, medium, high, critical. | [optional]
**onBehalfOf** | **string** | User id or email the agent acts for (delegation required). | [optional]
**meta** | **object** | Optional action metadata. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
