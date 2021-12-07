# Package

version     = "0.0.1"
author      = "mantielero"
description = "OpenCascade nim wrapper"
license     = "BSD 3-Clause"
skipDirs    = @[".vscode", "docs", "examples", "experiments", "tests", "testsresults"]
srcDir      = "src"
backend     = "cpp"

# Dependencies

requires "nim >= 1.4.8"