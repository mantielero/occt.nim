##  Created on: 2014-08-15
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

import
  ../BVH/BVH_Builder, ../BVH/BVH_Tree, ../Graphic3d/Graphic3d_Mat4d,
  ../Graphic3d/Graphic3d_WorldViewProjState, ../NCollection/NCollection_Handle,
  ../NCollection/NCollection_IndexedMap, ../Select3D/Select3D_BVHBuilder3d,
  SelectMgr_SelectableObject

## ! The purpose of this class is to organize all selectable objects into data structure, allowing to build
## ! set of BVH trees for each transformation persistence subclass of selectable objects. This allow to minify
## ! number of updates for BVH trees - for example 2D persistent object subclass depends only on camera's projection
## ! and the corresponding BVH tree needs to be updated when camera's projection parameters change, while another
## ! tree for non-persistent objects can be left unchanged in this case.

type
  SelectMgr_SelectableObjectSet* {.importcpp: "SelectMgr_SelectableObjectSet",
                                  header: "SelectMgr_SelectableObjectSet.hxx",
                                  bycopy.} = object ## ! This enumeration declares names for subsets of selectable objects. Each subset has independent BVH tree.
                                                 ## ! The class maintains subsets of selectable objects by their persistence flag. This allows to restric
                                                 ## ! rebuilding of the trees for particular subset when the camera change does not implicitly require it:
                                                 ## ! - BVHSubset_3d refers to the subset of normal world-space 3D objects. Associated BVH tree does not depend
                                                 ## ! on the camera's state at all.
                                                 ## ! This subset uses binned BVH builder with 32 bins and 1 element per leaf.
                                                 ## ! - BVHSubset_3dPersistent refers to the subset of 3D persistent selectable objects (rotate, pan, zoom persistence).
                                                 ## ! Associated BVH tree needs to be updated when either the camera's projection and position change.
                                                 ## ! This subset uses linear BVH builder with 32 levels of depth and 1 element per leaf.
                                                 ## ! - BVHSubset_2dPersistent refers to the subset of 2D persistent selectable objects. Associated BVH tree
                                                 ## ! needs to be updated only when camera's projection changes. Bounding volumes for this object subclass
                                                 ## ! is represented directly in eye space coordinates.
                                                 ## ! This subset uses linear BVH builder with 32 levels of depth and 1 element per leaf.
                                                 ## ! Class to iterate sequentually over all objects from every subset.
                                                 ## ! Creates new empty objects set and initializes BVH tree builders for each subset.
                                                 ## ! Returns an appropriate subset of theObject given depending on its persistence type.
    ## !< Map of objects for each subset
    ## !< BVH tree computed for each subset
    ## !< Builder allocated for each subset
    ## !< Dirty flag for each subset
    ## !< Last view-projection state used for construction of BVH
    ## !< Last viewport's (window's) width used for construction of BVH
    ## !< Last viewport's (window's) height used for construction of BVH

  SelectMgr_SelectableObjectSetBVHSubset* {.size: sizeof(cint),
      importcpp: "SelectMgr_SelectableObjectSet::BVHSubset",
      header: "SelectMgr_SelectableObjectSet.hxx".} = enum
    BVHSubset_3d, BVHSubset_3dPersistent, BVHSubset_2dPersistent, BVHSubsetNb


type
  SelectMgr_SelectableObjectSetIterator* {.
      importcpp: "SelectMgr_SelectableObjectSet::Iterator",
      header: "SelectMgr_SelectableObjectSet.hxx", bycopy.} = object ## ! Short-cut definition of map iterator type
                                                                ## ! Default constructor without initialization.


proc constructSelectMgr_SelectableObjectSetIterator*(): SelectMgr_SelectableObjectSetIterator {.
    constructor, importcpp: "SelectMgr_SelectableObjectSet::Iterator(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc constructSelectMgr_SelectableObjectSetIterator*(
    theSet: SelectMgr_SelectableObjectSet): SelectMgr_SelectableObjectSetIterator {.
    constructor, importcpp: "SelectMgr_SelectableObjectSet::Iterator(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc Init*(this: var SelectMgr_SelectableObjectSetIterator;
          theSet: SelectMgr_SelectableObjectSet) {.importcpp: "Init",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc More*(this: var SelectMgr_SelectableObjectSetIterator): Standard_Boolean {.
    importcpp: "More", header: "SelectMgr_SelectableObjectSet.hxx".}
proc Next*(this: var SelectMgr_SelectableObjectSetIterator) {.importcpp: "Next",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc Value*(this: SelectMgr_SelectableObjectSetIterator): handle[
    SelectMgr_SelectableObject] {.noSideEffect, importcpp: "Value",
                                 header: "SelectMgr_SelectableObjectSet.hxx".}
proc constructSelectMgr_SelectableObjectSet*(): SelectMgr_SelectableObjectSet {.
    constructor, importcpp: "SelectMgr_SelectableObjectSet(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc destroySelectMgr_SelectableObjectSet*(
    this: var SelectMgr_SelectableObjectSet) {.
    importcpp: "#.~SelectMgr_SelectableObjectSet()",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc Append*(this: var SelectMgr_SelectableObjectSet;
            theObject: handle[SelectMgr_SelectableObject]): Standard_Boolean {.
    importcpp: "Append", header: "SelectMgr_SelectableObjectSet.hxx".}
proc Remove*(this: var SelectMgr_SelectableObjectSet;
            theObject: handle[SelectMgr_SelectableObject]): Standard_Boolean {.
    importcpp: "Remove", header: "SelectMgr_SelectableObjectSet.hxx".}
proc ChangeSubset*(this: var SelectMgr_SelectableObjectSet;
                  theObject: handle[SelectMgr_SelectableObject]) {.
    importcpp: "ChangeSubset", header: "SelectMgr_SelectableObjectSet.hxx".}
proc UpdateBVH*(this: var SelectMgr_SelectableObjectSet;
               theCamera: handle[Graphic3d_Camera];
               theProjectionMat: Graphic3d_Mat4d;
               theWorldViewMat: Graphic3d_Mat4d;
               theViewState: Graphic3d_WorldViewProjState;
               theViewportWidth: Standard_Integer;
               theViewportHeight: Standard_Integer) {.importcpp: "UpdateBVH",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc MarkDirty*(this: var SelectMgr_SelectableObjectSet) {.importcpp: "MarkDirty",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc Contains*(this: SelectMgr_SelectableObjectSet;
              theObject: handle[SelectMgr_SelectableObject]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc IsEmpty*(this: SelectMgr_SelectableObjectSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "SelectMgr_SelectableObjectSet.hxx".}
proc IsEmpty*(this: SelectMgr_SelectableObjectSet;
             theSubset: SelectMgr_SelectableObjectSetBVHSubset): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty", header: "SelectMgr_SelectableObjectSet.hxx".}
proc GetObjectById*(this: SelectMgr_SelectableObjectSet;
                   theSubset: SelectMgr_SelectableObjectSetBVHSubset;
                   theIndex: Standard_Integer): handle[SelectMgr_SelectableObject] {.
    noSideEffect, importcpp: "GetObjectById",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc BVH*(this: SelectMgr_SelectableObjectSet;
         theSubset: SelectMgr_SelectableObjectSetBVHSubset): handle[
    BVH_Tree[Standard_Real, 3]] {.noSideEffect, importcpp: "BVH",
                                header: "SelectMgr_SelectableObjectSet.hxx".}
proc DumpJson*(this: SelectMgr_SelectableObjectSet;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_SelectableObjectSet.hxx".}