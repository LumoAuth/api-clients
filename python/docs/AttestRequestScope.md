# AttestRequestScope

Optional: narrows the token to these of the agent's capabilities, in their stored `<resource>:<action>` form. A space-separated string or a list of strings. A value that the agent does not hold, or that is not a scope token, is `400 invalid_scope`.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from lumoauth_api_client.models.attest_request_scope import AttestRequestScope

# TODO update the JSON string below
json = "{}"
# create an instance of AttestRequestScope from a JSON string
attest_request_scope_instance = AttestRequestScope.from_json(json)
# print the JSON string representation of the object
print(AttestRequestScope.to_json())

# convert the object into a dict
attest_request_scope_dict = attest_request_scope_instance.to_dict()
# create an instance of AttestRequestScope from a dict
attest_request_scope_from_dict = AttestRequestScope.from_dict(attest_request_scope_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


