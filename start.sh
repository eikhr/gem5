source venv/bin/activate

scons build/X86/gem5.opt -j 16
./build/X86/gem5.opt configs/vswarm_simple.py \
	--kernel="${RESOURCES}/../vSwarm-u/wkdir/kernel" \
	--disk="${RESOURCES}/../vSwarm-u/wkdir/disk.img" \
	--function="syscalls"
