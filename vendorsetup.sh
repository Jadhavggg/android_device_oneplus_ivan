# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1


# Clone kernel
git clone https://github.com/Jadhavggg/android_kernel_oneplus_6877 -b oneplus/mt6877_s_12.1_ivan kernel/oneplus/mt6877

# Clone vendor
git clone https://github.com/Jadhavggg/android_vendor_oneplus_ivan -b main vendor/oneplus/ivan

# Hardware
git clone https://github.com/Jadhavggg/android_hardware_oplus -b lineage-18.1 hardware/oplus





