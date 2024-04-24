function nvimswapwipe --wraps='rm ~/.local/state/nvim/swap//*' --wraps='rm ~/.local/state/nvim/swap/*' --description 'alias nvimswapwipe=rm ~/.local/state/nvim/swap/*'
  rm ~/.local/state/nvim/swap/* $argv; 
end
