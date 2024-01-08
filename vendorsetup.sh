git clone https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r498229b prebuilts/clang/host/linux-x86/clang-r498229b --depth=1
git clone https://github.com/mhmdeve/vendor_oneplus_guacamole -b evolution vendor/oneplus/guacamole
git clone https://github.com/mhmdeve/kernel_oneplus_sm8150 -b evolution kernel/oneplus/sm8150
git clone https://gitlab.com/PixelPlusUI-SnowCone/vendor_oneplus_apps vendor/oneplus/apps
rm -rf packages/apps/Updates && git clone https://github.com/mhmdeve/android_packages_apps_Updater packages/apps/Updater
