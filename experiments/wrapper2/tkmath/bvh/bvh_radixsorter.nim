##  Created on: 2016-04-13
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2016 OPEN CASCADE SAS
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

## ! Pair of Morton code and primitive ID.

type
  BVH_EncodedLink* = Pair[cuint, cint]

## ! Performs radix sort of a BVH primitive set using
## ! 10-bit Morton codes (or 1024 x 1024 x 1024 grid).

type
  BVH_RadixSorter*[T; N: static[cint]] {.importcpp: "BVH_RadixSorter<\'0,\'1>",
                                      header: "BVH_RadixSorter.hxx", bycopy.} = object of BVH_Sorter[
      T, N]                    ## ! Creates new BVH radix sorter for the given AABB.
          ## ! Axis-aligned bounding box (AABB) to perform sorting.
    ## ! Morton codes assigned to BVH primitives.

  BVH_RadixSorterBVH_VecNt*[T; N] = Type[T, N]

proc newBVH_RadixSorter*[T; N: static[cint]](theBox: BVH_Box[T, N]): BVH_RadixSorter[
    T, N] {.cdecl, constructor, importcpp: "BVH_RadixSorter<\'*0,\'*1>(@)",
          dynlib: tkmath.}
proc perform*[T; N: static[cint]](this: var BVH_RadixSorter[T, N];
                               theSet: ptr BVH_Set[T, N]) {.cdecl,
    importcpp: "Perform", dynlib: tkmath.}
proc perform*[T; N: static[cint]](this: var BVH_RadixSorter[T, N];
                               theSet: ptr BVH_Set[T, N]; theStart: cint;
                               theFinal: cint) {.cdecl, importcpp: "Perform",
    dynlib: tkmath.}
proc encodedLinks*[T; N: static[cint]](this: BVH_RadixSorter[T, N]): NCollectionArray1[
    BVH_EncodedLink] {.noSideEffect, cdecl, importcpp: "EncodedLinks", dynlib: tkmath.}
##  Radix sort STL predicate for 32-bit integer.

type
  BitPredicate* {.importcpp: "BVH::BitPredicate", header: "BVH_RadixSorter.hxx",
                 bycopy.} = object
    myBit* {.importc: "myBit".}: cuint ## ! Creates new radix sort predicate.


proc newBitPredicate*(theDigit: cint): BitPredicate {.cdecl, constructor,
    importcpp: "BVH::BitPredicate(@)", dynlib: tkmath.}
proc `()`*(this: BitPredicate; theLink: BVH_EncodedLink): bool {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
## ! STL compare tool used in binary search algorithm.

type
  BitComparator* {.importcpp: "BVH::BitComparator", header: "BVH_RadixSorter.hxx",
                  bycopy.} = object
    myBit* {.importc: "myBit".}: cuint ## ! Creates new STL comparator.


proc newBitComparator*(theDigit: cint): BitComparator {.cdecl, constructor,
    importcpp: "BVH::BitComparator(@)", dynlib: tkmath.}
proc `()`*(this: var BitComparator; theLink1: BVH_EncodedLink; a3: BVH_EncodedLink): bool {.
    cdecl, importcpp: "#(@)", dynlib: tkmath.}
  ## theLink2
## ! Tool object for sorting link array using radix sort algorithm.

type
  RadixSorter* {.importcpp: "BVH::RadixSorter", header: "BVH_RadixSorter.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Structure
                                                                                         ## defining
                                                                                         ## sorting
                                                                                         ## range.
                                                                                         ##
                                                                                         ## Performs
                                                                                         ## MSD
                                                                                         ## (most
                                                                                         ## significant
                                                                                         ## digit)
                                                                                         ## radix
                                                                                         ## sort.

  RadixSorterLinkIterator* = Iterator[BVH_EncodedLink]

proc sort*(theStart: RadixSorterLinkIterator; theFinal: RadixSorterLinkIterator;
          theDigit: cint; isParallel: bool) {.cdecl,
    importcpp: "BVH::RadixSorter::Sort(@)", dynlib: tkmath.}
##  =======================================================================
##  function : Perform
##  purpose  :
##  =======================================================================
##  template<class T, int N>
##  void BVH_RadixSorter<T, N>::Perform (BVH_Set<T, N>* theSet, const Standard_Integer theStart, const Standard_Integer theFinal)
##  {
##    Standard_STATIC_ASSERT (N == 2 || N == 3 || N == 4);
##
##    const Standard_Integer aDimension = 1024;
##    const Standard_Integer aNbEffComp = N == 2 ? 2 : 3; // 4th component is ignored
##
##    const BVH_VecNt aSceneMin = myBox.CornerMin();
##    const BVH_VecNt aSceneMax = myBox.CornerMax();
##
##    BVH_VecNt aNodeMinSizeVecT (static_cast<T>(BVH::THE_NODE_MIN_SIZE));
##    BVH::BoxMinMax<T, N>::CwiseMax (aNodeMinSizeVecT, aSceneMax - aSceneMin);
##
##    const BVH_VecNt aReverseSize = BVH_VecNt (static_cast<T>(aDimension)) / aNodeMinSizeVecT;
##
##    myEncodedLinks = new NCollection_Shared<NCollection_Array1<BVH_EncodedLink> >(theStart, theFinal);
##
##    // Step 1 -- Assign Morton code to each primitive
##    for (Standard_Integer aPrimIdx = theStart; aPrimIdx <= theFinal; ++aPrimIdx)
##    {
##      const BVH_VecNt aCenter = theSet->Box (aPrimIdx).Center();
##      const BVH_VecNt aVoxelF = (aCenter - aSceneMin) * aReverseSize;
##
##      unsigned int aMortonCode = 0;
##      for (Standard_Integer aCompIter = 0; aCompIter < aNbEffComp; ++aCompIter)
##      {
##        const Standard_Integer aVoxelI = BVH::IntFloor (BVH::VecComp<T, N>::Get (aVoxelF, aCompIter));
##
##        unsigned int aVoxel = static_cast<unsigned int>(Max (0, Min (aVoxelI, aDimension - 1)));
##
##        aVoxel = (aVoxel | (aVoxel << 16)) & 0x030000FF;
##        aVoxel = (aVoxel | (aVoxel <<  8)) & 0x0300F00F;
##        aVoxel = (aVoxel | (aVoxel <<  4)) & 0x030C30C3;
##        aVoxel = (aVoxel | (aVoxel <<  2)) & 0x09249249;
##
##        aMortonCode |= (aVoxel << aCompIter);
##      }
##
##      myEncodedLinks->ChangeValue (aPrimIdx) = BVH_EncodedLink (aMortonCode, aPrimIdx);
##    }
##
##    // Step 2 -- Sort primitives by their Morton codes using radix sort
##    BVH::RadixSorter::Sort (myEncodedLinks->begin(), myEncodedLinks->end(), 29, this->IsParallel());
##
##    NCollection_Array1<Standard_Integer> aLinkMap (theStart, theFinal);
##    for (Standard_Integer aLinkIdx = theStart; aLinkIdx <= theFinal; ++aLinkIdx)
##    {
##      aLinkMap (myEncodedLinks->Value (aLinkIdx).second) = aLinkIdx;
##    }
##
##    // Step 3 -- Rearranging primitive list according to Morton codes (in place)
##    Standard_Integer aPrimIdx = theStart;
##    while (aPrimIdx <= theFinal)
##    {
##      const Standard_Integer aSortIdx = aLinkMap (aPrimIdx);
##      if (aPrimIdx != aSortIdx)
##      {
##        theSet->Swap (aPrimIdx, aSortIdx);
##        std::swap (aLinkMap (aPrimIdx),
##                   aLinkMap (aSortIdx));
##      }
##      else
##      {
##        ++aPrimIdx;
##      }
##    }
##  }
