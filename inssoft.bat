@echo off

set "p=autocorrect"
set "p2=get_ip"
set "p3=kbsc"
set "p4=idbf"

IF NOT EXIST %p% (
  echo "Cloning %p%..."
  git clone https://github.com/endormi/%p%
  echo "Done!"
) ELSE (
  echo %p% Already exists!
)

IF NOT EXIST %p2% (
  echo "Cloning %p2%..."
  git clone https://github.com/endormi/%p2%
  echo "Done!"
) ELSE (
  echo %p2% Already exists!
)

IF NOT EXIST %p3% (
  echo "Cloning %p3%..."
  git clone https://github.com/endormi/%p3%
  echo "Done!"
) ELSE (
  echo %p3% Already exists!
)

IF NOT EXIST %p4% (
  echo "Cloning %p4%..."
  git clone https://github.com/0x020/%p4%
  echo "Done!"
) ELSE (
  echo %p4% Already exists!
)
