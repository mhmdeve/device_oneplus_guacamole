# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Cloning OnePlus 7Pro Tree"
git clone https://github.com/PixelPlusUI-Devices/device_oneplus_guacamole -b tiramisu device/oneplus/guacamole
echo ""

echo "Cloning Vendor blobs"
git clone https://github.com/PixelPlusUI-Devices/vendor_oneplus_guacamole -b tiramisu vendor/oneplus/guacamole
echo ""

echo "Cloning kernel tree"
git clone https://github.com/PixelPlusUI-Devices/kernel_oneplus_guacamole kernel/oneplus/sm8150
echo ""

# OnePlus Stuff 
echo "Cloning OnePlus"
git clone https://gitlab.com/PixelPlusUI-SnowCone/vendor_oneplus_apps vendor/oneplus/apps
echo ""
