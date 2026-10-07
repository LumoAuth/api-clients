# AbacAttributesListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AbacAttributeDefinition]**](AbacAttributeDefinition.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_attributes_list_response import AbacAttributesListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AbacAttributesListResponse from a JSON string
abac_attributes_list_response_instance = AbacAttributesListResponse.from_json(json)
# print the JSON string representation of the object
print(AbacAttributesListResponse.to_json())

# convert the object into a dict
abac_attributes_list_response_dict = abac_attributes_list_response_instance.to_dict()
# create an instance of AbacAttributesListResponse from a dict
abac_attributes_list_response_from_dict = AbacAttributesListResponse.from_dict(abac_attributes_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


