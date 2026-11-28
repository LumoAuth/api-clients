# AdminInitialAccessTokensCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminInitialAccessTokensCreateResponseData**](AdminInitialAccessTokensCreateResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_initial_access_tokens_create_response import AdminInitialAccessTokensCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminInitialAccessTokensCreateResponse from a JSON string
admin_initial_access_tokens_create_response_instance = AdminInitialAccessTokensCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminInitialAccessTokensCreateResponse.to_json())

# convert the object into a dict
admin_initial_access_tokens_create_response_dict = admin_initial_access_tokens_create_response_instance.to_dict()
# create an instance of AdminInitialAccessTokensCreateResponse from a dict
admin_initial_access_tokens_create_response_from_dict = AdminInitialAccessTokensCreateResponse.from_dict(admin_initial_access_tokens_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


