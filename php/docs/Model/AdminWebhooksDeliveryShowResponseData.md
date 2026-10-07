# # AdminWebhooksDeliveryShowResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional]
**webhookId** | **int** |  | [optional]
**deliveryId** | **string** |  | [optional]
**eventName** | **string** |  | [optional]
**status** | **string** |  | [optional]
**attemptCount** | **int** |  | [optional]
**lastStatusCode** | **int** |  | [optional]
**lastResponseBody** | **string** |  | [optional]
**lastError** | **string** |  | [optional]
**nextAttemptAt** | **\DateTime** |  | [optional]
**succeededAt** | **\DateTime** |  | [optional]
**deadLetteredAt** | **\DateTime** |  | [optional]
**createdAt** | **\DateTime** |  | [optional]
**updatedAt** | **\DateTime** |  | [optional]
**payload** | **array<string,mixed>** | Event payload as sent to the receiver | [optional]
**attempts** | [**\LumoAuth\ApiClient\Model\AdminWebhooksDeliveryShowResponseData1AttemptsItem[]**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
