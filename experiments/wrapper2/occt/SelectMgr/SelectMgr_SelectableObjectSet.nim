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

## ! The purpose of this class is to organize all selectable objects into data structure, allowing to build
## ! set of BVH trees for each transformation persistence subclass of selectable objects. This allow to minify
## ! number of updates for BVH trees - for example 2D persistent object subclass depends only on camera's projection
## ! and the corresponding BVH tree needs to be updated when camera's projection parameters change, while another
## ! tree for non-persistent objects can be left unchanged in this case.

type
  SelectMgrSelectableObjectSet* {.importcpp: "SelectMgr_SelectableObjectSet",
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

  SelectMgrSelectableObjectSetBVHSubset* {.size: sizeof(cint),
      importcpp: "SelectMgr_SelectableObjectSet::BVHSubset",
      header: "SelectMgr_SelectableObjectSet.hxx".} = enum
    BVHSubset3d, BVHSubset3dPersistent, BVHSubset2dPersistent, BVHSubsetNb


type
  SelectMgrSelectableObjectSetIterator* {.
      importcpp: "SelectMgr_SelectableObjectSet::Iterator",
      header: "SelectMgr_SelectableObjectSet.hxx", bycopy.} = object ## ! Short-cut definition of map iterator type
                                                                ## ! Default constructor without initialization.


proc constructSelectMgrSelectableObjectSetIterator*(): SelectMgrSelectableObjectSetIterator {.
    constructor, importcpp: "SelectMgr_SelectableObjectSet::Iterator(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc constructSelectMgrSelectableObjectSetIterator*(
    theSet: SelectMgrSelectableObjectSet): SelectMgrSelectableObjectSetIterator {.
    constructor, importcpp: "SelectMgr_SelectableObjectSet::Iterator(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc init*(this: var SelectMgrSelectableObjectSetIterator;
          theSet: SelectMgrSelectableObjectSet) {.importcpp: "Init",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc more*(this: var SelectMgrSelectableObjectSetIterator): bool {.importcpp: "More",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc next*(this: var SelectMgrSelectableObjectSetIterator) {.importcpp: "Next",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc value*(this: SelectMgrSelectableObjectSetIterator): Handle[
    SelectMgrSelectableObject] {.noSideEffect, importcpp: "Value",
                                header: "SelectMgr_SelectableObjectSet.hxx".}
proc constructSelectMgrSelectableObjectSet*(): SelectMgrSelectableObjectSet {.
    constructor, importcpp: "SelectMgr_SelectableObjectSet(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc destroySelectMgrSelectableObjectSet*(this: var SelectMgrSelectableObjectSet) {.
    importcpp: "#.~SelectMgr_SelectableObjectSet()",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc append*(this: var SelectMgrSelectableObjectSet;
            theObject: Handle[SelectMgrSelectableObject]): bool {.
    importcpp: "Append", header: "SelectMgr_SelectableObjectSet.hxx".}
proc remove*(this: var SelectMgrSelectableObjectSet;
            theObject: Handle[SelectMgrSelectableObject]): bool {.
    importcpp: "Remove", header: "SelectMgr_SelectableObjectSet.hxx".}
proc changeSubset*(this: var SelectMgrSelectableObjectSet;
                  theObject: Handle[SelectMgrSelectableObject]) {.
    importcpp: "ChangeSubset", header: "SelectMgr_SelectableObjectSet.hxx".}
proc updateBVH*(this: var SelectMgrSelectableObjectSet;
               theCamera: Handle[Graphic3dCamera];
               theProjectionMat: Graphic3dMat4d; theWorldViewMat: Graphic3dMat4d;
               theViewState: Graphic3dWorldViewProjState; theViewportWidth: int;
               theViewportHeight: int) {.importcpp: "UpdateBVH", header: "SelectMgr_SelectableObjectSet.hxx".}
proc markDirty*(this: var SelectMgrSelectableObjectSet) {.importcpp: "MarkDirty",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc contains*(this: SelectMgrSelectableObjectSet;
              theObject: Handle[SelectMgrSelectableObject]): bool {.noSideEffect,
    importcpp: "Contains", header: "SelectMgr_SelectableObjectSet.hxx".}
proc isEmpty*(this: SelectMgrSelectableObjectSet): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "SelectMgr_SelectableObjectSet.hxx".}
proc isEmpty*(this: SelectMgrSelectableObjectSet;
             theSubset: SelectMgrSelectableObjectSetBVHSubset): bool {.
    noSideEffect, importcpp: "IsEmpty", header: "SelectMgr_SelectableObjectSet.hxx".}
proc getObjectById*(this: SelectMgrSelectableObjectSet;
                   theSubset: SelectMgrSelectableObjectSetBVHSubset; theIndex: int): Handle[
    SelectMgrSelectableObject] {.noSideEffect, importcpp: "GetObjectById",
                                header: "SelectMgr_SelectableObjectSet.hxx".}
proc bvh*(this: SelectMgrSelectableObjectSet;
         theSubset: SelectMgrSelectableObjectSetBVHSubset): Handle[
    BVH_Tree[float, 3]] {.noSideEffect, importcpp: "BVH",
                        header: "SelectMgr_SelectableObjectSet.hxx".}
proc dumpJson*(this: SelectMgrSelectableObjectSet; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "SelectMgr_SelectableObjectSet.hxx".}
