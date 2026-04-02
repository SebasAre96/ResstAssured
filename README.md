# 🚀 API Automation Framework - REST Assured + Cucumber

## 🚀 Demo

✔️ Framework BDD con Cucumber
✔️ Validación de APIs reales documentadas en Postman
✔️ Automatización con REST Assured
✔️ Validación de contratos (JSON Schema)
✔️ Reportes profesionales con Allure

---

## 🎓 Contexto del proyecto

Este proyecto fue desarrollado como parte del curso de **API Automation de BlassAcademy**, donde se implementa un framework de testing automatizado utilizando una API real documentada en Postman.

---

## 🔗 Documentación de la API

La API utilizada en este proyecto está documentada en:

👉 https://documenter.getpostman.com/view/39136889/2sBXcBohZi

### 🌐 Base URL

```bash
https://api.blassacademy.com
```

El framework está configurado para consumir esta API directamente, sin necesidad de levantar un backend local.

---

## 🎯 Objetivo

Diseñar e implementar un framework de testing que permita:

* Validar endpoints REST de forma automatizada
* Implementar pruebas bajo enfoque BDD
* Verificar contratos mediante JSON Schema
* Generar reportes claros y profesionales
* Simular escenarios reales de testing de APIs

---

## 🧰 Stack tecnológico

* ☕ Java
* 🌐 REST Assured
* 🥒 Cucumber (BDD - Gherkin)
* 🧪 JUnit
* 📦 Maven
* 📊 Allure Reports
* 📄 JSON Schema Validation
* 🪵 Log4j2

---

## 📁 Estructura del proyecto

```bash
src/test/java
 ├── modelos/          # POJOs (Animal, Producto, Usuario)
 ├── steps/            # Step Definitions
 │   ├── AnimalesSteps.java
 │   ├── ProductosSteps.java
 │   ├── loginSteps.java
 │   └── World.java
 │
 ├── runners/
 │   └── RunnerTest.java
 │
 └── utilities/
     ├── Logs.java
     └── RequestFilter.java

src/test/resources
 ├── features/
 │   ├── Animales.feature
 │   ├── Auth.feature
 │   └── Productos.feature
 │
 ├── schemas/
 │   ├── animal.json
 │   ├── login.json
 │   └── productos.json
 │
 └── log4j2.xml
```

---

## 🧪 Cobertura de pruebas

### 🔐 Autenticación

* Login de usuario
* Validación de token
* Validación de schema de respuesta

### 🐾 Animales

* Alta de animales
* Consulta de animales
* Validación de datos y estructura

### 🛒 Productos

* Creación de productos
* Consulta de productos
* Validación de schema JSON

---

## 🥒 Ejemplo de escenario BDD

```gherkin
Feature: Authorization

  Background:
    Given Se prepara el request

  @regression @smoke
  Scenario: Login
    Given Se usa la URL de "auth/login"
    And Se agrega el siguiente payload:
    """
      {
        "username": "standard_user",
        "password": "secret_blass_academy"
      }
    """
    When Se llama al metodo "POST"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms
    And Se hace el schema validation usando el siguiente schema "src/test/resources/schemas/login.json"
    And Se verifica que el email del usuario sea "standard-user@blass-academy.com"
```

---

## 📊 Reportes con Allure

El proyecto integra Allure para visualizar:

* Requests y responses
* Steps ejecutados
* Resultados detallados

### Ejecutar reportes:

```bash
mvn allure:serve
```

---

## ▶️ Ejecución de tests

```bash
mvn clean test
```

---

## 🧱 Buenas prácticas implementadas

* ✔️ BDD (Behavior Driven Development)
* ✔️ Separación de responsabilidades
* ✔️ Uso de POJOs
* ✔️ Contexto compartido (`World`)
* ✔️ Validación de contratos (JSON Schema)
* ✔️ Logging de requests/responses
* ✔️ Framework escalable

---

## 📚 Aprendizajes clave

* Diseño de framework de automatización desde cero
* Integración REST Assured + Cucumber
* Testing de APIs reales basadas en documentación
* Validación mediante JSON Schema
* Implementación de reportes con Allure
* Debugging con logs

---

## 👨‍💻 Autor

**Sebastian Arevalo**

---

## ⭐ Notas finales

Este proyecto fue desarrollado como práctica del curso de **BlassAcademy**, simulando un entorno real de QA Automation mediante el consumo de una API documentada externamente.

