# RedactedSecret

Marker returned in place of a stored secret: the value is never echoed back.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configured** | **bool** |  | 
**redacted** | **bool** |  | 

## Example

```python
from lumoauth_api_client.models.redacted_secret import RedactedSecret

# TODO update the JSON string below
json = "{}"
# create an instance of RedactedSecret from a JSON string
redacted_secret_instance = RedactedSecret.from_json(json)
# print the JSON string representation of the object
print(RedactedSecret.to_json())

# convert the object into a dict
redacted_secret_dict = redacted_secret_instance.to_dict()
# create an instance of RedactedSecret from a dict
redacted_secret_from_dict = RedactedSecret.from_dict(redacted_secret_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


