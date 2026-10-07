# PutAdminAgentsUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**capabilities** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_agents_update_request import PutAdminAgentsUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminAgentsUpdateRequest from a JSON string
put_admin_agents_update_request_instance = PutAdminAgentsUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminAgentsUpdateRequest.to_json())

# convert the object into a dict
put_admin_agents_update_request_dict = put_admin_agents_update_request_instance.to_dict()
# create an instance of PutAdminAgentsUpdateRequest from a dict
put_admin_agents_update_request_from_dict = PutAdminAgentsUpdateRequest.from_dict(put_admin_agents_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


