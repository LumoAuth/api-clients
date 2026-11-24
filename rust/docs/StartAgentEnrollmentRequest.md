# StartAgentEnrollmentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**host** | **String** |  | 
**host_label** | Option<**String**> |  | [optional]
**jwks** | [**models::StartAgentEnrollmentRequestJwks**](StartAgentEnrollmentRequestJwks.md) |  | 
**capabilities** | [**Vec<models::StartAgentEnrollmentRequestCapabilitiesItem>**](StartAgentEnrollmentRequestCapabilitiesItem.md) |  | 
**delegation** | Option<**bool**> | The agent asks to act on behalf of the approving person (needed for push approvals). | [optional]
**inventory** | Option<[**models::StartAgentEnrollmentRequestInventory**](StartAgentEnrollmentRequestInventory.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


