# Alex's Blog

Простой блог на GitHub Pages с автоматической конвертацией Markdown в HTML.

## Структура проекта

```
kruchkov-alexandr.github.io/
├── README.md          # Этот файл
├── convert.sh         # Скрипт конвертации Markdown → HTML
├── template.html      # HTML шаблон для постов
├── index.html         # Главная страница
├── posts/             # Папка с постами
│   ├── post-name.md   # Markdown файлы (пишешь здесь)
│   └── post-name.html # HTML файлы (генерируются автоматически)
└── images/            # Папка с картинками
    └── image.jpg
```

## Как добавить новую статью

### 1. Создай Markdown файл
```bash
# Создай новый .md файл в папке posts/
touch posts/моя-статья.md
```

### 2. Напиши контент в Markdown
```markdown
# Заголовок статьи

![Картинка](/images/картинка.jpg)

## Подзаголовок

Твой текст здесь...

### Код
```bash
docker run my-app
```

### Списки
- Пункт 1
- Пункт 2

### Ссылки
[GitHub](https://github.com)

---

*Теги: #docker #kubernetes*
```

### 3. Добавь картинки (если нужно)
```bash
# Скопируй картинки в папку images/
cp путь/к/картинке.jpg images/
```

### 4. Сконвертируй в HTML
```bash
# Запусти скрипт конвертации
./convert.sh
```

### 5. Опубликуй
```bash
# Добавь файлы в Git
git add posts/моя-статья.md posts/моя-статья.html images/картинка.jpg

# Закоммить
git commit -m "Добавил новую статью"

# Запушь на GitHub
git push
```

## Доступ к статьям

После публикации статьи будут доступны по адресам:
- **Markdown:** `https://kruchkov-alexandr.github.io/posts/моя-статья.md`
- **HTML:** `https://kruchkov-alexandr.github.io/posts/моя-статья.html`

## Особенности

- ✅ **Простота:** Пишешь только в Markdown
- ✅ **Автоматизация:** Один скрипт конвертирует всё
- ✅ **Instant View:** Полная поддержка Telegram
- ✅ **Красивый дизайн:** Встроенные стили
- ✅ **GitHub Pages:** Автоматическое хостинг

## Посты

- [Apache SuperSet Troubleshooting](/posts/apache-simple.html) - История про Apache SuperSet и Trino 