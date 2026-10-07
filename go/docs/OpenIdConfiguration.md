# OpenIdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | **string** |  | 
**AuthorizationEndpoint** | **string** |  | 
**TokenEndpoint** | **string** |  | 
**JwksUri** | **string** |  | 
**ResponseTypesSupported** | **[]string** |  | 
**SubjectTypesSupported** | **[]string** |  | 
**IdTokenSigningAlgValuesSupported** | **[]string** |  | 
**UserinfoEndpoint** | Pointer to **string** |  | [optional] 
**RegistrationEndpoint** | Pointer to **string** |  | [optional] 
**ScopesSupported** | Pointer to **[]string** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**ClaimsSupported** | Pointer to **[]string** |  | [optional] 
**ResponseModesSupported** | Pointer to **[]string** |  | [optional] 
**AuthorizationSigningAlgValuesSupported** | Pointer to **[]string** | JARM signing algorithms. | [optional] 
**GrantTypesSupported** | Pointer to **[]string** |  | [optional] 
**DeviceAuthorizationEndpoint** | Pointer to **string** |  | [optional] 
**TokenEndpointAuthMethodsSupported** | Pointer to **[]string** |  | [optional] 
**TokenEndpointAuthSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 
**ClaimTypesSupported** | Pointer to **[]string** |  | [optional] 
**ClaimsParameterSupported** | Pointer to **bool** |  | [optional] 
**RequestParameterSupported** | Pointer to **bool** |  | [optional] 
**RequestUriParameterSupported** | Pointer to **bool** |  | [optional] 
**RequireRequestUriRegistration** | Pointer to **bool** |  | [optional] 
**RequireSignedRequestObject** | Pointer to **bool** |  | [optional] 
**RequestObjectSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 
**UiLocalesSupported** | Pointer to **[]string** |  | [optional] 
**AcrValuesSupported** | Pointer to **[]string** | The four MFA tier ACR values, unless overridden in organization settings. | [optional] 
**CodeChallengeMethodsSupported** | Pointer to **[]string** |  | [optional] 
**AuthorizationResponseIssParameterSupported** | Pointer to **bool** |  | [optional] 
**PushedAuthorizationRequestEndpoint** | Pointer to **string** |  | [optional] 
**RequirePushedAuthorizationRequests** | Pointer to **bool** |  | [optional] 
**DpopSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 
**TlsClientCertificateBoundAccessTokens** | Pointer to **bool** |  | [optional] 
**IntrospectionEndpoint** | Pointer to **string** |  | [optional] 
**IntrospectionEndpointAuthMethodsSupported** | Pointer to **[]string** |  | [optional] 
**RevocationEndpoint** | Pointer to **string** |  | [optional] 
**RevocationEndpointAuthMethodsSupported** | Pointer to **[]string** |  | [optional] 
**ResourceIndicatorsSupported** | Pointer to **bool** |  | [optional] 
**EndSessionEndpoint** | Pointer to **string** |  | [optional] 
**CheckSessionIframe** | Pointer to **string** |  | [optional] 
**FrontchannelLogoutSupported** | Pointer to **bool** |  | [optional] 
**FrontchannelLogoutSessionSupported** | Pointer to **bool** |  | [optional] 
**BackchannelLogoutSupported** | Pointer to **bool** |  | [optional] 
**BackchannelLogoutSessionSupported** | Pointer to **bool** |  | [optional] 
**BackchannelAuthenticationEndpoint** | Pointer to **string** |  | [optional] 
**BackchannelTokenDeliveryModesSupported** | Pointer to **[]string** |  | [optional] 
**BackchannelUserCodeParameterSupported** | Pointer to **bool** |  | [optional] 
**ServiceDocumentation** | Pointer to **string** |  | [optional] 
**EntityProfilesSupported** | Pointer to **[]string** |  | [optional] 
**ClientIdMetadataDocumentSupported** | Pointer to **bool** | Only when CIMD is enabled for the organization. | [optional] 
**AuthorizationGrantProfilesSupported** | Pointer to **[]string** | Only when the organization accepts ID-JAGs. | [optional] 
**OpPolicyUri** | Pointer to **string** | Only when configured. | [optional] 
**OpTosUri** | Pointer to **string** | Only when configured. | [optional] 

## Methods

### NewOpenIdConfiguration

`func NewOpenIdConfiguration(issuer string, authorizationEndpoint string, tokenEndpoint string, jwksUri string, responseTypesSupported []string, subjectTypesSupported []string, idTokenSigningAlgValuesSupported []string, ) *OpenIdConfiguration`

NewOpenIdConfiguration instantiates a new OpenIdConfiguration object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOpenIdConfigurationWithDefaults

`func NewOpenIdConfigurationWithDefaults() *OpenIdConfiguration`

NewOpenIdConfigurationWithDefaults instantiates a new OpenIdConfiguration object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIssuer

`func (o *OpenIdConfiguration) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *OpenIdConfiguration) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *OpenIdConfiguration) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.


### GetAuthorizationEndpoint

`func (o *OpenIdConfiguration) GetAuthorizationEndpoint() string`

GetAuthorizationEndpoint returns the AuthorizationEndpoint field if non-nil, zero value otherwise.

### GetAuthorizationEndpointOk

`func (o *OpenIdConfiguration) GetAuthorizationEndpointOk() (*string, bool)`

GetAuthorizationEndpointOk returns a tuple with the AuthorizationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationEndpoint

`func (o *OpenIdConfiguration) SetAuthorizationEndpoint(v string)`

SetAuthorizationEndpoint sets AuthorizationEndpoint field to given value.


### GetTokenEndpoint

`func (o *OpenIdConfiguration) GetTokenEndpoint() string`

GetTokenEndpoint returns the TokenEndpoint field if non-nil, zero value otherwise.

### GetTokenEndpointOk

`func (o *OpenIdConfiguration) GetTokenEndpointOk() (*string, bool)`

GetTokenEndpointOk returns a tuple with the TokenEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpoint

`func (o *OpenIdConfiguration) SetTokenEndpoint(v string)`

SetTokenEndpoint sets TokenEndpoint field to given value.


### GetJwksUri

`func (o *OpenIdConfiguration) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *OpenIdConfiguration) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *OpenIdConfiguration) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.


### GetResponseTypesSupported

`func (o *OpenIdConfiguration) GetResponseTypesSupported() []string`

GetResponseTypesSupported returns the ResponseTypesSupported field if non-nil, zero value otherwise.

### GetResponseTypesSupportedOk

`func (o *OpenIdConfiguration) GetResponseTypesSupportedOk() (*[]string, bool)`

GetResponseTypesSupportedOk returns a tuple with the ResponseTypesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseTypesSupported

`func (o *OpenIdConfiguration) SetResponseTypesSupported(v []string)`

SetResponseTypesSupported sets ResponseTypesSupported field to given value.


### GetSubjectTypesSupported

`func (o *OpenIdConfiguration) GetSubjectTypesSupported() []string`

GetSubjectTypesSupported returns the SubjectTypesSupported field if non-nil, zero value otherwise.

### GetSubjectTypesSupportedOk

`func (o *OpenIdConfiguration) GetSubjectTypesSupportedOk() (*[]string, bool)`

GetSubjectTypesSupportedOk returns a tuple with the SubjectTypesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectTypesSupported

`func (o *OpenIdConfiguration) SetSubjectTypesSupported(v []string)`

SetSubjectTypesSupported sets SubjectTypesSupported field to given value.


### GetIdTokenSigningAlgValuesSupported

`func (o *OpenIdConfiguration) GetIdTokenSigningAlgValuesSupported() []string`

GetIdTokenSigningAlgValuesSupported returns the IdTokenSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetIdTokenSigningAlgValuesSupportedOk

`func (o *OpenIdConfiguration) GetIdTokenSigningAlgValuesSupportedOk() (*[]string, bool)`

GetIdTokenSigningAlgValuesSupportedOk returns a tuple with the IdTokenSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdTokenSigningAlgValuesSupported

`func (o *OpenIdConfiguration) SetIdTokenSigningAlgValuesSupported(v []string)`

SetIdTokenSigningAlgValuesSupported sets IdTokenSigningAlgValuesSupported field to given value.


### GetUserinfoEndpoint

`func (o *OpenIdConfiguration) GetUserinfoEndpoint() string`

GetUserinfoEndpoint returns the UserinfoEndpoint field if non-nil, zero value otherwise.

### GetUserinfoEndpointOk

`func (o *OpenIdConfiguration) GetUserinfoEndpointOk() (*string, bool)`

GetUserinfoEndpointOk returns a tuple with the UserinfoEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserinfoEndpoint

`func (o *OpenIdConfiguration) SetUserinfoEndpoint(v string)`

SetUserinfoEndpoint sets UserinfoEndpoint field to given value.

### HasUserinfoEndpoint

`func (o *OpenIdConfiguration) HasUserinfoEndpoint() bool`

HasUserinfoEndpoint returns a boolean if a field has been set.

### GetRegistrationEndpoint

`func (o *OpenIdConfiguration) GetRegistrationEndpoint() string`

GetRegistrationEndpoint returns the RegistrationEndpoint field if non-nil, zero value otherwise.

### GetRegistrationEndpointOk

`func (o *OpenIdConfiguration) GetRegistrationEndpointOk() (*string, bool)`

GetRegistrationEndpointOk returns a tuple with the RegistrationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationEndpoint

`func (o *OpenIdConfiguration) SetRegistrationEndpoint(v string)`

SetRegistrationEndpoint sets RegistrationEndpoint field to given value.

### HasRegistrationEndpoint

`func (o *OpenIdConfiguration) HasRegistrationEndpoint() bool`

HasRegistrationEndpoint returns a boolean if a field has been set.

### GetScopesSupported

`func (o *OpenIdConfiguration) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *OpenIdConfiguration) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *OpenIdConfiguration) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *OpenIdConfiguration) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetClaimsSupported

`func (o *OpenIdConfiguration) GetClaimsSupported() []string`

GetClaimsSupported returns the ClaimsSupported field if non-nil, zero value otherwise.

### GetClaimsSupportedOk

`func (o *OpenIdConfiguration) GetClaimsSupportedOk() (*[]string, bool)`

GetClaimsSupportedOk returns a tuple with the ClaimsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimsSupported

`func (o *OpenIdConfiguration) SetClaimsSupported(v []string)`

SetClaimsSupported sets ClaimsSupported field to given value.

### HasClaimsSupported

`func (o *OpenIdConfiguration) HasClaimsSupported() bool`

HasClaimsSupported returns a boolean if a field has been set.

### GetResponseModesSupported

`func (o *OpenIdConfiguration) GetResponseModesSupported() []string`

GetResponseModesSupported returns the ResponseModesSupported field if non-nil, zero value otherwise.

### GetResponseModesSupportedOk

`func (o *OpenIdConfiguration) GetResponseModesSupportedOk() (*[]string, bool)`

GetResponseModesSupportedOk returns a tuple with the ResponseModesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseModesSupported

`func (o *OpenIdConfiguration) SetResponseModesSupported(v []string)`

SetResponseModesSupported sets ResponseModesSupported field to given value.

### HasResponseModesSupported

`func (o *OpenIdConfiguration) HasResponseModesSupported() bool`

HasResponseModesSupported returns a boolean if a field has been set.

### GetAuthorizationSigningAlgValuesSupported

`func (o *OpenIdConfiguration) GetAuthorizationSigningAlgValuesSupported() []string`

GetAuthorizationSigningAlgValuesSupported returns the AuthorizationSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetAuthorizationSigningAlgValuesSupportedOk

`func (o *OpenIdConfiguration) GetAuthorizationSigningAlgValuesSupportedOk() (*[]string, bool)`

GetAuthorizationSigningAlgValuesSupportedOk returns a tuple with the AuthorizationSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationSigningAlgValuesSupported

`func (o *OpenIdConfiguration) SetAuthorizationSigningAlgValuesSupported(v []string)`

SetAuthorizationSigningAlgValuesSupported sets AuthorizationSigningAlgValuesSupported field to given value.

### HasAuthorizationSigningAlgValuesSupported

`func (o *OpenIdConfiguration) HasAuthorizationSigningAlgValuesSupported() bool`

HasAuthorizationSigningAlgValuesSupported returns a boolean if a field has been set.

### GetGrantTypesSupported

`func (o *OpenIdConfiguration) GetGrantTypesSupported() []string`

GetGrantTypesSupported returns the GrantTypesSupported field if non-nil, zero value otherwise.

### GetGrantTypesSupportedOk

`func (o *OpenIdConfiguration) GetGrantTypesSupportedOk() (*[]string, bool)`

GetGrantTypesSupportedOk returns a tuple with the GrantTypesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypesSupported

`func (o *OpenIdConfiguration) SetGrantTypesSupported(v []string)`

SetGrantTypesSupported sets GrantTypesSupported field to given value.

### HasGrantTypesSupported

`func (o *OpenIdConfiguration) HasGrantTypesSupported() bool`

HasGrantTypesSupported returns a boolean if a field has been set.

### GetDeviceAuthorizationEndpoint

`func (o *OpenIdConfiguration) GetDeviceAuthorizationEndpoint() string`

GetDeviceAuthorizationEndpoint returns the DeviceAuthorizationEndpoint field if non-nil, zero value otherwise.

### GetDeviceAuthorizationEndpointOk

`func (o *OpenIdConfiguration) GetDeviceAuthorizationEndpointOk() (*string, bool)`

GetDeviceAuthorizationEndpointOk returns a tuple with the DeviceAuthorizationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceAuthorizationEndpoint

`func (o *OpenIdConfiguration) SetDeviceAuthorizationEndpoint(v string)`

SetDeviceAuthorizationEndpoint sets DeviceAuthorizationEndpoint field to given value.

### HasDeviceAuthorizationEndpoint

`func (o *OpenIdConfiguration) HasDeviceAuthorizationEndpoint() bool`

HasDeviceAuthorizationEndpoint returns a boolean if a field has been set.

### GetTokenEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) GetTokenEndpointAuthMethodsSupported() []string`

GetTokenEndpointAuthMethodsSupported returns the TokenEndpointAuthMethodsSupported field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodsSupportedOk

`func (o *OpenIdConfiguration) GetTokenEndpointAuthMethodsSupportedOk() (*[]string, bool)`

GetTokenEndpointAuthMethodsSupportedOk returns a tuple with the TokenEndpointAuthMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) SetTokenEndpointAuthMethodsSupported(v []string)`

SetTokenEndpointAuthMethodsSupported sets TokenEndpointAuthMethodsSupported field to given value.

### HasTokenEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) HasTokenEndpointAuthMethodsSupported() bool`

HasTokenEndpointAuthMethodsSupported returns a boolean if a field has been set.

### GetTokenEndpointAuthSigningAlgValuesSupported

`func (o *OpenIdConfiguration) GetTokenEndpointAuthSigningAlgValuesSupported() []string`

GetTokenEndpointAuthSigningAlgValuesSupported returns the TokenEndpointAuthSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetTokenEndpointAuthSigningAlgValuesSupportedOk

`func (o *OpenIdConfiguration) GetTokenEndpointAuthSigningAlgValuesSupportedOk() (*[]string, bool)`

GetTokenEndpointAuthSigningAlgValuesSupportedOk returns a tuple with the TokenEndpointAuthSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthSigningAlgValuesSupported

`func (o *OpenIdConfiguration) SetTokenEndpointAuthSigningAlgValuesSupported(v []string)`

SetTokenEndpointAuthSigningAlgValuesSupported sets TokenEndpointAuthSigningAlgValuesSupported field to given value.

### HasTokenEndpointAuthSigningAlgValuesSupported

`func (o *OpenIdConfiguration) HasTokenEndpointAuthSigningAlgValuesSupported() bool`

HasTokenEndpointAuthSigningAlgValuesSupported returns a boolean if a field has been set.

### GetClaimTypesSupported

`func (o *OpenIdConfiguration) GetClaimTypesSupported() []string`

GetClaimTypesSupported returns the ClaimTypesSupported field if non-nil, zero value otherwise.

### GetClaimTypesSupportedOk

`func (o *OpenIdConfiguration) GetClaimTypesSupportedOk() (*[]string, bool)`

GetClaimTypesSupportedOk returns a tuple with the ClaimTypesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimTypesSupported

`func (o *OpenIdConfiguration) SetClaimTypesSupported(v []string)`

SetClaimTypesSupported sets ClaimTypesSupported field to given value.

### HasClaimTypesSupported

`func (o *OpenIdConfiguration) HasClaimTypesSupported() bool`

HasClaimTypesSupported returns a boolean if a field has been set.

### GetClaimsParameterSupported

`func (o *OpenIdConfiguration) GetClaimsParameterSupported() bool`

GetClaimsParameterSupported returns the ClaimsParameterSupported field if non-nil, zero value otherwise.

### GetClaimsParameterSupportedOk

`func (o *OpenIdConfiguration) GetClaimsParameterSupportedOk() (*bool, bool)`

GetClaimsParameterSupportedOk returns a tuple with the ClaimsParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimsParameterSupported

`func (o *OpenIdConfiguration) SetClaimsParameterSupported(v bool)`

SetClaimsParameterSupported sets ClaimsParameterSupported field to given value.

### HasClaimsParameterSupported

`func (o *OpenIdConfiguration) HasClaimsParameterSupported() bool`

HasClaimsParameterSupported returns a boolean if a field has been set.

### GetRequestParameterSupported

`func (o *OpenIdConfiguration) GetRequestParameterSupported() bool`

GetRequestParameterSupported returns the RequestParameterSupported field if non-nil, zero value otherwise.

### GetRequestParameterSupportedOk

`func (o *OpenIdConfiguration) GetRequestParameterSupportedOk() (*bool, bool)`

GetRequestParameterSupportedOk returns a tuple with the RequestParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestParameterSupported

`func (o *OpenIdConfiguration) SetRequestParameterSupported(v bool)`

SetRequestParameterSupported sets RequestParameterSupported field to given value.

### HasRequestParameterSupported

`func (o *OpenIdConfiguration) HasRequestParameterSupported() bool`

HasRequestParameterSupported returns a boolean if a field has been set.

### GetRequestUriParameterSupported

`func (o *OpenIdConfiguration) GetRequestUriParameterSupported() bool`

GetRequestUriParameterSupported returns the RequestUriParameterSupported field if non-nil, zero value otherwise.

### GetRequestUriParameterSupportedOk

`func (o *OpenIdConfiguration) GetRequestUriParameterSupportedOk() (*bool, bool)`

GetRequestUriParameterSupportedOk returns a tuple with the RequestUriParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestUriParameterSupported

`func (o *OpenIdConfiguration) SetRequestUriParameterSupported(v bool)`

SetRequestUriParameterSupported sets RequestUriParameterSupported field to given value.

### HasRequestUriParameterSupported

`func (o *OpenIdConfiguration) HasRequestUriParameterSupported() bool`

HasRequestUriParameterSupported returns a boolean if a field has been set.

### GetRequireRequestUriRegistration

`func (o *OpenIdConfiguration) GetRequireRequestUriRegistration() bool`

GetRequireRequestUriRegistration returns the RequireRequestUriRegistration field if non-nil, zero value otherwise.

### GetRequireRequestUriRegistrationOk

`func (o *OpenIdConfiguration) GetRequireRequestUriRegistrationOk() (*bool, bool)`

GetRequireRequestUriRegistrationOk returns a tuple with the RequireRequestUriRegistration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireRequestUriRegistration

`func (o *OpenIdConfiguration) SetRequireRequestUriRegistration(v bool)`

SetRequireRequestUriRegistration sets RequireRequestUriRegistration field to given value.

### HasRequireRequestUriRegistration

`func (o *OpenIdConfiguration) HasRequireRequestUriRegistration() bool`

HasRequireRequestUriRegistration returns a boolean if a field has been set.

### GetRequireSignedRequestObject

`func (o *OpenIdConfiguration) GetRequireSignedRequestObject() bool`

GetRequireSignedRequestObject returns the RequireSignedRequestObject field if non-nil, zero value otherwise.

### GetRequireSignedRequestObjectOk

`func (o *OpenIdConfiguration) GetRequireSignedRequestObjectOk() (*bool, bool)`

GetRequireSignedRequestObjectOk returns a tuple with the RequireSignedRequestObject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireSignedRequestObject

`func (o *OpenIdConfiguration) SetRequireSignedRequestObject(v bool)`

SetRequireSignedRequestObject sets RequireSignedRequestObject field to given value.

### HasRequireSignedRequestObject

`func (o *OpenIdConfiguration) HasRequireSignedRequestObject() bool`

HasRequireSignedRequestObject returns a boolean if a field has been set.

### GetRequestObjectSigningAlgValuesSupported

`func (o *OpenIdConfiguration) GetRequestObjectSigningAlgValuesSupported() []string`

GetRequestObjectSigningAlgValuesSupported returns the RequestObjectSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetRequestObjectSigningAlgValuesSupportedOk

`func (o *OpenIdConfiguration) GetRequestObjectSigningAlgValuesSupportedOk() (*[]string, bool)`

GetRequestObjectSigningAlgValuesSupportedOk returns a tuple with the RequestObjectSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestObjectSigningAlgValuesSupported

`func (o *OpenIdConfiguration) SetRequestObjectSigningAlgValuesSupported(v []string)`

SetRequestObjectSigningAlgValuesSupported sets RequestObjectSigningAlgValuesSupported field to given value.

### HasRequestObjectSigningAlgValuesSupported

`func (o *OpenIdConfiguration) HasRequestObjectSigningAlgValuesSupported() bool`

HasRequestObjectSigningAlgValuesSupported returns a boolean if a field has been set.

### GetUiLocalesSupported

`func (o *OpenIdConfiguration) GetUiLocalesSupported() []string`

GetUiLocalesSupported returns the UiLocalesSupported field if non-nil, zero value otherwise.

### GetUiLocalesSupportedOk

`func (o *OpenIdConfiguration) GetUiLocalesSupportedOk() (*[]string, bool)`

GetUiLocalesSupportedOk returns a tuple with the UiLocalesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUiLocalesSupported

`func (o *OpenIdConfiguration) SetUiLocalesSupported(v []string)`

SetUiLocalesSupported sets UiLocalesSupported field to given value.

### HasUiLocalesSupported

`func (o *OpenIdConfiguration) HasUiLocalesSupported() bool`

HasUiLocalesSupported returns a boolean if a field has been set.

### GetAcrValuesSupported

`func (o *OpenIdConfiguration) GetAcrValuesSupported() []string`

GetAcrValuesSupported returns the AcrValuesSupported field if non-nil, zero value otherwise.

### GetAcrValuesSupportedOk

`func (o *OpenIdConfiguration) GetAcrValuesSupportedOk() (*[]string, bool)`

GetAcrValuesSupportedOk returns a tuple with the AcrValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAcrValuesSupported

`func (o *OpenIdConfiguration) SetAcrValuesSupported(v []string)`

SetAcrValuesSupported sets AcrValuesSupported field to given value.

### HasAcrValuesSupported

`func (o *OpenIdConfiguration) HasAcrValuesSupported() bool`

HasAcrValuesSupported returns a boolean if a field has been set.

### GetCodeChallengeMethodsSupported

`func (o *OpenIdConfiguration) GetCodeChallengeMethodsSupported() []string`

GetCodeChallengeMethodsSupported returns the CodeChallengeMethodsSupported field if non-nil, zero value otherwise.

### GetCodeChallengeMethodsSupportedOk

`func (o *OpenIdConfiguration) GetCodeChallengeMethodsSupportedOk() (*[]string, bool)`

GetCodeChallengeMethodsSupportedOk returns a tuple with the CodeChallengeMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodeChallengeMethodsSupported

`func (o *OpenIdConfiguration) SetCodeChallengeMethodsSupported(v []string)`

SetCodeChallengeMethodsSupported sets CodeChallengeMethodsSupported field to given value.

### HasCodeChallengeMethodsSupported

`func (o *OpenIdConfiguration) HasCodeChallengeMethodsSupported() bool`

HasCodeChallengeMethodsSupported returns a boolean if a field has been set.

### GetAuthorizationResponseIssParameterSupported

`func (o *OpenIdConfiguration) GetAuthorizationResponseIssParameterSupported() bool`

GetAuthorizationResponseIssParameterSupported returns the AuthorizationResponseIssParameterSupported field if non-nil, zero value otherwise.

### GetAuthorizationResponseIssParameterSupportedOk

`func (o *OpenIdConfiguration) GetAuthorizationResponseIssParameterSupportedOk() (*bool, bool)`

GetAuthorizationResponseIssParameterSupportedOk returns a tuple with the AuthorizationResponseIssParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationResponseIssParameterSupported

`func (o *OpenIdConfiguration) SetAuthorizationResponseIssParameterSupported(v bool)`

SetAuthorizationResponseIssParameterSupported sets AuthorizationResponseIssParameterSupported field to given value.

### HasAuthorizationResponseIssParameterSupported

`func (o *OpenIdConfiguration) HasAuthorizationResponseIssParameterSupported() bool`

HasAuthorizationResponseIssParameterSupported returns a boolean if a field has been set.

### GetPushedAuthorizationRequestEndpoint

`func (o *OpenIdConfiguration) GetPushedAuthorizationRequestEndpoint() string`

GetPushedAuthorizationRequestEndpoint returns the PushedAuthorizationRequestEndpoint field if non-nil, zero value otherwise.

### GetPushedAuthorizationRequestEndpointOk

`func (o *OpenIdConfiguration) GetPushedAuthorizationRequestEndpointOk() (*string, bool)`

GetPushedAuthorizationRequestEndpointOk returns a tuple with the PushedAuthorizationRequestEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushedAuthorizationRequestEndpoint

`func (o *OpenIdConfiguration) SetPushedAuthorizationRequestEndpoint(v string)`

SetPushedAuthorizationRequestEndpoint sets PushedAuthorizationRequestEndpoint field to given value.

### HasPushedAuthorizationRequestEndpoint

`func (o *OpenIdConfiguration) HasPushedAuthorizationRequestEndpoint() bool`

HasPushedAuthorizationRequestEndpoint returns a boolean if a field has been set.

### GetRequirePushedAuthorizationRequests

`func (o *OpenIdConfiguration) GetRequirePushedAuthorizationRequests() bool`

GetRequirePushedAuthorizationRequests returns the RequirePushedAuthorizationRequests field if non-nil, zero value otherwise.

### GetRequirePushedAuthorizationRequestsOk

`func (o *OpenIdConfiguration) GetRequirePushedAuthorizationRequestsOk() (*bool, bool)`

GetRequirePushedAuthorizationRequestsOk returns a tuple with the RequirePushedAuthorizationRequests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePushedAuthorizationRequests

`func (o *OpenIdConfiguration) SetRequirePushedAuthorizationRequests(v bool)`

SetRequirePushedAuthorizationRequests sets RequirePushedAuthorizationRequests field to given value.

### HasRequirePushedAuthorizationRequests

`func (o *OpenIdConfiguration) HasRequirePushedAuthorizationRequests() bool`

HasRequirePushedAuthorizationRequests returns a boolean if a field has been set.

### GetDpopSigningAlgValuesSupported

`func (o *OpenIdConfiguration) GetDpopSigningAlgValuesSupported() []string`

GetDpopSigningAlgValuesSupported returns the DpopSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetDpopSigningAlgValuesSupportedOk

`func (o *OpenIdConfiguration) GetDpopSigningAlgValuesSupportedOk() (*[]string, bool)`

GetDpopSigningAlgValuesSupportedOk returns a tuple with the DpopSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopSigningAlgValuesSupported

`func (o *OpenIdConfiguration) SetDpopSigningAlgValuesSupported(v []string)`

SetDpopSigningAlgValuesSupported sets DpopSigningAlgValuesSupported field to given value.

### HasDpopSigningAlgValuesSupported

`func (o *OpenIdConfiguration) HasDpopSigningAlgValuesSupported() bool`

HasDpopSigningAlgValuesSupported returns a boolean if a field has been set.

### GetTlsClientCertificateBoundAccessTokens

`func (o *OpenIdConfiguration) GetTlsClientCertificateBoundAccessTokens() bool`

GetTlsClientCertificateBoundAccessTokens returns the TlsClientCertificateBoundAccessTokens field if non-nil, zero value otherwise.

### GetTlsClientCertificateBoundAccessTokensOk

`func (o *OpenIdConfiguration) GetTlsClientCertificateBoundAccessTokensOk() (*bool, bool)`

GetTlsClientCertificateBoundAccessTokensOk returns a tuple with the TlsClientCertificateBoundAccessTokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTlsClientCertificateBoundAccessTokens

`func (o *OpenIdConfiguration) SetTlsClientCertificateBoundAccessTokens(v bool)`

SetTlsClientCertificateBoundAccessTokens sets TlsClientCertificateBoundAccessTokens field to given value.

### HasTlsClientCertificateBoundAccessTokens

`func (o *OpenIdConfiguration) HasTlsClientCertificateBoundAccessTokens() bool`

HasTlsClientCertificateBoundAccessTokens returns a boolean if a field has been set.

### GetIntrospectionEndpoint

`func (o *OpenIdConfiguration) GetIntrospectionEndpoint() string`

GetIntrospectionEndpoint returns the IntrospectionEndpoint field if non-nil, zero value otherwise.

### GetIntrospectionEndpointOk

`func (o *OpenIdConfiguration) GetIntrospectionEndpointOk() (*string, bool)`

GetIntrospectionEndpointOk returns a tuple with the IntrospectionEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntrospectionEndpoint

`func (o *OpenIdConfiguration) SetIntrospectionEndpoint(v string)`

SetIntrospectionEndpoint sets IntrospectionEndpoint field to given value.

### HasIntrospectionEndpoint

`func (o *OpenIdConfiguration) HasIntrospectionEndpoint() bool`

HasIntrospectionEndpoint returns a boolean if a field has been set.

### GetIntrospectionEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) GetIntrospectionEndpointAuthMethodsSupported() []string`

GetIntrospectionEndpointAuthMethodsSupported returns the IntrospectionEndpointAuthMethodsSupported field if non-nil, zero value otherwise.

### GetIntrospectionEndpointAuthMethodsSupportedOk

`func (o *OpenIdConfiguration) GetIntrospectionEndpointAuthMethodsSupportedOk() (*[]string, bool)`

GetIntrospectionEndpointAuthMethodsSupportedOk returns a tuple with the IntrospectionEndpointAuthMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntrospectionEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) SetIntrospectionEndpointAuthMethodsSupported(v []string)`

SetIntrospectionEndpointAuthMethodsSupported sets IntrospectionEndpointAuthMethodsSupported field to given value.

### HasIntrospectionEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) HasIntrospectionEndpointAuthMethodsSupported() bool`

HasIntrospectionEndpointAuthMethodsSupported returns a boolean if a field has been set.

### GetRevocationEndpoint

`func (o *OpenIdConfiguration) GetRevocationEndpoint() string`

GetRevocationEndpoint returns the RevocationEndpoint field if non-nil, zero value otherwise.

### GetRevocationEndpointOk

`func (o *OpenIdConfiguration) GetRevocationEndpointOk() (*string, bool)`

GetRevocationEndpointOk returns a tuple with the RevocationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevocationEndpoint

`func (o *OpenIdConfiguration) SetRevocationEndpoint(v string)`

SetRevocationEndpoint sets RevocationEndpoint field to given value.

### HasRevocationEndpoint

`func (o *OpenIdConfiguration) HasRevocationEndpoint() bool`

HasRevocationEndpoint returns a boolean if a field has been set.

### GetRevocationEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) GetRevocationEndpointAuthMethodsSupported() []string`

GetRevocationEndpointAuthMethodsSupported returns the RevocationEndpointAuthMethodsSupported field if non-nil, zero value otherwise.

### GetRevocationEndpointAuthMethodsSupportedOk

`func (o *OpenIdConfiguration) GetRevocationEndpointAuthMethodsSupportedOk() (*[]string, bool)`

GetRevocationEndpointAuthMethodsSupportedOk returns a tuple with the RevocationEndpointAuthMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevocationEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) SetRevocationEndpointAuthMethodsSupported(v []string)`

SetRevocationEndpointAuthMethodsSupported sets RevocationEndpointAuthMethodsSupported field to given value.

### HasRevocationEndpointAuthMethodsSupported

`func (o *OpenIdConfiguration) HasRevocationEndpointAuthMethodsSupported() bool`

HasRevocationEndpointAuthMethodsSupported returns a boolean if a field has been set.

### GetResourceIndicatorsSupported

`func (o *OpenIdConfiguration) GetResourceIndicatorsSupported() bool`

GetResourceIndicatorsSupported returns the ResourceIndicatorsSupported field if non-nil, zero value otherwise.

### GetResourceIndicatorsSupportedOk

`func (o *OpenIdConfiguration) GetResourceIndicatorsSupportedOk() (*bool, bool)`

GetResourceIndicatorsSupportedOk returns a tuple with the ResourceIndicatorsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceIndicatorsSupported

`func (o *OpenIdConfiguration) SetResourceIndicatorsSupported(v bool)`

SetResourceIndicatorsSupported sets ResourceIndicatorsSupported field to given value.

### HasResourceIndicatorsSupported

`func (o *OpenIdConfiguration) HasResourceIndicatorsSupported() bool`

HasResourceIndicatorsSupported returns a boolean if a field has been set.

### GetEndSessionEndpoint

`func (o *OpenIdConfiguration) GetEndSessionEndpoint() string`

GetEndSessionEndpoint returns the EndSessionEndpoint field if non-nil, zero value otherwise.

### GetEndSessionEndpointOk

`func (o *OpenIdConfiguration) GetEndSessionEndpointOk() (*string, bool)`

GetEndSessionEndpointOk returns a tuple with the EndSessionEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndSessionEndpoint

`func (o *OpenIdConfiguration) SetEndSessionEndpoint(v string)`

SetEndSessionEndpoint sets EndSessionEndpoint field to given value.

### HasEndSessionEndpoint

`func (o *OpenIdConfiguration) HasEndSessionEndpoint() bool`

HasEndSessionEndpoint returns a boolean if a field has been set.

### GetCheckSessionIframe

`func (o *OpenIdConfiguration) GetCheckSessionIframe() string`

GetCheckSessionIframe returns the CheckSessionIframe field if non-nil, zero value otherwise.

### GetCheckSessionIframeOk

`func (o *OpenIdConfiguration) GetCheckSessionIframeOk() (*string, bool)`

GetCheckSessionIframeOk returns a tuple with the CheckSessionIframe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheckSessionIframe

`func (o *OpenIdConfiguration) SetCheckSessionIframe(v string)`

SetCheckSessionIframe sets CheckSessionIframe field to given value.

### HasCheckSessionIframe

`func (o *OpenIdConfiguration) HasCheckSessionIframe() bool`

HasCheckSessionIframe returns a boolean if a field has been set.

### GetFrontchannelLogoutSupported

`func (o *OpenIdConfiguration) GetFrontchannelLogoutSupported() bool`

GetFrontchannelLogoutSupported returns the FrontchannelLogoutSupported field if non-nil, zero value otherwise.

### GetFrontchannelLogoutSupportedOk

`func (o *OpenIdConfiguration) GetFrontchannelLogoutSupportedOk() (*bool, bool)`

GetFrontchannelLogoutSupportedOk returns a tuple with the FrontchannelLogoutSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutSupported

`func (o *OpenIdConfiguration) SetFrontchannelLogoutSupported(v bool)`

SetFrontchannelLogoutSupported sets FrontchannelLogoutSupported field to given value.

### HasFrontchannelLogoutSupported

`func (o *OpenIdConfiguration) HasFrontchannelLogoutSupported() bool`

HasFrontchannelLogoutSupported returns a boolean if a field has been set.

### GetFrontchannelLogoutSessionSupported

`func (o *OpenIdConfiguration) GetFrontchannelLogoutSessionSupported() bool`

GetFrontchannelLogoutSessionSupported returns the FrontchannelLogoutSessionSupported field if non-nil, zero value otherwise.

### GetFrontchannelLogoutSessionSupportedOk

`func (o *OpenIdConfiguration) GetFrontchannelLogoutSessionSupportedOk() (*bool, bool)`

GetFrontchannelLogoutSessionSupportedOk returns a tuple with the FrontchannelLogoutSessionSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutSessionSupported

`func (o *OpenIdConfiguration) SetFrontchannelLogoutSessionSupported(v bool)`

SetFrontchannelLogoutSessionSupported sets FrontchannelLogoutSessionSupported field to given value.

### HasFrontchannelLogoutSessionSupported

`func (o *OpenIdConfiguration) HasFrontchannelLogoutSessionSupported() bool`

HasFrontchannelLogoutSessionSupported returns a boolean if a field has been set.

### GetBackchannelLogoutSupported

`func (o *OpenIdConfiguration) GetBackchannelLogoutSupported() bool`

GetBackchannelLogoutSupported returns the BackchannelLogoutSupported field if non-nil, zero value otherwise.

### GetBackchannelLogoutSupportedOk

`func (o *OpenIdConfiguration) GetBackchannelLogoutSupportedOk() (*bool, bool)`

GetBackchannelLogoutSupportedOk returns a tuple with the BackchannelLogoutSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutSupported

`func (o *OpenIdConfiguration) SetBackchannelLogoutSupported(v bool)`

SetBackchannelLogoutSupported sets BackchannelLogoutSupported field to given value.

### HasBackchannelLogoutSupported

`func (o *OpenIdConfiguration) HasBackchannelLogoutSupported() bool`

HasBackchannelLogoutSupported returns a boolean if a field has been set.

### GetBackchannelLogoutSessionSupported

`func (o *OpenIdConfiguration) GetBackchannelLogoutSessionSupported() bool`

GetBackchannelLogoutSessionSupported returns the BackchannelLogoutSessionSupported field if non-nil, zero value otherwise.

### GetBackchannelLogoutSessionSupportedOk

`func (o *OpenIdConfiguration) GetBackchannelLogoutSessionSupportedOk() (*bool, bool)`

GetBackchannelLogoutSessionSupportedOk returns a tuple with the BackchannelLogoutSessionSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutSessionSupported

`func (o *OpenIdConfiguration) SetBackchannelLogoutSessionSupported(v bool)`

SetBackchannelLogoutSessionSupported sets BackchannelLogoutSessionSupported field to given value.

### HasBackchannelLogoutSessionSupported

`func (o *OpenIdConfiguration) HasBackchannelLogoutSessionSupported() bool`

HasBackchannelLogoutSessionSupported returns a boolean if a field has been set.

### GetBackchannelAuthenticationEndpoint

`func (o *OpenIdConfiguration) GetBackchannelAuthenticationEndpoint() string`

GetBackchannelAuthenticationEndpoint returns the BackchannelAuthenticationEndpoint field if non-nil, zero value otherwise.

### GetBackchannelAuthenticationEndpointOk

`func (o *OpenIdConfiguration) GetBackchannelAuthenticationEndpointOk() (*string, bool)`

GetBackchannelAuthenticationEndpointOk returns a tuple with the BackchannelAuthenticationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelAuthenticationEndpoint

`func (o *OpenIdConfiguration) SetBackchannelAuthenticationEndpoint(v string)`

SetBackchannelAuthenticationEndpoint sets BackchannelAuthenticationEndpoint field to given value.

### HasBackchannelAuthenticationEndpoint

`func (o *OpenIdConfiguration) HasBackchannelAuthenticationEndpoint() bool`

HasBackchannelAuthenticationEndpoint returns a boolean if a field has been set.

### GetBackchannelTokenDeliveryModesSupported

`func (o *OpenIdConfiguration) GetBackchannelTokenDeliveryModesSupported() []string`

GetBackchannelTokenDeliveryModesSupported returns the BackchannelTokenDeliveryModesSupported field if non-nil, zero value otherwise.

### GetBackchannelTokenDeliveryModesSupportedOk

`func (o *OpenIdConfiguration) GetBackchannelTokenDeliveryModesSupportedOk() (*[]string, bool)`

GetBackchannelTokenDeliveryModesSupportedOk returns a tuple with the BackchannelTokenDeliveryModesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelTokenDeliveryModesSupported

`func (o *OpenIdConfiguration) SetBackchannelTokenDeliveryModesSupported(v []string)`

SetBackchannelTokenDeliveryModesSupported sets BackchannelTokenDeliveryModesSupported field to given value.

### HasBackchannelTokenDeliveryModesSupported

`func (o *OpenIdConfiguration) HasBackchannelTokenDeliveryModesSupported() bool`

HasBackchannelTokenDeliveryModesSupported returns a boolean if a field has been set.

### GetBackchannelUserCodeParameterSupported

`func (o *OpenIdConfiguration) GetBackchannelUserCodeParameterSupported() bool`

GetBackchannelUserCodeParameterSupported returns the BackchannelUserCodeParameterSupported field if non-nil, zero value otherwise.

### GetBackchannelUserCodeParameterSupportedOk

`func (o *OpenIdConfiguration) GetBackchannelUserCodeParameterSupportedOk() (*bool, bool)`

GetBackchannelUserCodeParameterSupportedOk returns a tuple with the BackchannelUserCodeParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelUserCodeParameterSupported

`func (o *OpenIdConfiguration) SetBackchannelUserCodeParameterSupported(v bool)`

SetBackchannelUserCodeParameterSupported sets BackchannelUserCodeParameterSupported field to given value.

### HasBackchannelUserCodeParameterSupported

`func (o *OpenIdConfiguration) HasBackchannelUserCodeParameterSupported() bool`

HasBackchannelUserCodeParameterSupported returns a boolean if a field has been set.

### GetServiceDocumentation

`func (o *OpenIdConfiguration) GetServiceDocumentation() string`

GetServiceDocumentation returns the ServiceDocumentation field if non-nil, zero value otherwise.

### GetServiceDocumentationOk

`func (o *OpenIdConfiguration) GetServiceDocumentationOk() (*string, bool)`

GetServiceDocumentationOk returns a tuple with the ServiceDocumentation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceDocumentation

`func (o *OpenIdConfiguration) SetServiceDocumentation(v string)`

SetServiceDocumentation sets ServiceDocumentation field to given value.

### HasServiceDocumentation

`func (o *OpenIdConfiguration) HasServiceDocumentation() bool`

HasServiceDocumentation returns a boolean if a field has been set.

### GetEntityProfilesSupported

`func (o *OpenIdConfiguration) GetEntityProfilesSupported() []string`

GetEntityProfilesSupported returns the EntityProfilesSupported field if non-nil, zero value otherwise.

### GetEntityProfilesSupportedOk

`func (o *OpenIdConfiguration) GetEntityProfilesSupportedOk() (*[]string, bool)`

GetEntityProfilesSupportedOk returns a tuple with the EntityProfilesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityProfilesSupported

`func (o *OpenIdConfiguration) SetEntityProfilesSupported(v []string)`

SetEntityProfilesSupported sets EntityProfilesSupported field to given value.

### HasEntityProfilesSupported

`func (o *OpenIdConfiguration) HasEntityProfilesSupported() bool`

HasEntityProfilesSupported returns a boolean if a field has been set.

### GetClientIdMetadataDocumentSupported

`func (o *OpenIdConfiguration) GetClientIdMetadataDocumentSupported() bool`

GetClientIdMetadataDocumentSupported returns the ClientIdMetadataDocumentSupported field if non-nil, zero value otherwise.

### GetClientIdMetadataDocumentSupportedOk

`func (o *OpenIdConfiguration) GetClientIdMetadataDocumentSupportedOk() (*bool, bool)`

GetClientIdMetadataDocumentSupportedOk returns a tuple with the ClientIdMetadataDocumentSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientIdMetadataDocumentSupported

`func (o *OpenIdConfiguration) SetClientIdMetadataDocumentSupported(v bool)`

SetClientIdMetadataDocumentSupported sets ClientIdMetadataDocumentSupported field to given value.

### HasClientIdMetadataDocumentSupported

`func (o *OpenIdConfiguration) HasClientIdMetadataDocumentSupported() bool`

HasClientIdMetadataDocumentSupported returns a boolean if a field has been set.

### GetAuthorizationGrantProfilesSupported

`func (o *OpenIdConfiguration) GetAuthorizationGrantProfilesSupported() []string`

GetAuthorizationGrantProfilesSupported returns the AuthorizationGrantProfilesSupported field if non-nil, zero value otherwise.

### GetAuthorizationGrantProfilesSupportedOk

`func (o *OpenIdConfiguration) GetAuthorizationGrantProfilesSupportedOk() (*[]string, bool)`

GetAuthorizationGrantProfilesSupportedOk returns a tuple with the AuthorizationGrantProfilesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationGrantProfilesSupported

`func (o *OpenIdConfiguration) SetAuthorizationGrantProfilesSupported(v []string)`

SetAuthorizationGrantProfilesSupported sets AuthorizationGrantProfilesSupported field to given value.

### HasAuthorizationGrantProfilesSupported

`func (o *OpenIdConfiguration) HasAuthorizationGrantProfilesSupported() bool`

HasAuthorizationGrantProfilesSupported returns a boolean if a field has been set.

### GetOpPolicyUri

`func (o *OpenIdConfiguration) GetOpPolicyUri() string`

GetOpPolicyUri returns the OpPolicyUri field if non-nil, zero value otherwise.

### GetOpPolicyUriOk

`func (o *OpenIdConfiguration) GetOpPolicyUriOk() (*string, bool)`

GetOpPolicyUriOk returns a tuple with the OpPolicyUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpPolicyUri

`func (o *OpenIdConfiguration) SetOpPolicyUri(v string)`

SetOpPolicyUri sets OpPolicyUri field to given value.

### HasOpPolicyUri

`func (o *OpenIdConfiguration) HasOpPolicyUri() bool`

HasOpPolicyUri returns a boolean if a field has been set.

### GetOpTosUri

`func (o *OpenIdConfiguration) GetOpTosUri() string`

GetOpTosUri returns the OpTosUri field if non-nil, zero value otherwise.

### GetOpTosUriOk

`func (o *OpenIdConfiguration) GetOpTosUriOk() (*string, bool)`

GetOpTosUriOk returns a tuple with the OpTosUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpTosUri

`func (o *OpenIdConfiguration) SetOpTosUri(v string)`

SetOpTosUri sets OpTosUri field to given value.

### HasOpTosUri

`func (o *OpenIdConfiguration) HasOpTosUri() bool`

HasOpTosUri returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


