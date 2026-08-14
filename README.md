# Tembo GitHub configuration

Shared GitHub configuration, workflows, templates, and labels for Tembo
repositories.

## Labels

The Probot Settings app syncs the shared definitions in
[`.github/settings.yml`](.github/settings.yml). Existing repositories opt in
with their own `.github/settings.yml`:

```yaml
_extends: .github
```

Changes to an existing repository's settings file on its default branch trigger
synchronization. Protect settings changes with CODEOWNERS because the app can
modify repository administration settings.

## Shared automation

- Put reusable workflows in `.github/workflows/`.
- Put organization workflow templates in `workflow-templates/`.
- Configure Actions access before consuming reusable workflows from other
  repositories.
