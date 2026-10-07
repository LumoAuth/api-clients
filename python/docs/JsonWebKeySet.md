# JsonWebKeySet


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys** | [**List[GetJwksResponseKeysItem]**](GetJwksResponseKeysItem.md) |  | 

## Example

```python
from lumoauth_api_client.models.json_web_key_set import JsonWebKeySet

# TODO update the JSON string below
json = "{}"
# create an instance of JsonWebKeySet from a JSON string
json_web_key_set_instance = JsonWebKeySet.from_json(json)
# print the JSON string representation of the object
print(JsonWebKeySet.to_json())

# convert the object into a dict
json_web_key_set_dict = json_web_key_set_instance.to_dict()
# create an instance of JsonWebKeySet from a dict
json_web_key_set_from_dict = JsonWebKeySet.from_dict(json_web_key_set_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


