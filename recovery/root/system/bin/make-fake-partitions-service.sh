#!/system/bin/sh
# This script is needed to permanently keep, for example:
# reserve_a and reserve_b fake partition symlinks to /data/reserve/reserve.img
# india_a and india_b fake partition symlinks to /data/india/india.img

make_fake_partition() {
    [ -f /data/$1/$1.img ] || echo "make-fake-partitions: $1 missing, recreating..." >> /tmp/recovery.log
    mkdir -p /data/$1
    touch /data/$1/$1.img
    ln -sf /data/$1/$1.img /dev/block/by-name/$1_a
    ln -sf /data/$1/$1.img /dev/block/by-name/$1_b
    ln -sf /data/$1/$1.img /dev/block/bootdevice/by-name/$1_a
    ln -sf /data/$1/$1.img /dev/block/bootdevice/by-name/$1_b
}

echo "Starting make-fake-partitions service for partitions $*..." >> /tmp/recovery.log

while sleep 1; do
    for name in $*; do
        make_fake_partition $name
    done
done

