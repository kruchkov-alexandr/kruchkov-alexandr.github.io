# Alex's Blog

Простой блог на GitHub Pages с автоматической конвертацией Markdown в HTML и полной поддержкой **Telegram Instant View**.

## Структура проекта

```
kruchkov-alexandr.github.io/
├── README.md                    # Этот файл
├── convert.sh                   # Скрипт конвертации Markdown → HTML
├── template.html                # HTML шаблон с поддержкой Instant View
├── index.html                   # Главная страница
├── INSTANT_VIEW_GUIDE.md       # Руководство по проверке Instant View
├── posts/                       # Папка с постами
│   ├── post-name.md            # Markdown файлы (пишешь здесь)
│   └── post-name.html          # HTML файлы (генерируются автоматически)
└── images/                     # Папка с картинками
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

**Скрипт автоматически:**
- Конвертирует все `.md` файлы в `.html`
- Добавляет мета-теги для Telegram Instant View
- Создает правильные Open Graph теги
- Генерирует семантическую HTML разметку

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

### Telegram Instant View

Все HTML статьи поддерживают **Telegram Instant View**:
1. Отправьте ссылку на статью в Telegram
2. Нажмите на ссылку
3. Появится кнопка **Instant View**
4. Нажмите на неё для красивого просмотра

**Преимущества Instant View:**
- ⚡ Мгновенная загрузка (кэшируется на серверах Telegram)
- 📱 Адаптивный дизайн для мобильных устройств
- 🎨 Единообразное оформление всех статей
- 🚫 Без рекламы и отвлекающих элементов

## Особенности

- ✅ **Простота:** Пишешь только в Markdown
- ✅ **Автоматизация:** Один скрипт конвертирует всё
- ✅ **Instant View:** Полная поддержка Telegram Instant View
- ✅ **Семантическая разметка:** Правильная HTML структура
- ✅ **Мета-теги:** Open Graph и Telegram мета-данные
- ✅ **Адаптивный дизайн:** Красиво на всех устройствах
- ✅ **GitHub Pages:** Автоматическое хостинг
- ✅ **Быстрая загрузка:** Оптимизированные стили

## Посты

- [Тестовая статья для Instant View](/posts/test-instant-view.html) - Проверка работы Telegram Instant View
- [Apache SuperSet Troubleshooting](/posts/apache-simple.html) - История про Apache SuperSet и Trino

## Дополнительные материалы

- [Руководство по проверке Instant View](INSTANT_VIEW_GUIDE.md) - Подробная инструкция по тестированию 