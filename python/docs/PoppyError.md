# PoppyError

An error with a JSON body, as Personal Agent Protocol defines it (invalid_session, session_ended, version_unsupported, invalid_request).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **str** |  | 
**error_description** | **str** | For the developer of the personal agent. | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_error import PoppyError

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyError from a JSON string
poppy_error_instance = PoppyError.from_json(json)
# print the JSON string representation of the object
print(PoppyError.to_json())

# convert the object into a dict
poppy_error_dict = poppy_error_instance.to_dict()
# create an instance of PoppyError from a dict
poppy_error_from_dict = PoppyError.from_dict(poppy_error_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


