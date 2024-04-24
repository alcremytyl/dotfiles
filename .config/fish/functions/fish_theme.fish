function fish_theme  --argument-names "theme" --description "Theme setter for fish"
  set --local path "~/.config/fish/themes"
  switch "$theme"
    case tokyonight
      source ~/.config/fish/themes/tokyonight-storm.fish
  end

  if test $argv[1] = "--verbose"
    echo "set theme to $theme"
  end
end
