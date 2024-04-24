function nvimrc
  set -l tmp (pwd)
  cd ~/.config/nvim/lua/custom/
  nvim
  cd $tmp
end

