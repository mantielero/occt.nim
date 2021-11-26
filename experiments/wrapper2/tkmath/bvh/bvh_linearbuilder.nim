##  Created on: 2014-09-11
##  Created by: Danila ULYANOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! Performs fast BVH construction using LBVH building approach.
## ! Algorithm uses spatial Morton codes to reduce the BVH construction
## ! problem to a sorting problem (radix sort -- O(N) complexity). This
## ! Linear Bounding Volume Hierarchy (LBVH) builder produces BVH trees
## ! of lower quality compared to SAH-based BVH builders but it is over
## ! an order of magnitude faster (up to 3M triangles per second).
## !
## ! For more details see:
## ! C. Lauterbach, M. Garland, S. Sengupta, D. Luebke, and D. Manocha.
## ! Fast BVH construction on GPUs. Eurographics, 2009.

type
  BVH_LinearBuilder*[T; N: static[cint]] {.importcpp: "BVH_LinearBuilder<\'0,\'1>",
                                        header: "BVH_LinearBuilder.hxx", bycopy.} = object of BVH_Builder[
      T, N]                    ## ! Creates binned LBVH builder.
          ## ! Emits hierarchy from sorted Morton codes.

  BVH_LinearBuilderBVH_VecNt*[T; N] = Type[T, N]

proc newBVH_LinearBuilder*[T; N: static[cint]](
    theLeafNodeSize: cint = bVH_ConstantsLeafNodeSizeDefault;
    theMaxTreeDepth: cint = bVH_ConstantsMaxTreeDepth): BVH_LinearBuilder[T, N] {.
    cdecl, constructor, importcpp: "BVH_LinearBuilder<\'*0,\'*1>(@)", dynlib: tkmath.}
proc destroyBVH_LinearBuilder*[T; N: static[cint]](
    this: var BVH_LinearBuilder[T, N]) {.cdecl, importcpp: "#.~BVH_LinearBuilder()",
                                     dynlib: tkmath.}
proc build*[T; N: static[cint]](this: BVH_LinearBuilder[T, N];
                             theSet: ptr BVH_Set[T, N]; theBVH: ptr BVH_Tree[T, N];
                             theBox: BVH_Box[T, N]) {.noSideEffect, cdecl,
    importcpp: "Build", dynlib: tkmath.}
##  =======================================================================
##  function : BVH_LinearBuilder
##  purpose  :
##  =======================================================================
##  template<class T, int N>
##  BVH_LinearBuilder<T, N>::BVH_LinearBuilder (const Standard_Integer theLeafNodeSize,
##                                              const Standard_Integer theMaxTreeDepth)
##  : BVH_Builder<T, N> (theLeafNodeSize,
##                       theMaxTreeDepth)
##  {
##    //
##  }
##
##  // =======================================================================
##  // function : ~BVH_LinearBuilder
##  // purpose  :
##  // =======================================================================
##  template<class T, int N>
##  BVH_LinearBuilder<T, N>::~BVH_LinearBuilder()
##  {
##    //
##  }
##
##  // =======================================================================
##  // function : lowerBound
##  // purpose  : Returns index of first element greater than the given one
##  // =======================================================================
##  template<class T, int N>
##  Standard_Integer BVH_LinearBuilder<T, N>::lowerBound (const NCollection_Array1<BVH_EncodedLink>& theEncodedLinks,
##                                                        Standard_Integer theStart,
##                                                        Standard_Integer theFinal,
##                                                        Standard_Integer theDigit) const
##  {
##    Standard_Integer aNbPrims = theFinal - theStart;
##    unsigned int aBit = 1U << theDigit;
##    while (aNbPrims > 0)
##    {
##      const Standard_Integer aStep = aNbPrims / 2;
##      if (theEncodedLinks.Value (theStart + aStep).first & aBit)
##      {
##        aNbPrims = aStep;
##      }
##      else
##      {
##        theStart += aStep + 1;
##        aNbPrims -= aStep + 1;
##      }
##    }
##
##    return theStart;
##  }
##
##  // =======================================================================
##  // function : emitHierachy
##  // purpose  : Emits hierarchy from sorted Morton codes
##  // =======================================================================
##  template<class T, int N>
##  Standard_Integer BVH_LinearBuilder<T, N>::emitHierachy (BVH_Tree<T, N>*        theBVH,
##                                                          const NCollection_Array1<BVH_EncodedLink>& theEncodedLinks,
##                                                          const Standard_Integer theDigit,
##                                                          const Standard_Integer theShift,
##                                                          const Standard_Integer theStart,
##                                                          const Standard_Integer theFinal) const
##  {
##    if (theFinal - theStart > BVH_Builder<T, N>::myLeafNodeSize)
##    {
##      const Standard_Integer aPosition = theDigit < 0 ?
##        (theStart + theFinal) / 2 : lowerBound (theEncodedLinks, theStart, theFinal, theDigit);
##      if (aPosition == theStart || aPosition == theFinal)
##      {
##        return emitHierachy (theBVH, theEncodedLinks, theDigit - 1, theShift, theStart, theFinal);
##      }
##
##      // Build inner node
##      const Standard_Integer aNode = theBVH->AddInnerNode (0, 0);
##      const Standard_Integer aRghNode = theShift + aPosition - theStart;
##
##      const Standard_Integer aLftChild = emitHierachy (theBVH, theEncodedLinks, theDigit - 1, theShift, theStart, aPosition);
##      const Standard_Integer aRghChild = emitHierachy (theBVH, theEncodedLinks, theDigit - 1, aRghNode, aPosition, theFinal);
##
##      theBVH->NodeInfoBuffer()[aNode].y() = aLftChild;
##      theBVH->NodeInfoBuffer()[aNode].z() = aRghChild;
##      return aNode;
##    }
##    else
##    {
##      // Build leaf node
##      return theBVH->AddLeafNode (theShift, theShift + theFinal - theStart - 1);
##    }
##  }
##

## ! Calculates bounding boxes (AABBs) for the given BVH tree.

proc updateBounds*[T; N: static[cint]](theSet: ptr BVH_Set[T, N];
                                    theTree: ptr BVH_Tree[T, N]; theNode: cint = 0): cint {.
    cdecl.} =
  discard

type
  BoundData*[T; N: static[cint]] {.importcpp: "BVH::BoundData<\'0,\'1>",
                                header: "BVH_LinearBuilder.hxx", bycopy.} = object
    mySet* {.importc: "mySet".}: ptr BVH_Set[T, N] ## !< Set of geometric objects
    myBVH* {.importc: "myBVH".}: ptr BVH_Tree[T, N] ## !< BVH tree built over the set
    myNode* {.importc: "myNode".}: cint ## !< BVH node to update bounding box
    myLevel* {.importc: "myLevel".}: cint ## !< Level of the processed BVH node
    myHeight* {.importc: "myHeight".}: ptr cint ## !< Height of the processed BVH node


## ! Task for parallel bounds updating.

type
  UpdateBoundTask*[T; N: static[cint]] {.importcpp: "BVH::UpdateBoundTask<\'0,\'1>",
                                      header: "BVH_LinearBuilder.hxx", bycopy.} = object


proc newUpdateBoundTask*[T; N: static[cint]](isParallel: bool): UpdateBoundTask[T, N] {.
    cdecl, constructor, importcpp: "BVH::UpdateBoundTask<\'*0,\'*1>(@)",
    dynlib: tkmath.}
proc `()`*[T; N: static[cint]](this: UpdateBoundTask[T, N]; theData: BoundData[T, N]) {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkmath.}
##  =======================================================================
##  function : Build
##  purpose  :
##  =======================================================================
##  template<class T, int N>
##  void BVH_LinearBuilder<T, N>::Build (BVH_Set<T, N>*       theSet,
##                                       BVH_Tree<T, N>*      theBVH,
##                                       const BVH_Box<T, N>& theBox) const
##  {
##    Standard_STATIC_ASSERT (N == 2 || N == 3 || N == 4);
##    const Standard_Integer aSetSize = theSet->Size();
##    if (theBVH == NULL || aSetSize == 0)
##    {
##      return;
##    }
##
##    theBVH->Clear();
##
##    // Step 0 -- Initialize parameter of virtual grid
##    BVH_RadixSorter<T, N> aRadixSorter (theBox);
##    aRadixSorter.SetParallel (this->IsParallel());
##
##    // Step 1 - Perform radix sorting of primitive set
##    aRadixSorter.Perform (theSet);
##
##    // Step 2 -- Emitting BVH hierarchy from sorted Morton codes
##    emitHierachy (theBVH, aRadixSorter.EncodedLinks(), 29, 0, 0, theSet->Size());
##
##    // Step 3 -- Compute bounding boxes of BVH nodes
##    theBVH->MinPointBuffer().resize (theBVH->NodeInfoBuffer().size());
##    theBVH->MaxPointBuffer().resize (theBVH->NodeInfoBuffer().size());
##
##    Standard_Integer aHeight = 0;
##    BVH::BoundData<T, N> aBoundData = { theSet, theBVH, 0, 0, &aHeight };
##    BVH::UpdateBoundTask<T, N> aBoundTask (this->IsParallel());
##    aBoundTask (aBoundData);
##
##    BVH_Builder<T, N>::updateDepth (theBVH, aHeight);
##  }
