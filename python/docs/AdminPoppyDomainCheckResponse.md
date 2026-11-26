# AdminPoppyDomainCheckResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminPoppyDomainCheckResponseData**](AdminPoppyDomainCheckResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_domain_check_response import AdminPoppyDomainCheckResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyDomainCheckResponse from a JSON string
admin_poppy_domain_check_response_instance = AdminPoppyDomainCheckResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyDomainCheckResponse.to_json())

# convert the object into a dict
admin_poppy_domain_check_response_dict = admin_poppy_domain_check_response_instance.to_dict()
# create an instance of AdminPoppyDomainCheckResponse from a dict
admin_poppy_domain_check_response_from_dict = AdminPoppyDomainCheckResponse.from_dict(admin_poppy_domain_check_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


