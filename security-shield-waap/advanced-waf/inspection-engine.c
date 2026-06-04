// Deep Packet Inspection: Edge Line-Rate Processing
#include <inspection.h>

void inspect_payload(packet_t *pkt) {
    // DPI pipeline for immediate threat signature detection
    if (detect_signature(pkt, SIGNATURE_DATABASE_LATEST)) {
        block_traffic(pkt->source_ip);
    }
}
