# GetConnectionTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | 
**token_type** | **str** |  | 
**expires_at** | **datetime** | RFC 3339; null when the provider token does not expire. | 
**scopes** | **List[str]** |  | 

## Example

```python
from lumoauth_api_client.models.get_connection_token_response import GetConnectionTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetConnectionTokenResponse from a JSON string
get_connection_token_response_instance = GetConnectionTokenResponse.from_json(json)
# print the JSON string representation of the object
print(GetConnectionTokenResponse.to_json())

# convert the object into a dict
get_connection_token_response_dict = get_connection_token_response_instance.to_dict()
# create an instance of GetConnectionTokenResponse from a dict
get_connection_token_response_from_dict = GetConnectionTokenResponse.from_dict(get_connection_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


