{.push header: "Standard.hxx".}


# Constructors and methods
proc ` new`*(this: var Standard, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var Standard, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var Standard, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var Standard, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard, pointer, pointer)  {.importcpp: "` delete`".}

proc Allocate*(this: var Standard, aSize: Standard_Size): Standard_Address  {.importcpp: "Allocate".}
  ## Allocates memory blocks aSize - bytes to allocate

proc Free*(this: var Standard, thePtr: Standard_Address)  {.importcpp: "Free".}
  ## Deallocates memory blocks

proc Reallocate*(this: var Standard, aStorage: Standard_Address, aNewSize: Standard_Size): Standard_Address  {.importcpp: "Reallocate".}
  ## Reallocates memory blocks aStorage - previously allocated memory block
  ## aNewSize - new size in bytes

proc AllocateAligned*(this: var Standard, theSize: Standard_Size, theAlign: Standard_Size): Standard_Address  {.importcpp: "AllocateAligned".}
  ## Allocates aligned memory blocks. Should be used with CPU instructions
  ## which require specific alignment. For example: SSE requires 16 bytes,
  ## AVX requires 32 bytes.

proc FreeAligned*(this: var Standard, thePtrAligned: Standard_Address)  {.importcpp: "FreeAligned".}
  ## Deallocates memory blocks

proc Purge*(this: var Standard): Standard_Integer  {.importcpp: "Purge".}
  ## Deallocates the storage retained on the free list and clears the list.
  ## Returns non-zero if some memory has been actually freed.

{.pop.} # header: "Standard.hxx
