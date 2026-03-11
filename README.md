# MuleSoft API Program Starter Kit

A comprehensive production-ready starter kit for Mule 4 API programs. This accelerator provides a standardized foundation, integrating best practices for project structure, configuration, observability, and error handling.

## 1. Problem this solves
New Mule 4 projects often suffer from "bootstrap chaos"—each team creates their own project structure, re-invents property loading, and inconsistently applies logging and error handling. This leading to fragmented delivery, high maintenance overhead, and poor operational visibility.

## 2. Why this starter kit?
This kit is not just a template; it is a **governed foundation** that matures your API delivery by:
- Embedding enterprise engineering standards from day one.
- **Mandatory Integration**: Concretely uses the [Logging & Correlation Standard](https://github.com/shrimante/mulesoft-logging-correlation-standard) and [Error Handling Standard](https://github.com/shrimante/mulesoft-error-handling-standard).
- Reducing "Time to First Hello World" from hours to minutes.
- Ensuring compliance with System, Process, and Experience layer patterns.

## 3. What is included?
- **Opinionated Project Skeleton**: Clean separation of concerns.
- **Global Configuration**: Pre-wired HTTP, property Loading, and secure vaulting.
- **Integrated Accelerators**: Out-of-the-box logging, correlation, and canonical error responses.
- **Template Samples**: Realistic Experience/Process/System API flow patterns.
- **MUnit Baseline**: Standardized unit and integration test suite.
- **Governance Docs**: Comprehensive guides for layering, naming, and delivery.

## 4. Starter Kit Philosophy
1. **Consistency over Novelty**: Follow the enterprise standard, don't re-invent it.
2. **Observability First**: No flow should exist without correlation-aware logging.
3. **Resilience Always**: Every call must use the canonical error framework.
4. **Secure by Default**: Properties and secrets are vaulted and environment-aware.

## 5. Project Structure Walkthrough
See [project-structure.md](docs/project-structure.md).

## 6. How to create a new project from this template?
See [adoption-walkthrough.md](docs/adoption-walkthrough.md).

## 7. How Logging & Error Handling are wired in
This project includes the shared accelerators as mandatory dependencies in the `pom.xml`. 
- **Logging**: All flows use the `logging-subflow` at entry/exit points.
- **Error Handling**: The `global-error-handler.xml` is imported and used as the default error strategy.

## 8. Layer Guidance
- **System**: Connectivity to backends.
- **Process**: Orchestration and aggregation.
- **Experience**: UI/Mobile/Consumer tailing.
See [layer-guidance.md](docs/layer-guidance.md).

## 9. Delivery & Governance
Includes checklists for **Definition of Done** and **Pull Request Reviews**.
See [delivery-governance.md](docs/delivery-governance.md).
