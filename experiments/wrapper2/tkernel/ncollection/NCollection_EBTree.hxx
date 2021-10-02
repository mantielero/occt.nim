// Created on: 2002-07-30
// Created by: Michael SAZONOV
// Copyright (c) 2002-2014 OPEN CASCADE SAS
//
// This file is part of Open CASCADE Technology software library.
//
// This library is free software; you can redistribute it and/or modify it under
// the terms of the GNU Lesser General Public License version 2.1 as published
// by the Free Software Foundation, with special exception defined in the file
// OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
// distribution for complete text of the license and disclaimer of any warranty.
//
// Alternatively, this file may be used under the terms of Open CASCADE
// commercial license or contractual agreement.

#ifndef NCollection_EBTree_HeaderFile
#define NCollection_EBTree_HeaderFile

#include <NCollection_UBTree.hxx>
#include <Standard_Type.hxx>
#include <Standard_Transient.hxx>
#include <NCollection_List.hxx>
#include <TColStd_SequenceOfInteger.hxx>
#include <NCollection_DataMap.hxx>

/**
 * The algorithm of unbalanced binary  tree of overlapped bounding boxes with
 * the possibility of deleting objects from the tree.
 *
 * In addition to  the requirements to the object type  defined in the parent
 * class this  class requires that the  object can be hashed  and compared to
 * another object (functions HashCode and  IsEqual are defined for it), since
 * the class NCollection_DataMap  is used where the object  plays the role of
 * the key.
 */
template <class TheObjType, class TheBndType> class NCollection_EBTree
  : public NCollection_UBTree <TheObjType, TheBndType>
{
 public:
  typedef NCollection_UBTree <TheObjType, TheBndType> UBTree;
  typedef TYPENAME UBTree::TreeNode TreeNode;
  // ---------- PUBLIC METHODS ----------

  /**
   * Constructor.
   */
  NCollection_EBTree (const Handle(NCollection_BaseAllocator)& theAllocator=0L)
    : UBTree (theAllocator) {}

  /**
   * Updates the tree with a new object and its bounding box.
   * Extends the functionality of the parent method by maintaining
   * the map myObjNodeMap. Redefined virtual method.
   * @return
   *   False if the tree already contains theObj.
   */ 
  Standard_Boolean Add (const TheObjType& theObj, const TheBndType& theBnd) Standard_OVERRIDE
  {
    Standard_Boolean result = Standard_False;
    if (!Contains (theObj))
    {
      // Add object in the tree using parent method
      UBTree::Add (theObj, theBnd);

      // Update the map
      TreeNode& aNewNode = this->ChangeLastNode ();
      myObjNodeMap.Bind (theObj, &aNewNode);
      // If the new node is not the root (has a parent) check the neighbour node
      if (!aNewNode.IsRoot ())
      {
        TreeNode& aNeiNode = aNewNode.ChangeParent ().ChangeChild (0);
        if (aNeiNode.IsLeaf ())
        {
          myObjNodeMap.UnBind (aNeiNode.Object ());
          myObjNodeMap.Bind (aNeiNode.Object (), &aNeiNode);
        }
      }
      result = Standard_True;
    }
    return result;
  }

  /**
   * Removes the given object and updates the tree.
   * @return
   *   False if the tree does not contain theObj
   */
  Standard_Boolean Remove (const TheObjType& theObj);

  /**
   * @return
   *   True if the tree contains the object.
   */
  Standard_Boolean Contains (const TheObjType& theObj) const
        { return myObjNodeMap.IsBound (theObj); }

  /**
   * @return
   *   The leaf node containing the object.
   */
  const TreeNode& FindNode (const TheObjType& theObj) const
        { return *myObjNodeMap.Find (theObj); }

  /**
   * Clears the contents of the tree. Redefined virtual method
   */
  void Clear (const Handle(NCollection_BaseAllocator)& aNewAlloc = 0L) Standard_OVERRIDE
  {
    myObjNodeMap.Clear ();
    UBTree::Clear (aNewAlloc);
  }

 private:
};

// ================== METHODS TEMPLATES =====================

//=======================================================================
//function : Remove
//purpose  : Removes the given object and updates the tree.
//           Returns false if the tree does not contain theObj.
//=======================================================================


// ======================================================================
// Declaration of handled version of NCollection_EBTree.
// In the macros below the arguments are:
// _HEBTREE      - the desired name of handled class
// _OBJTYPE      - the name of the object type
// _BNDTYPE      - the name of the bounding box type
// _HUBTREE      - the name of parent class
//                 (defined using macro DEFINE_HUBTREE)




#endif
