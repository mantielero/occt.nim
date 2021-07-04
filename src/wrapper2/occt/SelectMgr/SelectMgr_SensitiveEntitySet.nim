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
  ../BVH/BVH_PrimitiveSet3d, ../NCollection/NCollection_IndexedMap,
  ../Select3D/Select3D_BndBox3d, ../Select3D/Select3D_BVHBuilder3d,
  SelectMgr_SensitiveEntity, SelectMgr_Selection

type
  SelectMgr_IndexedMapOfHSensitive* = NCollection_IndexedMap[
      handle[SelectMgr_SensitiveEntity]]

## ! This class is used to store all calculated sensitive entites of one selectable
## ! object. It provides an interface for building BVH tree which is used to speed-up
## ! the performance of searching for overlap among sensitives of one selectable object

type
  SelectMgr_SensitiveEntitySet* {.importcpp: "SelectMgr_SensitiveEntitySet",
                                 header: "SelectMgr_SensitiveEntitySet.hxx",
                                 bycopy.} = object of BVH_PrimitiveSet3d ## ! Empty constructor.
    ## !< Map of entities and its corresponding index in BVH

  SelectMgr_SensitiveEntitySetbase_type* = BVH_PrimitiveSet3d

proc get_type_name*(): cstring {.importcpp: "SelectMgr_SensitiveEntitySet::get_type_name(@)",
                              header: "SelectMgr_SensitiveEntitySet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_SensitiveEntitySet::get_type_descriptor(@)",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc DynamicType*(this: SelectMgr_SensitiveEntitySet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc constructSelectMgr_SensitiveEntitySet*(
    theBuilder: handle[Select3D_BVHBuilder3d]): SelectMgr_SensitiveEntitySet {.
    constructor, importcpp: "SelectMgr_SensitiveEntitySet(@)",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc destroySelectMgr_SensitiveEntitySet*(this: var SelectMgr_SensitiveEntitySet) {.
    importcpp: "#.~SelectMgr_SensitiveEntitySet()",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc Append*(this: var SelectMgr_SensitiveEntitySet;
            theEntity: handle[SelectMgr_SensitiveEntity]) {.importcpp: "Append",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc Append*(this: var SelectMgr_SensitiveEntitySet;
            theSelection: handle[SelectMgr_Selection]) {.importcpp: "Append",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc Remove*(this: var SelectMgr_SensitiveEntitySet;
            theSelection: handle[SelectMgr_Selection]) {.importcpp: "Remove",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc Box*(this: SelectMgr_SensitiveEntitySet; theIndex: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "SelectMgr_SensitiveEntitySet.hxx".}
## using statement

proc Center*(this: SelectMgr_SensitiveEntitySet; theIndex: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc Swap*(this: var SelectMgr_SensitiveEntitySet; theIndex1: Standard_Integer;
          theIndex2: Standard_Integer) {.importcpp: "Swap", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc Size*(this: SelectMgr_SensitiveEntitySet): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc GetSensitiveById*(this: SelectMgr_SensitiveEntitySet;
                      theIndex: Standard_Integer): handle[
    SelectMgr_SensitiveEntity] {.noSideEffect, importcpp: "GetSensitiveById",
                                header: "SelectMgr_SensitiveEntitySet.hxx".}
proc Sensitives*(this: SelectMgr_SensitiveEntitySet): SelectMgr_IndexedMapOfHSensitive {.
    noSideEffect, importcpp: "Sensitives",
    header: "SelectMgr_SensitiveEntitySet.hxx".}