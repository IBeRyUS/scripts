# Program STM32 chip through ST-Link
STM_SWD_PROGRAM='/opt/st/stm32cubeide_1.2.0/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_1.1.0.201910081157/tools/bin/STM32_Programmer.sh'
${STM_SWD_PROGRAM} "-c port=SWD reset=HWrst -d" $@ "0x08000000 -hardRst -run"
