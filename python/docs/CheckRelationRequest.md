# CheckRelationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**object** | **str** |  | 
**relation** | **str** |  | 
**subject** | **str** | namespace:id, optionally with #relation. | 

## Example

```python
from lumoauth_api_client.models.check_relation_request import CheckRelationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CheckRelationRequest from a JSON string
check_relation_request_instance = CheckRelationRequest.from_json(json)
# print the JSON string representation of the object
print(CheckRelationRequest.to_json())

# convert the object into a dict
check_relation_request_dict = check_relation_request_instance.to_dict()
# create an instance of CheckRelationRequest from a dict
check_relation_request_from_dict = CheckRelationRequest.from_dict(check_relation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


