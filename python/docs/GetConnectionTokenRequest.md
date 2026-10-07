# GetConnectionTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** | User UUID or email for user-delegated grants. | [optional] 

## Example

```python
from lumoauth_api_client.models.get_connection_token_request import GetConnectionTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetConnectionTokenRequest from a JSON string
get_connection_token_request_instance = GetConnectionTokenRequest.from_json(json)
# print the JSON string representation of the object
print(GetConnectionTokenRequest.to_json())

# convert the object into a dict
get_connection_token_request_dict = get_connection_token_request_instance.to_dict()
# create an instance of GetConnectionTokenRequest from a dict
get_connection_token_request_from_dict = GetConnectionTokenRequest.from_dict(get_connection_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


