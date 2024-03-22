@REM
@REM Behaviour simulation
@REM 

@ECHO OFF

@REM  Configure the path to run the Vivado Design Suite
CALL C:\Xilinx\Vivado\2023.2\settings64.bat

@REM Define Xilinx Vivado environment variable
SET XILINX_VIVADO=C:\Xilinx\Vivado\2023.2

setlocal EnableDelayedExpansion

if "%~2" neq "" (
    echo [Error] : Need to provide the component name to run the simulation of
    exit /B 1
)

if "%~1"=="" (
    echo [Error] : Need to provide the component name to run the simulation of
    exit /B 1
)

echo [Pre-implementation] Updates list of files...
set "FILES="
for /R ..\src %%f in (*.vhd) do (
    set "FILES=!FILES! "%%f""
)
echo !FILES!
echo. > "top-tb.prj"

for %%f in (!FILES!) do (
    echo vhdl xil_defaultlib "%%f" >> "top-tb.prj"
)

echo [Pre-implementation] Files updated !

CALL xvhdl --nolog -prj top-tb.prj 
CALL xelab xil_defaultlib."%~1" -prj top-tb.prj -debug all --nolog
CALL xsim --nolog -g -view Waveforms\basic_config.wcfg xil_defaultlib."%~1"
