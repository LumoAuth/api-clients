# ListClientsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[OAuthClient]**](OAuthClient.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_clients_response import ListClientsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListClientsResponse from a JSON string
list_clients_response_instance = ListClientsResponse.from_json(json)
# print the JSON string representation of the object
print(ListClientsResponse.to_json())

# convert the object into a dict
list_clients_response_dict = list_clients_response_instance.to_dict()
# create an instance of ListClientsResponse from a dict
list_clients_response_from_dict = ListClientsResponse.from_dict(list_clients_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


