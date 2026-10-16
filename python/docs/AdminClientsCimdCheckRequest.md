# AdminClientsCimdCheckRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **str** | The Client Identifier URL (https, with a path). | 
**refresh** | **bool** | Ignore the cached document and fetch it again. | [optional] [default to False]

## Example

```python
from lumoauth_api_client.models.admin_clients_cimd_check_request import AdminClientsCimdCheckRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminClientsCimdCheckRequest from a JSON string
admin_clients_cimd_check_request_instance = AdminClientsCimdCheckRequest.from_json(json)
# print the JSON string representation of the object
print(AdminClientsCimdCheckRequest.to_json())

# convert the object into a dict
admin_clients_cimd_check_request_dict = admin_clients_cimd_check_request_instance.to_dict()
# create an instance of AdminClientsCimdCheckRequest from a dict
admin_clients_cimd_check_request_from_dict = AdminClientsCimdCheckRequest.from_dict(admin_clients_cimd_check_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


