import Danger
import DangerXCodeSummary

let danger = Danger()

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")

let summary = XCodeSummary(filePath: "result/json")
summary.report()
