
# $Id$
# $Source$
# $Log$
# Revision 1.3  2001/08/23 13:04:08  nando
# added link to index.html
#
# Revision 1.2  2001/08/23 12:59:45  nando
# makedist now distributes examples
#
# Revision 1.1  2001/08/23 11:21:21  nando
# Win32 documentation installer
#


#############################
# to be used with NSIS 1.41 #
#############################

# HEADER CONFIGURATION COMMANDS
Name "QuantLib-docs"
#do not change the name below
OutFile "..\..\QuantLib-docs-inst.exe"
SilentInstall normal
CRCCheck on
LicenseText "This installer will install QuantLib documentation. Please read the license."
LicenseData "..\License.txt"
ComponentText "Select which optional components you want installed."
DirShow show
DirText "Choose a directory to install into:"
InstallDir $PROGRAMFILES\QuantLib
InstallDirRegKey HKEY_LOCAL_MACHINE SOFTWARE\QuantLib "Install_Dir"
AutoCloseWindow false
ShowInstDetails hide

# INSTALLATION EXECUTION COMMANDS
Section "-QuantLib documentation"
SetOutPath "$INSTDIR\Docs"
File "latex\*refman.pdf"
File "latex\*refman.ps"
SetOutPath "$INSTDIR\Docs\html"
File "html\*.*"
CreateShortCut "$INSTDIR\Docs\refman.html.lnk" "$INSTDIR\Docs\html\index.html"
SectionEnd

