# AdminClientsCimdCheckResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CimdCheckResult**](CimdCheckResult.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_clients_cimd_check_response import AdminClientsCimdCheckResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminClientsCimdCheckResponse from a JSON string
admin_clients_cimd_check_response_instance = AdminClientsCimdCheckResponse.from_json(json)
# print the JSON string representation of the object
print(AdminClientsCimdCheckResponse.to_json())

# convert the object into a dict
admin_clients_cimd_check_response_dict = admin_clients_cimd_check_response_instance.to_dict()
# create an instance of AdminClientsCimdCheckResponse from a dict
admin_clients_cimd_check_response_from_dict = AdminClientsCimdCheckResponse.from_dict(admin_clients_cimd_check_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


