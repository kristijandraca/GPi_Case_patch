

PAN="./"
UP_FOLDER="../"
ORG_FOLDER="original_files/"
OVERLAYS_FOLDER="overlays/"
CONFIG_FILE="config.txt"
DPI24_FILE="dpi24.dtbo"
PWM_AUDI_FILE="pwm-audio-pi-zero.dtbo"

if [[ -f "${PAN}${ORG_FOLDER}${CONFIG_FILE}" ]];then	
	cp ./original_files/config.txt ./../config.txt
else
	echo ./original_files/config.txt is not exist
fi

if [[ -f "${PAN}${ORG_FOLDER}${OVERLAYS_FOLDER}${DPI24_FILE}" ]];then
	cp  ./original_files/overlays/dpi24.dtbo ./../overlays/dpi24.dtbo
	echo .
	echo -----------------------Successful configuration-----------------------
	echo .
else
	echo ./original_files/overlays/dpi24.dtbo is not exist
fi

if [[ -f "${PAN}${ORG_FOLDER}${OVERLAYS_FOLDER}${PWM_AUDI_FILE}" ]];then	
	rm ./../overlays/pwm-audio-pi-zero.dtbo
fi


exit