# CheckAnyPermissionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **bool** |  | [optional] 
**permissions** | **List[str]** | The permissions that were checked | [optional] 
**subject_type** | **str** |  | [optional] 
**subject_id** | **str** |  | [optional] 
**user_id** | **str** | Only present when the subject is a user (legacy alias of subject_id) | [optional] 
**context** | **Dict[str, object]** | The request context echoed back | [optional] 

## Example

```python
from lumoauth_api_client.models.check_any_permission_response import CheckAnyPermissionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CheckAnyPermissionResponse from a JSON string
check_any_permission_response_instance = CheckAnyPermissionResponse.from_json(json)
# print the JSON string representation of the object
print(CheckAnyPermissionResponse.to_json())

# convert the object into a dict
check_any_permission_response_dict = check_any_permission_response_instance.to_dict()
# create an instance of CheckAnyPermissionResponse from a dict
check_any_permission_response_from_dict = CheckAnyPermissionResponse.from_dict(check_any_permission_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


