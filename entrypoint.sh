#!/bin/sh

if [ -z "$1" ]; then
  find . -type f \( -name '*.c' -o -name '*.h' \) | xargs norminette
  if find . -type f \( -name '*.c' -o -name '*.h' \) | xargs norminette | grep -Eq '^(Error|Warning)'; then
    exit 1
  fi
else
  find . -path $1 -prune -o -type f \( -name '*.c' -o -name '*.h' \) -print | xargs norminette
  if find . -path $1 -prune -o -type f \( -name '*.c' -o -name '*.h' \) -print | xargs norminette | grep -Eq '^(Error|Warning)'; then
    exit 1
  fi
fi
