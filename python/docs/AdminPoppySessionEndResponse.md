# AdminPoppySessionEndResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, object]** |  | [optional] 
**ended** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_session_end_response import AdminPoppySessionEndResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppySessionEndResponse from a JSON string
admin_poppy_session_end_response_instance = AdminPoppySessionEndResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPoppySessionEndResponse.to_json())

# convert the object into a dict
admin_poppy_session_end_response_dict = admin_poppy_session_end_response_instance.to_dict()
# create an instance of AdminPoppySessionEndResponse from a dict
admin_poppy_session_end_response_from_dict = AdminPoppySessionEndResponse.from_dict(admin_poppy_session_end_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


