# LumoAuth.ApiClient.Model.AdminWebhooksDeliveryShowResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | [optional] 
**WebhookId** | **int** |  | [optional] 
**DeliveryId** | **string** |  | [optional] 
**EventName** | **string** |  | [optional] 
**Status** | **string** |  | [optional] 
**AttemptCount** | **int** |  | [optional] 
**LastStatusCode** | **int?** |  | [optional] 
**LastResponseBody** | **string** |  | [optional] 
**LastError** | **string** |  | [optional] 
**NextAttemptAt** | **DateTime?** |  | [optional] 
**SucceededAt** | **DateTime?** |  | [optional] 
**DeadLetteredAt** | **DateTime?** |  | [optional] 
**CreatedAt** | **DateTime** |  | [optional] 
**UpdatedAt** | **DateTime** |  | [optional] 
**Payload** | **Dictionary&lt;string, Object&gt;** | Event payload as sent to the receiver | [optional] 
**Attempts** | [**List&lt;AdminWebhooksDeliveryShowResponseData1AttemptsItem&gt;**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

