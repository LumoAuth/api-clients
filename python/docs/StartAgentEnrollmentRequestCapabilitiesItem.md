# StartAgentEnrollmentRequestCapabilitiesItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scope** | **str** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). | 
**risk** | **str** |  | 
**label** | **str** |  | [optional] 
**checked** | **bool** | Pre-ticked on the approval page. | [optional] 

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


