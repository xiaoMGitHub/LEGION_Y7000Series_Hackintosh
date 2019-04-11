# 数字键盘驱动使用说明

1. 将 SSDT-PS2K.aml 覆盖到 EFI/CLOVER/ACPI/patched 中
2. 移除 EFI/CLOVER/kexts/Other 中的 VoodooPS2Controller 驱动
3. 将 ApplePS2SmartTouchPad_Beta5_4.7.0.kext 复制到 EFI/CLOVER/kexts/Other 中
4. 修复权限重建缓存
5. 重启
