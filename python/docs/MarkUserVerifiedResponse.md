# MarkUserVerifiedResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mark_user_verified_response import MarkUserVerifiedResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MarkUserVerifiedResponse from a JSON string
mark_user_verified_response_instance = MarkUserVerifiedResponse.from_json(json)
# print the JSON string representation of the object
print(MarkUserVerifiedResponse.to_json())

# convert the object into a dict
mark_user_verified_response_dict = mark_user_verified_response_instance.to_dict()
# create an instance of MarkUserVerifiedResponse from a dict
mark_user_verified_response_from_dict = MarkUserVerifiedResponse.from_dict(mark_user_verified_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


