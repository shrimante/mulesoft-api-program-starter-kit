# Adoption Walkthrough

Follow these steps to bootstrap a new project using the API Program Starter Kit.

## Step 1: Clone and Rename
1. Clone this repository or download the source.
2. Rename the root folder to your target API name (e.g., `invoice-process-api`).
3. Update the `<artifactId>` and `<name>` in `pom.xml`.

## Step 2: Global Search and Replace
1. Search for `starter-kit` and replace with your project name in:
   - `pom.xml`
   - `src/main/resources/properties/*.yaml`
   - XML flow names

## Step 3: Configure Shared Dependencies
1. Ensure you have the `mulesoft-logging-correlation-standard` and `mulesoft-error-handling-standard` available in your Maven repository (GitHub repo, Anypoint Exchange, or Local `.m2`).
2. Verify the versions in `pom.xml`.

## Step 4: Set Environment Properties
1. Update `src/main/resources/properties/config-dev.yaml` with your backend hostnames and credentials.
2. If using secure properties, ensure the `mule.key` is provided in your runtime configurations.

## Step 5: Implement Business Logic
1. Define your DataWeave mappings in `src/main/resources/dwl/`.
2. Implement your core logic in `src/main/mule/business-logic.xml`.
3. Reference the logger subflows in the shared-framework-wiring to ensure consistent observability at every stage.

## Step 6: Verify and Test
1. Run `mvn clean install` to ensure all standard dependencies resolve.
2. Run MUnit tests using the provided baseline.
