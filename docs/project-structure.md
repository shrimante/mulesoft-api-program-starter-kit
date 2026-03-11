# Project Structure

The Starter Kit follows a strict separation of concerns to ensure maintainability and scalability.

## Root Structure
- `src/main/mule/`: All Mule configuration XMLs.
- `src/main/resources/`: Configuration properties, DataWeave scripts, and schemas.
- `src/test/munit/`: Automated unit and integration tests.
- `docs/`: In-depth documentation for the project.
- `examples/`: Sample payloads and usage scenarios.
- `assets/`: Images, diagrams, or static resources.

## Mule Configuration (`src/main/mule/`)
- `global-configs.xml`: Defines shared connectors (HTTP, DB, etc.) and global elements.
- `api-main.xml`: Entry point of the API, containing the HTTP Listener and main routing.
- `business-logic.xml`: Contains the reusable subflows and orchestration logic.
- `shared-framework-wiring.xml`: Handles the imports and error strategy registration for the Logging and Error Handling accelerators.

## Resources (`src/main/resources/`)
- `properties/`: Environment-specific properties (e.g., `config-dev.yaml`, `config-prod.yaml`).
- `dwl/`: Reusable DataWeave mapping files (`.dwl`). Keeping transforms separate from XML flows improves readability and allows unit testing of DataWeave.

## Tests (`src/test/munit/`)
- Tests are organized by the component they validate.
- Naming convention: `[mule-file-name]-test-suite.xml`.
