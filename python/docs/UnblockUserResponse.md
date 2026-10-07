# UnblockUserResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.unblock_user_response import UnblockUserResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UnblockUserResponse from a JSON string
unblock_user_response_instance = UnblockUserResponse.from_json(json)
# print the JSON string representation of the object
print(UnblockUserResponse.to_json())

# convert the object into a dict
unblock_user_response_dict = unblock_user_response_instance.to_dict()
# create an instance of UnblockUserResponse from a dict
unblock_user_response_from_dict = UnblockUserResponse.from_dict(unblock_user_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


