# 🚀 API Automation Framework - REST Assured + Cucumber

## 🚀 Demo

✔️ Framework BDD con Cucumber
✔️ Validación de APIs reales documentadas en Postman
✔️ Automatización con REST Assured
✔️ Validación de contratos (JSON Schema)
✔️ Reportes profesionales con Allure

---

## 🔗 Documentación de la API

La API utilizada en este proyecto está documentada en:

👉 https://documenter.getpostman.com/view/39136889/2sBXcBohZi

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
* Validación de contratos JSON

---

## 🥒 Ejemplo de escenario BDD

```gherkin
Feature: Autenticación

  Scenario: Login exitoso
    Given que el usuario tiene credenciales válidas
    When realiza una petición de login
    Then el status code debe ser 200
    And la respuesta cumple con el schema "login.json"
```

---

## ⚙️ Ejemplo de implementación técnica

```java
given()
    .filter(new RequestFilter())
    .header("Content-Type", "application/json")
    .body(request)
.when()
    .post("/auth/login")
.then()
    .statusCode(200);
```

---

## 📊 Reportes con Allure

El proyecto integra Allure para visualizar:

* Requests y responses
* Steps ejecutados
* Resultados detallados

### Ejecutar reportes:

```bash
allure serve allure-results
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
* Testing de APIs reales
* Validación mediante JSON Schema
* Implementación de reportes con Allure
* Debugging con logs

---

## 👨‍💻 Autor

**Sebastian Arevalo**

---

## ⭐ Notas finales

Este proyecto simula un entorno real de QA Automation, aplicando prácticas utilizadas en testing de APIs en entornos profesionales.
