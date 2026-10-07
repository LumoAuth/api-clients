# AdminSessionsRevokeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sessions_revoke_response import AdminSessionsRevokeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSessionsRevokeResponse from a JSON string
admin_sessions_revoke_response_instance = AdminSessionsRevokeResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSessionsRevokeResponse.to_json())

# convert the object into a dict
admin_sessions_revoke_response_dict = admin_sessions_revoke_response_instance.to_dict()
# create an instance of AdminSessionsRevokeResponse from a dict
admin_sessions_revoke_response_from_dict = AdminSessionsRevokeResponse.from_dict(admin_sessions_revoke_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


