# CheckPermissionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission** | **str** |  | 
**context** | **Dict[str, object]** | Optional: resource_id and the slugs of defined environment attributes. | [optional] 
**subject** | **Dict[str, object]** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional] 

## Example

```python
from lumoauth_api_client.models.check_permission_request import CheckPermissionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CheckPermissionRequest from a JSON string
check_permission_request_instance = CheckPermissionRequest.from_json(json)
# print the JSON string representation of the object
print(CheckPermissionRequest.to_json())

# convert the object into a dict
check_permission_request_dict = check_permission_request_instance.to_dict()
# create an instance of CheckPermissionRequest from a dict
check_permission_request_from_dict = CheckPermissionRequest.from_dict(check_permission_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


