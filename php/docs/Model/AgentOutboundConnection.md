# # AgentOutboundConnection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connectionId** | **string** |  |
**name** | **string** |  |
**provider** | **string** |  |
**providerLabel** | **string** | Human-readable provider name. |
**grantMode** | **string** |  |
**scopes** | **string[]** |  |
**userDelegated** | **bool** |  |
**machineGrantStatus** | **string** | Status of the machine grant (not_established when none exists); null for user-delegated connections. |
**linkedUsers** | **int** | Number of users with an active grant; null for machine connections. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
