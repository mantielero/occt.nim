when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Author: Roman Lygin, 2012.
##  This file is in the Public Domain and thus can freely be used for any purpose.
##  The author disclaims any rights and liabilities.

when _MSC_VER:
  ## Workaround for false "unreferenced parameter" warning in destroy().
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
  NCollection_StdAllocator*[T] {.importcpp: "NCollection_StdAllocator<\'0>",
                                header: "NCollection_StdAllocator.hxx", bycopy.} = object

  NCollection_StdAllocatorvalue_type*[T] = T
  NCollection_StdAllocatorpointer* = ptr NCollection_StdAllocatorvalue_type
  NCollection_StdAllocatorconst_pointer* = ptr NCollection_StdAllocatorvalue_type
  NCollection_StdAllocatorreference* = var NCollection_StdAllocatorvalue_type
  NCollection_StdAllocatorconst_reference* = NCollection_StdAllocatorvalue_type
  NCollection_StdAllocatorsize_type* = csize_t
  NCollection_StdAllocatordifference_type* = ptrdiff_t
  NCollection_StdAllocatorrebind*[T; U] {.importcpp: "NCollection_StdAllocator<\'0>::rebind<\'1>",
                                        header: "NCollection_StdAllocator.hxx",
                                        bycopy.} = object

  NCollection_StdAllocatorrebindother* = NCollection_StdAllocator[U]

proc constructNCollection_StdAllocator*[T](): NCollection_StdAllocator[T] {.cdecl,
    constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_StdAllocator*[T](
    theAlloc: handle[NCollection_BaseAllocator]): NCollection_StdAllocator[T] {.
    cdecl, constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)",
    dynlib: tkernel.}
proc constructNCollection_StdAllocator*[T; U](Y: NCollection_StdAllocator[U]): NCollection_StdAllocator[
    T] {.cdecl, constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)",
        dynlib: tkernel.}
proc address*[T](this: NCollection_StdAllocator[T];
                x: NCollection_StdAllocatorreference): NCollection_StdAllocatorpointer {.
    noSideEffect, cdecl, importcpp: "address", dynlib: tkernel.}
proc address*[T](this: NCollection_StdAllocator[T];
                x: NCollection_StdAllocatorconst_reference): NCollection_StdAllocatorconst_pointer {.
    noSideEffect, cdecl, importcpp: "address", dynlib: tkernel.}
proc allocate*[T](this: var NCollection_StdAllocator[T];
                 n: NCollection_StdAllocatorsize_type; a3: pointer = 0): NCollection_StdAllocatorpointer {.
    cdecl, importcpp: "allocate", dynlib: tkernel.}
proc deallocate*[T](this: var NCollection_StdAllocator[T];
                   p: NCollection_StdAllocatorpointer;
                   a3: NCollection_StdAllocatorsize_type) {.cdecl,
    importcpp: "deallocate", dynlib: tkernel.}
proc max_size*[T](this: NCollection_StdAllocator[T]): NCollection_StdAllocatorsize_type {.
    noSideEffect, cdecl, importcpp: "max_size", dynlib: tkernel.}
proc construct*[T](this: var NCollection_StdAllocator[T];
                  p: NCollection_StdAllocatorpointer;
                  val: NCollection_StdAllocatorconst_reference) {.cdecl,
    importcpp: "construct", dynlib: tkernel.}
proc destroy*[T](this: var NCollection_StdAllocator[T];
                p: NCollection_StdAllocatorpointer) {.cdecl, importcpp: "destroy",
    dynlib: tkernel.}
proc Allocator*[T](this: NCollection_StdAllocator[T]): handle[
    NCollection_BaseAllocator] {.noSideEffect, cdecl, importcpp: "Allocator",
                                dynlib: tkernel.}
when _MSC_VER:
  discard
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
  NCollection_StdAllocator* {.importcpp: "NCollection_StdAllocator",
                             header: "NCollection_StdAllocator.hxx", bycopy.} = object

  NCollection_StdAllocatorpointer* = pointer
  NCollection_StdAllocatorconst_pointer* = pointer
  NCollection_StdAllocatorvalue_type* = void
  NCollection_StdAllocatorrebind*[U] {.importcpp: "NCollection_StdAllocator::rebind<\'0>",
                                      header: "NCollection_StdAllocator.hxx",
                                      bycopy.} = object

  NCollection_StdAllocatorrebindother* = NCollection_StdAllocator[U]

proc constructNCollection_StdAllocator*(): NCollection_StdAllocator {.cdecl,
    constructor, importcpp: "NCollection_StdAllocator(@)", dynlib: tkernel.}
proc constructNCollection_StdAllocator*(theAlloc: handle[NCollection_BaseAllocator]): NCollection_StdAllocator {.
    cdecl, constructor, importcpp: "NCollection_StdAllocator(@)", dynlib: tkernel.}
proc constructNCollection_StdAllocator*(X: NCollection_StdAllocator): NCollection_StdAllocator {.
    cdecl, constructor, importcpp: "NCollection_StdAllocator(@)", dynlib: tkernel.}
proc Allocator*(this: NCollection_StdAllocator): handle[NCollection_BaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}