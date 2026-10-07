# AdminSessionsRevokeAllResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sessions_revoke_all_response import AdminSessionsRevokeAllResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSessionsRevokeAllResponse from a JSON string
admin_sessions_revoke_all_response_instance = AdminSessionsRevokeAllResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSessionsRevokeAllResponse.to_json())

# convert the object into a dict
admin_sessions_revoke_all_response_dict = admin_sessions_revoke_all_response_instance.to_dict()
# create an instance of AdminSessionsRevokeAllResponse from a dict
admin_sessions_revoke_all_response_from_dict = AdminSessionsRevokeAllResponse.from_dict(admin_sessions_revoke_all_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


