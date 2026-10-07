# ExpandRelationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**object** | **str** | Resource as namespace:id | 
**relation** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.expand_relation_request import ExpandRelationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExpandRelationRequest from a JSON string
expand_relation_request_instance = ExpandRelationRequest.from_json(json)
# print the JSON string representation of the object
print(ExpandRelationRequest.to_json())

# convert the object into a dict
expand_relation_request_dict = expand_relation_request_instance.to_dict()
# create an instance of ExpandRelationRequest from a dict
expand_relation_request_from_dict = ExpandRelationRequest.from_dict(expand_relation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


