# Randomize string (space-separated values).
function randomize_string () {
  echo $@ | tr " " "\n" | perl -MList::Util=shuffle -e 'print shuffle(<STDIN>);' | tr "\n" " "
}

# Extract a random item from a string (space-separated values).
function random_el () {
  local array=($(randomize_string $@))
  # Bash $RANDOM is terrible; use jot.
  echo ${array[$(jot -r 1 0 `expr ${#array[*]} - 1`)]}
}

# Generate a random food emoji.
function random_food () {
  if [ -e "/System/Library/Fonts/Apple Color Emoji.ttf" ]; then
    echo $(random_el "🍺 🍸 🍹 🍷 🍕 🍔 🍟 🍗 🍖 🍝 🍤 🍣 🍥 🍜 🍡 🍞 🍩 🍦 🍨 🍰 🍪 🍫 🍬 🍭 🍎 🍏 🍊 🍋 🍒 🍇 🍉 🍓 🍑 🍌 🍐 🍍 🍆 🍅  ")
  else
    echo ""
  fi
}

random_food
