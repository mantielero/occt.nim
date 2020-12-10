{.push header: "Standard_ArrayStreamBuffer.hxx".}


# Constructors and methods
proc constructor_Standard_ArrayStreamBuffer*(theBegin: cstring, theSize: cint): Standard_ArrayStreamBuffer {.constructor,importcpp: "Standard_ArrayStreamBuffer(@)".}
  ## Main constructor. Passed pointer is stored as is (memory is NOT copied
  ## nor released with destructor).

proc constructor_Standard_ArrayStreamBuffer*(Standard_ArrayStreamBuffer): Standard_ArrayStreamBuffer {.constructor,importcpp: "Standard_ArrayStreamBuffer(@)".}

proc Init*(this: var Standard_ArrayStreamBuffer, theBegin: cstring, theSize: cint)  {.importcpp: "Init".}
  ## (Re)-initialize the stream. Passed pointer is stored as is (memory is
  ## NOT copied nor released with destructor).

proc underflow*(this: var Standard_ArrayStreamBuffer): cint  {.importcpp: "underflow".}
  ## Get character on underflow. Virtual function called by other member
  ## functions to get the current character in the controlled input
  ## sequence without changing the current position.

proc uflow*(this: var Standard_ArrayStreamBuffer): cint  {.importcpp: "uflow".}
  ## Get character on underflow and advance position. Virtual function
  ## called by other member functions to get the current character in the
  ## controlled input sequence and then advance the position indicator to
  ## the next character.

proc pbackfail*(this: var Standard_ArrayStreamBuffer): cint  {.importcpp: "pbackfail".}
  ## Put character back in the case of backup underflow. Virtual function
  ## called by other member functions to put a character back into the
  ## controlled input sequence and decrease the position indicator.

proc showmanyc*(this: var Standard_ArrayStreamBuffer): Streamsize[]  {.importcpp: "showmanyc".}
  ## Get number of characters available. Virtual function (to be read
  ## s-how-many-c) called by other member functions to get an estimate on
  ## the number of characters available in the associated input sequence.

proc seekoff*(this: var Standard_ArrayStreamBuffer): cint  {.importcpp: "seekoff".}
  ## Seek to specified position.

proc seekpos*(this: var Standard_ArrayStreamBuffer): cint  {.importcpp: "seekpos".}
  ## Change to specified position, according to mode.

proc xsgetn*(this: var Standard_ArrayStreamBuffer, thePtr: cstring, theCount: Streamsize[]): Streamsize[]  {.importcpp: "xsgetn".}
  ## Read a bunch of bytes at once.

proc `=`*(this: var Standard_ArrayStreamBuffer, Standard_ArrayStreamBuffer): Standard_ArrayStreamBuffer  {.importcpp: "`=`".}

{.pop.} # header: "Standard_ArrayStreamBuffer.hxx
