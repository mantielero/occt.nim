{.push header: "Standard_MMgrOpt.hxx".}


# Constructors and methods
proc constructor_Standard_MMgrOpt*(aClear: Standard_Boolean, aMMap: Standard_Boolean, aCellSize: Standard_Size, aNbPages: Standard_Integer, aThreshold: Standard_Size): Standard_MMgrOpt {.constructor,importcpp: "Standard_MMgrOpt(@)".}
  ## Constructor. If aClear is True, the allocated emmory will be
  ## nullified. For description of other parameters, see description of the
  ## class above.

proc Allocate*(this: var Standard_MMgrOpt, aSize: Standard_Size): Standard_Address  {.importcpp: "Allocate".}
  ## Allocate aSize bytes; see class description above

proc Reallocate*(this: var Standard_MMgrOpt, thePtr: Standard_Address, theSize: Standard_Size): Standard_Address  {.importcpp: "Reallocate".}
  ## Reallocate previously allocated aPtr to a new size; new address is
  ## returned. In case that aPtr is null, the function behaves exactly as
  ## Allocate.

proc Free*(this: var Standard_MMgrOpt, thePtr: Standard_Address)  {.importcpp: "Free".}
  ## Free previously allocated block. Note that block can not all blocks
  ## are released to the OS by this method (see class description)

proc Purge*(this: var Standard_MMgrOpt, isDestroyed: Standard_Boolean): Standard_Integer  {.importcpp: "Purge".}
  ## Release medium-sized blocks of memory in free lists to the system.
  ## Returns number of actually freed blocks

proc SetCallBackFunction*(this: var Standard_MMgrOpt, pFunc: Tpcallbackfunc[])  {.importcpp: "SetCallBackFunction".}
  ## Set the callback function. You may pass 0 there to turn off the
  ## callback. The callback function, if set, will be automatically called
  ## from within Allocate and Free methods.

proc Initialize*(this: var Standard_MMgrOpt)  {.importcpp: "Initialize".}
  ## Internal - initialization of buffers

proc AllocMemory*(this: var Standard_MMgrOpt, aSize: var Standard_Size): Standard_Size *  {.importcpp: "AllocMemory".}
  ## Internal - allocation of memory using either malloc or memory mapped
  ## files. The size of the actually allocated block may be greater than
  ## requested one when memory mapping is used, since it is aligned to page
  ## size

proc FreeMemory*(this: var Standard_MMgrOpt, aPtr: Standard_Address, aSize: Standard_Size)  {.importcpp: "FreeMemory".}
  ## Internal - deallocation of memory taken by AllocMemory

proc FreePools*(this: var Standard_MMgrOpt)  {.importcpp: "FreePools".}
  ## Internal - free memory pools allocated for small size blocks

{.pop.} # header: "Standard_MMgrOpt.hxx
