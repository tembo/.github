# Tembo GitHub configuration

Shared GitHub configuration, workflows, templates, and labels for Tembo
repositories.

## Organization profile

[`profile/README.md`](profile/README.md) is the landing page shown on
[github.com/tembo](https://github.com/tembo). Its images live in
`profile/assets/`.

## Labels

The Probot Settings app syncs the shared definitions in
[`.github/settings.yml`](.github/settings.yml). Existing repositories opt in
with their own `.github/settings.yml`:

```yaml
_extends: .github
```

This file is the source of truth for label names, colors, and descriptions.
Define every label used by repository automation here before using it: the
Settings app deletes repository labels omitted from the effective catalog,
including their assignments on issues and pull requests.

Label definitions do not assign labels to pull requests. The monorepo defines
its path-based assignment rules in its own `.github/labeler.yml`; labels such
as `tembo`, `Automated PR`, and `stale` are assigned by their existing automation.

Changes to an existing repository's settings file on its default branch trigger
synchronization. Protect settings changes with CODEOWNERS because the app can
modify repository administration settings.

## Shared automation

- Put reusable workflows in `.github/workflows/`.
- Put organization workflow templates in `workflow-templates/`.
- Configure Actions access before consuming reusable workflows from other
  repositories.
