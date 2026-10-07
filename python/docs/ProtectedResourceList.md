# ProtectedResourceList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resources** | [**List[GetProtectedResourceMetadataRootResponse1ResourcesItem]**](GetProtectedResourceMetadataRootResponse1ResourcesItem.md) |  | 

## Example

```python
from lumoauth_api_client.models.protected_resource_list import ProtectedResourceList

# TODO update the JSON string below
json = "{}"
# create an instance of ProtectedResourceList from a JSON string
protected_resource_list_instance = ProtectedResourceList.from_json(json)
# print the JSON string representation of the object
print(ProtectedResourceList.to_json())

# convert the object into a dict
protected_resource_list_dict = protected_resource_list_instance.to_dict()
# create an instance of ProtectedResourceList from a dict
protected_resource_list_from_dict = ProtectedResourceList.from_dict(protected_resource_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


