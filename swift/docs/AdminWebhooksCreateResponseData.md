# AdminWebhooksCreateResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**url** | **String** |  | 
**events** | **[String]** |  | 
**type** | **String** |  | 
**isActive** | **Bool** |  | 
**failureCount** | **Int** |  | 
**createdAt** | **Date** |  | 
**lastTriggeredAt** | **Date** |  | [optional] 
**configuration** | **[String: AnyCodable]** | Detailed responses only | [optional] 
**secret** | **String** | HMAC signing secret, returned only at creation | [optional] 
**note** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


