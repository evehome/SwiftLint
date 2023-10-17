import Foundation

extension ProcessInfo {
    var isLikelyXcodeCloudEnvironment: Bool {
        // https://developer.apple.com/documentation/xcode/environment-variable-reference

        return environment.keys.contains("CI_XCODE_CLOUD")
    }
}
