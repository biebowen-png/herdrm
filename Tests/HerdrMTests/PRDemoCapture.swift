import AppKit
import XCTest

/// Demo-branch only: capture the compositor's rendered test-owned window.
/// NSView.cacheDisplay does not reliably contain a Metal terminal frame.
@MainActor
enum PRDemoCapture {
    static func save(_ filename: String, window: NSWindow) async throws {
        window.contentView?.layoutSubtreeIfNeeded()
        window.orderFrontRegardless()
        window.displayIfNeeded()
        try await Task.sleep(nanoseconds: 250_000_000)
        let directory = URL(fileURLWithPath: "/tmp/herdr-pr-demo", isDirectory: true)
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
        let output = directory.appendingPathComponent(filename)
        let capture = Process()
        capture.executableURL = URL(fileURLWithPath: "/usr/sbin/screencapture")
        capture.arguments = ["-x", "-o", "-l", String(window.windowNumber), output.path]
        try capture.run()
        capture.waitUntilExit()
        XCTAssertEqual(capture.terminationStatus, 0, "Capture only this synthetic test window")
        XCTAssertTrue(FileManager.default.fileExists(atPath: output.path))
    }
}
