rem
set TA_PROJECT_DIR=%~dp0
setlocal enableDelayedExpansion
type nul > ta-sandbox.wsb
set "tag_line=<Configuration>"
echo !tag_line! >> ta-sandbox.wsb 
set "tag_line=<MemoryInMB>8192</MemoryInMB>"
echo !tag_line! >> ta-sandbox.wsb 
set "tag_line=<MappedFolders>"
echo !tag_line! >> ta-sandbox.wsb 
set "tag_line=<MappedFolder><HostFolder>%~dp0</HostFolder>"
echo !tag_line! >> ta-sandbox.wsb 
set "tag_line=<SandboxFolder>C:\Users\WDAGUtilityAccount\Desktop</SandboxFolder>"
echo !tag_line! >> ta-sandbox.wsb 
set "tag_line=<ReadOnly>false</ReadOnly></MappedFolder>"
echo !tag_line! >> ta-sandbox.wsb 
set "tag_line=</MappedFolders>"
echo !tag_line! >> ta-sandbox.wsb 
set "tag_line=</Configuration>"
echo !tag_line! >> ta-sandbox.wsb 
start ta-sandbox.wsb
