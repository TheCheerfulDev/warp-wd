#!/usr/bin/env sh

add_alias() {
  echo "" >> "${HOME}"/.bashrc
  echo "### Added by warp-wd installation script ###" >> "${HOME}"/.bashrc
  echo "alias wd='source ${PWD}/bin/warp'" >> "${HOME}"/.bashrc
  echo "### Added by warp-wd installation script ###" >> "${HOME}"/.bashrc
  echo "" >> "${HOME}"/.bashrc
}

if ! grep -q "Added by warp-wd installation script" "${HOME}"/.bashrc; then
  add_alias
  echo "All set! Restart your terminal, or source . ~/.bashrc, to start using warp-wd."
else
  echo "Already installed warp-wd."
fi

