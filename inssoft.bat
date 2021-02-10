@echo off

set "p=autocorrect"
set "p2=get_ip"
set "p3=kbsc"
set "p4=idbf"
set "p5=ping"
set "p6=find_domain_ip"
set "p7=automation"
set "p8=endormi.2077-theme"

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

IF NOT EXIST %p7% (
  echo "Cloning %p7%..."
  git clone https://github.com/endormi/%p7%.git
  echo "Done!"
) ELSE (
  echo %p7% Already exists!
)

IF EXIST "C:\Users\%username%\.vscode" (
  set "ext=extensions.txt"
  code --list-extensions > %ext%
  find /i "%p8%" %ext% >nul
  IF ERRORLEVEL 1 (
    code --install-extension %p8%
  ) ELSE (
    echo %p8% Already exists!
  )
  DEL %ext%
)
