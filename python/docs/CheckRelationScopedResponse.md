# CheckRelationScopedResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **bool** |  | [optional] 
**object** | **str** |  | [optional] 
**relation** | **str** |  | [optional] 
**user** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.check_relation_scoped_response import CheckRelationScopedResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CheckRelationScopedResponse from a JSON string
check_relation_scoped_response_instance = CheckRelationScopedResponse.from_json(json)
# print the JSON string representation of the object
print(CheckRelationScopedResponse.to_json())

# convert the object into a dict
check_relation_scoped_response_dict = check_relation_scoped_response_instance.to_dict()
# create an instance of CheckRelationScopedResponse from a dict
check_relation_scoped_response_from_dict = CheckRelationScopedResponse.from_dict(check_relation_scoped_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


