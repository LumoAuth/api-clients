# GetProtectedResourceMetadataRootResponse1ResourcesItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **str** |  | 
**resource_metadata_url** | **str** | Per-server protected resource metadata URL. | 
**authorization_servers** | **List[str]** |  | 

## Example

```python
from lumoauth_api_client.models.get_protected_resource_metadata_root_response1_resources_item import GetProtectedResourceMetadataRootResponse1ResourcesItem

# TODO update the JSON string below
json = "{}"
# create an instance of GetProtectedResourceMetadataRootResponse1ResourcesItem from a JSON string
get_protected_resource_metadata_root_response1_resources_item_instance = GetProtectedResourceMetadataRootResponse1ResourcesItem.from_json(json)
# print the JSON string representation of the object
print(GetProtectedResourceMetadataRootResponse1ResourcesItem.to_json())

# convert the object into a dict
get_protected_resource_metadata_root_response1_resources_item_dict = get_protected_resource_metadata_root_response1_resources_item_instance.to_dict()
# create an instance of GetProtectedResourceMetadataRootResponse1ResourcesItem from a dict
get_protected_resource_metadata_root_response1_resources_item_from_dict = GetProtectedResourceMetadataRootResponse1ResourcesItem.from_dict(get_protected_resource_metadata_root_response1_resources_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


