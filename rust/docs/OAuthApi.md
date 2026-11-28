# \OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
[**backchannel_authorize**](OAuthApi.md#backchannel_authorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
[**check_email_first**](OAuthApi.md#check_email_first) | **POST** /orgs/{orgId}/api/v1/oauth/check-email | Sign-in methods for an email-first form
[**device_authorization**](OAuthApi.md#device_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
[**get_client_configuration**](OAuthApi.md#get_client_configuration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
[**get_device_verification**](OAuthApi.md#get_device_verification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
[**get_org_selection**](OAuthApi.md#get_org_selection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
[**introspect**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
[**par**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
[**register_client**](OAuthApi.md#register_client) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
[**request_magic_link**](OAuthApi.md#request_magic_link) | **POST** /orgs/{orgId}/api/v1/oauth/magic-link | Request a sign-in link by email
[**revoke**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
[**social_callback**](OAuthApi.md#social_callback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
[**social_callback_post**](OAuthApi.md#social_callback_post) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
[**social_login**](OAuthApi.md#social_login) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
[**submit_authorization**](OAuthApi.md#submit_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
[**submit_device_verification**](OAuthApi.md#submit_device_verification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
[**submit_login_json**](OAuthApi.md#submit_login_json) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow
[**submit_org_selection**](OAuthApi.md#submit_org_selection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection
[**token**](OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint



## authorize

> String authorize(org_id)
OAuth 2.1 / OIDC authorization endpoint

Browser-facing: validates the authorization request (query parameters, request object or PAR request_uri), renders the hosted login / consent pages and finally delivers the authorization response (code, state, iss, session_state — or a JARM JWT) to the client's redirect_uri in the requested response_mode. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## backchannel_authorize

> models::BackchannelAuthorizeResponse backchannel_authorize(org_id, scope, login_hint, login_hint_token, id_token_hint, binding_message, acr_values, requested_expiry, client_notification_token, authorization_details, client_id, client_secret, client_assertion_type, client_assertion)
CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**scope** | **String** |  | [required] |
**login_hint** | Option<**String**> |  |  |
**login_hint_token** | Option<**String**> |  |  |
**id_token_hint** | Option<**String**> |  |  |
**binding_message** | Option<**String**> |  |  |
**acr_values** | Option<**String**> |  |  |
**requested_expiry** | Option<**i32**> | Seconds. An application's request: only shortens the lifetime, which is 120 s; at least 30. An agent-initiated request: 30 to 600, default 300. A value outside the range is moved into it, not refused. |  |
**client_notification_token** | Option<**String**> |  |  |
**authorization_details** | Option<**String**> |  |  |
**client_id** | Option<**String**> | Required for a public client; a confidential client may authenticate with HTTP Basic instead. |  |
**client_secret** | Option<**String**> | client_secret_post |  |
**client_assertion_type** | Option<**String**> |  |  |
**client_assertion** | Option<**String**> | private_key_jwt (RFC 7523) |  |

### Return type

[**models::BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_email_first

> models::CheckEmailFirstResponse check_email_first(org_id, check_email_first_request)
Sign-in methods for an email-first form

For applications that render their own sign-in form. Returns the sign-in methods that the organization offers, so that the form can show the next step after an address was typed. The answer does not depend on the address: `exists` is always `true`, and a known address and a new one get the same answer. Takes no credential and signs nobody in. A browser request must come from one of the allowed origins of the application named by `client_id`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**check_email_first_request** | [**CheckEmailFirstRequest**](CheckEmailFirstRequest.md) |  | [required] |

### Return type

[**models::CheckEmailFirstResponse**](CheckEmailFirstResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## device_authorization

> models::DeviceAuthorizationResponse device_authorization(org_id, client_id, client_secret, client_assertion_type, client_assertion, scope, resource)
Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code. RFC 9396 authorization_details is not read here, as at the authorization and pushed authorization endpoints: rich authorization requests are accepted for agents only (JIT permissions, agent-initiated CIBA); what the token may do is the scope.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | Option<**String**> | Required for a public client; a confidential client may authenticate with HTTP Basic instead. |  |
**client_secret** | Option<**String**> | client_secret_post |  |
**client_assertion_type** | Option<**String**> |  |  |
**client_assertion** | Option<**String**> | private_key_jwt (RFC 7523) |  |
**scope** | Option<**String**> | Space-separated scopes. |  |
**resource** | Option<**String**> | RFC 8707 resource indicator (repeat the field for several): the API that the access token is for. Validated as at the authorization endpoint (absolute URI without a fragment, within the client's audience URIs; invalid_target otherwise). The access token of the device grant is issued for these resources; its token request may name a subset of them. |  |

### Return type

[**models::DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_client_configuration

> models::RegisteredClientMetadata get_client_configuration(org_id, client_id)
Read a dynamically registered client (RFC 7592 / OIDC DCR §4)

Client configuration endpoint. Authenticated with the registration_access_token issued at registration (Authorization: Bearer), presented at the same issuer the client was registered under.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::RegisteredClientMetadata**](RegisteredClientMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_device_verification

> String get_device_verification(org_id)
Device verification page (RFC 8628 §3.3)

Browser page where the end user enters the user_code (or arrives via verification_uri_complete) and approves or denies the device. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_org_selection

> String get_org_selection(org_id)
Organization selector page

Browser page shown during authorization when the signed-in user belongs to several organizations. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## introspect

> models::IntrospectResponse introspect(org_id, token, token_type_hint, client_id, client_secret, client_assertion_type, client_assertion)
Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**token** | **String** |  | [required] |
**token_type_hint** | Option<**String**> |  |  |
**client_id** | Option<**String**> | The calling client, with client_secret (client_secret_post), or an agent's id with its secret or assertion. Not needed with HTTP Basic or a client assertion. A public client cannot introspect (401 invalid_client). |  |
**client_secret** | Option<**String**> | client_secret_post |  |
**client_assertion_type** | Option<**String**> |  |  |
**client_assertion** | Option<**String**> | private_key_jwt (RFC 7523) |  |

### Return type

[**models::IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## par

> models::ParResponse par(org_id, response_type, redirect_uri, scope, state, nonce, code_challenge, code_challenge_method, request, resource, prompt, login_hint, client_id, client_secret, client_assertion_type, client_assertion)
Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**response_type** | Option<**String**> |  |  |
**redirect_uri** | Option<**String**> |  |  |
**scope** | Option<**String**> |  |  |
**state** | Option<**String**> |  |  |
**nonce** | Option<**String**> |  |  |
**code_challenge** | Option<**String**> |  |  |
**code_challenge_method** | Option<**String**> |  |  |
**request** | Option<**String**> | A signed request object (JAR, RFC 9101). |  |
**resource** | Option<**String**> |  |  |
**prompt** | Option<**String**> |  |  |
**login_hint** | Option<**String**> |  |  |
**client_id** | Option<**String**> | Required for a public client; a confidential client may authenticate with HTTP Basic instead. |  |
**client_secret** | Option<**String**> | client_secret_post |  |
**client_assertion_type** | Option<**String**> |  |  |
**client_assertion** | Option<**String**> | private_key_jwt (RFC 7523) |  |

### Return type

[**models::ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## register_client

> models::RegisterClientResponse register_client(org_id, register_client_request)
Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it. Refused with invalid_client_metadata: grant_types other than authorization_code and refresh_token, response_types other than code and none, subject_type other than public, sector_identifier_uri, request_uris, userinfo_signed_response_alg, an id_token_signed_response_alg other than the organization's signing algorithm, and every encryption member (id_token_encrypted_response_*, userinfo_encrypted_response_*, request_object_encryption_*, authorization_encrypted_response_*).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**register_client_request** | [**RegisterClientRequest**](RegisterClientRequest.md) | RFC 7591 client metadata. | [required] |

### Return type

[**models::RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## request_magic_link

> models::RequestMagicLinkResponse request_magic_link(org_id, request_magic_link_request)
Request a sign-in link by email

For applications that render their own sign-in form. Mails a single-use sign-in link to the address when it belongs to an account of the organization, and gives the same answer when it does not. Signs nobody in and mints no tokens: the person opens the link, confirms on the hosted page, and is then sent to `return_to`, where the application starts its normal authorization flow. A browser request must come from one of the allowed origins of the application named by `client_id`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**request_magic_link_request** | [**RequestMagicLinkRequest**](RequestMagicLinkRequest.md) |  | [required] |

### Return type

[**models::RequestMagicLinkResponse**](RequestMagicLinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## revoke

> serde_json::Value revoke(org_id, token, token_type_hint, client_id, client_secret, client_assertion_type, client_assertion)
Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**token** | **String** |  | [required] |
**token_type_hint** | Option<**String**> |  |  |
**client_id** | Option<**String**> | Required for a public client; a confidential client may authenticate with HTTP Basic instead. |  |
**client_secret** | Option<**String**> | client_secret_post |  |
**client_assertion_type** | Option<**String**> |  |  |
**client_assertion** | Option<**String**> | private_key_jwt (RFC 7523) |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## social_callback

> social_callback(org_id, provider)
Social / enterprise identity-provider callback

Receives the provider's authorization response (code + state), exchanges the code, verifies the ID token / fetches the profile, finds or provisions the user and signs them in. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## social_callback_post

> social_callback_post(org_id, provider)
Social / enterprise identity-provider callback (form_post)

Same as GET for providers that deliver the authorization response with response_mode=form_post. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## social_login

> social_login(org_id, provider)
Start social / enterprise identity-provider login

Browser entry point used by the hosted login page. Generates a signed state (carrying the optional redirect_uri and client_id) and redirects to the provider's authorization endpoint. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_authorization

> String submit_authorization(org_id)
OAuth 2.1 / OIDC authorization endpoint (form submission)

Same as GET; also receives the consent form submission. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_device_verification

> String submit_device_verification(org_id)
Submit device verification

Browser form submission: code entry, or the approve / deny decision for a device. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_login_json

> models::SubmitLoginJsonResponse submit_login_json(org_id, submit_login_json_request)
Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**submit_login_json_request** | [**SubmitLoginJsonRequest**](SubmitLoginJsonRequest.md) |  | [required] |

### Return type

[**models::SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_org_selection

> String submit_org_selection(org_id)
Submit organization selection

Stores the chosen organization in the session and resumes the pending authorization request. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## token

> models::TokenResponse token(org_id, grant_type, code, redirect_uri, code_verifier, refresh_token, device_code, auth_req_id, scope, resource, subject_token, subject_token_type, actor_token, actor_token_type, requested_token_type, assertion, client_id, client_secret, client_assertion_type, client_assertion)
OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**grant_type** | **String** |  | [required] |
**code** | Option<**String**> |  |  |
**redirect_uri** | Option<**String**> |  |  |
**code_verifier** | Option<**String**> |  |  |
**refresh_token** | Option<**String**> |  |  |
**device_code** | Option<**String**> |  |  |
**auth_req_id** | Option<**String**> | CIBA |  |
**scope** | Option<**String**> |  |  |
**resource** | Option<**String**> |  |  |
**subject_token** | Option<**String**> | Token exchange (RFC 8693) |  |
**subject_token_type** | Option<**String**> |  |  |
**actor_token** | Option<**String**> |  |  |
**actor_token_type** | Option<**String**> |  |  |
**requested_token_type** | Option<**String**> |  |  |
**assertion** | Option<**String**> | JWT bearer / ID-JAG grant |  |
**client_id** | Option<**String**> | Required for a public client; a confidential client may authenticate with HTTP Basic instead. |  |
**client_secret** | Option<**String**> | client_secret_post |  |
**client_assertion_type** | Option<**String**> |  |  |
**client_assertion** | Option<**String**> | private_key_jwt (RFC 7523) |  |

### Return type

[**models::TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

