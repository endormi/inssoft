@echo off

set "theme=endormi.2077-theme"

for %%r in (endormi/autocorrect endormi/kbsc endormi/find_domain_ip endormi/automation endormi/webaimcc-cli 0x020/idbf) do (
    IF NOT EXIST %%r (
        echo Cloning %%r...
        git clone https://github.com/%%r.git %%r
        echo Done!
    ) ELSE (
        echo %%r Already exists!
    )
)

IF EXIST "C:\Users\%username%\.vscode" (
  set "ext=extensions.txt"
  code --list-extensions > %ext%
  find /i "%theme%" %ext% >nul
  IF ERRORLEVEL 1 (
    code --install-extension %theme%
  ) ELSE (
    echo %theme% Already exists!
  )
  DEL %ext%
)
