# StartAgentEnrollmentRequestInventory

Display only.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tools** | **int** |  | [optional] 
**mcp_servers** | [**List[StartAgentEnrollmentRequestInventoryMcpServersItem]**](StartAgentEnrollmentRequestInventoryMcpServersItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.start_agent_enrollment_request_inventory import StartAgentEnrollmentRequestInventory

# TODO update the JSON string below
json = "{}"
# create an instance of StartAgentEnrollmentRequestInventory from a JSON string
start_agent_enrollment_request_inventory_instance = StartAgentEnrollmentRequestInventory.from_json(json)
# print the JSON string representation of the object
print(StartAgentEnrollmentRequestInventory.to_json())

# convert the object into a dict
start_agent_enrollment_request_inventory_dict = start_agent_enrollment_request_inventory_instance.to_dict()
# create an instance of StartAgentEnrollmentRequestInventory from a dict
start_agent_enrollment_request_inventory_from_dict = StartAgentEnrollmentRequestInventory.from_dict(start_agent_enrollment_request_inventory_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


