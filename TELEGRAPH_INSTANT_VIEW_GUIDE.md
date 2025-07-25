# 🚀 Telegraph-совместимая система Instant View

## Что это такое?

Система для автоматической генерации **Telegraph-совместимых Instant View страниц** через Pandoc, **без необходимости ручной работы** на [https://instantview.telegram.org/](https://instantview.telegram.org/).

## 🎯 Преимущества

- ✅ **Полностью автоматическая** - никакой ручной работы
- ✅ **Telegraph-совместимая** - использует структуру работающего Telegraph
- ✅ **Оптимизированные стили** - для мобильных устройств
- ✅ **Все мета-теги** - Open Graph, Twitter Card, Telegram
- ✅ **Семантическая структура** - соответствует типам Instant View

## 📁 Структура файлов

```
kruchkov-alexandr.github.io/
├── convert.sh                   # Скрипт конвертации Markdown → HTML
├── template-telegraph-style.html # Telegraph-совместимый шаблон
├── posts/
│   ├── article.md               # Markdown файл
│   └── article.html             # Telegraph-совместимый HTML
```

## 🚀 Как использовать

### 1. Создайте Markdown файл
```bash
# Создайте .md файл в папке posts/
touch posts/моя-статья.md
```

### 2. Напишите контент в Markdown
```markdown
# Заголовок статьи

![Картинка](/images/картинка.jpg)

## Подзаголовок

Текст статьи...

### Код
```bash
echo "Hello, Instant View!"
```

### Списки
- Пункт 1
- Пункт 2

---

*Теги: #technology #blog*
```

### 3. Сгенерируйте Telegraph-совместимые страницы
```bash
# Запустите скрипт конвертации
./convert.sh
```

### 4. Опубликуйте
```bash
git add posts/моя-статья.html
git commit -m "Добавил Telegraph-совместимую Instant View страницу"
git push
```

## 🎨 Особенности Telegraph-совместимой системы

### Структура как у Telegraph
```html
<div class="tl_page_wrap">
  <div class="tl_page">
    <main class="tl_article">
      <header class="tl_article_header">
        <h1>Заголовок</h1>
        <address>
          <a rel="author">Alex Kruchkov</a>
          <time datetime="2025-07-25">2025-07-25</time>
        </address>
      </header>
      <article class="tl_article_content">
        <!-- Контент статьи -->
      </article>
    </main>
  </div>
</div>
```

### Все необходимые мета-теги
```html
<meta property="og:type" content="article">
<meta property="og:title" content="Заголовок">
<meta property="og:description" content="Описание">
<meta property="article:published_time" content="2025-07-25">
<meta property="article:author" content="Alex Kruchkov">
<meta name="twitter:card" content="summary">
```

## 🔧 Технические детали

### CSS классы Telegraph
- `tl_page_wrap` - обертка страницы
- `tl_page` - контейнер страницы
- `tl_article` - основная статья
- `tl_article_header` - заголовок статьи
- `tl_article_content` - содержимое статьи

### Мета-теги для Instant View
- `og:type` = "article"
- `og:title` - заголовок статьи
- `og:description` - описание
- `article:published_time` - дата публикации
- `article:author` - автор
- `twitter:card` = "summary"

## 📱 Адаптивность

Система автоматически адаптируется под мобильные устройства:
- Адаптивные изображения
- Оптимизированные шрифты
- Правильные отступы
- Поддержка touch-событий

## 🎯 Проверка работы

### 1. Опубликуйте на GitHub Pages
```bash
git push
```

### 2. Проверьте в Telegram
1. Отправьте ссылку на статью в Telegram
2. Нажмите на ссылку
3. Должна появиться кнопка **Instant View**
4. Нажмите на неё

### 3. Что должно работать
✅ **Быстрая загрузка** - страница открывается мгновенно  
✅ **Красивый дизайн** - как у Telegraph  
✅ **Изображения** - автоматическое масштабирование  
✅ **Код** - подсветка синтаксиса  
✅ **Ссылки** - правильная обработка  
✅ **Списки** - маркированные и нумерованные  

## 🔗 Примеры

- [Тестовая статья](/posts/test-instant-view.html)
- [Apache SuperSet Troubleshooting](/posts/apache-simple.html)

---

*Создано с помощью Pandoc + GitHub Pages + Telegraph-совместимый шаблон* 