# # PutAdminWebhooksUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional]
**events** | **string[]** |  | [optional]
**isActive** | **bool** | Also accepted as active or enabled. | [optional]
**type** | **string** |  | [optional]
**configuration** | **array<string,mixed>** |  | [optional]
**rotateSecret** | **bool** | Issue a new signing secret (returned once). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
