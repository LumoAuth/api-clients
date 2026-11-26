# AdminPoppyUpdateRequestWeb


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**listed** | **bool** |  | [optional] 
**disabled** | **bool** |  | [optional] 
**browser_session_endpoint** | **str** |  | [optional] 
**unscoped** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request_web import AdminPoppyUpdateRequestWeb

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequestWeb from a JSON string
admin_poppy_update_request_web_instance = AdminPoppyUpdateRequestWeb.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequestWeb.to_json())

# convert the object into a dict
admin_poppy_update_request_web_dict = admin_poppy_update_request_web_instance.to_dict()
# create an instance of AdminPoppyUpdateRequestWeb from a dict
admin_poppy_update_request_web_from_dict = AdminPoppyUpdateRequestWeb.from_dict(admin_poppy_update_request_web_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


