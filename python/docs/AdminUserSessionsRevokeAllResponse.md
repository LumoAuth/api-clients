# AdminUserSessionsRevokeAllResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_user_sessions_revoke_all_response import AdminUserSessionsRevokeAllResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminUserSessionsRevokeAllResponse from a JSON string
admin_user_sessions_revoke_all_response_instance = AdminUserSessionsRevokeAllResponse.from_json(json)
# print the JSON string representation of the object
print(AdminUserSessionsRevokeAllResponse.to_json())

# convert the object into a dict
admin_user_sessions_revoke_all_response_dict = admin_user_sessions_revoke_all_response_instance.to_dict()
# create an instance of AdminUserSessionsRevokeAllResponse from a dict
admin_user_sessions_revoke_all_response_from_dict = AdminUserSessionsRevokeAllResponse.from_dict(admin_user_sessions_revoke_all_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


