# \OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
[**backchannel_authorize**](OAuthApi.md#backchannel_authorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
[**device_authorization**](OAuthApi.md#device_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
[**get_client_configuration**](OAuthApi.md#get_client_configuration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
[**get_device_verification**](OAuthApi.md#get_device_verification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
[**get_org_selection**](OAuthApi.md#get_org_selection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
[**introspect**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
[**par**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
[**passkey_login**](OAuthApi.md#passkey_login) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point
[**register_client**](OAuthApi.md#register_client) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
[**revoke**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
[**social_callback**](OAuthApi.md#social_callback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
[**social_callback_post**](OAuthApi.md#social_callback_post) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
[**social_login**](OAuthApi.md#social_login) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
[**submit_authorization**](OAuthApi.md#submit_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
[**submit_device_verification**](OAuthApi.md#submit_device_verification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
[**submit_login**](OAuthApi.md#submit_login) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission
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

> models::BackchannelAuthorizeResponse backchannel_authorize(org_id)
CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## device_authorization

> models::DeviceAuthorizationResponse device_authorization(org_id)
Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

> models::IntrospectResponse introspect(org_id)
Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## par

> models::ParResponse par(org_id)
Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## passkey_login

> passkey_login(org_id)
Passkey login entry point

Placeholder: flashes an informational message and redirects to the hosted login page. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## register_client

> models::RegisterClientResponse register_client(org_id)
Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## revoke

> serde_json::Value revoke(org_id)
Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
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


## submit_login

> submit_login(org_id)
Hosted login form submission

Receives the hosted OAuth login page's form (email, password, csrf token and the authorization request parameters). Every outcome — success, invalid credentials, locked account, captcha or CSRF failure — answers with the same redirect back to /oauth/authorize, which re-renders the login page or continues the flow. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_login_json

> models::SubmitLoginJsonResponse submit_login_json(org_id)
Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
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

> models::TokenResponse token(org_id)
OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

