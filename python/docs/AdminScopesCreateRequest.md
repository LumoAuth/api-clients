# AdminScopesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The scope value. | 
**description** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.admin_scopes_create_request import AdminScopesCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminScopesCreateRequest from a JSON string
admin_scopes_create_request_instance = AdminScopesCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminScopesCreateRequest.to_json())

# convert the object into a dict
admin_scopes_create_request_dict = admin_scopes_create_request_instance.to_dict()
# create an instance of AdminScopesCreateRequest from a dict
admin_scopes_create_request_from_dict = AdminScopesCreateRequest.from_dict(admin_scopes_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


