# CheckPermissionsBulkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | **List[str]** |  | 
**context** | **Dict[str, object]** | Optional: resource_id and the slugs of defined environment attributes. | [optional] 
**subject** | **Dict[str, object]** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional] 

## Example

```python
from lumoauth_api_client.models.check_permissions_bulk_request import CheckPermissionsBulkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CheckPermissionsBulkRequest from a JSON string
check_permissions_bulk_request_instance = CheckPermissionsBulkRequest.from_json(json)
# print the JSON string representation of the object
print(CheckPermissionsBulkRequest.to_json())

# convert the object into a dict
check_permissions_bulk_request_dict = check_permissions_bulk_request_instance.to_dict()
# create an instance of CheckPermissionsBulkRequest from a dict
check_permissions_bulk_request_from_dict = CheckPermissionsBulkRequest.from_dict(check_permissions_bulk_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


