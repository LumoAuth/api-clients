# AdminPoppyDomainCheckResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **str** |  | [optional] 
**ok** | **bool** |  | [optional] 
**checks** | [**List[AdminPoppyDomainCheckResponseDataChecksItem]**](AdminPoppyDomainCheckResponseDataChecksItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_domain_check_response_data import AdminPoppyDomainCheckResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyDomainCheckResponseData from a JSON string
admin_poppy_domain_check_response_data_instance = AdminPoppyDomainCheckResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyDomainCheckResponseData.to_json())

# convert the object into a dict
admin_poppy_domain_check_response_data_dict = admin_poppy_domain_check_response_data_instance.to_dict()
# create an instance of AdminPoppyDomainCheckResponseData from a dict
admin_poppy_domain_check_response_data_from_dict = AdminPoppyDomainCheckResponseData.from_dict(admin_poppy_domain_check_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


