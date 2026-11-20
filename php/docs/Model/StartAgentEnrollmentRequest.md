# # StartAgentEnrollmentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**host** | **string** |  |
**hostLabel** | **string** |  | [optional]
**jwks** | [**\LumoAuth\ApiClient\Model\StartAgentEnrollmentRequestJwks**](StartAgentEnrollmentRequestJwks.md) |  |
**capabilities** | [**\LumoAuth\ApiClient\Model\StartAgentEnrollmentRequestCapabilitiesItem[]**](StartAgentEnrollmentRequestCapabilitiesItem.md) |  |
**delegation** | **bool** | The agent asks to act on behalf of the approving person (needed for push approvals). | [optional]
**inventory** | [**\LumoAuth\ApiClient\Model\StartAgentEnrollmentRequestInventory**](StartAgentEnrollmentRequestInventory.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
