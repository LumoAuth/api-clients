# LumoAuthApiClient::EnrollAuthenticator201Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'lumoauth_api_client'

LumoAuthApiClient::EnrollAuthenticator201Response.openapi_one_of
# =>
# [
#   :'EmailEnrollmentStarted',
#   :'PasskeyEnrollmentStarted',
#   :'PushEnrollmentStarted',
#   :'SmsEnrollmentStarted',
#   :'TotpEnrollmentStarted'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'lumoauth_api_client'

LumoAuthApiClient::EnrollAuthenticator201Response.build(data)
# => #<EmailEnrollmentStarted:0x00007fdd4aab02a0>

LumoAuthApiClient::EnrollAuthenticator201Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EmailEnrollmentStarted`
- `PasskeyEnrollmentStarted`
- `PushEnrollmentStarted`
- `SmsEnrollmentStarted`
- `TotpEnrollmentStarted`
- `nil` (if no type matches)

