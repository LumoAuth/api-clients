# PutAdminWebhooksUpdateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional] 
**events** | **[String]** |  | [optional] 
**isActive** | **Bool** | Also accepted as active or enabled. | [optional] 
**type** | **String** |  | [optional] 
**configuration** | **[String: AnyCodable]** |  | [optional] 
**rotateSecret** | **Bool** | Issue a new signing secret (returned once). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


