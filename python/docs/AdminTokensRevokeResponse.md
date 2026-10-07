# AdminTokensRevokeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_tokens_revoke_response import AdminTokensRevokeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminTokensRevokeResponse from a JSON string
admin_tokens_revoke_response_instance = AdminTokensRevokeResponse.from_json(json)
# print the JSON string representation of the object
print(AdminTokensRevokeResponse.to_json())

# convert the object into a dict
admin_tokens_revoke_response_dict = admin_tokens_revoke_response_instance.to_dict()
# create an instance of AdminTokensRevokeResponse from a dict
admin_tokens_revoke_response_from_dict = AdminTokensRevokeResponse.from_dict(admin_tokens_revoke_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


