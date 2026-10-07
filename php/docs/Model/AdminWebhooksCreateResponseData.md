# # AdminWebhooksCreateResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**url** | **string** |  |
**events** | **string[]** |  |
**type** | **string** |  |
**isActive** | **bool** |  |
**failureCount** | **int** |  |
**createdAt** | **\DateTime** |  |
**lastTriggeredAt** | **\DateTime** |  | [optional]
**configuration** | **array<string,mixed>** | Detailed responses only | [optional]
**secret** | **string** | HMAC signing secret, returned only at creation | [optional]
**note** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
