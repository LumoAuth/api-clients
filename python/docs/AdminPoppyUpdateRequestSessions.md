# AdminPoppyUpdateRequestSessions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**refuse_account_change** | **bool** |  | [optional] 
**idle_days** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request_sessions import AdminPoppyUpdateRequestSessions

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequestSessions from a JSON string
admin_poppy_update_request_sessions_instance = AdminPoppyUpdateRequestSessions.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequestSessions.to_json())

# convert the object into a dict
admin_poppy_update_request_sessions_dict = admin_poppy_update_request_sessions_instance.to_dict()
# create an instance of AdminPoppyUpdateRequestSessions from a dict
admin_poppy_update_request_sessions_from_dict = AdminPoppyUpdateRequestSessions.from_dict(admin_poppy_update_request_sessions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


