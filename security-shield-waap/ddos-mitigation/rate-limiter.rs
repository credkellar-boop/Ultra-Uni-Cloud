// Sliding-window Rate Limiter: Threshold Enforcement
pub fn enforce_limits(request: Request) -> Result<(), RateLimitError> {
    // Recursive thresholding per source-IP/fingerprint
    let window = SlidingWindow::new(Duration::from_secs(1));
    if window.exceeds_threshold(request.source) {
        return Err(RateLimitError::Blocked);
    }
    Ok(())
}
