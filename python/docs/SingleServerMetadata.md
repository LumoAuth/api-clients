# SingleServerMetadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **str** |  | 
**authorization_servers** | **List[str]** |  | 
**bearer_methods_supported** | **List[str]** |  | 
**scopes_supported** | **List[str]** |  | [optional] 
**dpop_bound_access_tokens_required** | **bool** |  | [optional] 
**dpop_signing_alg_values_supported** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.single_server_metadata import SingleServerMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of SingleServerMetadata from a JSON string
single_server_metadata_instance = SingleServerMetadata.from_json(json)
# print the JSON string representation of the object
print(SingleServerMetadata.to_json())

# convert the object into a dict
single_server_metadata_dict = single_server_metadata_instance.to_dict()
# create an instance of SingleServerMetadata from a dict
single_server_metadata_from_dict = SingleServerMetadata.from_dict(single_server_metadata_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


