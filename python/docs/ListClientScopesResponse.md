# ListClientScopesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[str]** |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_client_scopes_response import ListClientScopesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListClientScopesResponse from a JSON string
list_client_scopes_response_instance = ListClientScopesResponse.from_json(json)
# print the JSON string representation of the object
print(ListClientScopesResponse.to_json())

# convert the object into a dict
list_client_scopes_response_dict = list_client_scopes_response_instance.to_dict()
# create an instance of ListClientScopesResponse from a dict
list_client_scopes_response_from_dict = ListClientScopesResponse.from_dict(list_client_scopes_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


