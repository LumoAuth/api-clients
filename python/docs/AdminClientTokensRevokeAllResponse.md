# AdminClientTokensRevokeAllResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_client_tokens_revoke_all_response import AdminClientTokensRevokeAllResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminClientTokensRevokeAllResponse from a JSON string
admin_client_tokens_revoke_all_response_instance = AdminClientTokensRevokeAllResponse.from_json(json)
# print the JSON string representation of the object
print(AdminClientTokensRevokeAllResponse.to_json())

# convert the object into a dict
admin_client_tokens_revoke_all_response_dict = admin_client_tokens_revoke_all_response_instance.to_dict()
# create an instance of AdminClientTokensRevokeAllResponse from a dict
admin_client_tokens_revoke_all_response_from_dict = AdminClientTokensRevokeAllResponse.from_dict(admin_client_tokens_revoke_all_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


