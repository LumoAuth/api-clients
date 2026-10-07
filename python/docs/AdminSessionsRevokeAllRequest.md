# AdminSessionsRevokeAllRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confirm** | **bool** |  | 

## Example

```python
from lumoauth_api_client.models.admin_sessions_revoke_all_request import AdminSessionsRevokeAllRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSessionsRevokeAllRequest from a JSON string
admin_sessions_revoke_all_request_instance = AdminSessionsRevokeAllRequest.from_json(json)
# print the JSON string representation of the object
print(AdminSessionsRevokeAllRequest.to_json())

# convert the object into a dict
admin_sessions_revoke_all_request_dict = admin_sessions_revoke_all_request_instance.to_dict()
# create an instance of AdminSessionsRevokeAllRequest from a dict
admin_sessions_revoke_all_request_from_dict = AdminSessionsRevokeAllRequest.from_dict(admin_sessions_revoke_all_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


