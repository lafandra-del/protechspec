# Черновик коммита

## Сообщение

fix: исправить fingerprint deploy-сервера

## Изменения

- Исправлен host fingerprint в Deploy workflow на ECDSA-ключ, фактически согласуемый `drone-ssh 1.7.3`.
- Отпечаток подтверждён по сохранённым публичным host keys VPS.
- Обновлён `log_project.md`.

## Проверки

- [x] `pwsh -NoProfile -File tools/check.ps1` — 11/11 тестов
- [x] `pwsh -NoProfile -File tools/doc_check.ps1`
- [ ] GitHub Actions после обновления Environment Secret

## Примечания

- Приватный SSH-ключ не изменяется, не добавляется в репозиторий и не выводится в журнал.
