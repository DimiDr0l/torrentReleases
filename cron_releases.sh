#!/bin/sh

for i in $(seq 1 5); do
  docker run --rm -v $PWD:/opt/app/www digitalreleases:latest
  ret=$?
  if [ $ret -eq 0 ]; then
    logger -t "digitalreleases" "Загрузка завершена успешно."
    break
  else
    logger -t "digitalreleases" "Ошибка загрузки."
  fi
done