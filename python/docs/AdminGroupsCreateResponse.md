# AdminGroupsCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Group**](Group.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_create_response import AdminGroupsCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsCreateResponse from a JSON string
admin_groups_create_response_instance = AdminGroupsCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsCreateResponse.to_json())

# convert the object into a dict
admin_groups_create_response_dict = admin_groups_create_response_instance.to_dict()
# create an instance of AdminGroupsCreateResponse from a dict
admin_groups_create_response_from_dict = AdminGroupsCreateResponse.from_dict(admin_groups_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


