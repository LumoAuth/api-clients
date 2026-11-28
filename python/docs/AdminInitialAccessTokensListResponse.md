# AdminInitialAccessTokensListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminInitialAccessTokensListResponseDataItem]**](AdminInitialAccessTokensListResponseDataItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_initial_access_tokens_list_response import AdminInitialAccessTokensListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminInitialAccessTokensListResponse from a JSON string
admin_initial_access_tokens_list_response_instance = AdminInitialAccessTokensListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminInitialAccessTokensListResponse.to_json())

# convert the object into a dict
admin_initial_access_tokens_list_response_dict = admin_initial_access_tokens_list_response_instance.to_dict()
# create an instance of AdminInitialAccessTokensListResponse from a dict
admin_initial_access_tokens_list_response_from_dict = AdminInitialAccessTokensListResponse.from_dict(admin_initial_access_tokens_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


