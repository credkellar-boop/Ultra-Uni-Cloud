/**
 * Ultra-Uni-Cloud WAAP Deep Packet Inspection Engine
 * Original Architecture by Darion Kellar
 * * High-performance C-based pattern matching pipeline to intercept
 * malicious HTTP payloads at the global network edge.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_PAYLOAD_SIZE 2048
#define STATUS_CLEAN 0
#define STATUS_BLOCKED 1

// Structure defining a compiled WAF rule signature
typedef struct {
    int id;
    char rule_name[64];
    char pattern[128];
    char action[16]; // BLOCK, CHALLENGE, ALLOW
} WAFRule;

// Mock rule registry loaded from owasp-rules.json configuration
WAFRule rule_database[2] = {
    {4001, "Block-SQL-Injection-Patterns", "UNION SELECT", "BLOCK"},
    {4002, "Block-Cross-Site-Scripting-XSS", "<script>", "CHALLENGE"}
};

/**
 * Inspects a raw payload string against the active rule database.
 * Returns STATUS_BLOCKED (1) if an exploit matches, or STATUS_CLEAN (0) if verified.
 */
int inspect_payload(const char *client_ip, const char *payload) {
    printf("[WAAP-Core] Inspecting traffic payload from IP: %s\n", client_ip);

    for (int i = 0; i < 2; i++) {
        // High-velocity substring matching logic
        if (strstr(payload, rule_database[i].pattern) != NULL) {
            printf("\n[⚠️ ALERT] Rule Match Triggered!\n");
            printf(" | Rule ID: %d\n", rule_database[i].id);
            printf(" | Violation: %s\n", rule_database[i].rule_name);
            printf(" | Action Enforced: %s\n\n", rule_database[i].action);
            
            return STATUS_BLOCKED;
        }
    }
    return STATUS_CLEAN;
}

int main() {
    printf("--- Ultra-Uni-Cloud WAAP Edge Engine Online ---\n\n");

    // Test Case 1: Standard, clean ingress traffic
    const char *ip_1 = "192.168.1.50";
    const char *payload_1 = "GET /v1/status?token=a8f9b2c3d4e5 HTTP/1.1\r\nHost: api.ultra-uni-cloud.net\r\n\r\n";
    
    int result_1 = inspect_payload(ip_1, payload_1);
    printf("Result for Traffic 1: %s\n\n", (result_1 == STATUS_CLEAN) ? "PASS (Clean Ingress)" : "DROP (Malicious Request)");

    // Test Case 2: Exploit vector payload trying to dump credentials
    const char *ip_2 = "203.0.113.195";
    const char *payload_2 = "POST /login HTTP/1.1\r\nUser-Agent: Mozilla/5.0\r\n\r\nusername=admin' UNION SELECT password FROM users--";

    int result_2 = inspect_payload(ip_2, payload_2);
    printf("Result for Traffic 2: %s\n", (result_2 == STATUS_CLEAN) ? "PASS (Clean Ingress)" : "DROP (Malicious Request)");

    return 0;
}
