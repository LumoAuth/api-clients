# StartAgentEnrollmentRequestCapabilitiesItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scope** | **str** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). | 
**risk** | **str** | The machine&#39;s own classification. It can raise the level that the approval page shows for the scope, never lower it. | 
**label** | **str** | Shown under the scope as the machine&#39;s description. | [optional] 
**checked** | **bool** | Asks for the capability to be pre-ticked. Honoured only for a capability that the page reads as a plain read (no wildcard); every other one starts unticked. | [optional] 

## Example

```python
from lumoauth_api_client.models.start_agent_enrollment_request_capabilities_item import StartAgentEnrollmentRequestCapabilitiesItem

# TODO update the JSON string below
json = "{}"
# create an instance of StartAgentEnrollmentRequestCapabilitiesItem from a JSON string
start_agent_enrollment_request_capabilities_item_instance = StartAgentEnrollmentRequestCapabilitiesItem.from_json(json)
# print the JSON string representation of the object
print(StartAgentEnrollmentRequestCapabilitiesItem.to_json())

# convert the object into a dict
start_agent_enrollment_request_capabilities_item_dict = start_agent_enrollment_request_capabilities_item_instance.to_dict()
# create an instance of StartAgentEnrollmentRequestCapabilitiesItem from a dict
start_agent_enrollment_request_capabilities_item_from_dict = StartAgentEnrollmentRequestCapabilitiesItem.from_dict(start_agent_enrollment_request_capabilities_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


