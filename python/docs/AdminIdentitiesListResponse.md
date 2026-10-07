# AdminIdentitiesListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminIdentitiesListResponseData**](AdminIdentitiesListResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_identities_list_response import AdminIdentitiesListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesListResponse from a JSON string
admin_identities_list_response_instance = AdminIdentitiesListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesListResponse.to_json())

# convert the object into a dict
admin_identities_list_response_dict = admin_identities_list_response_instance.to_dict()
# create an instance of AdminIdentitiesListResponse from a dict
admin_identities_list_response_from_dict = AdminIdentitiesListResponse.from_dict(admin_identities_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


