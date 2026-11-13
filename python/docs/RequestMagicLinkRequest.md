# RequestMagicLinkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** | The address to mail the sign-in link to. | 
**client_id** | **str** | Client ID of an active application of the organization. | 
**return_to** | **str** | Page of the application that the person goes to after signing in. An absolute https URL (http only on localhost) whose origin is one of the application&#39;s allowed origins or the origin of one of its redirect URIs. Without it the person goes to the organization&#39;s default page. | [optional] 
**captcha_token** | **str** | Token from the CAPTCHA widget. Required when the organization protects sign-in link requests with a CAPTCHA. | [optional] 

## Example

```python
from lumoauth_api_client.models.request_magic_link_request import RequestMagicLinkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RequestMagicLinkRequest from a JSON string
request_magic_link_request_instance = RequestMagicLinkRequest.from_json(json)
# print the JSON string representation of the object
print(RequestMagicLinkRequest.to_json())

# convert the object into a dict
request_magic_link_request_dict = request_magic_link_request_instance.to_dict()
# create an instance of RequestMagicLinkRequest from a dict
request_magic_link_request_from_dict = RequestMagicLinkRequest.from_dict(request_magic_link_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


