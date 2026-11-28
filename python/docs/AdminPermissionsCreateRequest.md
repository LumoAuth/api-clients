# AdminPermissionsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**slug** | **str** | Lowercase letters, digits, dots, hyphens and underscores (for example invoices.approve). Built-in and reserved slugs are refused. | 
**description** | **str** |  | [optional] 
**resource** | **str** |  | [optional] 
**action** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_permissions_create_request import AdminPermissionsCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPermissionsCreateRequest from a JSON string
admin_permissions_create_request_instance = AdminPermissionsCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminPermissionsCreateRequest.to_json())

# convert the object into a dict
admin_permissions_create_request_dict = admin_permissions_create_request_instance.to_dict()
# create an instance of AdminPermissionsCreateRequest from a dict
admin_permissions_create_request_from_dict = AdminPermissionsCreateRequest.from_dict(admin_permissions_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


