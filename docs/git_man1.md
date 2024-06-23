## git commit & push

1. **Убедитесь, что Git установлен:**

   Откройте терминал и введите команду:

   ```bash
   sudo apt update
   sudo apt install git
   ```

2. **Настройте ваш аккаунт Git:**

   Введите ваши имя и email, которые вы используете на GitHub:

   ```bash
   git config --global user.name "Ваше Имя"
   git config --global user.email "ваш_email@example.com"
   ```

3. **Создайте SSH-ключ и добавьте его в ваш аккаунт GitHub (если не сделано ранее):**

   Создайте SSH-ключ:

   ```bash
   ssh-keygen -t ed25519 -C "ваш_email@example.com"
   ```

   Следуйте инструкциям, чтобы сохранить ключи. По умолчанию ключ будет сохранен в `~/.ssh/id_ed25519`.

   Добавьте SSH-ключ в агент:

   ```bash
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_ed25519
   ```

   Скопируйте содержимое ключа в буфер обмена:

   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```

   Затем войдите в свой аккаунт GitHub, перейдите в "Settings" > "SSH and GPG keys" > "New SSH key", вставьте содержимое буфера обмена и сохраните.

4. **Клонируйте ваш репозиторий:**

   Введите следующую команду, чтобы клонировать репозиторий на ваш локальный компьютер:

   ```bash
   git clone git@github.com:DmPy1210/AI_CNN.git
   ```

5. **Перейдите в директорию репозитория:**

   Перейдите в директорию, где был клонирован ваш репозиторий:

   ```bash
   cd AI_CNN
   ```

6. **Измените содержимое файла README.md:**

   Откройте файл README.md в текстовом редакторе. Например, можно использовать `nano`:

   ```bash
   nano README.md
   ```

   Внесите необходимые изменения в файл, затем сохраните его и выйдите из редактора (`Ctrl+O` для сохранения и `Ctrl+X` для выхода из `nano`).

7. **Добавьте изменения в индекс (staging area):**

   Добавьте измененный файл в индекс:

   ```bash
   git add README.md
   ```

8. **Сделайте коммит с описанием изменений:**

   Создайте коммит с описанием того, что было изменено:

   ```bash
   git commit -m "Изменено содержимое файла README.md"
   ```

9. **Отправьте изменения на GitHub (push):**

   Отправьте изменения в удаленный репозиторий на GitHub:

   ```bash
   git push origin main
   ```

   Если ваша ветка называется иначе (например, `master`), используйте соответствующее имя ветки:

   ```bash
   git push origin master
   ```

### Полный пример всех команд:

```bash
sudo apt update
sudo apt install git
git config --global user.name "Ваше Имя"
git config --global user.email "ваш_email@example.com"
ssh-keygen -t ed25519 -C "ваш_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
# Вставьте содержимое ключа в GitHub в разделе "SSH and GPG keys"
git clone git@github.com:DmPy1210/AI_CNN.git
cd AI_CNN
nano README.md
git add README.md
git commit -m "Изменено содержимое файла README.md"
git push origin main
```

Теперь ваш файл README.md в репозитории на GitHub должен содержать внесенные вами изменения.
