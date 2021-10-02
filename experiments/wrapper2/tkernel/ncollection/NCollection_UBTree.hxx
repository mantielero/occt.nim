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

#ifndef NCollection_UBTree_HeaderFile
#define NCollection_UBTree_HeaderFile

#include <NCollection_BaseAllocator.hxx>
#include <NCollection_DefineAlloc.hxx>

/**
 * The algorithm of unbalanced binary tree of overlapped bounding boxes.
 *
 * Once the tree of boxes  of geometric objects is constructed, the algorithm
 * is capable of fast geometric selection of objects.  The tree can be easily
 * updated by adding to it a new object with bounding box.
 * 
 * The time of adding to the tree  of one object is O(log(N)), where N is the
 * total number of  objects, so the time  of building a tree of  N objects is
 * O(N(log(N)). The search time of one object is O(log(N)).
 * 
 * Defining  various classes  inheriting NCollection_UBTree::Selector  we can
 * perform various kinds of selection over the same b-tree object
 * 
 * The object  may be of any  type allowing copying. Among  the best suitable
 * solutions there can  be a pointer to an object,  handled object or integer
 * index of object inside some  collection.  The bounding object may have any
 * dimension  and  geometry. The  minimal  interface  of TheBndType  (besides
 * public empty and copy constructor and operator =) used in UBTree algorithm
 * is as the following:
 * @code
 *   class MyBndType
 *   {
 *    public:
 *     inline void                   Add (const MyBndType& other);
 *     // Updates me with other bounding
 * 
 *     inline Standard_Boolean       IsOut (const MyBndType& other) const;
 *     // Classifies other bounding relatively me
 * 
 *     inline Standard_Real          SquareExtent() const;
 *     // Computes the squared maximal linear extent of me.
 *     // (For box it is the squared diagonal of box)
 *   };
 * @endcode
 * To select objects you need to define a class derived from UBTree::Selector
 * that  should  redefine  the  necessary  virtual methods  to  maintain  the
 * selection condition.  The object  of this class  is also used  to retrieve
 * selected objects after search.
 */

template <class TheObjType, class TheBndType> class NCollection_UBTree
{
public:
  //! Memory allocation
  DEFINE_STANDARD_ALLOC
  DEFINE_NCOLLECTION_ALLOC

public:
  // ---------- PUBLIC TYPES ----------

  /**
   * Class defining the minimal interface of selector.
   */
  class Selector
  {
  public:
    /**
     * Constructor
     */
    Selector () : myStop(Standard_False) {}

    /**
     * Rejection base on the bounding type.
     * @return
     *   True if the bounding box does not conform to some selection conditions
     */
    virtual Standard_Boolean Reject (const TheBndType&) const = 0;

    /**
     * Confirm the object while making necessary tests on it. This method is
     * called when the bounding box of the object conforms to the conditions
     * (see Reject()). It is also supposed to keep record of accepted objects.
     * @return
     *   True if the object is accepted
     */
    virtual Standard_Boolean Accept (const TheObjType&) = 0;

    /**
     * This condition is checked after each call to Accept().
     * @return
     *   True signals that the selection process is stopped
     */
    Standard_Boolean Stop () const { return myStop; }

    /**
     * Destructor
     */
    virtual ~Selector () {}

  protected:
    /**
     * The method Accept() should set this flag if the selection process
     * is to be stopped
     */
    Standard_Boolean myStop;
  };

  /**
   * Class describing the node of the tree.
   * Initially the tree consists of one leaf. A node can grow to a branch
   * holding two childs:
   * - one correspondent to initial node
   * - the new one with a new object and bounding box
   */
  class TreeNode
  {
  public:
    DEFINE_STANDARD_ALLOC
    DEFINE_NCOLLECTION_ALLOC

  public:
    TreeNode (const TheObjType& theObj, const TheBndType& theBnd)
      : myBnd(theBnd), myObject(theObj), myChildren(0), myParent(0) {}

    Standard_Boolean       IsLeaf       () const { return !myChildren; }
    Standard_Boolean       IsRoot       () const { return !myParent; }
    const TheBndType&      Bnd          () const { return myBnd; }
    TheBndType&            ChangeBnd    ()       { return myBnd; }
    const TheObjType&      Object       () const { return myObject; }
    const TreeNode&        Child        (const Standard_Integer i) const
                                                 { return myChildren[i]; }
    TreeNode&              ChangeChild  (const Standard_Integer i)
                                                 { return myChildren[i]; }
    const TreeNode&        Parent       () const { return *myParent; }
    TreeNode&              ChangeParent ()       { return *myParent; }

    /**
     * Forces *this node being gemmated such a way that it becomes
     * a branch holding the previous content of *this node at the 
     * first child and theObj at the second child.
     * @param TheNewBnd
     *   new bounding box comprizing both child nodes.
     * @param theObj
     *   added object.
     * @param theBnd
     *   bounding box of theObj.
     * @theAlloc
     *   allocator providing memory to the new child nodes, provided by the
     *   calling Tree instance.
     */
    void Gemmate            (const TheBndType& theNewBnd,
                             const TheObjType& theObj,
                             const TheBndType& theBnd,
                             const Handle(NCollection_BaseAllocator)& theAlloc);

    /**
     * Kills the i-th child, and *this accepts the content of another child
     */
    void Kill               (const Standard_Integer i,
                             const Handle(NCollection_BaseAllocator)& theAlloc);

//  ~TreeNode () { if (myChildren) delete [] myChildren; }
    ~TreeNode () { myChildren = 0L; }

    /**
     * Deleter of tree node. The whole hierarchy of its children also deleted.
     * This method should be used instead of operator delete.
     */ 
    static void delNode (TreeNode * theNode,
                         const Handle(NCollection_BaseAllocator)& theAlloc);

  private:
    TreeNode () : myChildren(0L), myParent(0L) {}

    TheBndType  myBnd;          ///< bounding geometry
    TheObjType  myObject;       ///< the object
    TreeNode   *myChildren;     ///< 2 children forming a b-tree
    TreeNode   *myParent;       ///< the pointer to a parent node
  };

  // ---------- PUBLIC METHODS ----------

  /**
   * Empty constructor.
   */
  NCollection_UBTree() : myRoot(0L), myLastNode(0L), myAlloc (NCollection_BaseAllocator::CommonBaseAllocator()) {}

  /**
   * Constructor.
   */
  explicit NCollection_UBTree (const Handle(NCollection_BaseAllocator)& theAllocator)
  : myRoot(0L), myLastNode(0L), myAlloc (!theAllocator.IsNull() ? theAllocator : NCollection_BaseAllocator::CommonBaseAllocator()) {}

  /**
   * Update the tree with a new object and its bounding box.
   * @param theObj
   *   added object
   * @param theBnd
   *   bounding box of the object.
   * @return
   *   always True
   */
  virtual Standard_Boolean Add (const TheObjType& theObj, const TheBndType& theBnd);

  /**
   * Searches in the tree all objects conforming to the given selector.
   * return
   *   Number of objects accepted
   */
  virtual Standard_Integer Select (Selector& theSelector) const
        { return (IsEmpty() ? 0 : Select (Root(), theSelector)); }

  /**
   * Clears the contents of the tree.
   * @param aNewAlloc
   *   Optional:   a new allocator that will be used when the tree is rebuilt
   *   anew. This makes sense if the memory allocator needs re-initialisation
   *   (like NCollection_IncAllocator).  By default the previous allocator is
   *   kept.
   */
  virtual void Clear (const Handle(NCollection_BaseAllocator)& aNewAlloc = 0L)
//      { if (myRoot) delete myRoot; myRoot = 0L; }
  {
    if (myRoot) {
      TreeNode::delNode (myRoot, this->myAlloc);
      this->myAlloc->Free (myRoot);
      myRoot = 0L;
    }
    if (aNewAlloc.IsNull() == Standard_False)
      myAlloc = aNewAlloc;
  }

  Standard_Boolean IsEmpty () const { return !myRoot; }

  /**
   * @return
   *   the root node of the tree
   */
  const TreeNode& Root () const { return *myRoot; }

  /**
   * Desctructor.
   */
  virtual ~NCollection_UBTree () { Clear(); }

  /**
   * Recommended to be used only in sub-classes.
   * @return
   *   Allocator object used in this instance of UBTree.
   */
  const Handle(NCollection_BaseAllocator)& Allocator () const
  { return myAlloc; }

 protected:
  // ---------- PROTECTED METHODS ----------

  /**
   * @return
   *   the last added node
   */
  TreeNode& ChangeLastNode () { return *myLastNode; }

  /**
   * Searches in the branch all objects conforming to the given selector.
   * @return
   *   the number of objects accepted
   */
  Standard_Integer Select (const TreeNode& theBranch, Selector& theSelector) const;

 private:
  // ---------- PRIVATE METHODS ----------

  /// Copy constructor (prohibited).
  NCollection_UBTree (const NCollection_UBTree&);

  /// Assignment operator (prohibited).
  NCollection_UBTree& operator = (const NCollection_UBTree&);

  // ---------- PRIVATE FIELDS ----------

  TreeNode                            *myRoot;    ///< root of the tree
  TreeNode                            *myLastNode;///< the last added node
  Handle(NCollection_BaseAllocator)    myAlloc;   ///< Allocator for TreeNode
};


// ======================================================================
/**
 * Declaration of handled version of NCollection_UBTree.
 * In the macros below the arguments are:
 * _HUBTREE      - the desired name of handled class
 * _OBJTYPE      - the name of the object type
 * _BNDTYPE      - the name of the bounding box type
 * _HPARENT      - the name of parent class (usually Standard_Transient)
 */



#endif
