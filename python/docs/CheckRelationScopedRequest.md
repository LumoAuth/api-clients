# CheckRelationScopedRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**object** | **str** |  | 
**relation** | **str** |  | 
**user** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.check_relation_scoped_request import CheckRelationScopedRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CheckRelationScopedRequest from a JSON string
check_relation_scoped_request_instance = CheckRelationScopedRequest.from_json(json)
# print the JSON string representation of the object
print(CheckRelationScopedRequest.to_json())

# convert the object into a dict
check_relation_scoped_request_dict = check_relation_scoped_request_instance.to_dict()
# create an instance of CheckRelationScopedRequest from a dict
check_relation_scoped_request_from_dict = CheckRelationScopedRequest.from_dict(check_relation_scoped_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


