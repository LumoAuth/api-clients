# PaginationMeta

Pagination block of list responses (`meta` and `pagination` are identical).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | 
**page** | **int** |  | 
**limit** | **int** |  | 
**total_pages** | **int** |  | 
**has_next_page** | **bool** |  | 
**has_previous_page** | **bool** |  | 

## Example

```python
from lumoauth_api_client.models.pagination_meta import PaginationMeta

# TODO update the JSON string below
json = "{}"
# create an instance of PaginationMeta from a JSON string
pagination_meta_instance = PaginationMeta.from_json(json)
# print the JSON string representation of the object
print(PaginationMeta.to_json())

# convert the object into a dict
pagination_meta_dict = pagination_meta_instance.to_dict()
# create an instance of PaginationMeta from a dict
pagination_meta_from_dict = PaginationMeta.from_dict(pagination_meta_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


