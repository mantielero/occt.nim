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

type
  NCollectionStdAllocator*[T] {.importcpp: "NCollection_StdAllocator<\'0>",
                               header: "NCollection_StdAllocator.hxx", bycopy.} = object

  NCollectionStdAllocatorvalueType*[T] = T
  NCollectionStdAllocatorpointer* = ptr NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorconstPointer* = ptr NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorreference* = var NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorconstReference* = NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorsizeType* = csize_t
  NCollectionStdAllocatordifferenceType* = PtrdiffT
  NCollectionStdAllocatorrebind*[T; U] {.importcpp: "NCollection_StdAllocator<\'0>::rebind<\'1>",
                                       header: "NCollection_StdAllocator.hxx",
                                       bycopy.} = object

  NCollectionStdAllocatorrebindother* = NCollectionStdAllocator[U]

proc constructNCollectionStdAllocator*[T](): NCollectionStdAllocator[T] {.cdecl,
    constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionStdAllocator*[T](
    theAlloc: Handle[NCollectionBaseAllocator]): NCollectionStdAllocator[T] {.
    cdecl, constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)",
    dynlib: tkernel.}
proc constructNCollectionStdAllocator*[T; U](y: NCollectionStdAllocator[U]): NCollectionStdAllocator[
    T] {.cdecl, constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)",
        dynlib: tkernel.}
proc address*[T](this: NCollectionStdAllocator[T];
                x: NCollectionStdAllocatorreference): NCollectionStdAllocatorpointer {.
    noSideEffect, cdecl, importcpp: "address", dynlib: tkernel.}
proc address*[T](this: NCollectionStdAllocator[T];
                x: NCollectionStdAllocatorconstReference): NCollectionStdAllocatorconstPointer {.
    noSideEffect, cdecl, importcpp: "address", dynlib: tkernel.}
proc allocate*[T](this: var NCollectionStdAllocator[T];
                 n: NCollectionStdAllocatorsizeType; a3: pointer = 0): NCollectionStdAllocatorpointer {.
    cdecl, importcpp: "allocate", dynlib: tkernel.}
proc deallocate*[T](this: var NCollectionStdAllocator[T];
                   p: NCollectionStdAllocatorpointer;
                   a3: NCollectionStdAllocatorsizeType) {.cdecl,
    importcpp: "deallocate", dynlib: tkernel.}
proc maxSize*[T](this: NCollectionStdAllocator[T]): NCollectionStdAllocatorsizeType {.
    noSideEffect, cdecl, importcpp: "max_size", dynlib: tkernel.}
proc construct*[T](this: var NCollectionStdAllocator[T];
                  p: NCollectionStdAllocatorpointer;
                  val: NCollectionStdAllocatorconstReference) {.cdecl,
    importcpp: "construct", dynlib: tkernel.}
proc destroy*[T](this: var NCollectionStdAllocator[T];
                p: NCollectionStdAllocatorpointer) {.cdecl, importcpp: "destroy",
    dynlib: tkernel.}
proc allocator*[T](this: NCollectionStdAllocator[T]): Handle[
    NCollectionBaseAllocator] {.noSideEffect, cdecl, importcpp: "Allocator",
                               dynlib: tkernel.}
#when msc_Ver:
#  discard
## ! Implements specialization NCollection_StdAllocator<void>.
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

type
  NCollectionStdAllocator* {.importcpp: "NCollection_StdAllocator",
                            header: "NCollection_StdAllocator.hxx", bycopy.} = object

  NCollectionStdAllocatorpointer* = pointer
  NCollectionStdAllocatorconstPointer* = pointer
  NCollectionStdAllocatorvalueType* = void
  NCollectionStdAllocatorrebind*[U] {.importcpp: "NCollection_StdAllocator::rebind<\'0>",
                                     header: "NCollection_StdAllocator.hxx",
                                     bycopy.} = object

  NCollectionStdAllocatorrebindother* = NCollectionStdAllocator[U]

proc constructNCollectionStdAllocator*(): NCollectionStdAllocator {.cdecl,
    constructor, importcpp: "NCollection_StdAllocator(@)", dynlib: tkernel.}
proc constructNCollectionStdAllocator*(theAlloc: Handle[NCollectionBaseAllocator]): NCollectionStdAllocator {.
    cdecl, constructor, importcpp: "NCollection_StdAllocator(@)", dynlib: tkernel.}
proc constructNCollectionStdAllocator*(x: NCollectionStdAllocator): NCollectionStdAllocator {.
    cdecl, constructor, importcpp: "NCollection_StdAllocator(@)", dynlib: tkernel.}
proc allocator*(this: NCollectionStdAllocator): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}