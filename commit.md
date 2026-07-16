# Черновик коммита

## Сообщение

ci: усилить деплой и совместимость проверок

## Изменения

- Исправлен запуск тестов на Node.js 22 в GitHub Actions.
- Actions закреплены на полных commit SHA и получили минимальные разрешения.
- Deploy workflow переведён с root на ограниченного пользователя `deploy` и production environment.
- Добавлены deploy-команда, правило sudoers и security-заголовки Nginx.
- Обновлён `log_project.md`.

## Проверки

- [x] `pwsh -NoProfile -File tools/check.ps1` — 11/11 тестов
- [x] `pwsh -NoProfile -File tools/doc_check.ps1`
- [x] `nginx -t`
- [x] SSH-доступ пользователя `deploy` выполняет только deploy-команду
- [ ] GitHub Actions после обновления Environment Secret

## Примечания

- Приватный SSH-ключ не добавляется в репозиторий и не выводится в журнал.
- Для автоматического deploy пользователь должен добавить ключ в Environment Secret `production`.
