# AdminPoppyUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**issuer** | **str** | null for the platform address, or one of the active custom domains. | [optional] 
**organization** | [**AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  | [optional] 
**domains** | **List[str]** |  | [optional] 
**sign_in** | [**AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  | [optional] 
**scopes** | [**Dict[str, AdminPoppyUpdateRequestScopesValue]**](AdminPoppyUpdateRequestScopesValue.md) | Scope name &#x3D;&gt; {description, changes, personal_data}. | [optional] 
**resources** | **List[str]** |  | [optional] 
**apis** | [**List[AdminPoppyUpdateRequestApisItem]**](AdminPoppyUpdateRequestApisItem.md) |  | [optional] 
**agent** | [**List[AdminPoppyUpdateRequestAgentItem]**](AdminPoppyUpdateRequestAgentItem.md) |  | [optional] 
**web** | [**AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  | [optional] 
**tasks** | [**AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  | [optional] 
**extensions** | **Dict[str, object]** |  | [optional] 
**sessions** | [**AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request import AdminPoppyUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequest from a JSON string
admin_poppy_update_request_instance = AdminPoppyUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequest.to_json())

# convert the object into a dict
admin_poppy_update_request_dict = admin_poppy_update_request_instance.to_dict()
# create an instance of AdminPoppyUpdateRequest from a dict
admin_poppy_update_request_from_dict = AdminPoppyUpdateRequest.from_dict(admin_poppy_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


