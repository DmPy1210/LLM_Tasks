sudo apt update
sudo apt install git
git config --global user.name "DmPy1210"
git config --global user.email "d7292337@yahoo.com"
# ssh-keygen -t ed25519 -C "d7292337@yahoo.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# cat ~/.ssh/id_ed25519.pub
# Вставьте содержимое ключа в GitHub в разделе "SSH and GPG keys"

git clone git@github.com:DmPy1210/LLM_Tasks.git
cd AI_CNN
nano README.md
git add README.md
git commit -m "Изменено содержимое файла README.md"
git push origin main
