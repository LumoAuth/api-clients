# AdminPoppyDomainCheckResponseDataChecksItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**ok** | **bool** |  | [optional] 
**level** | **str** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_domain_check_response_data_checks_item import AdminPoppyDomainCheckResponseDataChecksItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyDomainCheckResponseDataChecksItem from a JSON string
admin_poppy_domain_check_response_data_checks_item_instance = AdminPoppyDomainCheckResponseDataChecksItem.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyDomainCheckResponseDataChecksItem.to_json())

# convert the object into a dict
admin_poppy_domain_check_response_data_checks_item_dict = admin_poppy_domain_check_response_data_checks_item_instance.to_dict()
# create an instance of AdminPoppyDomainCheckResponseDataChecksItem from a dict
admin_poppy_domain_check_response_data_checks_item_from_dict = AdminPoppyDomainCheckResponseDataChecksItem.from_dict(admin_poppy_domain_check_response_data_checks_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


