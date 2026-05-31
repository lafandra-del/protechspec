# PROTECHSPEC Workflow Baseline

This repository contains the baseline workflow for project operations:
development, checks, release preparation, and routine project logs.

## Quick Start

1. Run local checks:
   ```powershell
   pwsh -NoProfile -File tools/check.ps1
   ```
2. Update `CHANGELOG.md` before commit:
   - Move the current `## В работе` entry to a dated section.
   - Add the next commit draft under `## В работе`.
3. Commit only after checks pass.

## Daily Loop

1. Make changes in the workspace.
2. Run:
   ```powershell
   pwsh -NoProfile -File tools/check.ps1
   ```
3. Update `CHANGELOG.md`.
4. Commit and push.

## Release Preflight (lightweight)

Before release:
- Ensure `tools/check.ps1` passes.
- Ensure `CHANGELOG.md` has the latest entries and `## В работе` is up to date.

## VS Code + Claude Code Pro

Working in the same project folder is safe if you avoid overlapping writes.

1. Do not edit the same file from both tools at the same time.
2. Keep auto-formatting rules consistent (`.editorconfig`).
3. Run checks before push:
   ```powershell
   pwsh -NoProfile -File tools/check.ps1
   ```
4. Commit frequently so rollback and merge are simple.
