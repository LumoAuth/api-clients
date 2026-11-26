# AdminPoppyUpdateRequestScopesValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional] 
**changes** | **str** |  | [optional] 
**personal_data** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request_scopes_value import AdminPoppyUpdateRequestScopesValue

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequestScopesValue from a JSON string
admin_poppy_update_request_scopes_value_instance = AdminPoppyUpdateRequestScopesValue.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequestScopesValue.to_json())

# convert the object into a dict
admin_poppy_update_request_scopes_value_dict = admin_poppy_update_request_scopes_value_instance.to_dict()
# create an instance of AdminPoppyUpdateRequestScopesValue from a dict
admin_poppy_update_request_scopes_value_from_dict = AdminPoppyUpdateRequestScopesValue.from_dict(admin_poppy_update_request_scopes_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


