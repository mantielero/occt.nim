import std/[strformat]

proc getVersionMajor(): cint {.cdecl,
    importcpp: "OCC_VERSION_MAJOR@", header: "Standard_Version.hxx".}

proc getVersionMinor(): cint {.cdecl,
    importcpp: "OCC_VERSION_MINOR@", header: "Standard_Version.hxx".}

proc getVersionMaintenance(): cint {.cdecl,
    importcpp: "OCC_VERSION_MAINTENANCE@", header: "Standard_Version.hxx".}


proc getVersion*():tuple[major,minor,maintenance:int] =
  ## provides the version of the library being used
  var major, minor, maintenance:int
  major = getVersionMajor()
  minor = getVersionMinor()
  maintenance = getVersionMaintenance()
  return (major, minor, maintenance)

proc `$`*(version: tuple[major,minor,maintenance:int] ):string =
  ## pretty printing version
  var version = getVersion()
  return &"{version.major}.{version.minor}.{version.maintenance}"
