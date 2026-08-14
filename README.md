# Tembo GitHub configuration

Shared GitHub configuration, workflows, templates, and labels for Tembo
repositories.

## Labels

This repository's labels are the organization template. Copy them into another
repository without changing existing labels:

```sh
gh label clone tembo/.github --repo tembo/REPOSITORY
```

Add `--force` to update matching labels in the destination. GitHub does not
automatically synchronize labels from this repository. [`labels.yml`](labels.yml)
records the intended label definitions for review and future automation.

## Shared automation

- Put reusable workflows in `.github/workflows/`.
- Put organization workflow templates in `workflow-templates/`.
- Configure Actions access before consuming reusable workflows from other
  repositories.
