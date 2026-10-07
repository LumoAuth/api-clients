# AdminSocialProvidersGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**SocialLoginProvider**](SocialLoginProvider.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_social_providers_get_response import AdminSocialProvidersGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSocialProvidersGetResponse from a JSON string
admin_social_providers_get_response_instance = AdminSocialProvidersGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSocialProvidersGetResponse.to_json())

# convert the object into a dict
admin_social_providers_get_response_dict = admin_social_providers_get_response_instance.to_dict()
# create an instance of AdminSocialProvidersGetResponse from a dict
admin_social_providers_get_response_from_dict = AdminSocialProvidersGetResponse.from_dict(admin_social_providers_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


