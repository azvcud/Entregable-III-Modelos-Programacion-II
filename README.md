# Ejercicios Assembler - Modelos de Programación II

Universidad Distrital Francisco José de Caldas  
Proyecto Curricular de Ingeniería de Sistemas

**Asignatura:** Modelos de Programación II  
**Profesor:** Alejandro Paolo Daza Corredor

---

## Integrantes

- Amir Zoleyt Vanegas Cárdenas - 20211020015 <br> azvanegasc@udistrital.edu.co
- Esteban Alejandro Villalba Delgadillo- 20212020064 <br> eavillalbad@udistrital.edu.co
- Samuel Antonio Sanchez Peña - 20212020151 <br> samasanchezp@udistrital.edu.co

---

## Descripción de la entrega

Esta entrega consiste en que cada integrante realiza un ejercicio utilizando lenguaje de ensamblador.

### Características de la entrega

Cada ejercicio individualmente usa una versión específica del lenguaje ensamblador, siendo utilizado
un lenguaje genérico de ensamblador y el conjunto de instrucciones NASM en 32 bits.

### Objetivo

- Comprender el funcionamiento a bajo nivel de la computadora, a través del conjunto de instrucciones
del procesador.

- Estudiar el paradigma del lenguaje ensamblador como paradigma imperativo.

## Instrucciones de Uso

Para el ejercicio de asterisco.txt, puede copiar el código y pegarlo en el siguiente
enlace, donde se encuentra el simulador: https://schweigi.github.io/assembler-simulator/

Para el ejercicio de suma.asm, se recomienda usar NASM en un sistema Operativo Linux. 
Para el ejercicio de imprimirNumero.nasm, se recomienda usar NASM en un sistema operativo Windows.
En ambos casos, se debió haber instalado previamente MinGW (32 bits), verificando que se encuentre
en el PATH del sistema operativo.

1. **Clonar el repositorio:**
```bash
   git clone https://github.com/samuelxe2/Ejercicios-de-recursividad
```

2. **Navega al directorio del repositorio clonado:**
```bash
   cd Ejercicios-de-recursividad
```

3. **Generar el archivo de objeto de los archivos de ensamblador:**
Recordar que para cada sistema (Windows y Linux), se usa respectivamente win32 y elf
```bash
   nasm -f win32 imprimirNumero.nasm -o imprimirNumero.obj
   nasm -f elf suma.asm -o suma.obj
```

4. **Generar el archivo ejecutable a partir del enlazado con el archivo de objeto:**
```bash
   gcc -no-pie -win32 imrpimirNumero.obj -o imprimirNumero
   ld -m elf_i386 -o suma suma.obj
```

5. **Correr el ejecutable:**
```bash
   .\imprimirNumero.exe
   ./suma
```

5. **Verificar el valor obtenido:**
Para el caso del sistema operativo de Linux, se recomienda ver el valor resultante
a través del siguiente comando
```bash
   echo $?
```
---