# UserinfoResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **string** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. | [default to undefined]
**identity_type** | **string** | Only for non-user principals. | [optional] [default to undefined]
**tenant** | **string** | Organization slug. | [optional] [default to undefined]
**name** | **string** | profile scope (users); agent / client display name. | [optional] [default to undefined]
**given_name** | **string** | profile scope. | [optional] [default to undefined]
**family_name** | **string** | profile scope. | [optional] [default to undefined]
**middle_name** | **string** | profile scope. | [optional] [default to undefined]
**nickname** | **string** | profile scope. | [optional] [default to undefined]
**preferred_username** | **string** | profile scope. | [optional] [default to undefined]
**profile** | **string** | profile scope. | [optional] [default to undefined]
**picture** | **string** | profile scope. | [optional] [default to undefined]
**website** | **string** | profile scope. | [optional] [default to undefined]
**gender** | **string** | profile scope. | [optional] [default to undefined]
**birthdate** | **string** | profile scope (YYYY-MM-DD). | [optional] [default to undefined]
**zoneinfo** | **string** | profile scope. | [optional] [default to undefined]
**locale** | **string** | profile scope. | [optional] [default to undefined]
**updated_at** | **number** | profile scope — Unix seconds. | [optional] [default to undefined]
**email** | **string** | email scope. | [optional] [default to undefined]
**email_verified** | **boolean** | email scope. | [optional] [default to undefined]
**phone_number** | **string** | phone scope. | [optional] [default to undefined]
**phone_number_verified** | **boolean** | phone scope. | [optional] [default to undefined]
**address** | **{ [key: string]: any; }** | address scope — OIDC address claim object. | [optional] [default to undefined]
**roles** | **Array&lt;string&gt;** | Only when the token\&#39;s client explicitly enabled the roles claim. | [optional] [default to undefined]
**agent_id** | **string** | Agents only. | [optional] [default to undefined]
**workload_identity** | **string** | Agents only. | [optional] [default to undefined]
**capabilities** | **Array&lt;string&gt;** | Agents only. | [optional] [default to undefined]
**client_id** | **string** | Clients only. | [optional] [default to undefined]

## Example

```typescript
import { UserinfoResponse } from '@lumoauth/api-client';

const instance: UserinfoResponse = {
    sub,
    identity_type,
    tenant,
    name,
    given_name,
    family_name,
    middle_name,
    nickname,
    preferred_username,
    profile,
    picture,
    website,
    gender,
    birthdate,
    zoneinfo,
    locale,
    updated_at,
    email,
    email_verified,
    phone_number,
    phone_number_verified,
    address,
    roles,
    agent_id,
    workload_identity,
    capabilities,
    client_id,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
