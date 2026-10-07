# CheckRelationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **bool** |  | [optional] 
**object** | **str** |  | [optional] 
**relation** | **str** |  | [optional] 
**subject** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.check_relation_response import CheckRelationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CheckRelationResponse from a JSON string
check_relation_response_instance = CheckRelationResponse.from_json(json)
# print the JSON string representation of the object
print(CheckRelationResponse.to_json())

# convert the object into a dict
check_relation_response_dict = check_relation_response_instance.to_dict()
# create an instance of CheckRelationResponse from a dict
check_relation_response_from_dict = CheckRelationResponse.from_dict(check_relation_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


