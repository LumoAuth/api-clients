# CheckAbacBulkResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CheckAbacBulkResponseResultsItem]**](CheckAbacBulkResponseResultsItem.md) |  | [optional] 
**user_id** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.check_abac_bulk_response import CheckAbacBulkResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CheckAbacBulkResponse from a JSON string
check_abac_bulk_response_instance = CheckAbacBulkResponse.from_json(json)
# print the JSON string representation of the object
print(CheckAbacBulkResponse.to_json())

# convert the object into a dict
check_abac_bulk_response_dict = check_abac_bulk_response_instance.to_dict()
# create an instance of CheckAbacBulkResponse from a dict
check_abac_bulk_response_from_dict = CheckAbacBulkResponse.from_dict(check_abac_bulk_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


