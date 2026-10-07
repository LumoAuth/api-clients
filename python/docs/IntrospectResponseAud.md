# IntrospectResponseAud

Audience: a single resource URI / client_id as a string, or an array when the token was issued for several resources (RFC 8707).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from lumoauth_api_client.models.introspect_response_aud import IntrospectResponseAud

# TODO update the JSON string below
json = "{}"
# create an instance of IntrospectResponseAud from a JSON string
introspect_response_aud_instance = IntrospectResponseAud.from_json(json)
# print the JSON string representation of the object
print(IntrospectResponseAud.to_json())

# convert the object into a dict
introspect_response_aud_dict = introspect_response_aud_instance.to_dict()
# create an instance of IntrospectResponseAud from a dict
introspect_response_aud_from_dict = IntrospectResponseAud.from_dict(introspect_response_aud_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


