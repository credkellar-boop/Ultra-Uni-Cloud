// Anycast Scrubbing: Volumetric Layer 3/4 Defense
package ddos

func ScrubTraffic(packet Packet) Action {
    // High-capacity absorption for massive attack waves
    if IsVolumetricAttack(packet) {
        return DropSilently
    }
    return Forward
}
