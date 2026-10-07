# AuthorizationServerMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | **string** |  | 
**AuthorizationEndpoint** | **string** |  | 
**TokenEndpoint** | **string** |  | 
**ResponseTypesSupported** | **[]string** |  | 
**JwksUri** | **string** |  | 
**RegistrationEndpoint** | Pointer to **string** |  | [optional] 
**ScopesSupported** | Pointer to **[]string** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**ResponseModesSupported** | Pointer to **[]string** |  | [optional] 
**AuthorizationSigningAlgValuesSupported** | Pointer to **[]string** | JARM signing algorithms. | [optional] 
**GrantTypesSupported** | Pointer to **[]string** |  | [optional] 
**TokenEndpointAuthMethodsSupported** | Pointer to **[]string** |  | [optional] 
**TokenEndpointAuthSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 
**ServiceDocumentation** | Pointer to **string** |  | [optional] 
**UiLocalesSupported** | Pointer to **[]string** |  | [optional] 
**RevocationEndpoint** | Pointer to **string** |  | [optional] 
**RevocationEndpointAuthMethodsSupported** | Pointer to **[]string** |  | [optional] 
**IntrospectionEndpoint** | Pointer to **string** |  | [optional] 
**IntrospectionEndpointAuthMethodsSupported** | Pointer to **[]string** |  | [optional] 
**CodeChallengeMethodsSupported** | Pointer to **[]string** |  | [optional] 
**AuthorizationResponseIssParameterSupported** | Pointer to **bool** |  | [optional] 
**RequestParameterSupported** | Pointer to **bool** |  | [optional] 
**RequestUriParameterSupported** | Pointer to **bool** |  | [optional] 
**RequireRequestUriRegistration** | Pointer to **bool** |  | [optional] 
**RequireSignedRequestObject** | Pointer to **bool** |  | [optional] 
**RequestObjectSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 
**DeviceAuthorizationEndpoint** | Pointer to **string** |  | [optional] 
**PushedAuthorizationRequestEndpoint** | Pointer to **string** |  | [optional] 
**RequirePushedAuthorizationRequests** | Pointer to **bool** |  | [optional] 
**DpopSigningAlgValuesSupported** | Pointer to **[]string** |  | [optional] 
**TlsClientCertificateBoundAccessTokens** | Pointer to **bool** |  | [optional] 
**BackchannelAuthenticationEndpoint** | Pointer to **string** |  | [optional] 
**BackchannelTokenDeliveryModesSupported** | Pointer to **[]string** |  | [optional] 
**BackchannelUserCodeParameterSupported** | Pointer to **bool** |  | [optional] 
**EntityProfilesSupported** | Pointer to **[]string** |  | [optional] 
**ClientIdMetadataDocumentSupported** | Pointer to **bool** | Only when CIMD is enabled for the organization. | [optional] 
**AuthorizationGrantProfilesSupported** | Pointer to **[]string** | Only when the organization accepts ID-JAGs. | [optional] 
**OpPolicyUri** | Pointer to **string** | Only when configured. | [optional] 
**OpTosUri** | Pointer to **string** | Only when configured. | [optional] 

## Methods

### NewAuthorizationServerMetadata

`func NewAuthorizationServerMetadata(issuer string, authorizationEndpoint string, tokenEndpoint string, responseTypesSupported []string, jwksUri string, ) *AuthorizationServerMetadata`

NewAuthorizationServerMetadata instantiates a new AuthorizationServerMetadata object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthorizationServerMetadataWithDefaults

`func NewAuthorizationServerMetadataWithDefaults() *AuthorizationServerMetadata`

NewAuthorizationServerMetadataWithDefaults instantiates a new AuthorizationServerMetadata object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIssuer

`func (o *AuthorizationServerMetadata) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *AuthorizationServerMetadata) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *AuthorizationServerMetadata) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.


### GetAuthorizationEndpoint

`func (o *AuthorizationServerMetadata) GetAuthorizationEndpoint() string`

GetAuthorizationEndpoint returns the AuthorizationEndpoint field if non-nil, zero value otherwise.

### GetAuthorizationEndpointOk

`func (o *AuthorizationServerMetadata) GetAuthorizationEndpointOk() (*string, bool)`

GetAuthorizationEndpointOk returns a tuple with the AuthorizationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationEndpoint

`func (o *AuthorizationServerMetadata) SetAuthorizationEndpoint(v string)`

SetAuthorizationEndpoint sets AuthorizationEndpoint field to given value.


### GetTokenEndpoint

`func (o *AuthorizationServerMetadata) GetTokenEndpoint() string`

GetTokenEndpoint returns the TokenEndpoint field if non-nil, zero value otherwise.

### GetTokenEndpointOk

`func (o *AuthorizationServerMetadata) GetTokenEndpointOk() (*string, bool)`

GetTokenEndpointOk returns a tuple with the TokenEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpoint

`func (o *AuthorizationServerMetadata) SetTokenEndpoint(v string)`

SetTokenEndpoint sets TokenEndpoint field to given value.


### GetResponseTypesSupported

`func (o *AuthorizationServerMetadata) GetResponseTypesSupported() []string`

GetResponseTypesSupported returns the ResponseTypesSupported field if non-nil, zero value otherwise.

### GetResponseTypesSupportedOk

`func (o *AuthorizationServerMetadata) GetResponseTypesSupportedOk() (*[]string, bool)`

GetResponseTypesSupportedOk returns a tuple with the ResponseTypesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseTypesSupported

`func (o *AuthorizationServerMetadata) SetResponseTypesSupported(v []string)`

SetResponseTypesSupported sets ResponseTypesSupported field to given value.


### GetJwksUri

`func (o *AuthorizationServerMetadata) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *AuthorizationServerMetadata) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *AuthorizationServerMetadata) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.


### GetRegistrationEndpoint

`func (o *AuthorizationServerMetadata) GetRegistrationEndpoint() string`

GetRegistrationEndpoint returns the RegistrationEndpoint field if non-nil, zero value otherwise.

### GetRegistrationEndpointOk

`func (o *AuthorizationServerMetadata) GetRegistrationEndpointOk() (*string, bool)`

GetRegistrationEndpointOk returns a tuple with the RegistrationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationEndpoint

`func (o *AuthorizationServerMetadata) SetRegistrationEndpoint(v string)`

SetRegistrationEndpoint sets RegistrationEndpoint field to given value.

### HasRegistrationEndpoint

`func (o *AuthorizationServerMetadata) HasRegistrationEndpoint() bool`

HasRegistrationEndpoint returns a boolean if a field has been set.

### GetScopesSupported

`func (o *AuthorizationServerMetadata) GetScopesSupported() []string`

GetScopesSupported returns the ScopesSupported field if non-nil, zero value otherwise.

### GetScopesSupportedOk

`func (o *AuthorizationServerMetadata) GetScopesSupportedOk() (*[]string, bool)`

GetScopesSupportedOk returns a tuple with the ScopesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopesSupported

`func (o *AuthorizationServerMetadata) SetScopesSupported(v []string)`

SetScopesSupported sets ScopesSupported field to given value.

### HasScopesSupported

`func (o *AuthorizationServerMetadata) HasScopesSupported() bool`

HasScopesSupported returns a boolean if a field has been set.

### GetResponseModesSupported

`func (o *AuthorizationServerMetadata) GetResponseModesSupported() []string`

GetResponseModesSupported returns the ResponseModesSupported field if non-nil, zero value otherwise.

### GetResponseModesSupportedOk

`func (o *AuthorizationServerMetadata) GetResponseModesSupportedOk() (*[]string, bool)`

GetResponseModesSupportedOk returns a tuple with the ResponseModesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseModesSupported

`func (o *AuthorizationServerMetadata) SetResponseModesSupported(v []string)`

SetResponseModesSupported sets ResponseModesSupported field to given value.

### HasResponseModesSupported

`func (o *AuthorizationServerMetadata) HasResponseModesSupported() bool`

HasResponseModesSupported returns a boolean if a field has been set.

### GetAuthorizationSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) GetAuthorizationSigningAlgValuesSupported() []string`

GetAuthorizationSigningAlgValuesSupported returns the AuthorizationSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetAuthorizationSigningAlgValuesSupportedOk

`func (o *AuthorizationServerMetadata) GetAuthorizationSigningAlgValuesSupportedOk() (*[]string, bool)`

GetAuthorizationSigningAlgValuesSupportedOk returns a tuple with the AuthorizationSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) SetAuthorizationSigningAlgValuesSupported(v []string)`

SetAuthorizationSigningAlgValuesSupported sets AuthorizationSigningAlgValuesSupported field to given value.

### HasAuthorizationSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) HasAuthorizationSigningAlgValuesSupported() bool`

HasAuthorizationSigningAlgValuesSupported returns a boolean if a field has been set.

### GetGrantTypesSupported

`func (o *AuthorizationServerMetadata) GetGrantTypesSupported() []string`

GetGrantTypesSupported returns the GrantTypesSupported field if non-nil, zero value otherwise.

### GetGrantTypesSupportedOk

`func (o *AuthorizationServerMetadata) GetGrantTypesSupportedOk() (*[]string, bool)`

GetGrantTypesSupportedOk returns a tuple with the GrantTypesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypesSupported

`func (o *AuthorizationServerMetadata) SetGrantTypesSupported(v []string)`

SetGrantTypesSupported sets GrantTypesSupported field to given value.

### HasGrantTypesSupported

`func (o *AuthorizationServerMetadata) HasGrantTypesSupported() bool`

HasGrantTypesSupported returns a boolean if a field has been set.

### GetTokenEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) GetTokenEndpointAuthMethodsSupported() []string`

GetTokenEndpointAuthMethodsSupported returns the TokenEndpointAuthMethodsSupported field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodsSupportedOk

`func (o *AuthorizationServerMetadata) GetTokenEndpointAuthMethodsSupportedOk() (*[]string, bool)`

GetTokenEndpointAuthMethodsSupportedOk returns a tuple with the TokenEndpointAuthMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) SetTokenEndpointAuthMethodsSupported(v []string)`

SetTokenEndpointAuthMethodsSupported sets TokenEndpointAuthMethodsSupported field to given value.

### HasTokenEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) HasTokenEndpointAuthMethodsSupported() bool`

HasTokenEndpointAuthMethodsSupported returns a boolean if a field has been set.

### GetTokenEndpointAuthSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) GetTokenEndpointAuthSigningAlgValuesSupported() []string`

GetTokenEndpointAuthSigningAlgValuesSupported returns the TokenEndpointAuthSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetTokenEndpointAuthSigningAlgValuesSupportedOk

`func (o *AuthorizationServerMetadata) GetTokenEndpointAuthSigningAlgValuesSupportedOk() (*[]string, bool)`

GetTokenEndpointAuthSigningAlgValuesSupportedOk returns a tuple with the TokenEndpointAuthSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) SetTokenEndpointAuthSigningAlgValuesSupported(v []string)`

SetTokenEndpointAuthSigningAlgValuesSupported sets TokenEndpointAuthSigningAlgValuesSupported field to given value.

### HasTokenEndpointAuthSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) HasTokenEndpointAuthSigningAlgValuesSupported() bool`

HasTokenEndpointAuthSigningAlgValuesSupported returns a boolean if a field has been set.

### GetServiceDocumentation

`func (o *AuthorizationServerMetadata) GetServiceDocumentation() string`

GetServiceDocumentation returns the ServiceDocumentation field if non-nil, zero value otherwise.

### GetServiceDocumentationOk

`func (o *AuthorizationServerMetadata) GetServiceDocumentationOk() (*string, bool)`

GetServiceDocumentationOk returns a tuple with the ServiceDocumentation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceDocumentation

`func (o *AuthorizationServerMetadata) SetServiceDocumentation(v string)`

SetServiceDocumentation sets ServiceDocumentation field to given value.

### HasServiceDocumentation

`func (o *AuthorizationServerMetadata) HasServiceDocumentation() bool`

HasServiceDocumentation returns a boolean if a field has been set.

### GetUiLocalesSupported

`func (o *AuthorizationServerMetadata) GetUiLocalesSupported() []string`

GetUiLocalesSupported returns the UiLocalesSupported field if non-nil, zero value otherwise.

### GetUiLocalesSupportedOk

`func (o *AuthorizationServerMetadata) GetUiLocalesSupportedOk() (*[]string, bool)`

GetUiLocalesSupportedOk returns a tuple with the UiLocalesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUiLocalesSupported

`func (o *AuthorizationServerMetadata) SetUiLocalesSupported(v []string)`

SetUiLocalesSupported sets UiLocalesSupported field to given value.

### HasUiLocalesSupported

`func (o *AuthorizationServerMetadata) HasUiLocalesSupported() bool`

HasUiLocalesSupported returns a boolean if a field has been set.

### GetRevocationEndpoint

`func (o *AuthorizationServerMetadata) GetRevocationEndpoint() string`

GetRevocationEndpoint returns the RevocationEndpoint field if non-nil, zero value otherwise.

### GetRevocationEndpointOk

`func (o *AuthorizationServerMetadata) GetRevocationEndpointOk() (*string, bool)`

GetRevocationEndpointOk returns a tuple with the RevocationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevocationEndpoint

`func (o *AuthorizationServerMetadata) SetRevocationEndpoint(v string)`

SetRevocationEndpoint sets RevocationEndpoint field to given value.

### HasRevocationEndpoint

`func (o *AuthorizationServerMetadata) HasRevocationEndpoint() bool`

HasRevocationEndpoint returns a boolean if a field has been set.

### GetRevocationEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) GetRevocationEndpointAuthMethodsSupported() []string`

GetRevocationEndpointAuthMethodsSupported returns the RevocationEndpointAuthMethodsSupported field if non-nil, zero value otherwise.

### GetRevocationEndpointAuthMethodsSupportedOk

`func (o *AuthorizationServerMetadata) GetRevocationEndpointAuthMethodsSupportedOk() (*[]string, bool)`

GetRevocationEndpointAuthMethodsSupportedOk returns a tuple with the RevocationEndpointAuthMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevocationEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) SetRevocationEndpointAuthMethodsSupported(v []string)`

SetRevocationEndpointAuthMethodsSupported sets RevocationEndpointAuthMethodsSupported field to given value.

### HasRevocationEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) HasRevocationEndpointAuthMethodsSupported() bool`

HasRevocationEndpointAuthMethodsSupported returns a boolean if a field has been set.

### GetIntrospectionEndpoint

`func (o *AuthorizationServerMetadata) GetIntrospectionEndpoint() string`

GetIntrospectionEndpoint returns the IntrospectionEndpoint field if non-nil, zero value otherwise.

### GetIntrospectionEndpointOk

`func (o *AuthorizationServerMetadata) GetIntrospectionEndpointOk() (*string, bool)`

GetIntrospectionEndpointOk returns a tuple with the IntrospectionEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntrospectionEndpoint

`func (o *AuthorizationServerMetadata) SetIntrospectionEndpoint(v string)`

SetIntrospectionEndpoint sets IntrospectionEndpoint field to given value.

### HasIntrospectionEndpoint

`func (o *AuthorizationServerMetadata) HasIntrospectionEndpoint() bool`

HasIntrospectionEndpoint returns a boolean if a field has been set.

### GetIntrospectionEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) GetIntrospectionEndpointAuthMethodsSupported() []string`

GetIntrospectionEndpointAuthMethodsSupported returns the IntrospectionEndpointAuthMethodsSupported field if non-nil, zero value otherwise.

### GetIntrospectionEndpointAuthMethodsSupportedOk

`func (o *AuthorizationServerMetadata) GetIntrospectionEndpointAuthMethodsSupportedOk() (*[]string, bool)`

GetIntrospectionEndpointAuthMethodsSupportedOk returns a tuple with the IntrospectionEndpointAuthMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntrospectionEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) SetIntrospectionEndpointAuthMethodsSupported(v []string)`

SetIntrospectionEndpointAuthMethodsSupported sets IntrospectionEndpointAuthMethodsSupported field to given value.

### HasIntrospectionEndpointAuthMethodsSupported

`func (o *AuthorizationServerMetadata) HasIntrospectionEndpointAuthMethodsSupported() bool`

HasIntrospectionEndpointAuthMethodsSupported returns a boolean if a field has been set.

### GetCodeChallengeMethodsSupported

`func (o *AuthorizationServerMetadata) GetCodeChallengeMethodsSupported() []string`

GetCodeChallengeMethodsSupported returns the CodeChallengeMethodsSupported field if non-nil, zero value otherwise.

### GetCodeChallengeMethodsSupportedOk

`func (o *AuthorizationServerMetadata) GetCodeChallengeMethodsSupportedOk() (*[]string, bool)`

GetCodeChallengeMethodsSupportedOk returns a tuple with the CodeChallengeMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodeChallengeMethodsSupported

`func (o *AuthorizationServerMetadata) SetCodeChallengeMethodsSupported(v []string)`

SetCodeChallengeMethodsSupported sets CodeChallengeMethodsSupported field to given value.

### HasCodeChallengeMethodsSupported

`func (o *AuthorizationServerMetadata) HasCodeChallengeMethodsSupported() bool`

HasCodeChallengeMethodsSupported returns a boolean if a field has been set.

### GetAuthorizationResponseIssParameterSupported

`func (o *AuthorizationServerMetadata) GetAuthorizationResponseIssParameterSupported() bool`

GetAuthorizationResponseIssParameterSupported returns the AuthorizationResponseIssParameterSupported field if non-nil, zero value otherwise.

### GetAuthorizationResponseIssParameterSupportedOk

`func (o *AuthorizationServerMetadata) GetAuthorizationResponseIssParameterSupportedOk() (*bool, bool)`

GetAuthorizationResponseIssParameterSupportedOk returns a tuple with the AuthorizationResponseIssParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationResponseIssParameterSupported

`func (o *AuthorizationServerMetadata) SetAuthorizationResponseIssParameterSupported(v bool)`

SetAuthorizationResponseIssParameterSupported sets AuthorizationResponseIssParameterSupported field to given value.

### HasAuthorizationResponseIssParameterSupported

`func (o *AuthorizationServerMetadata) HasAuthorizationResponseIssParameterSupported() bool`

HasAuthorizationResponseIssParameterSupported returns a boolean if a field has been set.

### GetRequestParameterSupported

`func (o *AuthorizationServerMetadata) GetRequestParameterSupported() bool`

GetRequestParameterSupported returns the RequestParameterSupported field if non-nil, zero value otherwise.

### GetRequestParameterSupportedOk

`func (o *AuthorizationServerMetadata) GetRequestParameterSupportedOk() (*bool, bool)`

GetRequestParameterSupportedOk returns a tuple with the RequestParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestParameterSupported

`func (o *AuthorizationServerMetadata) SetRequestParameterSupported(v bool)`

SetRequestParameterSupported sets RequestParameterSupported field to given value.

### HasRequestParameterSupported

`func (o *AuthorizationServerMetadata) HasRequestParameterSupported() bool`

HasRequestParameterSupported returns a boolean if a field has been set.

### GetRequestUriParameterSupported

`func (o *AuthorizationServerMetadata) GetRequestUriParameterSupported() bool`

GetRequestUriParameterSupported returns the RequestUriParameterSupported field if non-nil, zero value otherwise.

### GetRequestUriParameterSupportedOk

`func (o *AuthorizationServerMetadata) GetRequestUriParameterSupportedOk() (*bool, bool)`

GetRequestUriParameterSupportedOk returns a tuple with the RequestUriParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestUriParameterSupported

`func (o *AuthorizationServerMetadata) SetRequestUriParameterSupported(v bool)`

SetRequestUriParameterSupported sets RequestUriParameterSupported field to given value.

### HasRequestUriParameterSupported

`func (o *AuthorizationServerMetadata) HasRequestUriParameterSupported() bool`

HasRequestUriParameterSupported returns a boolean if a field has been set.

### GetRequireRequestUriRegistration

`func (o *AuthorizationServerMetadata) GetRequireRequestUriRegistration() bool`

GetRequireRequestUriRegistration returns the RequireRequestUriRegistration field if non-nil, zero value otherwise.

### GetRequireRequestUriRegistrationOk

`func (o *AuthorizationServerMetadata) GetRequireRequestUriRegistrationOk() (*bool, bool)`

GetRequireRequestUriRegistrationOk returns a tuple with the RequireRequestUriRegistration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireRequestUriRegistration

`func (o *AuthorizationServerMetadata) SetRequireRequestUriRegistration(v bool)`

SetRequireRequestUriRegistration sets RequireRequestUriRegistration field to given value.

### HasRequireRequestUriRegistration

`func (o *AuthorizationServerMetadata) HasRequireRequestUriRegistration() bool`

HasRequireRequestUriRegistration returns a boolean if a field has been set.

### GetRequireSignedRequestObject

`func (o *AuthorizationServerMetadata) GetRequireSignedRequestObject() bool`

GetRequireSignedRequestObject returns the RequireSignedRequestObject field if non-nil, zero value otherwise.

### GetRequireSignedRequestObjectOk

`func (o *AuthorizationServerMetadata) GetRequireSignedRequestObjectOk() (*bool, bool)`

GetRequireSignedRequestObjectOk returns a tuple with the RequireSignedRequestObject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireSignedRequestObject

`func (o *AuthorizationServerMetadata) SetRequireSignedRequestObject(v bool)`

SetRequireSignedRequestObject sets RequireSignedRequestObject field to given value.

### HasRequireSignedRequestObject

`func (o *AuthorizationServerMetadata) HasRequireSignedRequestObject() bool`

HasRequireSignedRequestObject returns a boolean if a field has been set.

### GetRequestObjectSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) GetRequestObjectSigningAlgValuesSupported() []string`

GetRequestObjectSigningAlgValuesSupported returns the RequestObjectSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetRequestObjectSigningAlgValuesSupportedOk

`func (o *AuthorizationServerMetadata) GetRequestObjectSigningAlgValuesSupportedOk() (*[]string, bool)`

GetRequestObjectSigningAlgValuesSupportedOk returns a tuple with the RequestObjectSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestObjectSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) SetRequestObjectSigningAlgValuesSupported(v []string)`

SetRequestObjectSigningAlgValuesSupported sets RequestObjectSigningAlgValuesSupported field to given value.

### HasRequestObjectSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) HasRequestObjectSigningAlgValuesSupported() bool`

HasRequestObjectSigningAlgValuesSupported returns a boolean if a field has been set.

### GetDeviceAuthorizationEndpoint

`func (o *AuthorizationServerMetadata) GetDeviceAuthorizationEndpoint() string`

GetDeviceAuthorizationEndpoint returns the DeviceAuthorizationEndpoint field if non-nil, zero value otherwise.

### GetDeviceAuthorizationEndpointOk

`func (o *AuthorizationServerMetadata) GetDeviceAuthorizationEndpointOk() (*string, bool)`

GetDeviceAuthorizationEndpointOk returns a tuple with the DeviceAuthorizationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceAuthorizationEndpoint

`func (o *AuthorizationServerMetadata) SetDeviceAuthorizationEndpoint(v string)`

SetDeviceAuthorizationEndpoint sets DeviceAuthorizationEndpoint field to given value.

### HasDeviceAuthorizationEndpoint

`func (o *AuthorizationServerMetadata) HasDeviceAuthorizationEndpoint() bool`

HasDeviceAuthorizationEndpoint returns a boolean if a field has been set.

### GetPushedAuthorizationRequestEndpoint

`func (o *AuthorizationServerMetadata) GetPushedAuthorizationRequestEndpoint() string`

GetPushedAuthorizationRequestEndpoint returns the PushedAuthorizationRequestEndpoint field if non-nil, zero value otherwise.

### GetPushedAuthorizationRequestEndpointOk

`func (o *AuthorizationServerMetadata) GetPushedAuthorizationRequestEndpointOk() (*string, bool)`

GetPushedAuthorizationRequestEndpointOk returns a tuple with the PushedAuthorizationRequestEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushedAuthorizationRequestEndpoint

`func (o *AuthorizationServerMetadata) SetPushedAuthorizationRequestEndpoint(v string)`

SetPushedAuthorizationRequestEndpoint sets PushedAuthorizationRequestEndpoint field to given value.

### HasPushedAuthorizationRequestEndpoint

`func (o *AuthorizationServerMetadata) HasPushedAuthorizationRequestEndpoint() bool`

HasPushedAuthorizationRequestEndpoint returns a boolean if a field has been set.

### GetRequirePushedAuthorizationRequests

`func (o *AuthorizationServerMetadata) GetRequirePushedAuthorizationRequests() bool`

GetRequirePushedAuthorizationRequests returns the RequirePushedAuthorizationRequests field if non-nil, zero value otherwise.

### GetRequirePushedAuthorizationRequestsOk

`func (o *AuthorizationServerMetadata) GetRequirePushedAuthorizationRequestsOk() (*bool, bool)`

GetRequirePushedAuthorizationRequestsOk returns a tuple with the RequirePushedAuthorizationRequests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePushedAuthorizationRequests

`func (o *AuthorizationServerMetadata) SetRequirePushedAuthorizationRequests(v bool)`

SetRequirePushedAuthorizationRequests sets RequirePushedAuthorizationRequests field to given value.

### HasRequirePushedAuthorizationRequests

`func (o *AuthorizationServerMetadata) HasRequirePushedAuthorizationRequests() bool`

HasRequirePushedAuthorizationRequests returns a boolean if a field has been set.

### GetDpopSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) GetDpopSigningAlgValuesSupported() []string`

GetDpopSigningAlgValuesSupported returns the DpopSigningAlgValuesSupported field if non-nil, zero value otherwise.

### GetDpopSigningAlgValuesSupportedOk

`func (o *AuthorizationServerMetadata) GetDpopSigningAlgValuesSupportedOk() (*[]string, bool)`

GetDpopSigningAlgValuesSupportedOk returns a tuple with the DpopSigningAlgValuesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) SetDpopSigningAlgValuesSupported(v []string)`

SetDpopSigningAlgValuesSupported sets DpopSigningAlgValuesSupported field to given value.

### HasDpopSigningAlgValuesSupported

`func (o *AuthorizationServerMetadata) HasDpopSigningAlgValuesSupported() bool`

HasDpopSigningAlgValuesSupported returns a boolean if a field has been set.

### GetTlsClientCertificateBoundAccessTokens

`func (o *AuthorizationServerMetadata) GetTlsClientCertificateBoundAccessTokens() bool`

GetTlsClientCertificateBoundAccessTokens returns the TlsClientCertificateBoundAccessTokens field if non-nil, zero value otherwise.

### GetTlsClientCertificateBoundAccessTokensOk

`func (o *AuthorizationServerMetadata) GetTlsClientCertificateBoundAccessTokensOk() (*bool, bool)`

GetTlsClientCertificateBoundAccessTokensOk returns a tuple with the TlsClientCertificateBoundAccessTokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTlsClientCertificateBoundAccessTokens

`func (o *AuthorizationServerMetadata) SetTlsClientCertificateBoundAccessTokens(v bool)`

SetTlsClientCertificateBoundAccessTokens sets TlsClientCertificateBoundAccessTokens field to given value.

### HasTlsClientCertificateBoundAccessTokens

`func (o *AuthorizationServerMetadata) HasTlsClientCertificateBoundAccessTokens() bool`

HasTlsClientCertificateBoundAccessTokens returns a boolean if a field has been set.

### GetBackchannelAuthenticationEndpoint

`func (o *AuthorizationServerMetadata) GetBackchannelAuthenticationEndpoint() string`

GetBackchannelAuthenticationEndpoint returns the BackchannelAuthenticationEndpoint field if non-nil, zero value otherwise.

### GetBackchannelAuthenticationEndpointOk

`func (o *AuthorizationServerMetadata) GetBackchannelAuthenticationEndpointOk() (*string, bool)`

GetBackchannelAuthenticationEndpointOk returns a tuple with the BackchannelAuthenticationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelAuthenticationEndpoint

`func (o *AuthorizationServerMetadata) SetBackchannelAuthenticationEndpoint(v string)`

SetBackchannelAuthenticationEndpoint sets BackchannelAuthenticationEndpoint field to given value.

### HasBackchannelAuthenticationEndpoint

`func (o *AuthorizationServerMetadata) HasBackchannelAuthenticationEndpoint() bool`

HasBackchannelAuthenticationEndpoint returns a boolean if a field has been set.

### GetBackchannelTokenDeliveryModesSupported

`func (o *AuthorizationServerMetadata) GetBackchannelTokenDeliveryModesSupported() []string`

GetBackchannelTokenDeliveryModesSupported returns the BackchannelTokenDeliveryModesSupported field if non-nil, zero value otherwise.

### GetBackchannelTokenDeliveryModesSupportedOk

`func (o *AuthorizationServerMetadata) GetBackchannelTokenDeliveryModesSupportedOk() (*[]string, bool)`

GetBackchannelTokenDeliveryModesSupportedOk returns a tuple with the BackchannelTokenDeliveryModesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelTokenDeliveryModesSupported

`func (o *AuthorizationServerMetadata) SetBackchannelTokenDeliveryModesSupported(v []string)`

SetBackchannelTokenDeliveryModesSupported sets BackchannelTokenDeliveryModesSupported field to given value.

### HasBackchannelTokenDeliveryModesSupported

`func (o *AuthorizationServerMetadata) HasBackchannelTokenDeliveryModesSupported() bool`

HasBackchannelTokenDeliveryModesSupported returns a boolean if a field has been set.

### GetBackchannelUserCodeParameterSupported

`func (o *AuthorizationServerMetadata) GetBackchannelUserCodeParameterSupported() bool`

GetBackchannelUserCodeParameterSupported returns the BackchannelUserCodeParameterSupported field if non-nil, zero value otherwise.

### GetBackchannelUserCodeParameterSupportedOk

`func (o *AuthorizationServerMetadata) GetBackchannelUserCodeParameterSupportedOk() (*bool, bool)`

GetBackchannelUserCodeParameterSupportedOk returns a tuple with the BackchannelUserCodeParameterSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelUserCodeParameterSupported

`func (o *AuthorizationServerMetadata) SetBackchannelUserCodeParameterSupported(v bool)`

SetBackchannelUserCodeParameterSupported sets BackchannelUserCodeParameterSupported field to given value.

### HasBackchannelUserCodeParameterSupported

`func (o *AuthorizationServerMetadata) HasBackchannelUserCodeParameterSupported() bool`

HasBackchannelUserCodeParameterSupported returns a boolean if a field has been set.

### GetEntityProfilesSupported

`func (o *AuthorizationServerMetadata) GetEntityProfilesSupported() []string`

GetEntityProfilesSupported returns the EntityProfilesSupported field if non-nil, zero value otherwise.

### GetEntityProfilesSupportedOk

`func (o *AuthorizationServerMetadata) GetEntityProfilesSupportedOk() (*[]string, bool)`

GetEntityProfilesSupportedOk returns a tuple with the EntityProfilesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntityProfilesSupported

`func (o *AuthorizationServerMetadata) SetEntityProfilesSupported(v []string)`

SetEntityProfilesSupported sets EntityProfilesSupported field to given value.

### HasEntityProfilesSupported

`func (o *AuthorizationServerMetadata) HasEntityProfilesSupported() bool`

HasEntityProfilesSupported returns a boolean if a field has been set.

### GetClientIdMetadataDocumentSupported

`func (o *AuthorizationServerMetadata) GetClientIdMetadataDocumentSupported() bool`

GetClientIdMetadataDocumentSupported returns the ClientIdMetadataDocumentSupported field if non-nil, zero value otherwise.

### GetClientIdMetadataDocumentSupportedOk

`func (o *AuthorizationServerMetadata) GetClientIdMetadataDocumentSupportedOk() (*bool, bool)`

GetClientIdMetadataDocumentSupportedOk returns a tuple with the ClientIdMetadataDocumentSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientIdMetadataDocumentSupported

`func (o *AuthorizationServerMetadata) SetClientIdMetadataDocumentSupported(v bool)`

SetClientIdMetadataDocumentSupported sets ClientIdMetadataDocumentSupported field to given value.

### HasClientIdMetadataDocumentSupported

`func (o *AuthorizationServerMetadata) HasClientIdMetadataDocumentSupported() bool`

HasClientIdMetadataDocumentSupported returns a boolean if a field has been set.

### GetAuthorizationGrantProfilesSupported

`func (o *AuthorizationServerMetadata) GetAuthorizationGrantProfilesSupported() []string`

GetAuthorizationGrantProfilesSupported returns the AuthorizationGrantProfilesSupported field if non-nil, zero value otherwise.

### GetAuthorizationGrantProfilesSupportedOk

`func (o *AuthorizationServerMetadata) GetAuthorizationGrantProfilesSupportedOk() (*[]string, bool)`

GetAuthorizationGrantProfilesSupportedOk returns a tuple with the AuthorizationGrantProfilesSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationGrantProfilesSupported

`func (o *AuthorizationServerMetadata) SetAuthorizationGrantProfilesSupported(v []string)`

SetAuthorizationGrantProfilesSupported sets AuthorizationGrantProfilesSupported field to given value.

### HasAuthorizationGrantProfilesSupported

`func (o *AuthorizationServerMetadata) HasAuthorizationGrantProfilesSupported() bool`

HasAuthorizationGrantProfilesSupported returns a boolean if a field has been set.

### GetOpPolicyUri

`func (o *AuthorizationServerMetadata) GetOpPolicyUri() string`

GetOpPolicyUri returns the OpPolicyUri field if non-nil, zero value otherwise.

### GetOpPolicyUriOk

`func (o *AuthorizationServerMetadata) GetOpPolicyUriOk() (*string, bool)`

GetOpPolicyUriOk returns a tuple with the OpPolicyUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpPolicyUri

`func (o *AuthorizationServerMetadata) SetOpPolicyUri(v string)`

SetOpPolicyUri sets OpPolicyUri field to given value.

### HasOpPolicyUri

`func (o *AuthorizationServerMetadata) HasOpPolicyUri() bool`

HasOpPolicyUri returns a boolean if a field has been set.

### GetOpTosUri

`func (o *AuthorizationServerMetadata) GetOpTosUri() string`

GetOpTosUri returns the OpTosUri field if non-nil, zero value otherwise.

### GetOpTosUriOk

`func (o *AuthorizationServerMetadata) GetOpTosUriOk() (*string, bool)`

GetOpTosUriOk returns a tuple with the OpTosUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpTosUri

`func (o *AuthorizationServerMetadata) SetOpTosUri(v string)`

SetOpTosUri sets OpTosUri field to given value.

### HasOpTosUri

`func (o *AuthorizationServerMetadata) HasOpTosUri() bool`

HasOpTosUri returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


