import AppKit
import XCTest

/// Demo-branch only. AppKit caches are suitable for the Files pane, not Metal.
@MainActor
enum PRDemoCapture {
    static func save(_ filename: String, window: NSWindow) async throws {
        window.contentView?.layoutSubtreeIfNeeded()
        try await Task.sleep(nanoseconds: 250_000_000)
        let content = try XCTUnwrap(window.contentView)
        let rep = try XCTUnwrap(content.bitmapImageRepForCachingDisplay(in: content.bounds))
        content.cacheDisplay(in: content.bounds, to: rep)
        let png = try XCTUnwrap(rep.representation(using: .png, properties: [:]))
        let directory = URL(fileURLWithPath: "/tmp/herdr-pr-demo", isDirectory: true)
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
        try png.write(to: directory.appendingPathComponent(filename))
    }
}
