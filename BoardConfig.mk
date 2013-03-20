include vendor/lge/vs840/BoardConfigVendor.mk

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 422576128
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# Kernel
TARGET_PREBUILT_KERNEL := device/lge/vs840/kernels/c

# Build kernel from source
TARGET_KERNEL_SOURCE := kernel/lge/iproj
TARGET_KERNEL_CONFIG := lucid_defconfig 

BOARD_KERNEL_CMDLINE := console=ttyDCC0,115200,n8 androidboot.hardware=iproj
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x40200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x41a00000

include device/lge/iproj/BoardConfig.mk

BOARD_CDMA_NETWORK := true

# Device Assert
TARGET_OTA_ASSERT_DEVICE := i_vzw,vs840,VS840,cayman

# Recovery
#BOARD_CUSTOM_GRAPHICS := ../../../device/lge/vs840/recovery/graphics.c
