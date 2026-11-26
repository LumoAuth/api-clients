# AdminPoppyGetResponseDataIssuerChoicesItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **str** | Value for settings.issuer: null for the platform address, or an active custom domain. | [optional] 
**issuer** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_get_response_data_issuer_choices_item import AdminPoppyGetResponseDataIssuerChoicesItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyGetResponseDataIssuerChoicesItem from a JSON string
admin_poppy_get_response_data_issuer_choices_item_instance = AdminPoppyGetResponseDataIssuerChoicesItem.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyGetResponseDataIssuerChoicesItem.to_json())

# convert the object into a dict
admin_poppy_get_response_data_issuer_choices_item_dict = admin_poppy_get_response_data_issuer_choices_item_instance.to_dict()
# create an instance of AdminPoppyGetResponseDataIssuerChoicesItem from a dict
admin_poppy_get_response_data_issuer_choices_item_from_dict = AdminPoppyGetResponseDataIssuerChoicesItem.from_dict(admin_poppy_get_response_data_issuer_choices_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


