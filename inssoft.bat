@echo off

set "p=autocorrect"
set "p2=kbsc"
set "p3=idbf"
set "p4=find_domain_ip"
set "p5=automation"
set "p6=endormi.2077-theme"
set "p7=webaimcc-cli"

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
  git clone https://github.com/0x020/%p3%.git
  echo "Done!"
) ELSE (
  echo %p3% Already exists!
)

IF NOT EXIST %p4% (
  echo "Cloning %p4%..."
  git clone https://github.com/endormi/%p4%.git
  echo "Done!"
) ELSE (
  echo %p4% Already exists!
)

IF NOT EXIST %p5% (
  echo "Cloning %p5%..."
  git clone https://github.com/endormi/%p5%.git
  echo "Done!"
) ELSE (
  echo %p5% Already exists!
)

IF EXIST "C:\Users\%username%\.vscode" (
  set "ext=extensions.txt"
  code --list-extensions > %ext%
  find /i "%p6%" %ext% >nul
  IF ERRORLEVEL 1 (
    code --install-extension %p6%
  ) ELSE (
    echo %p6% Already exists!
  )
  DEL %ext%
)

IF NOT EXIST %p7% (
  echo "Cloning %p7%..."
  git clone https://github.com/endormi/%p7%.git
  echo "Done!"
) ELSE (
  echo %p7% Already exists!
)
