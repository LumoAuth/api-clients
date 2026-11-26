# PoppyVerifyRequestRequiredScope

Scopes that the operation needs, as a space-separated string or a list. Without an access token the answer is the 401 challenge that names them; with a token that lacks one it is insufficient_scope.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from lumoauth_api_client.models.poppy_verify_request_required_scope import PoppyVerifyRequestRequiredScope

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyVerifyRequestRequiredScope from a JSON string
poppy_verify_request_required_scope_instance = PoppyVerifyRequestRequiredScope.from_json(json)
# print the JSON string representation of the object
print(PoppyVerifyRequestRequiredScope.to_json())

# convert the object into a dict
poppy_verify_request_required_scope_dict = poppy_verify_request_required_scope_instance.to_dict()
# create an instance of PoppyVerifyRequestRequiredScope from a dict
poppy_verify_request_required_scope_from_dict = PoppyVerifyRequestRequiredScope.from_dict(poppy_verify_request_required_scope_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


