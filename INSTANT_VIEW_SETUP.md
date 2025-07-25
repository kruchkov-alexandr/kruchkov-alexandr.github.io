# Настройка Telegram Instant View

## Проблема

Telegram показывает "No Instant View available" для ваших статей. Это происходит потому, что для домена `kruchkov-alexandr.github.io` нет активного шаблона Instant View.

## Решение

### 1. Откройте Telegram Instant View Editor

Перейдите на [https://instantview.telegram.org/my](https://instantview.telegram.org/my)

### 2. Войдите в систему

- Введите свой номер телефона
- Подтвердите доступ через Telegram

### 3. Создайте новый шаблон

1. В поле "Enter URL" введите: `https://kruchkov-alexandr.github.io/posts/test-instant-view.html`
2. Нажмите Enter
3. Дождитесь загрузки страницы

### 4. Вставьте шаблон

В среднюю колонку "RULES" вставьте следующий код:

```xml
~version: "2.0"

# Step 1: Define which pages get Instant View
?exists: //meta[@property="article:published_time"]

# Step 2: Define essential elements
body: //body
title: $body//h1[1]
author: $body//div[@class="meta"]//strong[contains(text(), "Автор")]/following-sibling::text()[1]
published_time: $body//div[@class="meta"]//strong[contains(text(), "Дата")]/following-sibling::text()[1]

# Step 3: Handle images properly
@split_parent: //p/img

# Step 4: Clean up unnecessary elements
@remove: //div[@class="back-link"]
@remove: //div[@class="meta"]
@remove: //hr
@remove: //p[contains(text(), "Теги:")]
@remove: //em[contains(text(), "Теги:")]

# Step 5: Ensure proper content structure
@remove: //script
@remove: //style
@remove: //noscript
```

### 5. Сохраните шаблон

- Нажмите `Ctrl+S` (или `Cmd+S` на Mac) в окне RULES
- Дождитесь появления "Saved" в статусе

### 6. Проверьте результат

- В правой колонке "PREVIEW" должна появиться красивая версия статьи
- Если всё выглядит хорошо, нажмите "MARK AS CHECKED"

### 7. Опубликуйте шаблон

**Для личного использования:**
- Нажмите "VIEW IN TELEGRAM" для тестирования
- Используйте полученную ссылку `t.me/iv?url=...&rhash=...` для публикации

**Для всех пользователей Telegram:**
- Шаблон нужно отправить на рассмотрение команде Telegram
- Это может занять несколько дней

## Альтернативное решение

Если вы не хотите создавать шаблон, можете использовать готовые решения:

### Вариант 1: Использовать существующий шаблон

1. Найдите похожий сайт с работающим Instant View
2. Скопируйте его шаблон и адаптируйте под ваш сайт

### Вариант 2: Упростить HTML структуру

Можно изменить HTML шаблон, чтобы он больше соответствовал стандартным блогам:

```html
<article>
  <header>
    <h1>Заголовок</h1>
    <time datetime="2025-07-25">25 июля 2025</time>
  </header>
  <div class="content">
    <!-- Контент статьи -->
  </div>
</article>
```

## Проверка работы

После настройки шаблона:

1. Отправьте ссылку на статью в Telegram
2. Нажмите на ссылку
3. Должна появиться кнопка **Instant View**
4. Нажмите на неё

## Возможные проблемы

### Шаблон не работает
- Проверьте синтаксис правил
- Убедитесь, что XPath селекторы правильные
- Проверьте, что мета-теги присутствуют в HTML

### Instant View не появляется
- Подождите несколько минут (Telegram кэширует страницы)
- Проверьте, что URL доступен публично
- Убедитесь, что HTML валидный

### Изображения не отображаются
- Проверьте, что изображения доступны по указанным URL
- Убедитесь, что пути к изображениям правильные

## Полезные ссылки

- [Telegram Instant View Documentation](https://instantview.telegram.org/docs)
- [Sample Templates](https://instantview.telegram.org/samples)
- [Instant View Editor](https://instantview.telegram.org/my)

---

*Создано для настройки Instant View для kruchkov-alexandr.github.io* 