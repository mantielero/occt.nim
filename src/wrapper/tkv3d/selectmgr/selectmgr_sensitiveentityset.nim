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





proc newSelectMgrSensitiveEntitySet*(theBuilder: Handle[Select3D_BVHBuilder3d]): SelectMgrSensitiveEntitySet {.
    cdecl, constructor, importcpp: "SelectMgr_SensitiveEntitySet(@)", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc destroySelectMgrSensitiveEntitySet*(this: var SelectMgrSensitiveEntitySet) {.
    cdecl, importcpp: "#.~SelectMgr_SensitiveEntitySet()", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc append*(this: var SelectMgrSensitiveEntitySet;
            theEntity: Handle[SelectMgrSensitiveEntity]) {.cdecl,
    importcpp: "Append", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc append*(this: var SelectMgrSensitiveEntitySet;
            theSelection: Handle[SelectMgrSelection]) {.cdecl, importcpp: "Append",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc remove*(this: var SelectMgrSensitiveEntitySet;
            theSelection: Handle[SelectMgrSelection]) {.cdecl, importcpp: "Remove",
    header: "SelectMgr_SensitiveEntitySet.hxx".}
proc box*(this: SelectMgrSensitiveEntitySet; theIndex: cint): Select3D_BndBox3d {.
    noSideEffect, cdecl, importcpp: "Box", header: "SelectMgr_SensitiveEntitySet.hxx".}
## using statement

proc center*(this: SelectMgrSensitiveEntitySet; theIndex: cint; theAxis: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Center", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc swap*(this: var SelectMgrSensitiveEntitySet; theIndex1: cint; theIndex2: cint) {.
    cdecl, importcpp: "Swap", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc size*(this: SelectMgrSensitiveEntitySet): cint {.noSideEffect, cdecl,
    importcpp: "Size", header: "SelectMgr_SensitiveEntitySet.hxx".}
proc getSensitiveById*(this: SelectMgrSensitiveEntitySet; theIndex: cint): Handle[
    SelectMgrSensitiveEntity] {.noSideEffect, cdecl, importcpp: "GetSensitiveById",
                               header: "SelectMgr_SensitiveEntitySet.hxx".}
proc sensitives*(this: SelectMgrSensitiveEntitySet): SelectMgrIndexedMapOfHSensitive {.
    noSideEffect, cdecl, importcpp: "Sensitives", header: "SelectMgr_SensitiveEntitySet.hxx".}
