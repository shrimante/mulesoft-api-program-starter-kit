# Layer Guidance

A core requirement of the MuleSoft API-led architecture is the strict separation of responsibilities between System, Process, and Experience layers.

## Experience APIs (EAPI)
- **Responsibility**: Designed for a specific consumer (Mobile App, Web Portal, B2B Partner).
- **Logic**: Header transformations, consumer-specific data formats, pagination, and simplified error messages.
- **Do Not**: Perform complex business logic or call external systems directly (unless it's a simple passthrough).

## Process APIs (PAPI)
- **Responsibility**: Business logic, orchestration, and aggregation across multiple systems.
- **Logic**: Orchestration loops, complex DataWeave mapping between object types, transactional state management.
- **Do Not**: Directly talk to database drivers or specific SOAP/Rest backend dialects without an abstraction layer.

## System APIs (SAPI)
- **Responsibility**: Connectivity to specific backend systems (SAP, Salesforce, Database, Legacy Mainframe).
- **Logic**: CRUD operations, caching of backend responses, mapping backend-specific error codes to a cleaner format.
- **Do Not**: Orchestrate across different systems or apply consumer-specific logic.

## Shared Observability & Error Handling
Regardless of the layer, every API built using this starter kit **must**:
1. Log `flow-start` and `flow-end` using the shared logging accelerator.
2. Propagate the `correlationId` to the next layer down.
3. Use the canonical error model to ensure the caller (whether another API or a UI) receives a consistent response structure.
