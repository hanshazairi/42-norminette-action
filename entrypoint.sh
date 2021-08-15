#!/bin/sh

find . -type f \( -name '*.c' -o -name '*.h' \) | xargs norminette
if find . -type f \( -name '*.c' -o -name '*.h' \) | xargs norminette | grep -Eq '^(Error|Warning)'; then
  exit 1
fi
