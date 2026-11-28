# CreateStreamConfigRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | RFC 8935 push ({\"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"https://...\"}) or RFC 8936 poll. | [optional]
**events_requested** | Option<**Vec<String>**> | Event type URIs. | [optional]
**audience** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


