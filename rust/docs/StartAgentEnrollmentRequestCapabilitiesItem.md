# StartAgentEnrollmentRequestCapabilitiesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scope** | **String** | A capability in canonical <resource>:<action> form (an OAuth scope value; the dot form is refused). | 
**risk** | **String** | The machine's own classification. It can raise the level that the approval page shows for the scope, never lower it. | 
**label** | Option<**String**> | Shown under the scope as the machine's description. | [optional]
**checked** | Option<**bool**> | Asks for the capability to be pre-ticked. Honoured only for a capability that the page reads as a plain read (no wildcard); every other one starts unticked. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


