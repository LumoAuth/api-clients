# LumoAuth API clients — generated

This tree holds the **generated** LumoAuth API clients: nine languages,
produced from the server's OpenAPI 3 spec by
[`sdk-codegen/`](../sdk-codegen/). The spec
they were generated from is committed here as [`openapi.json`](./openapi.json)
(204 paths / ~300 operations, including the AAuth agent, MCP authorization,
JIT permission, and AuthZEN `/api/v1/authz` surfaces).

**Do not edit anything under a language directory by hand** — the pipeline
regenerates with `rm -rf` and your change is gone. Fixes belong in the
server's OpenAPI annotations or in `sdk-codegen/configs/*.json`.

## Generated vs hand-maintained: which do I use?

LumoAuth ships two kinds of client, on purpose:

| | Hand-maintained SDKs | Generated clients (this repo) |
|---|---|---|
| **What** | Ergonomic, framework-native SDKs written by humans | Raw HTTP clients + typed models, machine-generated from the spec |
| **Where** | [`sdk-js/`](../sdk-js/) → the 8-package npm workspace: `@lumoauth/shared`, `@lumoauth/client`, `@lumoauth/backend`, `@lumoauth/express`, `@lumoauth/agent`, `@lumoauth/react`, `@lumoauth/nextjs`, `create-lumo-agent` · [`sdk-python/`](../sdk-python/) → `lumoauth` (PyPI, extras `[aauth]`/`[fastapi]`) · [`sdk-go/`](../sdk-go/) → `github.com/lumoauth/lumo-auth-go` | `api-clients/<language>/` — `@lumoauth/api-client`, `lumoauth-api-client`, `io.lumoauth:lumoauth-api-client`, … |
| **Coverage** | The curated 20%: login flows, session/JWT verification, middleware, AAuth agent identity | The full 100% of the REST API, including every admin endpoint |
| **Ergonomics** | High — Express middleware, FastAPI dependencies, sensible defaults | Low — one method per operation, you wire auth headers yourself |
| **When to use** | Building an app in Node/Python/Go | Any other language; or full raw API coverage (admin automation, SCIM tooling, backoffice scripts) in any language |

**Rule of thumb:** if a hand-maintained SDK exists for your language, start
there; drop to the generated client when you need an endpoint it doesn't
wrap. You usually don't even need a separate install for that: the
server-side SDKs expose the generated client as a built-in escape hatch —
`lumo.api.*` on `@lumoauth/backend` (which depends on `@lumoauth/api-client`)
and `client.api` on the Python `lumoauth` package (lazy-imports
`lumoauth-api-client`). Browser packages never ship the generated client.
In Java/C#/Ruby/Rust/Swift/PHP the generated client *is* the SDK today —
each is labeled "generated client — ergonomic wrapper next" in its README,
and that's the roadmap: ergonomic wrappers will be layered **on top of**
(importing, not replacing) these packages.

## The packages

| Language | Directory | Package | Version | Registry |
|---|---|---|---|---|
| TypeScript | `typescript/` | `@lumoauth/api-client` | 0.1.0 | npmjs.com |
| Python | `python/` | `lumoauth-api-client` | 0.1.0 | pypi.org |
| Go | `go/` | `github.com/lumoauth/api-clients/go` | 0.1.0 | module proxy (git tag) |
| Java | `java/` | `io.lumoauth:lumoauth-api-client` | 0.1.0 | Maven Central |
| C# | `csharp/` | `LumoAuth.ApiClient` | 0.1.0 | nuget.org |
| Ruby | `ruby/` | `lumoauth_api_client` | 0.1.0 | rubygems.org |
| Rust | `rust/` | `lumoauth-api-client` | 0.1.0 | crates.io |
| Swift | `swift/` | `LumoAuthAPIClient` | 0.1.0 | SwiftPM (git tag) |
| PHP | `php/` | `lumoauth/api-client` | 0.1.0 | packagist.org (via the `LumoAuth/api-client-php` split mirror) |

All versions move in lockstep and are set in
`sdk-codegen/configs/<language>.json` (one `*Version` key per
config). The SDK version is independent of the server version.

## Regenerating

```bash
cd server
../sdk-codegen/generate.sh            # all languages
../sdk-codegen/generate.sh java ruby  # a subset
```

The script resolves the spec in this order: `LUMO_SPEC_FILE` → a fresh
`php bin/console nelmio:apidoc:dump` → the running server's
`/api/doc.json` → `server/openapi.json` (the **canonical** committed spec,
guarded by the server repo's `openapi-freshness.yml`) → the copy committed here
(**derived**, unguarded, last resort). A fresh dump or fetch rewrites both
committed copies, so they only drift when codegen has not been run.

Set `REQUIRE_FRESH_SPEC=1` to make either fallback a hard error instead of a
warning — do this for every release.

In CI, `server/.github/workflows/sdk-codegen.yml` regenerates on every
spec-affecting push to `main`, dry-run-publishes every ecosystem, and opens
a PR here.

## Publishing

CI proves every artifact packs cleanly (`npm publish --dry-run`,
`twine check`, `gem build`, `mvn package`, `dotnet pack`,
`cargo publish --dry-run`, `go build`, `swift build`, `composer validate` +
`composer install`). Real releases need
registry credentials, configured as GitHub secrets. **The full release
procedure — order of operations, version bumps, tagging, and the smoke test
for each ecosystem — is in [`playbooks/sdk-release.md`](../playbooks/sdk-release.md);
the table below is only the credential inventory.**

| Ecosystem | Secret(s) | One-time human setup |
|---|---|---|
| npm | `NPM_TOKEN` | npm org `@lumoauth` exists (used by the hand-written `@lumoauth/*` packages); create an automation token |
| PyPI | `PYPI_API_TOKEN` | Reserve `lumoauth-api-client` on pypi.org; project-scoped token (or trusted publishing) |
| RubyGems | `RUBYGEMS_API_KEY` | rubygems.org account; push-scoped API key |
| Maven Central | `OSSRH_USERNAME`, `OSSRH_PASSWORD`, `MAVEN_GPG_PRIVATE_KEY`, `MAVEN_GPG_PASSPHRASE` | Verify the `io.lumoauth` namespace with Sonatype Central (DNS TXT record on lumoauth.io or GitHub-org proof); generate a GPG signing key |
| NuGet | `NUGET_API_KEY` | nuget.org account; reserve the `LumoAuth.*` prefix; push-scoped key |
| crates.io | `CARGO_REGISTRY_TOKEN` | crates.io account; publish token |
| Go | — | None. Tag `go/v0.1.0` on this repo; the module proxy picks it up |
| Swift | — | None. Tag `0.1.0`; consumers point SwiftPM at this repo URL |
| Packagist (PHP) | `API_CLIENT_PHP_MIRROR_TOKEN` | Composer needs `composer.json` at the **root** of a git repo, so `php/` is pushed with `git subtree split` to the read-only mirror `LumoAuth/api-client-php` and tagged there; packagist.org points at the mirror and auto-updates from its GitHub hook. No registry token. See `playbooks/sdk-publish-packagist.md` |

Release flow: merge the regeneration PR → tag `v0.1.0` (plus `go/v0.1.0`)
→ the release workflow publishes each package with the secrets above and
pushes the `php/` subtree to the Packagist mirror.
Nothing else is hand-cranked.
