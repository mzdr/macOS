# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# z is the new j, yo
. `brew --prefix`/etc/profile.d/z.sh

# Node manager should install to user’s home…
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"