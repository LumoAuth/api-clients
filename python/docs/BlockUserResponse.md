# BlockUserResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.block_user_response import BlockUserResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BlockUserResponse from a JSON string
block_user_response_instance = BlockUserResponse.from_json(json)
# print the JSON string representation of the object
print(BlockUserResponse.to_json())

# convert the object into a dict
block_user_response_dict = block_user_response_instance.to_dict()
# create an instance of BlockUserResponse from a dict
block_user_response_from_dict = BlockUserResponse.from_dict(block_user_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


