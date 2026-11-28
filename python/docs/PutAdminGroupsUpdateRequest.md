# PutAdminGroupsUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_groups_update_request import PutAdminGroupsUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminGroupsUpdateRequest from a JSON string
put_admin_groups_update_request_instance = PutAdminGroupsUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminGroupsUpdateRequest.to_json())

# convert the object into a dict
put_admin_groups_update_request_dict = put_admin_groups_update_request_instance.to_dict()
# create an instance of PutAdminGroupsUpdateRequest from a dict
put_admin_groups_update_request_from_dict = PutAdminGroupsUpdateRequest.from_dict(put_admin_groups_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


