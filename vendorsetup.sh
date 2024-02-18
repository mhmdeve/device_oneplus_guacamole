git clone https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r510928 prebuilts/clang/host/linux-x86/clang-r510928 --depth=1
git clone https://github.com/mhmdeve/vendor_oneplus_guacamole -b evolution vendor/oneplus/guacamole
git clone https://github.com/mhmdeve/kernel_oneplus_sm8150 -b evolution kernel/oneplus/sm8150
git clone https://gitlab.com/PixelPlusUI-SnowCone/vendor_oneplus_apps vendor/oneplus/apps
rm -rf packages/apps/Updates && git clone https://github.com/mhmdeve/android_packages_apps_Updater packages/apps/Updater

# URL of the ZIP file
zip_url="https://sourceforge.net/projects/evolutionx-guacamole/files/firmware_oneplus7pro.zip/download"

# Destination directory for extraction
extract_dir="vendor/oneplus/guacamole/"
extract_dir_check="vendor/oneplus/guacamole/radio"

# Check if files already exist in the destination directory
if [ -e "$extract_dir_check/modem.img" ] && [ -e "$extract_dir_check/abl.img" ]; then
    echo "Firmware already exist. No need to download."
else
    # Download the ZIP file
    curl -LJO "$zip_url"

    # Check if the download was successful
    if [ $? -eq 0 ]; then
        echo "Firmware Download successful. Extracting..."
        # Extract the ZIP file
        unzip -q "*.zip" -d "$extract_dir"
        echo "Firmware Extraction complete."
        # Optional: Remove the downloaded ZIP file
        rm *.zip
    else
        echo "Firmware Download failed."
    fi
fi
