# AdminGroupsGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Group**](Group.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_get_response import AdminGroupsGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsGetResponse from a JSON string
admin_groups_get_response_instance = AdminGroupsGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsGetResponse.to_json())

# convert the object into a dict
admin_groups_get_response_dict = admin_groups_get_response_instance.to_dict()
# create an instance of AdminGroupsGetResponse from a dict
admin_groups_get_response_from_dict = AdminGroupsGetResponse.from_dict(admin_groups_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


