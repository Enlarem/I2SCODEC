#! /bin/sh

if [ $# -gt 2 ] ; then
    echo "[Error] : Need to provide the component name to run the simulation of"
    exit 1
fi

if [ -z $1 ] ; then
    echo "[Error] : Need to provide the component name to run the simulation of"
    exit 1
fi

echo "[Pre-implementation] Updates list of files..."
FILES=$(find ../src/ -name "*.vhd")
echo $FILES
echo "" > "top-tb.prj"
for f in $FILES; do
    echo "vhdl xil_defaultlib \"$f\" " >> "top-tb.prj"
done

echo "[Pre-implementation] Files updated !"

#Build the simulation
xelab -prj top-tb.prj -s "$1_simulation_snapshot" "xil_defaultlib.$1" --nolog -debug all

#Run the simulation
xsim "$1_simulation_snapshot" -gui -wdb simulate_xsim.wdb -view "Waveforms/basic_config.wcfg" --nolog
