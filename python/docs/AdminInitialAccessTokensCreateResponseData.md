# AdminInitialAccessTokensCreateResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**token** | **str** | Shown only in this answer. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_initial_access_tokens_create_response_data import AdminInitialAccessTokensCreateResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminInitialAccessTokensCreateResponseData from a JSON string
admin_initial_access_tokens_create_response_data_instance = AdminInitialAccessTokensCreateResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminInitialAccessTokensCreateResponseData.to_json())

# convert the object into a dict
admin_initial_access_tokens_create_response_data_dict = admin_initial_access_tokens_create_response_data_instance.to_dict()
# create an instance of AdminInitialAccessTokensCreateResponseData from a dict
admin_initial_access_tokens_create_response_data_from_dict = AdminInitialAccessTokensCreateResponseData.from_dict(admin_initial_access_tokens_create_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


