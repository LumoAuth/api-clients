# AdminGroupsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**slug** | **str** | Optional; derived from the name when left out. | [optional] 
**description** | **str** |  | [optional] 
**roles** | **List[str]** | Optional role slugs. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_create_request import AdminGroupsCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsCreateRequest from a JSON string
admin_groups_create_request_instance = AdminGroupsCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsCreateRequest.to_json())

# convert the object into a dict
admin_groups_create_request_dict = admin_groups_create_request_instance.to_dict()
# create an instance of AdminGroupsCreateRequest from a dict
admin_groups_create_request_from_dict = AdminGroupsCreateRequest.from_dict(admin_groups_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


