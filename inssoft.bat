@echo off

set "p=autocorrect"
set "p2=get_ip"
set "p3=kbsc"
set "p4=idbf"
set "p5=ping"
set "p6=find_domain_ip"

IF NOT EXIST %p% (
  echo "Cloning %p%..."
  git clone https://github.com/endormi/%p%.git
  echo "Done!"
) ELSE (
  echo %p% Already exists!
)

IF NOT EXIST %p2% (
  echo "Cloning %p2%..."
  git clone https://github.com/endormi/%p2%.git
  echo "Done!"
) ELSE (
  echo %p2% Already exists!
)

IF NOT EXIST %p3% (
  echo "Cloning %p3%..."
  git clone https://github.com/endormi/%p3%.git
  echo "Done!"
) ELSE (
  echo %p3% Already exists!
)

IF NOT EXIST %p4% (
  echo "Cloning %p4%..."
  git clone https://github.com/0x020/%p4%.git
  echo "Done!"
) ELSE (
  echo %p4% Already exists!
)

IF NOT EXIST %p5% (
  echo "Cloning %p5%..."
  git clone https://github.com/0x020/%p5%.git
  echo "Done!"
) ELSE (
  echo %p5% Already exists!
)

IF NOT EXIST %p6% (
  echo "Cloning %p6%..."
  git clone https://github.com/endormi/%p6%.git
  echo "Done!"
) ELSE (
  echo %p6% Already exists!
)
