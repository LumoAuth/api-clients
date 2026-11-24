# LumoAuth.ApiClient.Model.StartAgentEnrollmentRequestCapabilitiesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | **string** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). | 
**Risk** | **string** | The machine&#39;s own classification. It can raise the level that the approval page shows for the scope, never lower it. | 
**Label** | **string** | Shown under the scope as the machine&#39;s description. | [optional] 
**Checked** | **bool** | Asks for the capability to be pre-ticked. Honoured only for a capability that the page reads as a plain read (no wildcard); every other one starts unticked. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

