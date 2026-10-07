# CheckAbacBulkResponseResultsItem

A check missing resourceType/action yields only index, allowed=false and error.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **int** |  | [optional] 
**resource_type** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**resource_id** | **str** |  | [optional] 
**allowed** | **bool** |  | [optional] 
**reason** | **str** |  | [optional] 
**error** | **str** | Only present for invalid entries | [optional] 

## Example

```python
from lumoauth_api_client.models.check_abac_bulk_response_results_item import CheckAbacBulkResponseResultsItem

# TODO update the JSON string below
json = "{}"
# create an instance of CheckAbacBulkResponseResultsItem from a JSON string
check_abac_bulk_response_results_item_instance = CheckAbacBulkResponseResultsItem.from_json(json)
# print the JSON string representation of the object
print(CheckAbacBulkResponseResultsItem.to_json())

# convert the object into a dict
check_abac_bulk_response_results_item_dict = check_abac_bulk_response_results_item_instance.to_dict()
# create an instance of CheckAbacBulkResponseResultsItem from a dict
check_abac_bulk_response_results_item_from_dict = CheckAbacBulkResponseResultsItem.from_dict(check_abac_bulk_response_results_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


