# PoppyVerifyRequest

A request that one of your APIs received from a personal agent, forwarded for verification.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **str** | The method of the request that you received. | 
**url** | **str** | The public address that the personal agent called (a query is ignored). https, or http for a loopback host during development. | 
**headers** | **Dict[str, str]** | The headers of the request by name. Read are Poppy-Session, Poppy-Version, Poppy-Extensions, Authorization and DPoP; send those, or all of them. | 
**required_scope** | [**PoppyVerifyRequestRequiredScope**](PoppyVerifyRequestRequiredScope.md) |  | [optional] 
**resource** | **str** | Only for a service that accepts just the tokens issued for it (RFC 8707) — its resource identifier. The default token is then refused. | [optional] 
**allow_replay** | **bool** | Accept a Session JWT that was verified before, for a service that checks one request in more than one place. | [optional] [default to False]

## Example

```python
from lumoauth_api_client.models.poppy_verify_request import PoppyVerifyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyVerifyRequest from a JSON string
poppy_verify_request_instance = PoppyVerifyRequest.from_json(json)
# print the JSON string representation of the object
print(PoppyVerifyRequest.to_json())

# convert the object into a dict
poppy_verify_request_dict = poppy_verify_request_instance.to_dict()
# create an instance of PoppyVerifyRequest from a dict
poppy_verify_request_from_dict = PoppyVerifyRequest.from_dict(poppy_verify_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


