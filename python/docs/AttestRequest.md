# AttestRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attestation_token** | **str** | The workload OIDC token (JWT). | 

## Example

```python
from lumoauth_api_client.models.attest_request import AttestRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AttestRequest from a JSON string
attest_request_instance = AttestRequest.from_json(json)
# print the JSON string representation of the object
print(AttestRequest.to_json())

# convert the object into a dict
attest_request_dict = attest_request_instance.to_dict()
# create an instance of AttestRequest from a dict
attest_request_from_dict = AttestRequest.from_dict(attest_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


