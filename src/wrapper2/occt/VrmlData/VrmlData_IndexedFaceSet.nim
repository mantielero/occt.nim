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

import
  VrmlData_Faceted, VrmlData_Coordinate, VrmlData_Normal, VrmlData_Color,
  VrmlData_TextureCoordinate, ../gp/gp_XYZ, ../Quantity/Quantity_Color

## *
##   Implementation of IndexedFaceSet node
##

type
  VrmlData_IndexedFaceSet* {.importcpp: "VrmlData_IndexedFaceSet",
                            header: "VrmlData_IndexedFaceSet.hxx", bycopy.} = object of VrmlData_Faceted ##  ---------- PUBLIC METHODS ----------
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


proc constructVrmlData_IndexedFaceSet*(): VrmlData_IndexedFaceSet {.constructor,
    importcpp: "VrmlData_IndexedFaceSet(@)", header: "VrmlData_IndexedFaceSet.hxx".}
proc constructVrmlData_IndexedFaceSet*(theScene: VrmlData_Scene; theName: cstring;
                                      isCCW: Standard_Boolean = Standard_True;
    isSolid: Standard_Boolean = Standard_True; isConvex: Standard_Boolean = Standard_True;
                                      theCreaseAngle: Standard_Real = 0.0): VrmlData_IndexedFaceSet {.
    constructor, importcpp: "VrmlData_IndexedFaceSet(@)",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc Normals*(this: VrmlData_IndexedFaceSet): handle[VrmlData_Normal] {.
    noSideEffect, importcpp: "Normals", header: "VrmlData_IndexedFaceSet.hxx".}
proc Colors*(this: VrmlData_IndexedFaceSet): handle[VrmlData_Color] {.noSideEffect,
    importcpp: "Colors", header: "VrmlData_IndexedFaceSet.hxx".}
proc TextureCoords*(this: VrmlData_IndexedFaceSet): handle[
    VrmlData_TextureCoordinate] {.noSideEffect, importcpp: "TextureCoords",
                                 header: "VrmlData_IndexedFaceSet.hxx".}
proc Coordinates*(this: VrmlData_IndexedFaceSet): handle[VrmlData_Coordinate] {.
    noSideEffect, importcpp: "Coordinates", header: "VrmlData_IndexedFaceSet.hxx".}
proc Polygons*(this: VrmlData_IndexedFaceSet; arrPolygons: ptr ptr Standard_Integer): csize_t {.
    noSideEffect, importcpp: "Polygons", header: "VrmlData_IndexedFaceSet.hxx".}
proc Polygon*(this: var VrmlData_IndexedFaceSet; iFace: Standard_Integer;
             outIndice: ptr Standard_Integer): Standard_Integer {.
    importcpp: "Polygon", header: "VrmlData_IndexedFaceSet.hxx".}
proc SetCoordinates*(this: var VrmlData_IndexedFaceSet;
                    theCoord: handle[VrmlData_Coordinate]) {.
    importcpp: "SetCoordinates", header: "VrmlData_IndexedFaceSet.hxx".}
proc SetPolygons*(this: var VrmlData_IndexedFaceSet; nPolygons: Standard_Size;
                 thePolygons: ptr ptr Standard_Integer) {.importcpp: "SetPolygons",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc ArrayNormalInd*(this: VrmlData_IndexedFaceSet;
                    arrNormalInd: ptr ptr Standard_Integer): csize_t {.noSideEffect,
    importcpp: "ArrayNormalInd", header: "VrmlData_IndexedFaceSet.hxx".}
proc IndiceNormals*(this: var VrmlData_IndexedFaceSet; iFace: Standard_Integer;
                   outIndice: ptr Standard_Integer): Standard_Integer {.
    importcpp: "IndiceNormals", header: "VrmlData_IndexedFaceSet.hxx".}
proc GetNormal*(this: var VrmlData_IndexedFaceSet; iFace: Standard_Integer;
               iVertex: Standard_Integer): gp_XYZ {.importcpp: "GetNormal",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc SetNormalInd*(this: var VrmlData_IndexedFaceSet; nIndice: Standard_Size;
                  theIndice: ptr ptr Standard_Integer) {.importcpp: "SetNormalInd",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc SetNormals*(this: var VrmlData_IndexedFaceSet;
                theNormals: handle[VrmlData_Normal]) {.importcpp: "SetNormals",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc SetNormalPerVertex*(this: var VrmlData_IndexedFaceSet;
                        isNormalPerVertex: Standard_Boolean) {.
    importcpp: "SetNormalPerVertex", header: "VrmlData_IndexedFaceSet.hxx".}
proc ArrayColorInd*(this: VrmlData_IndexedFaceSet;
                   arrColorInd: ptr ptr Standard_Integer): csize_t {.noSideEffect,
    importcpp: "ArrayColorInd", header: "VrmlData_IndexedFaceSet.hxx".}
proc GetColor*(this: var VrmlData_IndexedFaceSet; iFace: Standard_Integer;
              iVertex: Standard_Integer): Quantity_Color {.importcpp: "GetColor",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc SetColorInd*(this: var VrmlData_IndexedFaceSet; nIndice: Standard_Size;
                 theIndice: ptr ptr Standard_Integer) {.importcpp: "SetColorInd",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc SetColors*(this: var VrmlData_IndexedFaceSet; theColors: handle[VrmlData_Color]) {.
    importcpp: "SetColors", header: "VrmlData_IndexedFaceSet.hxx".}
proc SetColorPerVertex*(this: var VrmlData_IndexedFaceSet;
                       isColorPerVertex: Standard_Boolean) {.
    importcpp: "SetColorPerVertex", header: "VrmlData_IndexedFaceSet.hxx".}
proc ArrayTextureCoordInd*(this: VrmlData_IndexedFaceSet;
                          arrTextureCoordInd: ptr ptr Standard_Integer): csize_t {.
    noSideEffect, importcpp: "ArrayTextureCoordInd",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc SetTextureCoordInd*(this: var VrmlData_IndexedFaceSet; nIndice: Standard_Size;
                        theIndice: ptr ptr Standard_Integer) {.
    importcpp: "SetTextureCoordInd", header: "VrmlData_IndexedFaceSet.hxx".}
proc SetTextureCoords*(this: var VrmlData_IndexedFaceSet;
                      tc: handle[VrmlData_TextureCoordinate]) {.
    importcpp: "SetTextureCoords", header: "VrmlData_IndexedFaceSet.hxx".}
proc TShape*(this: var VrmlData_IndexedFaceSet): handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_IndexedFaceSet.hxx".}
proc Clone*(this: VrmlData_IndexedFaceSet; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_IndexedFaceSet.hxx".}
proc Read*(this: var VrmlData_IndexedFaceSet; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_IndexedFaceSet.hxx".}
proc Write*(this: VrmlData_IndexedFaceSet; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_IndexedFaceSet.hxx".}
proc IsDefault*(this: VrmlData_IndexedFaceSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_IndexedFaceSet.hxx".}
type
  VrmlData_IndexedFaceSetbase_type* = VrmlData_Faceted

proc get_type_name*(): cstring {.importcpp: "VrmlData_IndexedFaceSet::get_type_name(@)",
                              header: "VrmlData_IndexedFaceSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_IndexedFaceSet::get_type_descriptor(@)",
    header: "VrmlData_IndexedFaceSet.hxx".}
proc DynamicType*(this: VrmlData_IndexedFaceSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlData_IndexedFaceSet.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_IndexedFaceSet"
type
  Handle_VrmlData_IndexedFaceSet* = handle[VrmlData_IndexedFaceSet]
