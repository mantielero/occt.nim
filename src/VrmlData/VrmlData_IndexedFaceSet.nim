##  Created on: 2006-05-26
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## *
##   Implementation of IndexedFaceSet node
##

type
  VrmlDataIndexedFaceSet* {.importcpp: "VrmlData_IndexedFaceSet",
                           header: "VrmlData_IndexedFaceSet.hxx", bycopy.} = object of VrmlDataFaceted ##  ---------- PUBLIC METHODS ----------
                                                                                                ## *
                                                                                                ##  Empty constructor
                                                                                                ##
                                                                                                ##  ---------- PROTECTED METHODS ----------
                                                                                                ##    /**
                                                                                                ##     * If the normals are not defined, here we compute them from the polygons.
                                                                                                ##     * @param theArray
                                                                                                ##     *   Array of float values having length:<ul>
                                                                                                ##     *   <li>if myNormalPerVertex==TRUE : 3 * myCoords->Length()</li>
                                                                                                ##     *   <li>if myNormalPerVertex==FALSE: 9 * number_of_triangles </li>
                                                                                                ##     *   </ul>
                                                                                                ##     */
                                                                                                ##    Standard_EXPORT void
                                                                                                ##                  computeNormals     (Standard_ShortReal * theArray);
                                                                                                ##  ---------- PRIVATE FIELDS ----------
                                                                                                ##  Declaration of CASCADE RTTI


proc constructVrmlDataIndexedFaceSet*(): VrmlDataIndexedFaceSet {.constructor,
    importcpp: "VrmlData_IndexedFaceSet(@)", header: "VrmlData_IndexedFaceSet.hxx".}
proc constructVrmlDataIndexedFaceSet*(theScene: VrmlDataScene; theName: cstring;
                                     isCCW: bool = true; isSolid: bool = true;
                                     isConvex: bool = true;
                                     theCreaseAngle: cfloat = 0.0): VrmlDataIndexedFaceSet {.
    constructor, importcpp: "VrmlData_IndexedFaceSet(@)",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc normals*(this: VrmlDataIndexedFaceSet): Handle[VrmlDataNormal] {.noSideEffect,
    importcpp: "Normals", header: "VrmlData_IndexedFaceSet.hxx".}
proc colors*(this: VrmlDataIndexedFaceSet): Handle[VrmlDataColor] {.noSideEffect,
    importcpp: "Colors", header: "VrmlData_IndexedFaceSet.hxx".}
proc textureCoords*(this: VrmlDataIndexedFaceSet): Handle[VrmlDataTextureCoordinate] {.
    noSideEffect, importcpp: "TextureCoords", header: "VrmlData_IndexedFaceSet.hxx".}
proc coordinates*(this: VrmlDataIndexedFaceSet): Handle[VrmlDataCoordinate] {.
    noSideEffect, importcpp: "Coordinates", header: "VrmlData_IndexedFaceSet.hxx".}
proc polygons*(this: VrmlDataIndexedFaceSet; arrPolygons: ptr ptr cint): csize_t {.
    noSideEffect, importcpp: "Polygons", header: "VrmlData_IndexedFaceSet.hxx".}
proc polygon*(this: var VrmlDataIndexedFaceSet; iFace: cint; outIndice: ptr cint): cint {.
    importcpp: "Polygon", header: "VrmlData_IndexedFaceSet.hxx".}
proc setCoordinates*(this: var VrmlDataIndexedFaceSet;
                    theCoord: Handle[VrmlDataCoordinate]) {.
    importcpp: "SetCoordinates", header: "VrmlData_IndexedFaceSet.hxx".}
proc setPolygons*(this: var VrmlDataIndexedFaceSet; nPolygons: StandardSize;
                 thePolygons: ptr ptr cint) {.importcpp: "SetPolygons",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc arrayNormalInd*(this: VrmlDataIndexedFaceSet; arrNormalInd: ptr ptr cint): csize_t {.
    noSideEffect, importcpp: "ArrayNormalInd",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc indiceNormals*(this: var VrmlDataIndexedFaceSet; iFace: cint; outIndice: ptr cint): cint {.
    importcpp: "IndiceNormals", header: "VrmlData_IndexedFaceSet.hxx".}
proc getNormal*(this: var VrmlDataIndexedFaceSet; iFace: cint; iVertex: cint): Xyz {.
    importcpp: "GetNormal", header: "VrmlData_IndexedFaceSet.hxx".}
proc setNormalInd*(this: var VrmlDataIndexedFaceSet; nIndice: StandardSize;
                  theIndice: ptr ptr cint) {.importcpp: "SetNormalInd",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc setNormals*(this: var VrmlDataIndexedFaceSet;
                theNormals: Handle[VrmlDataNormal]) {.importcpp: "SetNormals",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc setNormalPerVertex*(this: var VrmlDataIndexedFaceSet; isNormalPerVertex: bool) {.
    importcpp: "SetNormalPerVertex", header: "VrmlData_IndexedFaceSet.hxx".}
proc arrayColorInd*(this: VrmlDataIndexedFaceSet; arrColorInd: ptr ptr cint): csize_t {.
    noSideEffect, importcpp: "ArrayColorInd", header: "VrmlData_IndexedFaceSet.hxx".}
proc getColor*(this: var VrmlDataIndexedFaceSet; iFace: cint; iVertex: cint): QuantityColor {.
    importcpp: "GetColor", header: "VrmlData_IndexedFaceSet.hxx".}
proc setColorInd*(this: var VrmlDataIndexedFaceSet; nIndice: StandardSize;
                 theIndice: ptr ptr cint) {.importcpp: "SetColorInd",
                                        header: "VrmlData_IndexedFaceSet.hxx".}
proc setColors*(this: var VrmlDataIndexedFaceSet; theColors: Handle[VrmlDataColor]) {.
    importcpp: "SetColors", header: "VrmlData_IndexedFaceSet.hxx".}
proc setColorPerVertex*(this: var VrmlDataIndexedFaceSet; isColorPerVertex: bool) {.
    importcpp: "SetColorPerVertex", header: "VrmlData_IndexedFaceSet.hxx".}
proc arrayTextureCoordInd*(this: VrmlDataIndexedFaceSet;
                          arrTextureCoordInd: ptr ptr cint): csize_t {.noSideEffect,
    importcpp: "ArrayTextureCoordInd", header: "VrmlData_IndexedFaceSet.hxx".}
proc setTextureCoordInd*(this: var VrmlDataIndexedFaceSet; nIndice: StandardSize;
                        theIndice: ptr ptr cint) {.importcpp: "SetTextureCoordInd",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc setTextureCoords*(this: var VrmlDataIndexedFaceSet;
                      tc: Handle[VrmlDataTextureCoordinate]) {.
    importcpp: "SetTextureCoords", header: "VrmlData_IndexedFaceSet.hxx".}
proc tShape*(this: var VrmlDataIndexedFaceSet): Handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_IndexedFaceSet.hxx".}
proc clone*(this: VrmlDataIndexedFaceSet; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_IndexedFaceSet.hxx".}
proc read*(this: var VrmlDataIndexedFaceSet; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_IndexedFaceSet.hxx".}
proc write*(this: VrmlDataIndexedFaceSet; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_IndexedFaceSet.hxx".}
proc isDefault*(this: VrmlDataIndexedFaceSet): bool {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_IndexedFaceSet.hxx".}
type
  VrmlDataIndexedFaceSetbaseType* = VrmlDataFaceted

proc getTypeName*(): cstring {.importcpp: "VrmlData_IndexedFaceSet::get_type_name(@)",
                            header: "VrmlData_IndexedFaceSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_IndexedFaceSet::get_type_descriptor(@)",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc dynamicType*(this: VrmlDataIndexedFaceSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlData_IndexedFaceSet.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_IndexedFaceSet"
type
  HandleC1C1* = Handle[VrmlDataIndexedFaceSet]


























