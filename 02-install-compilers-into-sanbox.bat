rem 
set TA_PROJECT_DIR=%~dp0
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install -y --allow-downgrade wget --version 1.20.3.20190531

wget -c https://download.visualstudio.microsoft.com/download/pr/73f91fcb-aa18-4bec-8c2f-8270acb22398/3e7fe0734cb964074e8553e0ed7ad0ca90e8ca6c9c7d867f8cfd0cebc85dfcd1/vs_BuildTools.exe
vs_BuildTools.exe -p --add Microsoft.VisualStudio.Workload.MSBuildTools --add Microsoft.VisualStudio.Workload.VCTools  --add Microsoft.Component.MSBuild --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64  --add Microsoft.VisualStudio.Component.Windows10SDK.19041

choco install -y far
