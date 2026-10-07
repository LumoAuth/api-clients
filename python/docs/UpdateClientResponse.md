# UpdateClientResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OAuthClient**](OAuthClient.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.update_client_response import UpdateClientResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateClientResponse from a JSON string
update_client_response_instance = UpdateClientResponse.from_json(json)
# print the JSON string representation of the object
print(UpdateClientResponse.to_json())

# convert the object into a dict
update_client_response_dict = update_client_response_instance.to_dict()
# create an instance of UpdateClientResponse from a dict
update_client_response_from_dict = UpdateClientResponse.from_dict(update_client_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


