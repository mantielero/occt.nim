import ../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/standard/standard_types
import selectmgr_types



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






proc newSelectMgrSelectableObjectSetIterator*(): SelectMgrSelectableObjectSetIterator {.
    cdecl, constructor, importcpp: "SelectMgr_SelectableObjectSet::Iterator(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc newSelectMgrSelectableObjectSetIterator*(
    theSet: SelectMgrSelectableObjectSet): SelectMgrSelectableObjectSetIterator {.
    cdecl, constructor, importcpp: "SelectMgr_SelectableObjectSet::Iterator(@)",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc init*(this: var SelectMgrSelectableObjectSetIterator;
          theSet: SelectMgrSelectableObjectSet) {.cdecl, importcpp: "Init",
    header: "SelectMgr_SelectableObjectSet.hxx".}
proc more*(this: var SelectMgrSelectableObjectSetIterator): bool {.cdecl,
    importcpp: "More", header: "SelectMgr_SelectableObjectSet.hxx".}
proc next*(this: var SelectMgrSelectableObjectSetIterator) {.cdecl,
    importcpp: "Next", header: "SelectMgr_SelectableObjectSet.hxx".}
proc value*(this: SelectMgrSelectableObjectSetIterator): Handle[
    SelectMgrSelectableObject] {.noSideEffect, cdecl, importcpp: "Value",
                                header: "SelectMgr_SelectableObjectSet.hxx".}
proc newSelectMgrSelectableObjectSet*(): SelectMgrSelectableObjectSet {.cdecl,
    constructor, importcpp: "SelectMgr_SelectableObjectSet(@)", header: "SelectMgr_SelectableObjectSet.hxx".}
proc destroySelectMgrSelectableObjectSet*(this: var SelectMgrSelectableObjectSet) {.
    cdecl, importcpp: "#.~SelectMgr_SelectableObjectSet()", header: "SelectMgr_SelectableObjectSet.hxx".}
proc append*(this: var SelectMgrSelectableObjectSet;
            theObject: Handle[SelectMgrSelectableObject]): bool {.cdecl,
    importcpp: "Append", header: "SelectMgr_SelectableObjectSet.hxx".}
proc remove*(this: var SelectMgrSelectableObjectSet;
            theObject: Handle[SelectMgrSelectableObject]): bool {.cdecl,
    importcpp: "Remove", header: "SelectMgr_SelectableObjectSet.hxx".}
proc changeSubset*(this: var SelectMgrSelectableObjectSet;
                  theObject: Handle[SelectMgrSelectableObject]) {.cdecl,
    importcpp: "ChangeSubset", header: "SelectMgr_SelectableObjectSet.hxx".}
proc updateBVH*(this: var SelectMgrSelectableObjectSet;
               theCamera: Handle[Graphic3dCamera];
               theProjectionMat: Graphic3dMat4d; theWorldViewMat: Graphic3dMat4d;
               theViewState: Graphic3dWorldViewProjState; theViewportWidth: cint;
               theViewportHeight: cint) {.cdecl, importcpp: "UpdateBVH",
                                        header: "SelectMgr_SelectableObjectSet.hxx".}
proc markDirty*(this: var SelectMgrSelectableObjectSet) {.cdecl,
    importcpp: "MarkDirty", header: "SelectMgr_SelectableObjectSet.hxx".}
proc contains*(this: SelectMgrSelectableObjectSet;
              theObject: Handle[SelectMgrSelectableObject]): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "SelectMgr_SelectableObjectSet.hxx".}
proc isEmpty*(this: SelectMgrSelectableObjectSet): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "SelectMgr_SelectableObjectSet.hxx".}
proc isEmpty*(this: SelectMgrSelectableObjectSet;
             theSubset: SelectMgrSelectableObjectSetBVHSubset): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", header: "SelectMgr_SelectableObjectSet.hxx".}
proc getObjectById*(this: SelectMgrSelectableObjectSet;
                   theSubset: SelectMgrSelectableObjectSetBVHSubset;
                   theIndex: cint): Handle[SelectMgrSelectableObject] {.
    noSideEffect, cdecl, importcpp: "GetObjectById", header: "SelectMgr_SelectableObjectSet.hxx".}
proc bvh*(this: SelectMgrSelectableObjectSet;
         theSubset: SelectMgrSelectableObjectSetBVHSubset): Handle[
    BVH_Tree[cfloat, 3]] {.noSideEffect, cdecl, importcpp: "BVH", header: "SelectMgr_SelectableObjectSet.hxx".}
proc dumpJson*(this: SelectMgrSelectableObjectSet; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_SelectableObjectSet.hxx".}

