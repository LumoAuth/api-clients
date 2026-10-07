# AdminSocialProvidersAvailableResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminSocialProvidersAvailableResponseDataItem]**](AdminSocialProvidersAvailableResponseDataItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_social_providers_available_response import AdminSocialProvidersAvailableResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSocialProvidersAvailableResponse from a JSON string
admin_social_providers_available_response_instance = AdminSocialProvidersAvailableResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSocialProvidersAvailableResponse.to_json())

# convert the object into a dict
admin_social_providers_available_response_dict = admin_social_providers_available_response_instance.to_dict()
# create an instance of AdminSocialProvidersAvailableResponse from a dict
admin_social_providers_available_response_from_dict = AdminSocialProvidersAvailableResponse.from_dict(admin_social_providers_available_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


