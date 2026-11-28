# CheckAbacRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_type** | **str** |  | 
**action** | **str** |  | 
**resource_id** | **str** |  | [optional] 
**environment** | **Dict[str, object]** | Values of defined environment attributes. | [optional] 

## Example

```python
from lumoauth_api_client.models.check_abac_request import CheckAbacRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CheckAbacRequest from a JSON string
check_abac_request_instance = CheckAbacRequest.from_json(json)
# print the JSON string representation of the object
print(CheckAbacRequest.to_json())

# convert the object into a dict
check_abac_request_dict = check_abac_request_instance.to_dict()
# create an instance of CheckAbacRequest from a dict
check_abac_request_from_dict = CheckAbacRequest.from_dict(check_abac_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


