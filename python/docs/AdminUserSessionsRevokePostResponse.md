# AdminUserSessionsRevokePostResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_user_sessions_revoke_post_response import AdminUserSessionsRevokePostResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminUserSessionsRevokePostResponse from a JSON string
admin_user_sessions_revoke_post_response_instance = AdminUserSessionsRevokePostResponse.from_json(json)
# print the JSON string representation of the object
print(AdminUserSessionsRevokePostResponse.to_json())

# convert the object into a dict
admin_user_sessions_revoke_post_response_dict = admin_user_sessions_revoke_post_response_instance.to_dict()
# create an instance of AdminUserSessionsRevokePostResponse from a dict
admin_user_sessions_revoke_post_response_from_dict = AdminUserSessionsRevokePostResponse.from_dict(admin_user_sessions_revoke_post_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


