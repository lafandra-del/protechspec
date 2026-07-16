# PROTECHSPEC: инструкции для Codex

## Назначение проекта

Одностраничный сайт-визитка техспеца онлайн-школ.

## Стек

- HTML, CSS, JavaScript без фреймворков.
- Основной сайт находится в `index.html`.
- CSS и JavaScript сейчас встроены в `index.html`.
- Без npm, сборщиков и внешних runtime-зависимостей.

## Стиль и контент

- Все пользовательские тексты на русском.
- Дизайн: темная тема, современный минимализм, один основной акцентный цвет.
- Не выдумывать кейсы, цифры, результаты и факты о клиентском опыте.
- Если данных нет, оставлять явный плейсхолдер.
- Контакты для сайта:
  - Максим Афанасьев
  - Пермь
  - Telegram: `@max_sunfire`
  - Email: `lafandra@yandex.ru`

## Безопасность

- Не коммитить `.env`, `*.key`, `*.pem`, `credentials.json` и файлы с реальными токенами или паролями.
- Не вставлять реальные секреты в код, документацию, комментарии и примеры.
- В примерах использовать заглушки вроде `BOT_TOKEN=your-token-here`.
- Если найден захардкоженный секрет, сразу сообщить пользователю и не делать коммит.

## Рабочий процесс

- Перед изменениями кратко сформулировать понимание задачи и план.
- Для нетривиальных задач сначала декомпозировать работу на проверяемые шаги.
- Делать изменения небольшими логическими порциями.
- При первом реальном изменении в проекте создать и дальше вести:
  - `log_project.md` — журнал выполненной работы и проверок.
  - `commit.md` — черновик сообщения коммита и список файлов изменения.
- Не трогать несвязанные файлы и не откатывать чужие изменения.

## Проверки

Базовая проверка:

```powershell
pwsh -NoProfile -File tools/check.ps1
```

Расширенная проверка документации:

```powershell
pwsh -NoProfile -File tools/doc_check.ps1
```

Для лендинга дополнительно проверять `index.html` в браузере, если менялась верстка, стили или поведение.

## Git

- Коммиты делать только по явной просьбе пользователя.
- Перед коммитом запускать проверки.
- Сообщения коммитов: короткие, в нижнем регистре, на русском, по сути изменения.
- Не коммитить мусор, временные файлы и локальные настройки.

## Локальные особенности

- `CLAUDE.md` и `.claude/CLAUDE.md` относятся к Claude Code и могут быть локальными.
- Инструкции про `vexp run_pipeline` применять только если соответствующие инструменты реально доступны в текущей среде.


## vexp <!-- vexp v2.2.1 -->

**MANDATORY: use `run_pipeline` - do NOT grep or glob the codebase.**
vexp returns pre-indexed, graph-ranked context in a single call.

### Workflow
1. `run_pipeline` with your task description - ALWAYS FIRST (replaces all other tools)
2. Make targeted changes based on the context returned
3. `run_pipeline` again only if you need more context

### Available MCP tools
- `run_pipeline` - **PRIMARY TOOL**. Runs capsule + impact + memory in 1 call.
  Auto-detects intent. Includes file content. Example: `run_pipeline({ "task": "fix auth bug" })`
- `get_skeleton` - compact file structure
- `index_status` - indexing status
- `expand_vexp_ref` - expand V-REF placeholders in v2 output

### Agentic search
- Do NOT use built-in file search, grep, or codebase indexing - always call `run_pipeline` first
- If you spawn sub-agents or background tasks, pass them the context from `run_pipeline`
  rather than letting them search the codebase independently

### Smart Features
Intent auto-detection, hybrid ranking, session memory, auto-expanding budget.

### Multi-Repo
`run_pipeline` auto-queries all indexed repos. Use `repos: ["alias"]` to scope. Run `index_status` to see aliases.
<!-- /vexp -->