{.push header: "Standard.hxx".}


# Constructors and methods
# proc operator new*(this: Standard, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: Standard, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: Standard, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: Standard, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: Standard, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: Standard, void *, void *)  {.importcpp: "operator delete".}
proc Allocate*(this: Standard, aSize: Standard_Size): Standard_Address  {.importcpp: "Allocate".}
proc Free*(this: Standard, thePtr: Standard_Address)  {.importcpp: "Free".}
proc Reallocate*(this: Standard, aStorage: Standard_Address, aNewSize: Standard_Size): Standard_Address  {.importcpp: "Reallocate".}
proc AllocateAligned*(this: Standard, theSize: Standard_Size, theAlign: Standard_Size): Standard_Address  {.importcpp: "AllocateAligned".}
proc FreeAligned*(this: Standard, thePtrAligned: Standard_Address)  {.importcpp: "FreeAligned".}
proc Purge*(this: Standard): Standard_Integer  {.importcpp: "Purge".}
{.pop.} # header: "Standard.hxx
