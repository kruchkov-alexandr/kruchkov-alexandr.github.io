# Настройка Telegram Instant View v2.0

## ✅ Что изменилось

Теперь ваш HTML генерируется с **полной поддержкой Instant View** прямо из коробки:

- ✅ **Семантическая HTML структура** - соответствует типам Instant View
- ✅ **Все необходимые мета-теги** - Open Graph, Twitter Card, Telegram
- ✅ **Правильная структура контента** - article, header, content, footer
- ✅ **Оптимизированные стили** - для мобильных устройств
- ✅ **Поддержка всех элементов** - изображения, код, списки, таблицы

## 🚀 Автоматическая поддержка Instant View

Ваш HTML теперь содержит все необходимые элементы для Instant View:

### Мета-теги
```html
<meta property="article:published_time" content="2025-07-25">
<meta property="article:author" content="Alex Kruchkov">
<meta property="article:section" content="Technology">
<meta property="og:type" content="article">
<meta property="og:title" content="Заголовок статьи">
<meta property="og:description" content="Описание статьи">
```

### Семантическая структура
```html
<article>
  <header>
    <h1>Заголовок</h1>
    <div class="subtitle">Подзаголовок</div>
    <div class="meta">Автор и дата</div>
  </header>
  <div class="content">
    <!-- Контент статьи -->
  </div>
  <footer>
    <!-- Футер -->
  </footer>
</article>
```

## 📋 Настройка шаблона в Telegram

### 1. Откройте Instant View Editor
[https://instantview.telegram.org/my](https://instantview.telegram.org/my)

### 2. Введите URL для тестирования
```
https://kruchkov-alexandr.github.io/posts/test-instant-view.html
```

### 3. Вставьте улучшенный шаблон

В среднюю колонку "RULES" вставьте:

```xml
~version: "2.0"

# Step 1: Define which pages get Instant View
?exists: //meta[@property="article:published_time"]

# Step 2: Define essential elements - using semantic HTML structure
body: //article
title: $body//header/h1[1]
subtitle: $body//header/div[@class="subtitle"]
author: $body//header//div[@class="meta"]//strong[contains(text(), "Автор")]/following-sibling::text()[1]
published_time: $body//header//div[@class="meta"]//strong[contains(text(), "Дата")]/following-sibling::text()[1]

# Step 3: Define content structure
content: $body//div[@class="content"]

# Step 4: Handle images properly
@split_parent: //p/img

# Step 5: Clean up unnecessary elements
@remove: //footer
@remove: //header
@remove: //script
@remove: //style
@remove: //noscript

# Step 6: Ensure proper content structure
@remove: //div[@class="back-link"]
@remove: //div[@class="meta"]

# Step 7: Handle code blocks
@if( //pre ) {
  <preformatted>: //pre
}

# Step 8: Handle blockquotes
@if( //blockquote ) {
  <blockquote>: //blockquote
}

# Step 9: Handle lists
@if( //ul ) {
  <list>: //ul
}

@if( //ol ) {
  <list>: //ol
}

# Step 10: Handle tables
@if( //table ) {
  <table>: //table
}

# Step 11: Handle links
@if( //a ) {
  <anchor>: //a
}

# Step 12: Handle images
@if( //img ) {
  <image>: //img
}
```

### 4. Сохраните и проверьте
- Нажмите `Ctrl+S` для сохранения
- Проверьте результат в PREVIEW
- Нажмите "MARK AS CHECKED"

## 🎯 Преимущества нового подхода

### Автоматическая поддержка
- ✅ HTML генерируется с правильной структурой
- ✅ Все мета-теги добавляются автоматически
- ✅ Семантическая разметка соответствует Instant View
- ✅ Адаптивный дизайн для мобильных устройств

### Типы Instant View
Ваш HTML поддерживает все основные типы:

| Тип Instant View | HTML элемент | Описание |
|------------------|---------------|----------|
| **Article** | `<article>` | Основной контейнер |
| **Header** | `<header>` | Заголовок статьи |
| **RichText** | `<h1>`, `<h2>`, `<p>` | Текстовый контент |
| **Image** | `<img>` | Изображения |
| **Preformatted** | `<pre>` | Блоки кода |
| **Blockquote** | `<blockquote>` | Цитаты |
| **List** | `<ul>`, `<ol>` | Списки |
| **Table** | `<table>` | Таблицы |
| **Anchor** | `<a>` | Ссылки |
| **Divider** | `<hr>` | Разделители |

## 🔧 Технические детали

### Структура HTML
```html
<!DOCTYPE html>
<html lang="ru">
<head>
  <!-- Мета-теги для Instant View -->
  <meta property="article:published_time" content="...">
  <meta property="og:type" content="article">
  <!-- ... -->
</head>
<body>
  <article>
    <header>
      <h1>Заголовок</h1>
      <div class="subtitle">Подзаголовок</div>
      <div class="meta">Метаданные</div>
    </header>
    <div class="content">
      <!-- Контент статьи -->
    </div>
    <footer>
      <!-- Футер -->
    </footer>
  </article>
</body>
</html>
```

### Поддерживаемые элементы
- ✅ **Заголовки** (H1-H4)
- ✅ **Параграфы** с правильным выравниванием
- ✅ **Изображения** с автоматическим масштабированием
- ✅ **Код** с подсветкой синтаксиса
- ✅ **Списки** (маркированные и нумерованные)
- ✅ **Цитаты** с красивым оформлением
- ✅ **Ссылки** с правильной обработкой
- ✅ **Таблицы** с адаптивным дизайном

## 🚀 Результат

После настройки шаблона:

1. **Отправьте ссылку** в Telegram
2. **Нажмите на ссылку**
3. **Появится кнопка Instant View**
4. **Нажмите на неё** - увидите красивую версию

### Что вы увидите:
- ⚡ Мгновенная загрузка
- 📱 Адаптивный дизайн
- 🎨 Единообразное оформление
- 🚫 Без рекламы и отвлекающих элементов
- 📖 Читаемый шрифт и правильные отступы

---

*Создано с полной поддержкой Telegram Instant View* 