# RequestMagicLinkResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.request_magic_link_response import RequestMagicLinkResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RequestMagicLinkResponse from a JSON string
request_magic_link_response_instance = RequestMagicLinkResponse.from_json(json)
# print the JSON string representation of the object
print(RequestMagicLinkResponse.to_json())

# convert the object into a dict
request_magic_link_response_dict = request_magic_link_response_instance.to_dict()
# create an instance of RequestMagicLinkResponse from a dict
request_magic_link_response_from_dict = RequestMagicLinkResponse.from_dict(request_magic_link_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


