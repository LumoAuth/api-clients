# LumoAuth.ApiClient.Model.PutAdminWebhooksUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional] 
**Events** | **List&lt;string&gt;** |  | [optional] 
**IsActive** | **bool** | Also accepted as active or enabled. | [optional] 
**Type** | **string** |  | [optional] 
**VarConfiguration** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**RotateSecret** | **bool** | Issue a new signing secret (returned once). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

