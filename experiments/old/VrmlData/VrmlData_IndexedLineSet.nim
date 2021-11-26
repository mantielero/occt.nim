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

## #include <Quantity_Color.hxx>
## *
##  Data type to store a set of polygons.
##

type
  VrmlDataIndexedLineSet* {.importcpp: "VrmlData_IndexedLineSet",
                           header: "VrmlData_IndexedLineSet.hxx", bycopy.} = object of VrmlDataGeometry ##  ---------- PUBLIC METHODS ----------
                                                                                                 ## *
                                                                                                 ##  Empty constructor.
                                                                                                 ##
                                                                                                 ##  ---------- PRIVATE FIELDS ----------
                                                                                                 ##  Declaration of CASCADE RTTI


proc constructVrmlDataIndexedLineSet*(): VrmlDataIndexedLineSet {.constructor,
    importcpp: "VrmlData_IndexedLineSet(@)", header: "VrmlData_IndexedLineSet.hxx".}
proc constructVrmlDataIndexedLineSet*(theScene: VrmlDataScene; theName: cstring;
                                     isColorPerVertex: bool = true): VrmlDataIndexedLineSet {.
    constructor, importcpp: "VrmlData_IndexedLineSet(@)",
    header: "VrmlData_IndexedLineSet.hxx".}
proc coordinates*(this: VrmlDataIndexedLineSet): Handle[VrmlDataCoordinate] {.
    noSideEffect, importcpp: "Coordinates", header: "VrmlData_IndexedLineSet.hxx".}
proc setCoordinates*(this: var VrmlDataIndexedLineSet;
                    theCoord: Handle[VrmlDataCoordinate]) {.
    importcpp: "SetCoordinates", header: "VrmlData_IndexedLineSet.hxx".}
proc colors*(this: VrmlDataIndexedLineSet): Handle[VrmlDataColor] {.noSideEffect,
    importcpp: "Colors", header: "VrmlData_IndexedLineSet.hxx".}
proc setColors*(this: var VrmlDataIndexedLineSet; theColors: Handle[VrmlDataColor]) {.
    importcpp: "SetColors", header: "VrmlData_IndexedLineSet.hxx".}
proc polygons*(this: VrmlDataIndexedLineSet; arrPolygons: ptr ptr cint): csize_t {.
    noSideEffect, importcpp: "Polygons", header: "VrmlData_IndexedLineSet.hxx".}
proc polygon*(this: var VrmlDataIndexedLineSet; iPolygon: cint; outIndice: ptr cint): cint {.
    importcpp: "Polygon", header: "VrmlData_IndexedLineSet.hxx".}
proc setPolygons*(this: var VrmlDataIndexedLineSet; nPolygons: StandardSize;
                 thePolygons: ptr ptr cint) {.importcpp: "SetPolygons",
    header: "VrmlData_IndexedLineSet.hxx".}
proc arrayColorInd*(this: VrmlDataIndexedLineSet; arrColorInd: ptr ptr cint): csize_t {.
    noSideEffect, importcpp: "ArrayColorInd", header: "VrmlData_IndexedLineSet.hxx".}
proc getColor*(this: var VrmlDataIndexedLineSet; iFace: cint; iVertex: cint): QuantityColor {.
    importcpp: "GetColor", header: "VrmlData_IndexedLineSet.hxx".}
proc setColorInd*(this: var VrmlDataIndexedLineSet; nIndice: StandardSize;
                 theIndice: ptr ptr cint) {.importcpp: "SetColorInd",
                                        header: "VrmlData_IndexedLineSet.hxx".}
proc setColorPerVertex*(this: var VrmlDataIndexedLineSet; isColorPerVertex: bool) {.
    importcpp: "SetColorPerVertex", header: "VrmlData_IndexedLineSet.hxx".}
proc tShape*(this: var VrmlDataIndexedLineSet): Handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_IndexedLineSet.hxx".}
proc clone*(this: VrmlDataIndexedLineSet; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_IndexedLineSet.hxx".}
proc read*(this: var VrmlDataIndexedLineSet; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_IndexedLineSet.hxx".}
proc write*(this: VrmlDataIndexedLineSet; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_IndexedLineSet.hxx".}
proc isDefault*(this: VrmlDataIndexedLineSet): bool {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_IndexedLineSet.hxx".}
type
  VrmlDataIndexedLineSetbaseType* = VrmlDataGeometry

proc getTypeName*(): cstring {.importcpp: "VrmlData_IndexedLineSet::get_type_name(@)",
                            header: "VrmlData_IndexedLineSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_IndexedLineSet::get_type_descriptor(@)",
    header: "VrmlData_IndexedLineSet.hxx".}
proc dynamicType*(this: VrmlDataIndexedLineSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlData_IndexedLineSet.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_IndexedLineSet"
type
  HandleC1C1* = Handle[VrmlDataIndexedLineSet]


























