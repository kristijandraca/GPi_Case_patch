

PAN="./"
ORG_FOLDER="original_files/"
OVERLAYS_FOLDER="overlays/"
CONFIG_FILE="config.txt"
DPI24_FILE="dpi24.dtbo"

if [[ -f "${PAN}${ORG_FOLDER}${CONFIG_FILE}" ]];then
    echo config.txt is backuped
else
    cp ./../config.txt ./original_files/config.txt
fi

if [[ -f "${PAN}${ORG_FOLDER}${OVERLAYS_FOLDER}${DPI24_FILE}" ]];then
    echo dpi24.dtbo is backuped
else
    cp ./../overlays/dpi24.dtbo ./original_files/overlays/dpi24.dtbo
fi

cp ./patch_files/config.txt ./../config.txt
cp ./patch_files/overlays/dpi24.dtbo ./../overlays/dpi24.dtbo
cp ./patch_files/overlays/pwm-audio-pi-zero.dtbo ./../overlays/pwm-audio-pi-zero.dtbo

echo .
echo -----------------------Successful configuration-----------------------
echo .


exit
