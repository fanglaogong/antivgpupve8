#!/bin/bash

cd /root/antivgpupve8
dpkg -i pve-qemu-kvm_8.1.2-4_amd64_anti_detection20231126.deb
dpkg -l|grep kvm


# 要克隆的虚拟机的编号
src_vm=101

# 新虚拟机的编号
start_vm=102
end_vm=108

# 逐个克隆虚拟机
for ((vm=$start_vm; vm<=$end_vm; vm++))
do
    echo "开始克隆虚拟机 $vm ..."
    qm clone $src_vm $vm
    echo "虚拟机 $vm 克隆完成！"
done

echo "所有虚拟机克隆完成！"

rm -r /root/antivgpupve8