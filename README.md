# PROTECHSPEC Workflow Baseline

This repository contains the baseline workflow for project operations:
development, checks, release preparation, and routine project logs.

## Quick Start

1. Run local checks:
   ```powershell
   pwsh -NoProfile -File tools/check.ps1
   ```
2. Update project logs before commit:
   - `log_project.md` with factual changes.
   - `commit.md` with the next commit message draft.
3. Commit only after checks pass.

## Daily Loop

1. Make changes in the workspace.
2. Run:
   ```powershell
   pwsh -NoProfile -File tools/check.ps1
   ```
3. Update `log_project.md` and `commit.md`.
4. Commit and push.

## Release Preflight (lightweight)

Before release:
- Ensure `tools/check.ps1` passes.
- Ensure `log_project.md` has the latest meaningful entries.
- Ensure `commit.md` contains the intended release commit title.

