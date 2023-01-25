# Actividad 1

## Kernel ⌨️
Es el núcleo central de un sistema operativo. Es el componente responsable de la gestión de recursos del sistema, como la memoria, el procesamiento y el acceso a dispositivos de entrada/salida. El kernel también proporciona una interfaz para que los programas puedan interactuar con el hardware del sistema.

El principal cometido del kernel es el procesamiento paralelo de diferentes tareas, el multitasking. Para ello debe, por un lado, cumplir con los tiempos establecidos y, por otro, permanecer disponible para tareas adicionales.

## 📋 Tipos 
Hay varios tipos de kernels utilizados en sistemas operativos, algunos de los más comunes son:

- `Monolítico`: Un kernel monolítico es un kernel que contiene todas las funciones necesarias para el funcionamiento del sistema operativo en una sola pieza de código. Es una estructura grande y compleja, pero es fácil de mantener y desarrollar.

- `Microkernel`: Un kernel microkernel es un kernel que contiene solo las funciones básicas necesarias para el funcionamiento del sistema operativo, como la gestión de memoria y procesos. El resto de las funciones se proporcionan a través de módulos externos. Es una estructura más pequeña y modular, pero es más difícil de mantener y desarrollar.

- `Hybrid`: Un kernel híbrido es un kernel que combina características de los kernels monolíticos y microkernels. Es una estructura intermedia, que busca combinar las ventajas de ambos tipos de kernels, pero puede ser más compleja de desarrollar.

- `ExoKernel`: Un exokernel es un kernel que proporciona un acceso más bajo nivel a los recursos del sistema, permitiendo un mayor control y rendimiento. Sin embargo, requiere un mayor conocimiento y esfuerzo para su desarrollo y uso.


## 🔧 User VS Kernel Mode 

Estos son modos diferentes en los que un procesador puede operar.

- `Modo de usuario`: En el modo de usuario, un programa (o proceso) tiene acceso limitado a los recursos del sistema. El programa no puede acceder a la memoria del sistema, ni a los dispositivos de entrada/salida, directamente. En cambio, tiene que hacer peticiones al sistema operativo a través de una interfaz de programación de aplicaciones (API). El objetivo de este modo es proteger el sistema de posibles errores o fallos en el programa.

- `Modo kernel`: En el modo kernel, el sistema operativo tiene acceso total a todos los recursos del sistema. Es en este modo donde el sistema operativo lleva a cabo tareas críticas, como la gestión de la memoria y el procesamiento, y proporciona servicios a los programas en ejecución en modo de usuario. El modo kernel es el modo de privilegiado, solo los sistemas operativos y algunos controladores de dispositivos tienen acceso a este modo.

La transición entre el modo usuario y el modo kernel se realiza mediante interrupciones y llamadas al sistema (system calls). Estas operaciones permiten que un programa en modo de usuario solicite servicios al sistema operativo y que este último acceda a los recursos del sistema necesarios para proporcionar esos servicios.
