# GitHub configuration

Shared GitHub configuration for Tembo repositories.

## Labels

[`settings.yml`](settings.yml) is the source of truth for shared labels, synced
by the [Probot Settings](https://github.com/apps/settings) app. Repositories opt
in with their own `.github/settings.yml`:

```yaml
_extends: .github
```

Define every label used by automation here first: labels missing from the
catalog are deleted on sync, along with their assignments. Path-based label
assignment lives in each repository (for example, the monorepo's
`.github/labeler.yml`).

The Settings app can change repository administration settings, so protect
settings files with CODEOWNERS.

## Shared automation

- Reusable workflows go in `.github/workflows/`.
- Organization workflow templates go in `workflow-templates/`.

## Organization profile

[`profile/README.md`](../profile/README.md) is the landing page on
[github.com/tembo](https://github.com/tembo).
