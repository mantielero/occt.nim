##  Created on: 2007-08-01
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  VrmlData_Geometry, VrmlData_Coordinate, VrmlData_Color

## #include <Quantity_Color.hxx>
## *
##  Data type to store a set of polygons.
##

type
  VrmlData_IndexedLineSet* {.importcpp: "VrmlData_IndexedLineSet",
                            header: "VrmlData_IndexedLineSet.hxx", bycopy.} = object of VrmlData_Geometry ##  ---------- PUBLIC METHODS ----------
                                                                                                   ## *
                                                                                                   ##  Empty constructor.
                                                                                                   ##
                                                                                                   ##  ---------- PRIVATE FIELDS ----------
                                                                                                   ##  Declaration of CASCADE RTTI


proc constructVrmlData_IndexedLineSet*(): VrmlData_IndexedLineSet {.constructor,
    importcpp: "VrmlData_IndexedLineSet(@)", header: "VrmlData_IndexedLineSet.hxx".}
proc constructVrmlData_IndexedLineSet*(theScene: VrmlData_Scene; theName: cstring;
    isColorPerVertex: Standard_Boolean = Standard_True): VrmlData_IndexedLineSet {.
    constructor, importcpp: "VrmlData_IndexedLineSet(@)",
    header: "VrmlData_IndexedLineSet.hxx".}
proc Coordinates*(this: VrmlData_IndexedLineSet): handle[VrmlData_Coordinate] {.
    noSideEffect, importcpp: "Coordinates", header: "VrmlData_IndexedLineSet.hxx".}
proc SetCoordinates*(this: var VrmlData_IndexedLineSet;
                    theCoord: handle[VrmlData_Coordinate]) {.
    importcpp: "SetCoordinates", header: "VrmlData_IndexedLineSet.hxx".}
proc Colors*(this: VrmlData_IndexedLineSet): handle[VrmlData_Color] {.noSideEffect,
    importcpp: "Colors", header: "VrmlData_IndexedLineSet.hxx".}
proc SetColors*(this: var VrmlData_IndexedLineSet; theColors: handle[VrmlData_Color]) {.
    importcpp: "SetColors", header: "VrmlData_IndexedLineSet.hxx".}
proc Polygons*(this: VrmlData_IndexedLineSet; arrPolygons: ptr ptr Standard_Integer): csize_t {.
    noSideEffect, importcpp: "Polygons", header: "VrmlData_IndexedLineSet.hxx".}
proc Polygon*(this: var VrmlData_IndexedLineSet; iPolygon: Standard_Integer;
             outIndice: ptr Standard_Integer): Standard_Integer {.
    importcpp: "Polygon", header: "VrmlData_IndexedLineSet.hxx".}
proc SetPolygons*(this: var VrmlData_IndexedLineSet; nPolygons: Standard_Size;
                 thePolygons: ptr ptr Standard_Integer) {.importcpp: "SetPolygons",
    header: "VrmlData_IndexedLineSet.hxx".}
proc ArrayColorInd*(this: VrmlData_IndexedLineSet;
                   arrColorInd: ptr ptr Standard_Integer): csize_t {.noSideEffect,
    importcpp: "ArrayColorInd", header: "VrmlData_IndexedLineSet.hxx".}
proc GetColor*(this: var VrmlData_IndexedLineSet; iFace: Standard_Integer;
              iVertex: Standard_Integer): Quantity_Color {.importcpp: "GetColor",
    header: "VrmlData_IndexedLineSet.hxx".}
proc SetColorInd*(this: var VrmlData_IndexedLineSet; nIndice: Standard_Size;
                 theIndice: ptr ptr Standard_Integer) {.importcpp: "SetColorInd",
    header: "VrmlData_IndexedLineSet.hxx".}
proc SetColorPerVertex*(this: var VrmlData_IndexedLineSet;
                       isColorPerVertex: Standard_Boolean) {.
    importcpp: "SetColorPerVertex", header: "VrmlData_IndexedLineSet.hxx".}
proc TShape*(this: var VrmlData_IndexedLineSet): handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_IndexedLineSet.hxx".}
proc Clone*(this: VrmlData_IndexedLineSet; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_IndexedLineSet.hxx".}
proc Read*(this: var VrmlData_IndexedLineSet; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_IndexedLineSet.hxx".}
proc Write*(this: VrmlData_IndexedLineSet; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_IndexedLineSet.hxx".}
proc IsDefault*(this: VrmlData_IndexedLineSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_IndexedLineSet.hxx".}
type
  VrmlData_IndexedLineSetbase_type* = VrmlData_Geometry

proc get_type_name*(): cstring {.importcpp: "VrmlData_IndexedLineSet::get_type_name(@)",
                              header: "VrmlData_IndexedLineSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_IndexedLineSet::get_type_descriptor(@)",
    header: "VrmlData_IndexedLineSet.hxx".}
proc DynamicType*(this: VrmlData_IndexedLineSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlData_IndexedLineSet.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_IndexedLineSet"
type
  Handle_VrmlData_IndexedLineSet* = handle[VrmlData_IndexedLineSet]
