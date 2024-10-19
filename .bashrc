# Включить цветовые настройки для ls
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'


# Включить цветовые настройки для grep
alias grep='grep --color=auto'

# Настроить dircolors для цветного отображения
eval "$(dircolors -b ~/.dircolors)"

# Настройка командной строки с отображением ветки git и цветов
PS1='\[\e[1;32m\]\u@\h:\[\e[1;34m\]\w\[\e[0m\] \[\e[1;33m\]$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\e[0m\]\$ '

# Увеличить количество команд в истории
HISTSIZE=10000
HISTFILESIZE=20000
# Не сохранять дубликаты команд в истории
HISTCONTROL=ignoredups:erasedups

# Включить автодополнение для git, если доступно
if [ -f /usr/share/bash-completion/completions/git ]; then
  . /usr/share/bash-completion/completions/git
fi

# Показывать время выполнения команд в истории
export HISTTIMEFORMAT="%d/%m/%y %T "

# Функции для цветного вывода сообщений
success() {
  echo -e "\e[32m[✔] $1\e[0m"
}

error() {
  echo -e "\e[31m[✘] $1\e[0m" >&2
}

# Дополнительные алиасы для удобства
alias info='echo -e "\e[36m[INFO]\e[0m"'  # Информация — бирюзовый
alias warn='echo -e "\e[33m[WARNING]\e[0m"'  # Предупреждение — жёлтый
alias err='echo -e "\e[31m[ERROR]\e[0m"'  # Ошибка — красный

# Алиасы для удобства работы с git
alias gs='git status'
alias ga='git add .'
alias gcmsg='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gb='git branch'

# Настройка PATH для локальных бинарных файлов
export PATH="$HOME/.npm-global/bin:$PATH:$HOME/.local/bin"

# Установить цвет для команды less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Autojump для быстрой навигации по директориям (если установлен)
if [ -f /usr/share/autojump/autojump.sh ]; then
  . /usr/share/autojump/autojump.sh
fi

# Алиасы для работы с цветовым конфигом
alias editcolors='nano .bashrc'
alias reloadcolors='source .bashrc'
alias viewcolors='cat .bashrc'
