export PATH=$HOME/:$PATH
export GIT_EDITOR=nvim

mrm (){
  cd ~/memo
  datas=($(ls))
  echo "下記の中から消去するファイル(1から)を選択してください"
  echo $datas
  read dd
  echo "$datas[dd]を消去してもいいですか?(y/n)"
  read da
  if [ $da = 'y' ]; then
    rm $datas[dd]
  else
    echo "中断しました"
  fi
}

f () {
  read data
  cd /Applications/Firefox.app/Contents/MacOS &&  ./firefox -new-tab "https://google.com/search?q=${data}"
  cd 
}

fs () {
  datas=()
  for i in  {1..5}
  do
    read data
    datas+=${data}
  done
  echo $datas

  for j in {1..5}
  do
    cd
    cd /Applications/Firefox.app/Contents/MacOS &&  ./firefox -new-tab "https://google.com/search?q=${datas[j]}"
    cd
  done
}

sh (){
  read data
  cp ~/.format.sh ~/$data.sh
  n ~/$data.sh
}


alias d='docker'
alias dc='docker compose'
alias dcb='docker compose build'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias drw='docker compose run web'
alias firefox='cd /Applications/Firefox.app/Contents/MacOS &&  ./firefox && cd'
alias mono='cd ~/literature && n -u NONE li0.txt'
alias syu='cd ~/literature && n -u NONE li1.txt'
alias kusa='cd ~/literature && n -u NONE li2.txt'
alias human='cd ~/literature && n -u NONE li3.txt'
alias z='zayuu'
alias s='source'
alias n='nvim'
alias .z='s .zshrc'
alias .t='s .tmux.conf'
alias nz='nvim ~/.zshrc'
alias ni='cd && cd .config && cd nvim && nvim init.vim'
alias nt='nvim ~/.tmux.conf'
alias gr='grep -r --line-number --color'
alias g='git'
alias gst='git status'
alias gdd='git add .'
alias gci='git commit -m'
alias gbr='git branch'
alias tn='tmux set-window-option synchronize-panes on'
alias tf='tmux set-window-option synchronize-panes off'
alias t='tmux'
alias td='t detach-client'
alias la='ls -a'
alias cc='clear'
alias memo='cd ~/memo && n && cd'
alias tm='cd ~/cheatsheet && less tmux && cd'
alias vm='cd ~/cheatsheet && less neovim && cd'
alias doc='cd ~/Documents'
alias desk='cd && cd Desktop'
alias nm='cd ~/my_command && n start.sh'
alias start='s ~/my_command/start.sh'
alias rr='rails routes'
alias al='alias'
alias rs='rails s'
alias rdm='rails db:migrate'
alias rc='rails c'
alias b='bundle'
alias rgc='rails generate controller'
alias rgd='rails d controller'
alias rgm='rails g model'
alias ..='cd ..'
alias l='less'
alias mc='cd ~/my_command'
alias sc='cd ~/Screenshot'
alias img='cd ~/Image'
alias down='cd ~/Downloads'
alias pdf='cd ~/PDF'
alias mvrails='cd ~/Programming/ruby/rails'
alias pro='cd ~/Programming'
alias sctoimg='mv  ~/Screenshot/* ~/Image/'
alias sp='rspec'
alias ru='rubocop'
# 初回シェル時のみ tmux実行
if [ $SHLVL = 1 ]; then
  tmux
fi

goo() {
  local str opt
  if [ $# != 0 ]; then
    for i in $* 
    do
      str="$str+$i"
    done
    str=`echo $str | sed 's/^\+//'`
    opt='search?num=50&hl=ja&lr=lang_ja'
    opt="${opt}&q=${str}"
  fi
  w3m http://www.google.co.jp/$opt
}

