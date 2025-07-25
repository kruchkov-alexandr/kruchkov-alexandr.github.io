# Alex's Blog

Простой блог на GitHub Pages с автоматической конвертацией Markdown в HTML и **полностью автоматической системой Telegram Instant View** без ручной работы.

## Структура проекта

```
kruchkov-alexandr.github.io/
├── README.md                    # Этот файл
├── convert.sh                   # Скрипт конвертации Markdown → HTML
├── convert-instant-view.sh      # Скрипт для чистых Instant View страниц
├── template-pure-instant-view.html # Шаблон для чистых Instant View
├── template.html                # Резервный HTML шаблон
├── index.html                   # Главная страница
├── PURE_INSTANT_VIEW_GUIDE.md  # Руководство по чистой системе Instant View
├── INSTANT_VIEW_GUIDE.md       # Руководство по проверке Instant View
├── posts/                       # Папка с постами
│   ├── post-name.md            # Markdown файлы (пишешь здесь)
│   ├── post-name.html          # Обычные HTML файлы
│   └── post-name-instant-view.html # Чистые Instant View HTML
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
# Обычный HTML
./convert.sh

# ИЛИ чистые Instant View страницы (рекомендуется)
./convert-instant-view.sh
```

**Скрипты автоматически:**
- **convert.sh** - обычный HTML с поддержкой Instant View
- **convert-instant-view.sh** - чистые Instant View страницы без ручной работы
- Добавляют все необходимые мета-теги для Instant View
- Создают семантическую HTML структуру
- Генерируют адаптивный дизайн для мобильных устройств
- Поддерживают все типы контента

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
- **Обычный HTML:** `https://kruchkov-alexandr.github.io/posts/моя-статья.html`
- **Чистый Instant View:** `https://kruchkov-alexandr.github.io/posts/моя-статья-instant-view.html`

### Telegram Instant View

**Чистые Instant View страницы** работают **автоматически** без ручной настройки:
1. Отправьте ссылку на статью в Telegram
2. Нажмите на ссылку
3. Появится кнопка **Instant View** (автоматически!)
4. Нажмите на неё для красивого просмотра

**Преимущества чистой системы:**
- ✅ **Полностью автоматическая** - никакой ручной работы
- ⚡ **Мгновенная загрузка** - кэшируется на серверах Telegram
- 📱 **Адаптивный дизайн** - оптимизировано для мобильных
- 🎨 **Единообразное оформление** - как в Telegram
- 🚫 **Без рекламы** - чистый контент

## Особенности

- ✅ **Простота:** Пишешь только в Markdown
- ✅ **Автоматизация:** Два скрипта для разных типов HTML
- ✅ **Чистый Instant View:** Полностью автоматическая система без ручной работы
- ✅ **Семантическая разметка:** HTML структура соответствует типам Instant View
- ✅ **Все мета-теги:** Open Graph, Twitter Card, Telegram мета-данные
- ✅ **Адаптивный дизайн:** Оптимизировано для мобильных устройств
- ✅ **Все типы контента:** Изображения, код, списки, таблицы, цитаты
- ✅ **GitHub Pages:** Автоматическое хостинг
- ✅ **Быстрая загрузка:** Оптимизированные стили и структура
- ✅ **Никакой ручной работы:** Всё работает автоматически!

## Посты

- [Тестовая статья для Instant View](/posts/test-instant-view.html) - Проверка работы Telegram Instant View
- [Apache SuperSet Troubleshooting](/posts/apache-simple.html) - История про Apache SuperSet и Trino

## Дополнительные материалы

- [Чистая система Instant View](PURE_INSTANT_VIEW_GUIDE.md) - Полностью автоматическая система без ручной работы
- [Руководство по проверке Instant View](INSTANT_VIEW_GUIDE.md) - Подробная инструкция по тестированию 