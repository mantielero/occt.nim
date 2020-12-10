{.push header: "Standard_MMgrRoot.hxx".}


# Constructors and methods
proc Allocate*(this: var Standard_MMgrRoot, theSize: Standard_Size): Standard_Address  {.importcpp: "Allocate".}
  ## Allocate specified number of bytes. The actually allocated space
  ## should be rounded up to double word size (4 bytes), as this is
  ## expected by implementation of some classes in OCC (e.g.
  ## TCollection_AsciiString)

proc Reallocate*(this: var Standard_MMgrRoot, thePtr: Standard_Address, theSize: Standard_Size): Standard_Address  {.importcpp: "Reallocate".}
  ## Reallocate previously allocated memory to contain at least theSize
  ## bytes. In case of success, new pointer is returned.

proc Free*(this: var Standard_MMgrRoot, thePtr: Standard_Address)  {.importcpp: "Free".}
  ## Frees previously allocated memory at specified address.

proc Purge*(this: var Standard_MMgrRoot, isDestroyed: Standard_Boolean): Standard_Integer  {.importcpp: "Purge".}
  ## Purge internally cached unused memory blocks (if any) by releasing
  ## them to the operating system. Must return non-zero if some memory has
  ## been actually released, or zero otherwise.

{.pop.} # header: "Standard_MMgrRoot.hxx
