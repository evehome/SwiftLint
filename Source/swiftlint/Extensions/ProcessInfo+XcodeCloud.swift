import Foundation

extension ProcessInfo {
    var isLikelyXcodeCloudEnvironment: Bool {
        // https://developer.apple.com/documentation/xcode/environment-variable-reference

        // try and do the debug dump
        let encoder = JSONEncoder()
        if let payload = try? encoder.encode(environment),
           let strPayload = String(data: payload, encoding: .utf8) {
            print("### ENVIRONMENT: \(strPayload)")
        } else {
            print("### ENVIRONMENT: n/a")
        }

        return environment.keys.contains("CI_XCODE_CLOUD")
    }
}
