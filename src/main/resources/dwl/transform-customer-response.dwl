%dw 2.0
output application/json
---
{
    status: "success",
    processedAt: now(),
    correlationId: correlationId,
    customerData: payload map (customer) -> {
        id: customer.id,
        fullName: customer.firstName ++ " " ++ customer.lastName,
        contact: customer.email,
        source: "SAP_ECC"
    }
}
