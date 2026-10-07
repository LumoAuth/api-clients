# AdminSocialProvidersAvailableResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**required_fields** | **List[str]** |  | [optional] 
**optional_fields** | **List[str]** |  | [optional] 
**default_scopes** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_social_providers_available_response_data_item import AdminSocialProvidersAvailableResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSocialProvidersAvailableResponseDataItem from a JSON string
admin_social_providers_available_response_data_item_instance = AdminSocialProvidersAvailableResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(AdminSocialProvidersAvailableResponseDataItem.to_json())

# convert the object into a dict
admin_social_providers_available_response_data_item_dict = admin_social_providers_available_response_data_item_instance.to_dict()
# create an instance of AdminSocialProvidersAvailableResponseDataItem from a dict
admin_social_providers_available_response_data_item_from_dict = AdminSocialProvidersAvailableResponseDataItem.from_dict(admin_social_providers_available_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


