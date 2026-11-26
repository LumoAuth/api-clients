# AdminPoppyDomainCheckRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **str** | One of the domains of the settings. | 

## Example

```python
from lumoauth_api_client.models.admin_poppy_domain_check_request import AdminPoppyDomainCheckRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyDomainCheckRequest from a JSON string
admin_poppy_domain_check_request_instance = AdminPoppyDomainCheckRequest.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyDomainCheckRequest.to_json())

# convert the object into a dict
admin_poppy_domain_check_request_dict = admin_poppy_domain_check_request_instance.to_dict()
# create an instance of AdminPoppyDomainCheckRequest from a dict
admin_poppy_domain_check_request_from_dict = AdminPoppyDomainCheckRequest.from_dict(admin_poppy_domain_check_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


