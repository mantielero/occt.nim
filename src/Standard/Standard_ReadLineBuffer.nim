{.push header: "Standard_ReadLineBuffer.hxx".}


# Constructors and methods
proc constructor_Standard_ReadLineBuffer*(theMaxBufferSizeBytes: cint): Standard_ReadLineBuffer {.constructor,importcpp: "Standard_ReadLineBuffer(@)".}
  ## Constructor with initialization.

proc Clear*(this: var Standard_ReadLineBuffer)  {.importcpp: "Clear".}
  ## Clear buffer and cached values.

proc readStream*(this: var Standard_ReadLineBuffer, theStream: Istream[], theLen: cint, theReadLen: cint): bool  {.importcpp: "readStream".}
  ## Read from stl stream.

proc readStream*(this: var Standard_ReadLineBuffer, theStream: FILE *, theLen: cint, theReadLen: cint): bool  {.importcpp: "readStream".}
  ## Read from FILE stream.

{.pop.} # header: "Standard_ReadLineBuffer.hxx
