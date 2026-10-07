# SetClientScopesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[str]** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.set_client_scopes_response import SetClientScopesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SetClientScopesResponse from a JSON string
set_client_scopes_response_instance = SetClientScopesResponse.from_json(json)
# print the JSON string representation of the object
print(SetClientScopesResponse.to_json())

# convert the object into a dict
set_client_scopes_response_dict = set_client_scopes_response_instance.to_dict()
# create an instance of SetClientScopesResponse from a dict
set_client_scopes_response_from_dict = SetClientScopesResponse.from_dict(set_client_scopes_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


