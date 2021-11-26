##  Created on: 2014-09-15
##  Created by: Denis BOGOLEPOV
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

## ! Abstract BVH builder based on the concept of work queue.
## ! Queue based BVH builders support parallelization with a
## ! fixed number of threads (maximum efficiency is achieved
## ! by setting the number of threads equal to the number of
## ! CPU cores plus one). Note that to support parallel mode,
## ! a corresponding BVH primitive set should provide thread
## ! safe implementations of interface functions (e.g., Swap,
## ! Box, Center). Otherwise, the results will be undefined.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_QueueBuilder*[T; N: static[cint]] {.importcpp: "BVH_QueueBuilder<\'0,\'1>",
                                       header: "BVH_QueueBuilder.hxx", bycopy.} = object of BVH_Builder[
      T, N] ## ! Creates new BVH queue based builder.
          ## ! Builds BVH using specific algorithm.
          ## ! Stores range of primitives belonging to a BVH node.
          ## ! Performs splitting of the given BVH node.
          ##    virtual typename BVH_QueueBuilder<T, N>::BVH_ChildNodes buildNode (BVH_Set<T, N>*         theSet,
          ##                                                                       BVH_Tree<T, N>*        theBVH,
          ##                                                                       const Standard_Integer theNode) const = 0;
          ## ! Processes child nodes of the splitted BVH node.
    ## !< Number of threads used to build BVH


proc newBVH_QueueBuilder*[T; N: static[cint]](theLeafNodeSize: cint;
    theMaxTreeDepth: cint; theNumOfThreads: cint = 1): BVH_QueueBuilder[T, N] {.cdecl,
    constructor, importcpp: "BVH_QueueBuilder<\'*0,\'*1>(@)", dynlib: tkmath.}
proc destroyBVH_QueueBuilder*[T; N: static[cint]](this: var BVH_QueueBuilder[T, N]) {.
    cdecl, importcpp: "#.~BVH_QueueBuilder()", dynlib: tkmath.}
proc build*[T; N: static[cint]](this: BVH_QueueBuilder[T, N];
                             theSet: ptr BVH_Set[T, N]; theBVH: ptr BVH_Tree[T, N];
                             theBox: BVH_Box[T, N]) {.noSideEffect, cdecl,
    importcpp: "Build", dynlib: tkmath.}
##  =======================================================================
##  function : addChildren
##  purpose  :
##  =======================================================================
##  template<class T, int N>
##  void BVH_QueueBuilder<T, N>::addChildren (BVH_Tree<T, N>* theBVH,
##                                            BVH_BuildQueue& theBuildQueue,
##  							              const Standard_Integer theNode,
##                                            const typename BVH_QueueBuilder<T, N>::BVH_ChildNodes& theSubNodes) const
##  {
##    Standard_Integer aChildren[] = { -1, -1 };
##    if (!theSubNodes.IsValid())
##    {
##      return;
##    }
##
##    // Add child nodes
##    {
##      Standard_Mutex::Sentry aSentry (theBuildQueue.myMutex);
##
##      for (Standard_Integer anIdx = 0; anIdx < 2; ++anIdx)
##      {
##        aChildren[anIdx] = theBVH->AddLeafNode (theSubNodes.Boxes[anIdx],
##                                                theSubNodes.Ranges[anIdx].Start,
##                                                theSubNodes.Ranges[anIdx].Final);
##      }
##
##      BVH_Builder<T, N>::updateDepth (theBVH, theBVH->Level (theNode) + 1);
##    }
##
##    // Set parameters of child nodes and generate new tasks
##    for (Standard_Integer anIdx = 0; anIdx < 2; ++anIdx)
##    {
##      const Standard_Integer aChildIndex = aChildren[anIdx];
##
##      theBVH->Level (aChildIndex) = theBVH->Level (theNode) + 1;
##
##      (anIdx == 0 ? theBVH->template Child<0> (theNode)
##                  : theBVH->template Child<1> (theNode)) = aChildIndex;
##
##      // Check to see if the child node must be split
##      const Standard_Boolean isLeaf = theSubNodes.NbPrims (anIdx) <= BVH_Builder<T, N>::myLeafNodeSize
##                                   || theBVH->Level (aChildIndex) >= BVH_Builder<T, N>::myMaxTreeDepth;
##
##      if (!isLeaf)
##      {
##        theBuildQueue.Enqueue (aChildIndex);
##      }
##    }
##  }
##  =======================================================================
##  function : Build
##  purpose  : Builds BVH using specific algorithm
##  =======================================================================
##  template<class T, int N>
##  void BVH_QueueBuilder<T, N>::Build (BVH_Set<T, N>*       theSet,
##                                      BVH_Tree<T, N>*      theBVH,
##                                      const BVH_Box<T, N>& theBox) const
##  {
##    Standard_ASSERT_RETURN (theBVH != NULL,
##      "Error! BVH tree to construct is NULL", );
##
##    theBVH->Clear();
##    const Standard_Integer aSetSize = theSet->Size();
##    if (aSetSize == 0)
##    {
##      return;
##    }
##
##    const Standard_Integer aRoot = theBVH->AddLeafNode (theBox, 0, aSetSize - 1);
##    if (theSet->Size() == 1)
##    {
##      return;
##    }
##
##    BVH_BuildQueue aBuildQueue;
##    aBuildQueue.Enqueue (aRoot);
##
##    BVH_TypedBuildTool aBuildTool (theSet, theBVH, aBuildQueue, this);
##    if (myNumOfThreads > 1)
##    {
##      // Reserve the maximum possible number of nodes in the BVH
##      theBVH->Reserve (2 * aSetSize - 1);
##
##      NCollection_Vector<Handle(BVH_BuildThread)> aThreads;
##
##      // Run BVH build threads
##      for (Standard_Integer aThreadIndex = 0; aThreadIndex < myNumOfThreads; ++aThreadIndex)
##      {
##        aThreads.Append (new BVH_BuildThread (aBuildTool, aBuildQueue));
##        aThreads.Last()->Run();
##      }
##
##      // Wait until all threads finish their work
##      for (Standard_Integer aThreadIndex = 0; aThreadIndex < myNumOfThreads; ++aThreadIndex)
##      {
##        aThreads.ChangeValue (aThreadIndex)->Wait();
##      }
##
##      // Free unused memory
##      theBVH->Reserve (theBVH->Length());
##    }
##    else
##    {
##      BVH_BuildThread aThread (aBuildTool, aBuildQueue);
##
##      // Execute thread function inside current thread
##      aThread.execute();
##    }
##  }
