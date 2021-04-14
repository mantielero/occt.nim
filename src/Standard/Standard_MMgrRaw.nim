{.push header: "Standard_MMgrRaw.hxx".}


# Constructors and methods
proc constructor_Standard_MMgrRaw*(aClear: Standard_Boolean): Standard_MMgrRaw {.constructor,importcpp: "Standard_MMgrRaw(@)".}
  ## Constructor; if aClear is True, the memory will be nullified upon
  ## allocation.

proc Allocate*(this: var Standard_MMgrRaw, aSize: Standard_Size): Standard_Address  {.importcpp: "Allocate".}
  ## Allocate aSize bytes

proc Reallocate*(this: var Standard_MMgrRaw, thePtr: Standard_Address, theSize: Standard_Size): Standard_Address  {.importcpp: "Reallocate".}
  ## Reallocate aPtr to the size aSize. The new pointer is returned.

proc Free*(this: var Standard_MMgrRaw, thePtr: Standard_Address)  {.importcpp: "Free".}
  ## Free allocated memory. The pointer is nullified.

{.pop.} # header: "Standard_MMgrRaw.hxx
