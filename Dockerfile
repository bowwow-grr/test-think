FROM archlinux:latest

WORKDIR /app

RUN pacman -Syy && pacman -S --noconfirm neovim git python python-pip curl make gcc nodejs yarn

RUN pip install pynvim PyYML && yarn global add neovim

RUN git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim
