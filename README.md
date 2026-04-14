# 🚀 API Automation Framework – REST Assured + BDD

## 🧪 Descripción general

Este proyecto implementa un framework de automatización de pruebas de APIs utilizando **REST Assured** y **BDD con Cucumber**, diseñado para validar servicios REST en un entorno similar al de trabajo real.

El enfoque está orientado a garantizar la **calidad, confiabilidad y consistencia de las APIs**, mediante pruebas automatizadas estructuradas, mantenibles y reutilizables.

---

## 💼 ¿Qué demuestra este proyecto?

- Diseño de un **framework escalable de testing de APIs**
- Implementación de **BDD (Behavior Driven Development)** con Cucumber y Gherkin
- Validación de **contratos de API mediante JSON Schema**
- Verificación automatizada de:
  - Status codes  
  - Tiempos de respuesta  
  - Estructura de respuestas  
  - Datos de negocio  
- Generación de **reportes profesionales con Allure**
- Uso de **logging para trazabilidad de requests y responses**
- Aplicación de buenas prácticas de automatización

---

## 🌐 API bajo prueba

El framework consume una API real documentada en Postman:

👉 https://documenter.getpostman.com/view/39136889/2sBXcBohZi

**Base URL**
```
https://api.blassacademy.com
```

No es necesario levantar un backend local.

---

## 🧰 Stack tecnológico

- ☕ Java  
- 🌐 REST Assured  
- 🥒 Cucumber (BDD – Gherkin)  
- 🧪 JUnit  
- 📦 Maven  
- 📊 Allure Reports  
- 📄 JSON Schema Validation  
- 🪵 Log4j2  

---

## 🧠 Enfoque de testing

El framework está diseñado bajo el enfoque **BDD**, permitiendo definir escenarios de prueba en lenguaje legible para negocio.

- Escenarios definidos con **Given – When – Then**
- Separación entre features y lógica de implementación
- Reutilización de steps
- Validación en múltiples niveles:
  - Código de respuesta  
  - Performance (tiempo de respuesta)  
  - Contrato (JSON Schema)  
  - Datos de negocio  

---

## 📁 Estructura del proyecto

```
src/test/java
 ├── models/           # POJOs (modelado de datos)
 ├── steps/            # Step Definitions
 ├── runners/          # Ejecutores de pruebas
 └── utils/            # Utilidades (logs, filtros, configuración)

src/test/resources
 ├── features/         # Escenarios en Gherkin
 ├── schemas/          # JSON Schemas
 └── log4j2.xml        # Configuración de logs
```

---

## 🧪 Cobertura de pruebas

### 🔐 Autenticación
- Login de usuario  
- Validación de token  
- Validación de schema  

### 🐾 Animales
- Creación de entidades  
- Consulta de datos  
- Validación de estructura  

### 🛒 Productos
- Creación de productos  
- Consulta de productos  
- Validación de contrato JSON  

---

## 🥒 Ejemplo de escenario BDD

```gherkin
Feature: Autenticación

  Background:
    Given Se prepara el request

  @regression @smoke
  Scenario: Login exitoso
    Given Se usa la URL "auth/login"
    And Se envía el siguiente payload:
    """
    {
      "username": "standard_user",
      "password": "secret_blass_academy"
    }
    """
    When Se ejecuta el método "POST"
    Then El status code debe ser 200
    And El tiempo de respuesta debe ser menor a 2000 ms
    And La respuesta cumple con el schema "schemas/login.json"
    And El email del usuario debe ser "standard-user@blass-academy.com"
```

---

## 📊 Reportes con Allure

El proyecto integra **Allure Reports** para visualizar:

- Detalle de ejecución de tests  
- Requests y responses  
- Resultados de cada escenario  

### Ejecutar reportes:

```
mvn allure:serve
```

---

## ▶️ Ejecución de pruebas

```
mvn clean test
```

---

## 🧱 Arquitectura y buenas prácticas

- ✔️ BDD con Cucumber  
- ✔️ Separación de responsabilidades  
- ✔️ Reutilización de configuraciones de request  
- ✔️ Uso de POJOs para manejo de datos  
- ✔️ Contexto compartido entre steps  
- ✔️ Validación de contratos (JSON Schema)  
- ✔️ Logging de requests y responses  
- ✔️ Estructura escalable y mantenible  

---

## ⚙️ Próximas mejoras

- Integración con CI/CD (GitHub Actions / Jenkins)  
- Manejo de múltiples entornos (dev / qa / prod)  
- Ejecución en paralelo  
- Contenerización con Docker  
- Estrategia de manejo de datos de prueba  

---

## 👨‍💻 Autor

**Sebastian Arevalo**

---

## ⭐ Notas

Este proyecto simula un entorno real de QA Automation, aplicando buenas prácticas de testing de APIs, con foco en mantenibilidad, escalabilidad y calidad del software.


