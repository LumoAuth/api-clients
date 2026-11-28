# SetClientScopesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | **List[str]** | The full list of scopes that the client may request. | 

## Example

```python
from lumoauth_api_client.models.set_client_scopes_request import SetClientScopesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetClientScopesRequest from a JSON string
set_client_scopes_request_instance = SetClientScopesRequest.from_json(json)
# print the JSON string representation of the object
print(SetClientScopesRequest.to_json())

# convert the object into a dict
set_client_scopes_request_dict = set_client_scopes_request_instance.to_dict()
# create an instance of SetClientScopesRequest from a dict
set_client_scopes_request_from_dict = SetClientScopesRequest.from_dict(set_client_scopes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


