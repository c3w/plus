#!/bin/bash

### run this in your .bash_profile ala
### ~/bin/_plus_complete.sh


_plus_complete()
{
  local cur prev

  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}
  prev=${COMP_WORDS[COMP_CWORD-1]}

  if [ $COMP_CWORD -eq 1 ]; then
	  COMPREPLY=( $(compgen -W "$(plus_helper)" -- $cur) )
  elif [ $COMP_CWORD -eq 2 ]; then
	  COMPREPLY=( $(compgen -W "$(plus_helper $prev)" -- $cur) )
  elif [ $COMP_CWORD -eq 3 ]; then
	  COMPREPLY=( $(compgen -W "$(plus_helper ${COMP_WORDS[COMP_CWORD-2]} $prev)" -- $cur) )
  elif [ $COMP_CWORD -eq 4 ]; then
	  COMPREPLY=( $(compgen -W "$(plus_helper ${COMP_WORDS[COMP_CWORD-3]} ${COMP_WORDS[COMP_CWORD-2]} $prev)" -- $cur) )
  fi

  return 0
} &&
complete -F _plus_complete plus
