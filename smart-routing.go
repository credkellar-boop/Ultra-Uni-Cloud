// Smart Routing: Pathfinding entry point
package routing

func ComputeOptimalPath(origin LatLong, target ServiceID) Route {
    // Entry point for global traffic optimization
    return Pathfinding.EvaluateLatency(origin, target)
}
