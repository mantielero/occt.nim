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

type
  SelectMgrIndexedMapOfHSensitive* = NCollectionIndexedMap[
      Handle[SelectMgrSensitiveEntity]]

## ! This class is used to store all calculated sensitive entites of one selectable
## ! object. It provides an interface for building BVH tree which is used to speed-up
## ! the performance of searching for overlap among sensitives of one selectable object

type
  SelectMgrSensitiveEntitySet* {.importcpp: "SelectMgr_SensitiveEntitySet",
                                header: "SelectMgr_SensitiveEntitySet.hxx", bycopy.} = object of BVH_PrimitiveSet3d ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor.
    ## !< Map of entities and its corresponding index in BVH

  SelectMgrSensitiveEntitySetbaseType* = BVH_PrimitiveSet3d

proc getTypeName*(): cstring {.importcpp: "SelectMgr_SensitiveEntitySet::get_type_name(@)",
                            header: "SelectMgr_SensitiveEntitySet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_SensitiveEntitySet::get_type_descriptor(@)",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc dynamicType*(this: SelectMgrSensitiveEntitySet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc constructSelectMgrSensitiveEntitySet*(
    theBuilder: Handle[Select3D_BVHBuilder3d]): SelectMgrSensitiveEntitySet {.
    constructor, importcpp: "SelectMgr_SensitiveEntitySet(@)",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc destroySelectMgrSensitiveEntitySet*(this: var SelectMgrSensitiveEntitySet) {.
    importcpp: "#.~SelectMgr_SensitiveEntitySet()",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc append*(this: var SelectMgrSensitiveEntitySet;
            theEntity: Handle[SelectMgrSensitiveEntity]) {.importcpp: "Append",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc append*(this: var SelectMgrSensitiveEntitySet;
            theSelection: Handle[SelectMgrSelection]) {.importcpp: "Append",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc remove*(this: var SelectMgrSensitiveEntitySet;
            theSelection: Handle[SelectMgrSelection]) {.importcpp: "Remove",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc box*(this: SelectMgrSensitiveEntitySet; theIndex: StandardInteger): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "SelectMgr_SensitiveEntitySet.hxx".}
## using statement

proc center*(this: SelectMgrSensitiveEntitySet; theIndex: StandardInteger;
            theAxis: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Center", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc swap*(this: var SelectMgrSensitiveEntitySet; theIndex1: StandardInteger;
          theIndex2: StandardInteger) {.importcpp: "Swap", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc size*(this: SelectMgrSensitiveEntitySet): StandardInteger {.noSideEffect,
    importcpp: "Size", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc getSensitiveById*(this: SelectMgrSensitiveEntitySet; theIndex: StandardInteger): Handle[
    SelectMgrSensitiveEntity] {.noSideEffect, importcpp: "GetSensitiveById",
                               header: "SelectMgr_SensitiveEntitySet.hxx".}
proc sensitives*(this: SelectMgrSensitiveEntitySet): SelectMgrIndexedMapOfHSensitive {.
    noSideEffect, importcpp: "Sensitives",
    header: "SelectMgr_SensitiveEntitySet.hxx".}

