@REM
@REM Behaviour simulation
@REM 

@ECHO OFF

@REM  Configure the path to run the Vivado Design Suite
@REM CALL C:\Xilinx\Vivado\2023.2\settings64.bat

@REM Define Xilinx Vivado environment variable
@REM  SET XILINX_VIVADO=C:\Xilinx\Vivado\2023.2
@echo off
setlocal enabledelayedexpansion

(set LF=^
%=DO NOT REMOVE THIS=%
)

if "%~1" == "" (
    echo [Error] : Need to provide the component name to run the simulation of
    exit /b 1
)

if not "%~2" == "" (
    echo [Error] : Need to provide only the component name to run the simulation of
    exit /b 1
)

echo [Pre-implementation] Updates list of files...
set "FILES="
for /R ..\src %%f in (*.vhd) do (
    set "FILES=!FILES!!LF!vhdl xil_defaultlib '%%f' "
)

echo.> "top-tb.prj"
echo !FILES!>> "top-tb.prj"

echo [Pre-implementation] Files updated !

echo [Implementation] Building the simulation
cd ..\simulations
@REM xelab -prj ..\scripts\top-tb.prj -s "%~1_simulation_snapshot" "xil_defaultlib.%~1" --nolog -debug all

echo [Implementation] Running the simulation
cd ..\scripts
@REM xsim "%~1_simulation_snapshot" -gui -wdb "..\simulations\simulate_xsim.wdb" -view "Waveforms\basic_config.wcfg" --nolog --xsimdir ..\simulations
