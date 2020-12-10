{.push header: "Standard_MMgrTBBalloc.hxx".}


# Constructors and methods
proc constructor_Standard_MMgrTBBalloc*(aClear: Standard_Boolean): Standard_MMgrTBBalloc {.constructor,importcpp: "Standard_MMgrTBBalloc(@)".}
  ## Constructor; if aClear is True, the memory will be nullified upon
  ## allocation.

proc Allocate*(this: var Standard_MMgrTBBalloc, aSize: Standard_Size): Standard_Address  {.importcpp: "Allocate".}
  ## Allocate aSize bytes

proc Reallocate*(this: var Standard_MMgrTBBalloc, thePtr: Standard_Address, theSize: Standard_Size): Standard_Address  {.importcpp: "Reallocate".}
  ## Reallocate aPtr to the size aSize. The new pointer is returned.

proc Free*(this: var Standard_MMgrTBBalloc, thePtr: Standard_Address)  {.importcpp: "Free".}
  ## Free allocated memory

{.pop.} # header: "Standard_MMgrTBBalloc.hxx
