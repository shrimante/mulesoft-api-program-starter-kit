# Delivery Governance & Definition of Done

To ensure consistent quality across all API delivery squads, every project must adhere to this Definition of Done (DoD).

## Definition of Done (DoD) Checklist
- [ ] **Standard Logging**: The `mulesoft-logging-correlation-standard` is integrated and used for all lifecycle events.
- [ ] **Canonical Error Handling**: The `mulesoft-error-handler` is imported and handles all 4xx/5xx responses.
- [ ] **Correlation Traceability**: Every outbound call passes the `x-correlation-id` header.
- [ ] **Config Externalization**: No hardcoded hostnames or credentials; all reside in properties files.
- [ ] **Secure Vaulting**: Credentials in property files are encrypted using the Secure Properties Tool/extension.
- [ ] **MUnit Coverage**: Minimum 80% line coverage (unless otherwise specified by Chapter Lead).
- [ ] **Proper Layering**: Logic is placed in the correct EAPI/PAPI/SAPI layer per guidance.
- [ ] **Documentation**: `README.md` is updated with specific project context and design decisions.

## Pull Request Review Standards
- No business logic in the main flow.
- DataWeave scripts are kept in external `.dwl` files.
- Meaningful flow names (not `Flow1`).
- No hardcoded timeouts (use property placeholders).
