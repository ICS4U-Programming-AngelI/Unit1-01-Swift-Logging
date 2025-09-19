import Foundation

// Constants
let truckMass: Float = 1100.0
let maxLogMass: Float = 20.0
let quarterLength: Float = 0.25
let halfLength: Float = 0.5
let fullLength: Float = 1.0

print("Welcome to the Logging Company.")
print("Enter one of the following log lengths (in meters): 0.25, 0.5, 1.0")

if let input = readLine() {
    if let logLength = Float(input) {
        if logLength <= 0 {
            print("The log length must be a positive number.")
        } else if logLength != quarterLength &&
                logLength != halfLength &&
                logLength != fullLength {
            print("Invalid log length. Please enter 0.25, 0.5, or 1.0 meters.")
        } else {
            // Calculate number of logs
            let numberOfLogs = truckMass / (maxLogMass * logLength)

            print(String(format: "The number of %.2fm logs that can fit in the " +
                            "truck is: %.0f",
                        logLength, numberOfLogs))
        }
    } else {
        print("Invalid input. Please enter a numeric value (e.g., 0.25, 0.5, " +
            "or 1.0).")
    }
} else {
    print("No input detected.")
}