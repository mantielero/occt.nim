{.push header: "Standard_ReadBuffer.hxx".}


# Constructors and methods
proc constructor_Standard_ReadBuffer*(theDataLen: int64_t, theChunkLen: cint): Standard_ReadBuffer {.constructor,importcpp: "Standard_ReadBuffer(@)".}
  ## Constructor with initialization.

proc Init*(this: var Standard_ReadBuffer, theDataLen: int64_t, theChunkLen: cint)  {.importcpp: "Init".}
  ## Initialize the buffer.

proc IsDone*(this: Standard_ReadBuffer): bool  {.importcpp: "IsDone".}
  ## Return TRUE if amount of read bytes is equal to requested length of
  ## entire data.

proc readStream*(this: var Standard_ReadBuffer, theStream: Istream[], theLen: cint): bool  {.importcpp: "readStream".}
  ## Read from stl stream.

proc readStream*(this: var Standard_ReadBuffer, theStream: FILE *, theLen: cint): bool  {.importcpp: "readStream".}
  ## Read from FILE stream.

{.pop.} # header: "Standard_ReadBuffer.hxx
