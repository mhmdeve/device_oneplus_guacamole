# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Cloning OnePlus 7Pro Tree"
git clone https://github.com/PixelPlusUI-Devices/device_oneplus_guacamole -b tiramisu device/oneplus/guacamole
echo ""

echo "Cloning Vendor blobs"
git clone https://github.com/PixelPlusUI-Devices/vendor_oneplus_guacamole -b tiramisu vendor/oneplus/guacamole
echo ""

echo "Cloning kernel tree"
git clone https://github.com/PixelPlusUI-Devices/kernel_oneplus_guacamole -b tiramisu-neptune kernel/oneplus/sm8150
git clone https://gitlab.com/Flamingo-OS/dora_clang -b A13 prebuilts/clang/host/linux-x86/clang-dora/ --depth=1
echo ""

# OnePlus Stuff 
echo "Cloning OnePlus"
git clone https://gitlab.com/PixelPlusUI-SnowCone/vendor_oneplus_apps vendor/oneplus/apps
git clone https://github.com/Evolution-X-Devices/vendor_ih8sn vendor/ih8sn
echo ""
