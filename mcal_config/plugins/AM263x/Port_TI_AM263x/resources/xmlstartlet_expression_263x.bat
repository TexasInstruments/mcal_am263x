@echo off

:: Port Func
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'QSPI0_')]  |//muxmode[contains(signal,'PRU0_GIO')]   |//muxmode[contains(signal,'PRU1_GIO')]| //muxmode[contains(signal,'GPIOAB')]| //muxmode[contains(signal,'GPIOCD')]| //muxmode[contains(signal,'GPIOEF')]| //muxmode[contains(signal,'GPIOGH')]|  //muxmode[contains(signal,'GPIOI')] | //muxmode[contains(signal,'UART0_')] | //muxmode[contains(signal,'UART1_')] | //muxmode[contains(signal,'UART2_')] |  //muxmode[contains(signal,'UART3_')]|//muxmode[contains(signal,'UART4_')] |//muxmode[contains(signal,'UART5_')]  | //muxmode[contains(signal,'EPWM0_')] | //muxmode[contains(signal,'EPWM1_')] |//muxmode[contains(signal,'EPWM2_')]  | //muxmode[contains(signal,'EPWM3_')] | //muxmode[contains(signal,'EPWM4_')] |//muxmode[contains(signal,'EPWM5_')] |//muxmode[contains(signal,'EPWM6_')] |//muxmode[contains(signal,'EPWM7_')] |//muxmode[contains(signal,'EPWM8_')] |//muxmode[contains(signal,'EPWM9_')] |//muxmode[contains(signal,'EPWM10_')] |//muxmode[contains(signal,'EPWM11_')] |//muxmode[contains(signal,'EPWM12_')] | //muxmode[contains(signal,'EPWM13_')] |//muxmode[contains(signal,'EPWM14_')]  |//muxmode[contains(signal,'EPWM15_')] |//muxmode[contains(signal,'EPWM16_')] |//muxmode[contains(signal,'EPWM17_')] |//muxmode[contains(signal,'EPWM18_')]  |//muxmode[contains(signal,'EPWM19_')] |//muxmode[contains(signal,'EPWM20_')] |//muxmode[contains(signal,'EPWM21_')] |//muxmode[contains(signal,'EPWM22_')] |//muxmode[contains(signal,'EPWM23_')]  |//muxmode[contains(signal,'SPI0_')] | //muxmode[contains(signal,'SPI1_')] | //muxmode[contains(signal,'SPI2_')] |//muxmode[contains(signal,'SPI3_')] | //muxmode[contains(signal,'SPI4_')] | //muxmode[contains(signal,'MCAN0_')] |//muxmode[contains(signal,'MCAN1_')] |//muxmode[contains(signal,'MCAN2_')] |//muxmode[contains(signal,'MCAN3_')]  |//muxmode[contains(signal,'TRC_')] |  //muxmode[contains(signal,'JTAG_')]  | //muxmode[contains(signal,'I2C0_')] |//muxmode[contains(signal,'I2C1_')] | //muxmode[contains(signal,'I2C2_')]|  //muxmode[contains(signal,'I2C3_')] |//muxmode[contains(signal,'MII_')]  |//muxmode[contains(signal,'RMII1_')] |//muxmode[contains(signal,'RMII2_')] |//muxmode[contains(signal,'RGMII1_')] |//muxmode[contains(signal,'RGMII2_')]  |//muxmode[contains(signal,'MDIO0_')] |//muxmode[contains(signal,'CPTS0_')]  |//muxmode[contains(signal,'DMM_')]   |//muxmode[contains(signal,'ECAP0_')] |  //muxmode[contains(signal,'SDFM0_')]  |  //muxmode[contains(signal,'SDFM1_')] |  //muxmode[contains(signal,'MMC0_')] |  //muxmode[contains(signal,'GPMC0_')] |  //muxmode[contains(signal,'FSIRX0_')] |  //muxmode[contains(signal,'FSIRX1_')]  |  //muxmode[contains(signal,'FSIRX2_')]   |//muxmode[contains(signal,'FSIRX3_')]  | //muxmode[contains(signal,'TCK')]  |  //muxmode[contains(signal,'TDI')]  |  //muxmode[contains(signal,'TDO')] |  //muxmode[contains(signal,'FSITX0_')]  |  //muxmode[contains(signal,'TMS')] |  //muxmode[contains(signal,'FSITX1_')] |  //muxmode[contains(signal,'FSITX2_')] |  //muxmode[contains(signal,'FSITX3_')]|//muxmode[contains(signal,'LIN0_')]  |//muxmode[contains(signal,'LIN1_')] |//muxmode[contains(signal,'LIN2_')] |//muxmode[contains(signal,'LIN3_')]  |//muxmode[contains(signal,'EQEP0_')] |//muxmode[contains(signal,'EQEP1_')] |//muxmode[contains(signal,'EQEP2_')] |//muxmode[contains(signal,'XBAROUT')] |//muxmode[contains(signal,'PR0_UART0_')] |//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')]) /../../../name)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_',.,'.Func'") -o ":" -m "../type/pad/muxmode" -v "signal" -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Port Address
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'QSPI0_')]  |//muxmode[contains(signal,'PRU0_GIO')]   |//muxmode[contains(signal,'PRU1_GIO')]| //muxmode[contains(signal,'GPIOAB')]|//muxmode[contains(signal,'GPIOCD')]| //muxmode[contains(signal,'GPIOEF')]| //muxmode[contains(signal,'GPIOGH')]| //muxmode[contains(signal,'GPIOI')] | //muxmode[contains(signal,'UART0_')] |//muxmode[contains(signal,'UART1_')] |//muxmode[contains(signal,'UART2_')] | //muxmode[contains(signal,'UART3_')] | //muxmode[contains(signal,'UART4_')] | //muxmode[contains(signal,'UART5_')] | //muxmode[contains(signal,'EPWM0_')] | //muxmode[contains(signal,'EPWM1_')] |//muxmode[contains(signal,'EPWM2_')]  | //muxmode[contains(signal,'EPWM3_')] | //muxmode[contains(signal,'EPWM4_')] |//muxmode[contains(signal,'EPWM5_')] |//muxmode[contains(signal,'EPWM6_')] |//muxmode[contains(signal,'EPWM7_')] |//muxmode[contains(signal,'EPWM8_')] |//muxmode[contains(signal,'EPWM9_')] |//muxmode[contains(signal,'EPWM10_')] |//muxmode[contains(signal,'EPWM11_')] |//muxmode[contains(signal,'EPWM12_')] | //muxmode[contains(signal,'EPWM13_')] |//muxmode[contains(signal,'EPWM14_')]  |//muxmode[contains(signal,'EPWM15_')] |//muxmode[contains(signal,'EPWM16_')] |//muxmode[contains(signal,'EPWM17_')] |//muxmode[contains(signal,'EPWM18_')]  |//muxmode[contains(signal,'EPWM19_')] |//muxmode[contains(signal,'EPWM20_')] |//muxmode[contains(signal,'EPWM21_')] |//muxmode[contains(signal,'EPWM22_')] |//muxmode[contains(signal,'EPWM23_')]  |//muxmode[contains(signal,'SPI0_')] |//muxmode[contains(signal,'SPI1_')] | //muxmode[contains(signal,'SPI2_')]  |//muxmode[contains(signal,'SPI3_')] | //muxmode[contains(signal,'SPI4_')] | //muxmode[contains(signal,'MCAN0_')] |//muxmode[contains(signal,'MCAN1_')] |//muxmode[contains(signal,'MCAN2_')] |//muxmode[contains(signal,'MCAN3_')] | //muxmode[contains(signal,'TRC_')] |  //muxmode[contains(signal,'JTAG_')]  | //muxmode[contains(signal,'I2C0_')] |//muxmode[contains(signal,'I2C1_')] | //muxmode[contains(signal,'I2C2_')]|  //muxmode[contains(signal,'I2C3_')] |//muxmode[contains(signal,'MII_')] | //muxmode[contains(signal,'RMII1_')] |//muxmode[contains(signal,'RMII2_')] |//muxmode[contains(signal,'RGMII1_')] |//muxmode[contains(signal,'RGMII2_')]  |//muxmode[contains(signal,'MDIO0_')] |//muxmode[contains(signal,'CPTS0_')]  |//muxmode[contains(signal,'DMM_')]   |//muxmode[contains(signal,'ECAP0_')] |  //muxmode[contains(signal,'SDFM0_')]  |  //muxmode[contains(signal,'SDFM1_')] |  //muxmode[contains(signal,'MMC0_')] |  //muxmode[contains(signal,'GPMC0_')] |  //muxmode[contains(signal,'FSIRX0_')] |  //muxmode[contains(signal,'FSIRX1_')]  |  //muxmode[contains(signal,'FSIRX2_')]   |//muxmode[contains(signal,'FSIRX3_')]  |  //muxmode[contains(signal,'TCK')] |  //muxmode[contains(signal,'TDI')]  |  //muxmode[contains(signal,'TDO')] |  //muxmode[contains(signal,'FSITX0_')]  |  //muxmode[contains(signal,'TMS')] |  //muxmode[contains(signal,'FSITX1_')] |  //muxmode[contains(signal,'FSITX2_')] |  //muxmode[contains(signal,'FSITX3_')] |//muxmode[contains(signal,'LIN0_')] |//muxmode[contains(signal,'LIN1_')] |//muxmode[contains(signal,'LIN2_')] |//muxmode[contains(signal,'LIN3_')]  |//muxmode[contains(signal,'EQEP0_')] |//muxmode[contains(signal,'EQEP1_')] |//muxmode[contains(signal,'EQEP2_')] |//muxmode[contains(signal,'XBAROUT')] |//muxmode[contains(signal,'PR0_UART0_')] |//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')])  /../../../name)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_',.,'.Addr'") -o ":" -m "../type/pad//register" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Port Pin List
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'QSPI0_')]  |//muxmode[contains(signal,'PRU0_GIO')]   |//muxmode[contains(signal,'PRU1_GIO')]| //muxmode[contains(signal,'GPIOAB')] |//muxmode[contains(signal,'GPIOCD')]| //muxmode[contains(signal,'GPIOEF')]| //muxmode[contains(signal,'GPIOGH')]|//muxmode[contains(signal,'GPIOI')] | //muxmode[contains(signal,'UART0_')] | //muxmode[contains(signal,'UART1_')] |//muxmode[contains(signal,'UART2_')] | //muxmode[contains(signal,'UART3_')] | //muxmode[contains(signal,'UART4_')] | //muxmode[contains(signal,'UART5_')] | //muxmode[contains(signal,'EPWM0_')] | //muxmode[contains(signal,'EPWM1_')] |//muxmode[contains(signal,'EPWM2_')]  | //muxmode[contains(signal,'EPWM3_')] | //muxmode[contains(signal,'EPWM4_')] |//muxmode[contains(signal,'EPWM5_')] |//muxmode[contains(signal,'EPWM6_')] |//muxmode[contains(signal,'EPWM7_')] |//muxmode[contains(signal,'EPWM8_')] |//muxmode[contains(signal,'EPWM9_')]  |//muxmode[contains(signal,'EPWM10_')] |//muxmode[contains(signal,'EPWM11_')] |//muxmode[contains(signal,'EPWM12_')] | //muxmode[contains(signal,'EPWM13_')] |//muxmode[contains(signal,'EPWM14_')]  |//muxmode[contains(signal,'EPWM15_')] |//muxmode[contains(signal,'EPWM16_')] |//muxmode[contains(signal,'EPWM17_')] |//muxmode[contains(signal,'EPWM18_')]  |//muxmode[contains(signal,'EPWM19_')] |//muxmode[contains(signal,'EPWM20_')] |//muxmode[contains(signal,'EPWM21_')] |//muxmode[contains(signal,'EPWM22_')] |//muxmode[contains(signal,'EPWM23_')] |//muxmode[contains(signal,'SPI0_')] |//muxmode[contains(signal,'SPI1_')] | //muxmode[contains(signal,'SPI2_')] |//muxmode[contains(signal,'SPI3_')] | //muxmode[contains(signal,'SPI4_')] | //muxmode[contains(signal,'MCAN0_')] |//muxmode[contains(signal,'MCAN1_')] |//muxmode[contains(signal,'MCAN2_')] |//muxmode[contains(signal,'MCAN3_')] | //muxmode[contains(signal,'TRC_')] |  //muxmode[contains(signal,'JTAG_')]  | //muxmode[contains(signal,'I2C0_')] |//muxmode[contains(signal,'I2C1_')] | //muxmode[contains(signal,'I2C2_')]|  //muxmode[contains(signal,'I2C3_')] |//muxmode[contains(signal,'MII_')] |//muxmode[contains(signal,'RMII1_')] |//muxmode[contains(signal,'RMII2_')]  |//muxmode[contains(signal,'RGMII1_')] |//muxmode[contains(signal,'RGMII2_')]  |//muxmode[contains(signal,'MDIO0_')] |//muxmode[contains(signal,'CPTS0_')]  |//muxmode[contains(signal,'DMM_')]   |//muxmode[contains(signal,'ECAP0_')] |  //muxmode[contains(signal,'SDFM0_')]  |  //muxmode[contains(signal,'SDFM1_')] |  //muxmode[contains(signal,'MMC0_')] |  //muxmode[contains(signal,'GPMC0_')] |  //muxmode[contains(signal,'FSIRX0_')] |  //muxmode[contains(signal,'FSIRX1_')]  |  //muxmode[contains(signal,'FSIRX2_')]   |//muxmode[contains(signal,'FSIRX3_')]  |  //muxmode[contains(signal,'TCK')]  |  //muxmode[contains(signal,'TDI')]  |  //muxmode[contains(signal,'TDO')] |  //muxmode[contains(signal,'FSITX0_')]  |  //muxmode[contains(signal,'TMS')] |  //muxmode[contains(signal,'FSITX1_')] |  //muxmode[contains(signal,'FSITX2_')] |  //muxmode[contains(signal,'FSITX3_')] |//muxmode[contains(signal,'LIN0_')]  |//muxmode[contains(signal,'LIN1_')] |//muxmode[contains(signal,'LIN2_')] |//muxmode[contains(signal,'LIN3_')]  |//muxmode[contains(signal,'EQEP0_')] |//muxmode[contains(signal,'EQEP1_')] |//muxmode[contains(signal,'EQEP2_')] |//muxmode[contains(signal,'XBAROUT')] |//muxmode[contains(signal,'PR0_UART0_')] |//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')])  /../../../name)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: Port Pin Supporting specific mode
:: QSPI0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_QSPI0:" -m "set:distinct((//muxmode[contains(signal,'QSPI0')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: GPIOAB signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_GPIOAB:" -m "set:distinct((//muxmode[contains(signal,'GPIOAB')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml
:: GPIOCD signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_GPIOCD:" -m "set:distinct((//muxmode[contains(signal,'GPIOCD')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml
:: GPIOEF signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_GPIOEF:" -m "set:distinct((//muxmode[contains(signal,'GPIOEF')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml
:: GPIOGH signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_GPIOGH:" -m "set:distinct((//muxmode[contains(signal,'GPIOGH')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml
:: GPIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_GPIOI:" -m "set:distinct((//muxmode[contains(signal,'GPIOI')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: MCSPI0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_SPI0:" -m "set:distinct((//muxmode[contains(signal,'SPI0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: MCSPI1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_SPI1:" -m "set:distinct((//muxmode[contains(signal,'SPI1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: MCSPI2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_SPI2:" -m "set:distinct((//muxmode[contains(signal,'SPI2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: MCSPI3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_SPI3:" -m "set:distinct((//muxmode[contains(signal,'SPI3_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: MCSPI4 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_SPI4:" -m "set:distinct((//muxmode[contains(signal,'SPI4_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: MCAN0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_MCAN0:" -m "set:distinct((//muxmode[contains(signal,'MCAN0')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: MCAN1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_MCAN1:" -m "set:distinct((//muxmode[contains(signal,'MCAN1')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: MCAN2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_MCAN2:" -m "set:distinct((//muxmode[contains(signal,'MCAN2')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: MCAN3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_MCAN3:" -m "set:distinct((//muxmode[contains(signal,'MCAN3')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: PRU0_GIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_PRU0_GIO:" -m "set:distinct((//muxmode[contains(signal,'PRU0_GIO')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: PRU1_GIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_PRU1_GIO:" -m "set:distinct((//muxmode[contains(signal,'PRU1_GIO')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: UART0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_UART0:" -m "set:distinct((//muxmode[contains(signal,'UART0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::UART1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_UART1:" -m "set:distinct((//muxmode[contains(signal,'UART1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::UART2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_UART2:" -m "set:distinct((//muxmode[contains(signal,'UART2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::UART3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_UART3:" -m "set:distinct((//muxmode[contains(signal,'UART3_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::UART4 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_UART4:" -m "set:distinct((//muxmode[contains(signal,'UART4_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::UART5 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_UART5:" -m "set:distinct((//muxmode[contains(signal,'UART5_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM0:" -m "set:distinct((//muxmode[contains(signal,'EPWM0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM1:" -m "set:distinct((//muxmode[contains(signal,'EPWM1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM2:" -m "set:distinct((//muxmode[contains(signal,'EPWM2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM3:" -m "set:distinct((//muxmode[contains(signal,'EPWM3_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM4 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM4:" -m "set:distinct((//muxmode[contains(signal,'EPWM4_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM5 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM5:" -m "set:distinct((//muxmode[contains(signal,'EPWM5_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM6 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM6:" -m "set:distinct((//muxmode[contains(signal,'EPWM6_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM7 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM7:" -m "set:distinct((//muxmode[contains(signal,'EPWM7_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM8 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM8:" -m "set:distinct((//muxmode[contains(signal,'EPWM8_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM9 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM9:" -m "set:distinct((//muxmode[contains(signal,'EPWM9_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM10 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM10:" -m "set:distinct((//muxmode[contains(signal,'EPWM10_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM11 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM11:" -m "set:distinct((//muxmode[contains(signal,'EPWM11_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM12 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM12:" -m "set:distinct((//muxmode[contains(signal,'EPWM12_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM13 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM13:" -m "set:distinct((//muxmode[contains(signal,'EPWM13_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM14 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM14:" -m "set:distinct((//muxmode[contains(signal,'EPWM14_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM15 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM15:" -m "set:distinct((//muxmode[contains(signal,'EPWM15_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM16 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM16:" -m "set:distinct((//muxmode[contains(signal,'EPWM16_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM17 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM17:" -m "set:distinct((//muxmode[contains(signal,'EPWM17')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM18 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM18:" -m "set:distinct((//muxmode[contains(signal,'EPWM18')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM19 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM19:" -m "set:distinct((//muxmode[contains(signal,'EPWM19')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM20 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM20:" -m "set:distinct((//muxmode[contains(signal,'EPWM20')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM21 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM21:" -m "set:distinct((//muxmode[contains(signal,'EPWM21')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EPWM22 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM22:" -m "set:distinct((//muxmode[contains(signal,'EPWM22')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EPWM23 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EPWM23:" -m "set:distinct((//muxmode[contains(signal,'EPWM23')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml



:: TRC_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_TRC:" -m "set:distinct((//muxmode[contains(signal,'TRC_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: JTAG_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_JTAG:" -m "set:distinct((//muxmode[contains(signal,'JTAG_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml



:: I2C0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_I2C0:" -m "set:distinct((//muxmode[contains(signal,'I2C0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: I2C1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_I2C1:" -m "set:distinct((//muxmode[contains(signal,'I2C1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: I2C2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_I2C2:" -m "set:distinct((//muxmode[contains(signal,'I2C2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: I2C3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_I2C3:" -m "set:distinct((//muxmode[contains(signal,'I2C3_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: MII signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_MII:" -m "set:distinct((//muxmode[contains(signal,'MII')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: RMII1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_RMII1:" -m "set:distinct((//muxmode[contains(signal,'RMII1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: RMII2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_RMII2:" -m "set:distinct((//muxmode[contains(signal,'RMII2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: RGMII1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_RGMII1:" -m "set:distinct((//muxmode[contains(signal,'RGMII1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: RGMII2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_RGMII2:" -m "set:distinct((//muxmode[contains(signal,'RGMII2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: MDIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_MDIO0:" -m "set:distinct((//muxmode[contains(signal,'MDIO0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: CPTS0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_CPTS0:" -m "set:distinct((//muxmode[contains(signal,'CPTS0')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: DMM signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_DMM:" -m "set:distinct((//muxmode[contains(signal,'DMM_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml



::ECAP0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_ECAP0:" -m "set:distinct((//muxmode[contains(signal,'ECAP0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::GPMC0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_GPMC0:" -m "set:distinct((//muxmode[contains(signal,'GPMC0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::SDFM0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_SDFM0:" -m "set:distinct((//muxmode[contains(signal,'SDFM0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::SDFM1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_SDFM0:" -m "set:distinct((//muxmode[contains(signal,'SDFM0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::MMC0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_MMC0:" -m "set:distinct((//muxmode[contains(signal,'MMC0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: FSIRX0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_FSIRX0:" -m "set:distinct((//muxmode[contains(signal,'FSIRX0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: FSIRX1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_FSIRX1:" -m "set:distinct((//muxmode[contains(signal,'FSIRX1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: FSIRX2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_FSIRX2:" -m "set:distinct((//muxmode[contains(signal,'FSIRX2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: FSIRX3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_FSIRX3:" -m "set:distinct((//muxmode[contains(signal,'FSIRX3_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: LIN0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_LIN0:" -m "set:distinct((//muxmode[contains(signal,'LIN0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: LIN1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_LIN1:" -m "set:distinct((//muxmode[contains(signal,'LIN1_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: LIN2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_LIN2:" -m "set:distinct((//muxmode[contains(signal,'LIN2_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: LIN3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_LIN3:" -m "set:distinct((//muxmode[contains(signal,'LIN3_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: EQEP0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EQEP0:" -m "set:distinct((//muxmode[contains(signal,'EQEP0')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EQEP1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EQEP1:" -m "set:distinct((//muxmode[contains(signal,'EQEP1')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: EQEP2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_EQEP2:" -m "set:distinct((//muxmode[contains(signal,'EQEP2')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml


:: XBAROUT signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_XBAROUT:" -m "set:distinct((//muxmode[contains(signal,'XBAROUT')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

:: PR0_IEP0_EDC_SYNC_OUT signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_PR0_IEP0_EDC_SYNC_OUT:" -m "set:distinct((//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml

::signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -o "Port_TI_AM263x_Signals_PR0_UART0:" -m "set:distinct((//muxmode[contains(signal,'PR0_UART0_')])/signal)"  --sort A:T:U "." -v "." -i "not(position() = last())" -o "," --break --break --nl .\model_263x_v1.0.0.xml



:: Pins for all QSPI0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'QSPI0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all SPI0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'SPI0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all MCSP1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'SPI1_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all SPI2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'SPI2_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all MCSP3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'SPI3_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all MCSP4 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'SPI4_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all UART0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'UART0')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all UART1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'UART1_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all UART2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'UART2_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all UART3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'UART3_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all UART4 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'UART4_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all UART5 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'UART5_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM0')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM1')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM2')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM3')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM4 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM4')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM5 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM5')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM6 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM6')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all EPWM7 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM7')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM8 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM8')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM9 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM9')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all EPWM10 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM10')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM11 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM11')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM12 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM12')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all EPWM13 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM13')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM14 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM14')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM15 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM15')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all EPWM16 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM16')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM17 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM17')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM18 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM18')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all EPWM19 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM19')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM20 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM20')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM21signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM21')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM22 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EPWM22')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EPWM23signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'EPWM23')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all TRC_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'TRC')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all JTAG signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal, 'JTAG')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all I2C0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'I2C0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all I2C1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'I2C1_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all I2C2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'I2C2_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all I2C3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'I2C3_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all MCAN0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'MCAN0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all MCAN1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'MCAN1_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all MCAN2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'MCAN2_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all MCAN3 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'MCAN3_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all PRU0_GIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'PRU0_GIO')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all PRU1_GIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'PRU1_GIO')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all MII signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'MII')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all RMII1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'RMII1')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all RMII2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'RMII2')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all RGMII1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'RGMII1')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all RGMII2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'RGMII2')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all MDIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'MDIO0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all CPTS0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'CPTS0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all PRU0_GIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'PRU0_GIO')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all PRU1_GIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'PRU1_GIO')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all ECAP0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'ECAP0')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all SDFM0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'SDFM0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all SDFM1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'SDFM1_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EQEP0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EQEP0')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EQEP1 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EQEP1')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all EQEP2 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'EQEP2')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all MMC0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'MMC0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all GPMC0 signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'GPMC0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all FSIRX0_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'FSIRX0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all FSIRX1_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'FSIRX1_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all FSIRX2_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'FSIRX2_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all FSIRX3_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'FSIRX3_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all TCK signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'TCK')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all TDI signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'TDI')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all TDO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'TDO')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all TMS signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'TMS')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all LIN0_MCASPB_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'LIN0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all LIN1_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'LIN1_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all LIN2_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'LIN2_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all LIN3_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'LIN3_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all RCSS_MIBSPIA_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'RCSS_MIBSPIA_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all RCSS_MIBSPIB_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'RCSS_MIBSPIB_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all GPIOAB signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'GPIOAB')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all GPIOCD signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'GPIOCD')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all GPIOEF signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'GPIOEF')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all GPIOGH signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'GPIOGH')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml
:: Pins for all GPIO signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'GPIOI')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all XBROUTsignals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'XBAROUT')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all PR0_UART0_ signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'PR0_UART0_')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Pins for all PR0_IEP0_EDC_SYNC_OUT signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')])/signal)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml


:: Pins for all Supported signals
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'QSPI0_')]  |//muxmode[contains(signal,'PRU0_GIO')]   |//muxmode[contains(signal,'PRU1_GIO')]|//muxmode[contains(signal,'GPIOAB')] | //muxmode[contains(signal,'GPIOCD')]| //muxmode[contains(signal,'GPIOEF')]| //muxmode[contains(signal,'GPIOGH')]|  //muxmode[contains(signal,'GPIOI')] | //muxmode[contains(signal,'UART0_')] | //muxmode[contains(signal,'UART1_')] | //muxmode[contains(signal,'UART2_')] |//muxmode[contains(signal,'UART3_')]|//muxmode[contains(signal,'UART4_')]|   //muxmode[contains(signal,'UART5_')]  | //muxmode[contains(signal,'EPWM0_')] | //muxmode[contains(signal,'EPWM1_')] |//muxmode[contains(signal,'EPWM2_')]  | //muxmode[contains(signal,'EPWM3_')] | //muxmode[contains(signal,'EPWM4_')] |//muxmode[contains(signal,'EPWM5_')] |//muxmode[contains(signal,'EPWM6_')] |//muxmode[contains(signal,'EPWM7_')] |//muxmode[contains(signal,'EPWM8_')] |//muxmode[contains(signal,'EPWM9_')] |//muxmode[contains(signal,'EPWM10_')] |//muxmode[contains(signal,'EPWM11_')] |//muxmode[contains(signal,'EPWM12_')] | //muxmode[contains(signal,'EPWM13_')] |//muxmode[contains(signal,'EPWM14_')]  |//muxmode[contains(signal,'EPWM15_')] |//muxmode[contains(signal,'EPWM16_')] |//muxmode[contains(signal,'EPWM17_')] |//muxmode[contains(signal,'EPWM18_')]  |//muxmode[contains(signal,'EPWM19_')] |//muxmode[contains(signal,'EPWM20_')] |//muxmode[contains(signal,'EPWM21_')] |//muxmode[contains(signal,'EPWM22_')] |//muxmode[contains(signal,'EPWM23_')]  |//muxmode[contains(signal,'SPI0_')] | //muxmode[contains(signal,'SPI1_')] | //muxmode[contains(signal,'SPI2_')] |//muxmode[contains(signal,'SPI3_')] | //muxmode[contains(signal,'SPI4_')] | //muxmode[contains(signal,'MCAN0_')] |//muxmode[contains(signal,'MCAN1_')] |//muxmode[contains(signal,'MCAN2_')] |//muxmode[contains(signal,'MCAN3_')]  |//muxmode[contains(signal,'TRC_')] |  //muxmode[contains(signal,'JTAG_')] | //muxmode[contains(signal,'I2C0_')] |//muxmode[contains(signal,'I2C1_')] | //muxmode[contains(signal,'I2C2_')]|  //muxmode[contains(signal,'I2C3_')] |//muxmode[contains(signal,'MII')]  |//muxmode[contains(signal,'RMII1_')] |//muxmode[contains(signal,'RMII2_')] |//muxmode[contains(signal,'RGMII1_')] |//muxmode[contains(signal,'RGMII2_')]  |//muxmode[contains(signal,'MDIO0_')] |//muxmode[contains(signal,'CPTS0_')]  |//muxmode[contains(signal,'DMM_')]   |//muxmode[contains(signal,'ECAP0_')] |  //muxmode[contains(signal,'SDFM0_')]  |  //muxmode[contains(signal,'SDFM1_')] |  //muxmode[contains(signal,'MMC0_')] |  //muxmode[contains(signal,'GPMC0_')] |  //muxmode[contains(signal,'FSIRX0_')] |  //muxmode[contains(signal,'FSIRX1_')]  |  //muxmode[contains(signal,'FSIRX2_')]   |//muxmode[contains(signal,'FSIRX3_')] |  //muxmode[contains(signal,'FSITX0_')] |  //muxmode[contains(signal,'FSITX1_')] |  //muxmode[contains(signal,'FSITX2_')] |  //muxmode[contains(signal,'FSITX3_')] |  //muxmode[contains(signal,'TCK')]  |  //muxmode[contains(signal,'TDI')]  |  //muxmode[contains(signal,'TDO')]  |//muxmode[contains(signal,'TMS')]|//muxmode[contains(signal,'LIN0_')]  |//muxmode[contains(signal,'LIN1_')] |//muxmode[contains(signal,'LIN2_')] |//muxmode[contains(signal,'LIN3_')]  |//muxmode[contains(signal,'EQEP0_')] |//muxmode[contains(signal,'EQEP1_')] |//muxmode[contains(signal,'EQEP2_')] |//muxmode[contains(signal,'XBAROUT')] |//muxmode[contains(signal,'PR0_UART0_')] |//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')]) /../../../name)"   --sort A:T:U "." -v "concat('Port_TI_AM263x_Pins_',.)" -o ":"  --var signalname=. -m "set:distinct((../../../../..//muxmode[signal = $signalname])/../../../name)" -v "." -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Port Func For supported modes
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'QSPI0_')]  |//muxmode[contains(signal,'PRU0_GIO')]   |//muxmode[contains(signal,'PRU1_GIO')]|//muxmode[contains(signal,'GPIOAB')] | //muxmode[contains(signal,'GPIOCD')]| //muxmode[contains(signal,'GPIOEF')]| //muxmode[contains(signal,'GPIOGH')]| //muxmode[contains(signal,'GPIOI')] | //muxmode[contains(signal,'UART0_')] |//muxmode[contains(signal,'UART1_')] |//muxmode[contains(signal,'UART2_')] | //muxmode[contains(signal,'UART3_')] | //muxmode[contains(signal,'UART4_')]|  //muxmode[contains(signal,'UART5_')] | //muxmode[contains(signal,'EPWM0_')] | //muxmode[contains(signal,'EPWM1_')] |//muxmode[contains(signal,'EPWM2_')]  | //muxmode[contains(signal,'EPWM3_')] | //muxmode[contains(signal,'EPWM4_')] |//muxmode[contains(signal,'EPWM5_')] |//muxmode[contains(signal,'EPWM6_')] |//muxmode[contains(signal,'EPWM7_')] |//muxmode[contains(signal,'EPWM8_')] |//muxmode[contains(signal,'EPWM9_')] |//muxmode[contains(signal,'EPWM10_')] |//muxmode[contains(signal,'EPWM11_')] |//muxmode[contains(signal,'EPWM12_')] | //muxmode[contains(signal,'EPWM13_')] |//muxmode[contains(signal,'EPWM14_')]  |//muxmode[contains(signal,'EPWM15_')] |//muxmode[contains(signal,'EPWM16_')] |//muxmode[contains(signal,'EPWM17_')] |//muxmode[contains(signal,'EPWM18_')]  |//muxmode[contains(signal,'EPWM19_')] |//muxmode[contains(signal,'EPWM20_')] |//muxmode[contains(signal,'EPWM21_')] |//muxmode[contains(signal,'EPWM22_')] |//muxmode[contains(signal,'EPWM23_')]  |//muxmode[contains(signal,'SPI0_')] |//muxmode[contains(signal,'SPI1_')] | //muxmode[contains(signal,'SPI2_')]  |//muxmode[contains(signal,'SPI3_')] | //muxmode[contains(signal,'SPI4_')] | //muxmode[contains(signal,'MCAN0_')] |//muxmode[contains(signal,'MCAN1_')] |//muxmode[contains(signal,'MCAN2_')] |//muxmode[contains(signal,'MCAN3_')] | //muxmode[contains(signal,'TRC_')] |  //muxmode[contains(signal,'JTAG_')]  | //muxmode[contains(signal,'I2C0_')] |//muxmode[contains(signal,'I2C1_')] | //muxmode[contains(signal,'I2C2_')]|  //muxmode[contains(signal,'I2C3_')] |//muxmode[contains(signal,'MII')] | //muxmode[contains(signal,'RMII1_')] |//muxmode[contains(signal,'RMII2_')] |//muxmode[contains(signal,'RGMII1_')] |//muxmode[contains(signal,'RGMII2_')]  |//muxmode[contains(signal,'MDIO0_')] |//muxmode[contains(signal,'CPTS0_')]  |//muxmode[contains(signal,'DMM_')]   |//muxmode[contains(signal,'ECAP0_')] |  //muxmode[contains(signal,'SDFM0_')]  |  //muxmode[contains(signal,'SDFM1_')] |  //muxmode[contains(signal,'MMC0_')] |  //muxmode[contains(signal,'GPMC0_')] |  //muxmode[contains(signal,'FSIRX0_')] |  //muxmode[contains(signal,'FSIRX1_')]  |  //muxmode[contains(signal,'FSIRX2_')]   |//muxmode[contains(signal,'FSIRX3_')] |  //muxmode[contains(signal,'FSITX0_')] |  //muxmode[contains(signal,'FSITX1_')] |  //muxmode[contains(signal,'FSITX2_')] |  //muxmode[contains(signal,'FSITX3_')]  |  //muxmode[contains(signal,'TCK')]  |  //muxmode[contains(signal,'TDI')]  |  //muxmode[contains(signal,'TDO')]  |//muxmode[contains(signal,'TMS')]|//muxmode[contains(signal,'LIN0_')]  |//muxmode[contains(signal,'LIN1_')] |//muxmode[contains(signal,'LIN2_')] |//muxmode[contains(signal,'LIN3_')]  |//muxmode[contains(signal,'EQEP0_')] |//muxmode[contains(signal,'EQEP1_')] |//muxmode[contains(signal,'EQEP2_')] |//muxmode[contains(signal,'XBAROUT')] |//muxmode[contains(signal,'PR0_UART0_')] |//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')])  /../../../name)"  --sort A:T:U "." -v "concat('Port_TI_AM263x_',.,'.Func'") -o ":" -m "(../type/pad/muxmode[contains(signal,'QSPI0_')] |../type/pad/muxmode[contains(signal,'PRU0_GIO')] |../type/pad/muxmode[contains(signal,'PRU1_GIO')] |../type/pad/muxmode[contains(signal,'GPIOAB')] |../type/pad/muxmode[contains(signal,'GPIOCD')]|../type/pad/muxmode[contains(signal,'GPIOEF')]|../type/pad/muxmode[contains(signal,'GPIOGH')]|../type/pad/muxmode[contains(signal,'GPIOI')]|../type/pad/muxmode[contains(signal,'UART0_')] | ../type/pad/muxmode[contains(signal,'UART1_')]| ../type/pad/muxmode[contains(signal,'UART2_')]| ../type/pad/muxmode[contains(signal,'UART3_')]| ../type/pad/muxmode[contains(signal,'UART4_')]| ../type/pad/muxmode[contains(signal,'UART5_')]|../type/pad/muxmode[contains(signal,'EPWM0_')]| ../type/pad/muxmode[contains(signal,'EPWM1_')]| ../type/pad/muxmode[contains(signal,'EPWM2_')]| ../type/pad/muxmode[contains(signal,'EPWM3_')]| ../type/pad/muxmode[contains(signal,'EPWM4_')]| ../type/pad/muxmode[contains(signal,'EPWM5_')]| ../type/pad/muxmode[contains(signal,'EPWM6_')]| ../type/pad/muxmode[contains(signal,'EPWM7_')]| ../type/pad/muxmode[contains(signal,'EPWM8_')]| ../type/pad/muxmode[contains(signal,'EPWM9_')]| ../type/pad/muxmode[contains(signal,'EPWM10_')]| ../type/pad/muxmode[contains(signal,'EPWM11_')]| ../type/pad/muxmode[contains(signal,'EPWM12_')]| ../type/pad/muxmode[contains(signal,'EPWM13_')]| ../type/pad/muxmode[contains(signal,'EPWM14_')]| ../type/pad/muxmode[contains(signal,'EPWM15_')]| ../type/pad/muxmode[contains(signal,'EPWM16_')]| ../type/pad/muxmode[contains(signal,'EPWM17_')]| ../type/pad/muxmode[contains(signal,'EPWM18_')]| ../type/pad/muxmode[contains(signal,'EPWM19_')]| ../type/pad/muxmode[contains(signal,'EPWM20_')]| ../type/pad/muxmode[contains(signal,'EPWM21_')]| ../type/pad/muxmode[contains(signal,'EPWM22_')]| ../type/pad/muxmode[contains(signal,'EPWM23_')] | ../type/pad/muxmode[contains(signal,'SPI0_')]| ../type/pad/muxmode[contains(signal,'SPI1_')] |../type/pad/muxmode[contains(signal,'SPI2_')] | ../type/pad/muxmode[contains(signal,'SPI3_')] | ../type/pad/muxmode[contains(signal,'SPI4_')] | ../type/pad/muxmode[contains(signal,'MCAN0_')] | ../type/pad/muxmode[contains(signal,'MCAN1_')] | ../type/pad/muxmode[contains(signal,'MCAN2_')] | ../type/pad/muxmode[contains(signal,'MCAN3_')] | ../type/pad/muxmode[contains(signal,'TRC_')] | ../type/pad/muxmode[contains(signal,'JTAG_')] | ../type/pad/muxmode[contains(signal,'I2C0_')] | ../type/pad/muxmode[contains(signal,'I2C1_')] | ../type/pad/muxmode[contains(signal,'I2C2_')] | ../type/pad/muxmode[contains(signal,'I2C3_')]|../type/pad/muxmode[contains(signal,'MII_')] | ../type/pad/muxmode[contains(signal,'RMII1_')] | ../type/pad/muxmode[contains(signal,'RMMI2_')] | ../type/pad/muxmode[contains(signal,'RGMII1_')]| ../type/pad/muxmode[contains(signal,'RGMII2_')] | ../type/pad/muxmode[contains(signal,'MDIO0_')] | ../type/pad/muxmode[contains(signal,'CPTS0_')] |../type/pad/muxmode[contains(signal,'CPTS0_')] |../type/pad/muxmode[contains(signal,'ECAP0_')] | ../type/pad/muxmode[contains(signal,'SDFM0_')] | ../type/pad/muxmode[contains(signal,'SDFM1_')] | ../type/pad/muxmode[contains(signal,'MMC0_')] | ../type/pad/muxmode[contains(signal,'GPMC0_')] | ../type/pad/muxmode[contains(signal,'FSIRX0_')] | ../type/pad/muxmode[contains(signal,'FSIRX1_')] | ../type/pad/muxmode[contains(signal,'FSIRX2_')] | ../type/pad/muxmode[contains(signal,'FSIRX3_')] | ../type/pad/muxmode[contains(signal,'FSITX0_')] | ../type/pad/muxmode[contains(signal,'FSITX1_')] | ../type/pad/muxmode[contains(signal,'FSITX2_')] | ../type/pad/muxmode[contains(signal,'FSITX3_')]| ../type/pad/muxmode[contains(signal,'MSS_MII_')] | ../type/pad/muxmode[contains(signal,'LIN0_')] | ../type/pad/muxmode[contains(signal,'LIN1_')] | ../type/pad/muxmode[contains(signal,'LIN2_')] | ../type/pad/muxmode[contains(signal,'LIN3_')] | ../type/pad/muxmode[contains(signal,'EQEP0_')] | ../type/pad/muxmode[contains(signal,'EQEP1_')] | ../type/pad/muxmode[contains(signal,'EQEP2_')] | ../type/pad/muxmode[contains(signal,'XBAROUT')] | ../type/pad/muxmode[contains(signal,'PR0_UART0_')] | ../type/pad/muxmode[contains(signal,'GPMC0_')]| ../type/pad/muxmode[contains(signal,'MSS_MII_')]|../type/pad/muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')])" -v "concat(signal,'_MUXMODE_',mode)" -i "not(position() = last())" -o ","  --break --break --nl .\model_263x_v1.0.0.xml

:: Port Pin Id map
xml sel --net -N fn="http://www.w3.org/2005/xpath-functions" -T -t   -m "set:distinct((//muxmode[contains(signal,'QSPI0_')]  |//muxmode[contains(signal,'PRU0_GIO')] |//muxmode[contains(signal,'PRU1_GIO')] |//muxmode[contains(signal,'GPIOAB')] | //muxmode[contains(signal,'GPIOCD')]|//muxmode[contains(signal,'GPIOEF')]| //muxmode[contains(signal,'GPIOGH')]| //muxmode[contains(signal,'GPIOI')] | //muxmode[contains(signal,'UART0_')] |//muxmode[contains(signal,'UART1_')] |   //muxmode[contains(signal,'UART2_')]|  //muxmode[contains(signal,'UART3_')]|//muxmode[contains(signal,'UART4_')]|  //muxmode[contains(signal,'UART5_')]|   //muxmode[contains(signal,'EPWM0_')] |//muxmode[contains(signal,'EPWM1_')] |//muxmode[contains(signal,'EPWM2_')]  | //muxmode[contains(signal,'EPWM3_')] | //muxmode[contains(signal,'EPWM4_')] | //muxmode[contains(signal,'EPWM5_')] |//muxmode[contains(signal,'EPWM6_')] |  //muxmode[contains(signal,'EPWM7_')] | //muxmode[contains(signal,'EPWM8_')] |//muxmode[contains(signal,'EPWM9_')]|//muxmode[contains(signal,'EPWM10_')] |//muxmode[contains(signal,'EPWM11_')] |//muxmode[contains(signal,'EPWM12_')] | //muxmode[contains(signal,'EPWM13_')] |//muxmode[contains(signal,'EPWM14_')] |//muxmode[contains(signal,'EPWM15_')] |//muxmode[contains(signal,'EPWM16_')] |//muxmode[contains(signal,'EPWM17_')] |//muxmode[contains(signal,'EPWM18_')]  |//muxmode[contains(signal,'EPWM19_')] |//muxmode[contains(signal,'EPWM20_')] |//muxmode[contains(signal,'EPWM21_')] |//muxmode[contains(signal,'EPWM22_')] |//muxmode[contains(signal,'EPWM23_')]  |//muxmode[contains(signal,'SPI0_')] | //muxmode[contains(signal,'SPI1_')] | //muxmode[contains(signal,'SPI2_')] | //muxmode[contains(signal,'SPI3_')] | //muxmode[contains(signal,'SPI4_')] | //muxmode[contains(signal,'MCAN0_')] |//muxmode[contains(signal,'MCAN1_')] |//muxmode[contains(signal,'MCAN2_')] |//muxmode[contains(signal,'MCAN3_')] | //muxmode[contains(signal,'TRC_')] |//muxmode[contains(signal,'JTAG_')] | //muxmode[contains(signal,'I2C0_')] | //muxmode[contains(signal,'I2C1_')] | //muxmode[contains(signal,'I2C2_')]| //muxmode[contains(signal,'I2C3_')] |//muxmode[contains(signal,'MII')]  |//muxmode[contains(signal,'RMII1_')] |//muxmode[contains(signal,'RMII2_')]  |//muxmode[contains(signal,'RGMII1_')] |//muxmode[contains(signal,'RGMII2_')] |//muxmode[contains(signal,'MDIO0_')] |//muxmode[contains(signal,'CPTS0_')] |//muxmode[contains(signal,'DMM_')]  |//muxmode[contains(signal,'ECAP0_')] |  //muxmode[contains(signal,'SDFM0_')]  |  //muxmode[contains(signal,'SDFM1_')] |  //muxmode[contains(signal,'MMC0_')] |  //muxmode[contains(signal,'GPMC0_')] |  //muxmode[contains(signal,'FSIRX0_')] |  //muxmode[contains(signal,'FSIRX1_')]  |//muxmode[contains(signal,'FSIRX2_')]|//muxmode[contains(signal,'FSIRX3_')] |  //muxmode[contains(signal,'FSITX0_')] |  //muxmode[contains(signal,'FSITX1_')] |  //muxmode[contains(signal,'FSITX2_')] |  //muxmode[contains(signal,'FSITX3_')]  |  //muxmode[contains(signal,'TCK')]  |  //muxmode[contains(signal,'TDI')]  |  //muxmode[contains(signal,'TDO')]  |//muxmode[contains(signal,'TMS')]|//muxmode[contains(signal,'LIN0_')]  |//muxmode[contains(signal,'LIN1_')] |//muxmode[contains(signal,'LIN2_')] |//muxmode[contains(signal,'LIN3_')]  |//muxmode[contains(signal,'EQEP0_')] |//muxmode[contains(signal,'EQEP1_')] |//muxmode[contains(signal,'EQEP2_')] |//muxmode[contains(signal,'XBAROUT')] |//muxmode[contains(signal,'PR0_UART0_')] |//muxmode[contains(signal,'PR0_IEP0_EDC_SYNC_OUT')]) /../../../name)" --sort A:T:U "." -v "concat('Port_TI_AM263x_PinId_',.,':')"  --var pinId=position() -v "$pinId" --nl  .\model_263x_v1.0.0.xml

