# AdminScopesCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OAuthScope**](OAuthScope.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_scopes_create_response import AdminScopesCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminScopesCreateResponse from a JSON string
admin_scopes_create_response_instance = AdminScopesCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminScopesCreateResponse.to_json())

# convert the object into a dict
admin_scopes_create_response_dict = admin_scopes_create_response_instance.to_dict()
# create an instance of AdminScopesCreateResponse from a dict
admin_scopes_create_response_from_dict = AdminScopesCreateResponse.from_dict(admin_scopes_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


