@echo off

set "list=endormi/autocorrect endormi/kbsc endormi/automation endormi/webaimcc-cli"
set "theme=endormi.2077-theme"

for %%r in (%list%) do (
  IF NOT EXIST %%r (
    git clone https://github.com/%%r.git %%r
    echo Done!
  ) ELSE (
    echo %%r Already exists!
  )
)

IF EXIST "C:\Users\%username%\.vscode" (
  code --install-extension %theme%
)
