# CheckAbacBulkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**checks** | **List[Dict[str, object]]** | Each {\&quot;resourceType\&quot;, \&quot;action\&quot;, \&quot;resourceId\&quot;}. | 
**environment** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.check_abac_bulk_request import CheckAbacBulkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CheckAbacBulkRequest from a JSON string
check_abac_bulk_request_instance = CheckAbacBulkRequest.from_json(json)
# print the JSON string representation of the object
print(CheckAbacBulkRequest.to_json())

# convert the object into a dict
check_abac_bulk_request_dict = check_abac_bulk_request_instance.to_dict()
# create an instance of CheckAbacBulkRequest from a dict
check_abac_bulk_request_from_dict = CheckAbacBulkRequest.from_dict(check_abac_bulk_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


