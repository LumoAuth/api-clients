# # AdminWebhooksCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | Public https URL. |
**events** | **string[]** | Event names from the catalogue. |
**isActive** | **bool** | Also accepted as active or enabled. | [optional] [default to true]
**type** | **string** | custom (default), slack, discord or teams. | [optional]
**configuration** | **array<string,mixed>** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
