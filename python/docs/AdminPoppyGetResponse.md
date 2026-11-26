# AdminPoppyGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminPoppyGetResponseData**](AdminPoppyGetResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_get_response import AdminPoppyGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyGetResponse from a JSON string
admin_poppy_get_response_instance = AdminPoppyGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyGetResponse.to_json())

# convert the object into a dict
admin_poppy_get_response_dict = admin_poppy_get_response_instance.to_dict()
# create an instance of AdminPoppyGetResponse from a dict
admin_poppy_get_response_from_dict = AdminPoppyGetResponse.from_dict(admin_poppy_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


