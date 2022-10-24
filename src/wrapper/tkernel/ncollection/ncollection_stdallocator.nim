import ncollection_types

##  Author: Roman Lygin, 2012.
##  This file is in the Public Domain and thus can freely be used for any purpose.
##  The author disclaims any rights and liabilities.

#when msc_Ver:
#  ## Workaround for false "unreferenced parameter" warning in destroy().
## ! Implements allocator requirements as defined in ISO C++ Standard 2003, section 20.1.5.
## ! The allocator uses instance of the NCollection_BaseAllocator (sub)class for memory
##   allocation/deallocation. The allocator can be used with standard
##   containers (std::vector, std::map, etc) to take advantage of NCollection_IncAllocator
##   which implements memory region concept, and hence to increase performance in specific
##   cases.
##
##   The underlying NCollection_BaseAllocator instance can be received using the Allocator()
##   method.
##
##   Example of use:
##   \code
##   Handle(NCollection_IncAllocator) anIncAlloc = new NCollection_IncAllocator();
##   NCollection_StdAllocator<TopoDS_Shape> aSAlloc (anIncAlloc);
##   std::list<TopoDS_Shape, NCollection_StdAllocator<TopoDS_Shape> > aL (aSAlloc);
##   TopoDS_Solid aSolid = BRepPrimAPI_MakeBox (10., 20., 30.);
##   aL.push_back (aSolid);
##   \endcode
##




proc newNCollectionStdAllocator*[T](theAlloc: Handle[NCollectionBaseAllocator]): NCollectionStdAllocator[
    T] {.cdecl, constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)",
        header: "NCollection_StdAllocator.hxx".}
proc newNCollectionStdAllocator*[T; U](y: NCollectionStdAllocator[U]): NCollectionStdAllocator[
    T] {.cdecl, constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)",
        header: "NCollection_StdAllocator.hxx".}
proc address*[T](this: NCollectionStdAllocator[T];
                x: NCollectionStdAllocatorreference): NCollectionStdAllocatorpointer {.
    noSideEffect, cdecl, importcpp: "address", header: "NCollection_StdAllocator.hxx".}
proc address*[T](this: NCollectionStdAllocator[T];
                x: NCollectionStdAllocatorconstReference): NCollectionStdAllocatorconstPointer {.
    noSideEffect, cdecl, importcpp: "address", header: "NCollection_StdAllocator.hxx".}
proc allocate*[T](this: var NCollectionStdAllocator[T];
                 n: NCollectionStdAllocatorsizeType; a3: pointer = cast[pointer](0)): NCollectionStdAllocatorpointer {.
    cdecl, importcpp: "allocate", header: "NCollection_StdAllocator.hxx".}
proc deallocate*[T](this: var NCollectionStdAllocator[T];
                   p: NCollectionStdAllocatorpointer;
                   a3: NCollectionStdAllocatorsizeType) {.cdecl,
    importcpp: "deallocate", header: "NCollection_StdAllocator.hxx".}
proc maxSize*[T](this: NCollectionStdAllocator[T]): NCollectionStdAllocatorsizeType {.
    noSideEffect, cdecl, importcpp: "max_size", header: "NCollection_StdAllocator.hxx".}
proc new*[T](this: var NCollectionStdAllocator[T];
            p: NCollectionStdAllocatorpointer;
            val: NCollectionStdAllocatorconstReference) {.cdecl,
    importcpp: "construct", header: "NCollection_StdAllocator.hxx".}
proc destroy*[T](this: var NCollectionStdAllocator[T];
                p: NCollectionStdAllocatorpointer) {.cdecl, importcpp: "destroy",
    header: "NCollection_StdAllocator.hxx".}
proc allocator*[T](this: NCollectionStdAllocator[T]): Handle[
    NCollectionBaseAllocator] {.noSideEffect, cdecl, importcpp: "Allocator",
                               header: "NCollection_StdAllocator.hxx".}
#when msc_Ver:
#  discard
### ! Implements specialization NCollection_StdAllocator<void>.
## ! Specialization is of low value and should normally be avoided in favor of a typed specialization.
##
##   Example of use:
##   \code
##   Handle(NCollection_IncAllocator) anIncAlloc = new NCollection_IncAllocator();
##   NCollection_StdAllocator<void> aVAlloc (anIncAlloc);
##   std::vector<double, NCollection_StdAllocator<double> > aV3 (aVAlloc);
##   aV3.push_back (10.);
##   \endcode
##

#type
#  NCollectionStdAllocator* {.importcpp: "NCollection_StdAllocator",
#                            header: "NCollection_StdAllocator.hxx", bycopy.} = object
#
#  NCollectionStdAllocatorpointer* = pointer
#  NCollectionStdAllocatorconstPointer* = pointer
#  NCollectionStdAllocatorvalueType* = void
#  NCollectionStdAllocatorrebind*[U] {.importcpp: "NCollection_StdAllocator::rebind<\'0>",
#                                     header: "NCollection_StdAllocator.hxx",
#                                     bycopy.} = object
#
#  NCollectionStdAllocatorrebindother* = NCollectionStdAllocator[U]
#
#proc newNCollectionStdAllocator*(): NCollectionStdAllocator {.cdecl, constructor,
#    importcpp: "NCollection_StdAllocator(@)", header: "NCollection_StdAllocator.hxx".}
#proc newNCollectionStdAllocator*(theAlloc: Handle[NCollectionBaseAllocator]): NCollectionStdAllocator {.
#    cdecl, constructor, importcpp: "NCollection_StdAllocator(@)", header: "NCollection_StdAllocator.hxx".}
#proc newNCollectionStdAllocator*(x: NCollectionStdAllocator): NCollectionStdAllocator {.
#    cdecl, constructor, importcpp: "NCollection_StdAllocator(@)", header: "NCollection_StdAllocator.hxx".}
#proc allocator*(this: NCollectionStdAllocator): Handle[NCollectionBaseAllocator] {.
#    noSideEffect, cdecl, importcpp: "Allocator", header: "NCollection_StdAllocator.hxx".}
