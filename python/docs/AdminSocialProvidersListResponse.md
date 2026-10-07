# AdminSocialProvidersListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[SocialLoginProvider]**](SocialLoginProvider.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_social_providers_list_response import AdminSocialProvidersListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSocialProvidersListResponse from a JSON string
admin_social_providers_list_response_instance = AdminSocialProvidersListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSocialProvidersListResponse.to_json())

# convert the object into a dict
admin_social_providers_list_response_dict = admin_social_providers_list_response_instance.to_dict()
# create an instance of AdminSocialProvidersListResponse from a dict
admin_social_providers_list_response_from_dict = AdminSocialProvidersListResponse.from_dict(admin_social_providers_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


