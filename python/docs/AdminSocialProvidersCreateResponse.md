# AdminSocialProvidersCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**SocialLoginProvider**](SocialLoginProvider.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_social_providers_create_response import AdminSocialProvidersCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSocialProvidersCreateResponse from a JSON string
admin_social_providers_create_response_instance = AdminSocialProvidersCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSocialProvidersCreateResponse.to_json())

# convert the object into a dict
admin_social_providers_create_response_dict = admin_social_providers_create_response_instance.to_dict()
# create an instance of AdminSocialProvidersCreateResponse from a dict
admin_social_providers_create_response_from_dict = AdminSocialProvidersCreateResponse.from_dict(admin_social_providers_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


