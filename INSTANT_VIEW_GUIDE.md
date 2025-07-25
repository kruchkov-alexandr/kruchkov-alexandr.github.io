# Руководство по проверке Telegram Instant View

## Что такое Instant View?

Telegram Instant View позволяет пользователям просматривать веб-статьи в единообразном и легко читаемом формате с нулевым временем загрузки.

## Как проверить работу Instant View

### 1. Опубликуйте сайт на GitHub Pages

```bash
git add .
git commit -m "Добавил поддержку Instant View"
git push
```

### 2. Дождитесь публикации

GitHub Pages обычно публикует изменения в течение 1-5 минут.

### 3. Проверьте в Telegram

1. Откройте Telegram
2. Отправьте ссылку на любую статью: `https://kruchkov-alexandr.github.io/posts/test-instant-view.html`
3. Нажмите на ссылку
4. Должна появиться кнопка **Instant View**
5. Нажмите на неё

### 4. Что должно работать

✅ **Быстрая загрузка** - страница открывается мгновенно  
✅ **Красивый дизайн** - единообразное оформление  
✅ **Изображения** - автоматическое масштабирование  
✅ **Код** - подсветка синтаксиса  
✅ **Ссылки** - правильная обработка  
✅ **Списки** - маркированные и нумерованные  

## Технические детали

### Мета-теги для Instant View

В HTML файлах присутствуют все необходимые мета-теги:

```html
<meta property="article:published_time" content="2025-07-25">
<meta property="article:author" content="Alex Kruchkov">
<meta property="article:section" content="Technology">
<meta property="og:type" content="article">
<meta property="og:title" content="Заголовок статьи">
<meta property="og:description" content="Описание статьи">
<meta property="og:url" content="https://kruchkov-alexandr.github.io/posts/статья.html">
```

### Структура HTML

- ✅ Семантическая разметка (h1, h2, h3, p, img, code, pre)
- ✅ Адаптивный дизайн
- ✅ Правильные ссылки на изображения
- ✅ Чистый CSS без внешних зависимостей

## Возможные проблемы

### Instant View не работает

1. **Проверьте мета-теги** - они должны быть в `<head>`
2. **Проверьте URL** - должен быть абсолютным
3. **Подождите** - Telegram может кэшировать страницы
4. **Проверьте структуру** - HTML должен быть валидным

### Изображения не отображаются

1. **Проверьте пути** - должны быть относительными от корня сайта
2. **Проверьте размер** - изображения должны быть доступны
3. **Проверьте формат** - поддерживаются jpg, png, gif

## Ссылки для тестирования

- [Тестовая статья](/posts/test-instant-view.html)
- [Apache SuperSet Troubleshooting](/posts/apache-simple.html)

---

*Создано с помощью Pandoc + GitHub Pages* 