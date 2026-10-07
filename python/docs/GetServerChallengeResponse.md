# GetServerChallengeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | 
**server** | **str** | MCP server display name. | 
**server_id** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.get_server_challenge_response import GetServerChallengeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetServerChallengeResponse from a JSON string
get_server_challenge_response_instance = GetServerChallengeResponse.from_json(json)
# print the JSON string representation of the object
print(GetServerChallengeResponse.to_json())

# convert the object into a dict
get_server_challenge_response_dict = get_server_challenge_response_instance.to_dict()
# create an instance of GetServerChallengeResponse from a dict
get_server_challenge_response_from_dict = GetServerChallengeResponse.from_dict(get_server_challenge_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


