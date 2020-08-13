![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/Picture/macOS_Big_Sur.png)

## Introdución

[中文版](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README.md) | [English](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README-en.md) | [Español](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README-es.md)

El proposito de este proyecto es el de permitir que los portatiles Y7000/Y530/Y540/legion 5i/legion 7 puedan ejecutar mac OS mojave/catalina de la forma mas nativa posible.

Consejo: Los portatiles Y530/Y540/Y545/legion 5i/legion 7  no necesitan modificar la whitelist en la BIOS.


## Lanzamientos
La versión mas reciente es la v3.0.2 y puede ser descargada desde [aqui](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/releases).

## ¿Qué necesitas?
- Una imagen de instalación de Catalina (normalmente un archivo .dmg), se ha probado la versión 10.13.6 - 11.0 beta4
- Pendrive USB de como mínimo 16 Gigabytes.

## Configuración de la BIOS
- "Boot mode": UEFI
- "Security boot": Debe estar desactivado.
- Modo de alamacenamiento: AHCI

## ¿Qué funciona?
- Arranque de Clover/OpenCore en modo UEFI.
- Teclado integrado (Las teclas de funcion y el teclado numerico funcionan bien).
- Velocidad nativa en los puertos USB3 y USB3. 
- Auriculares, microfono interno y altavoces funcionan de forma nativa gracias a AppleHDA.
- Camara integrada.
- Gestión de energia nativo.
- Estado de la batería (El procentaje restante funciona sin problemas).
- Control del brillo.
- Retroiluminación del teclado.
- Gráfica integrada de Intel (La GPU dedicada ha sido deshabilitada para ahorrar energia y por incompatibilidad).
- puerto Ethernet.
- Funcion completa de la Mac App Store.
- SpeedStep de la CPU
- Modo reposo y despertar (se despierta con el teclado, el ratón o el botón de power).
- Conexión Wi-Fi (Broadcom BCM943602CS).
- Bluetooth (Broadcom BCM943602CS).
- Trackpad.
- Apple iPad Sidecar.
- Monitor 4k externo.
- iMessage y FaceTime funcionan sin problemas.

## ¿Que no funciona?
- HDMI (Esta conectado a la GPU dedicada la cual no funciona con mac OS).

## Después de la intalación
Ejecuta el siguiente comando desde la terminal:
```
sudo sh -c "$(curl -fsSL https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Script/Optimize.sh)"
```

## Donaciones

Si te gusta mi trabajo, por favor doname a traves del siguiente link:

| Paypal                                                       |
| ---------------------------------------------------------- | 
| [xiaoMGitHub](https://www.paypal.me/xiaoMGitHub) | 


