# LumoAuthApiClient::GetStreamConfig200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'lumoauth_api_client'

LumoAuthApiClient::GetStreamConfig200Response.openapi_one_of
# =>
# [
#   :'SsfStream',
#   :'SsfStreamList'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'lumoauth_api_client'

LumoAuthApiClient::GetStreamConfig200Response.build(data)
# => #<SsfStream:0x00007fdd4aab02a0>

LumoAuthApiClient::GetStreamConfig200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SsfStream`
- `SsfStreamList`
- `nil` (if no type matches)

