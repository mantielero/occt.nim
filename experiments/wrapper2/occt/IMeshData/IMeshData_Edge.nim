##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

discard "forward decl of IMeshData_Face"
type
  IMeshDataEdge* {.importcpp: "IMeshData_Edge", header: "IMeshData_Edge.hxx", bycopy.} = object of IMeshDataTessellatedShape ##
                                                                                                                   ## !
                                                                                                                   ## Destructor.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Constructor.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Initializes
                                                                                                                   ## empty
                                                                                                                   ## model.


proc destroyIMeshDataEdge*(this: var IMeshDataEdge) {.
    importcpp: "#.~IMeshData_Edge()", header: "IMeshData_Edge.hxx".}
proc getEdge*(this: IMeshDataEdge): TopoDS_Edge {.noSideEffect, importcpp: "GetEdge",
    header: "IMeshData_Edge.hxx".}
proc pCurvesNb*(this: IMeshDataEdge): int {.noSideEffect, importcpp: "PCurvesNb",
                                        header: "IMeshData_Edge.hxx".}
proc addPCurve*(this: var IMeshDataEdge; theDFace: IFacePtr;
               theOrientation: TopAbsOrientation): IPCurveHandle {.
    importcpp: "AddPCurve", header: "IMeshData_Edge.hxx".}
proc getPCurve*(this: IMeshDataEdge; theDFace: IFacePtr;
               theOrientation: TopAbsOrientation): IPCurveHandle {.noSideEffect,
    importcpp: "GetPCurve", header: "IMeshData_Edge.hxx".}
proc getPCurve*(this: IMeshDataEdge; theIndex: int): IPCurveHandle {.noSideEffect,
    importcpp: "GetPCurve", header: "IMeshData_Edge.hxx".}
proc clear*(this: var IMeshDataEdge; isKeepEndPoints: bool) {.importcpp: "Clear",
    header: "IMeshData_Edge.hxx".}
proc isFree*(this: IMeshDataEdge): bool {.noSideEffect, importcpp: "IsFree",
                                      header: "IMeshData_Edge.hxx".}
proc setCurve*(this: var IMeshDataEdge; theCurve: ICurveHandle) {.
    importcpp: "SetCurve", header: "IMeshData_Edge.hxx".}
proc getCurve*(this: IMeshDataEdge): ICurveHandle {.noSideEffect,
    importcpp: "GetCurve", header: "IMeshData_Edge.hxx".}
proc getAngularDeflection*(this: IMeshDataEdge): float {.noSideEffect,
    importcpp: "GetAngularDeflection", header: "IMeshData_Edge.hxx".}
proc setAngularDeflection*(this: var IMeshDataEdge; theValue: float) {.
    importcpp: "SetAngularDeflection", header: "IMeshData_Edge.hxx".}
proc getSameParam*(this: IMeshDataEdge): bool {.noSideEffect,
    importcpp: "GetSameParam", header: "IMeshData_Edge.hxx".}
proc setSameParam*(this: var IMeshDataEdge; theValue: bool) {.
    importcpp: "SetSameParam", header: "IMeshData_Edge.hxx".}
proc getSameRange*(this: IMeshDataEdge): bool {.noSideEffect,
    importcpp: "GetSameRange", header: "IMeshData_Edge.hxx".}
proc setSameRange*(this: var IMeshDataEdge; theValue: bool) {.
    importcpp: "SetSameRange", header: "IMeshData_Edge.hxx".}
proc getDegenerated*(this: IMeshDataEdge): bool {.noSideEffect,
    importcpp: "GetDegenerated", header: "IMeshData_Edge.hxx".}
proc setDegenerated*(this: var IMeshDataEdge; theValue: bool) {.
    importcpp: "SetDegenerated", header: "IMeshData_Edge.hxx".}
type
  IMeshDataEdgebaseType* = IMeshDataTessellatedShape

proc getTypeName*(): cstring {.importcpp: "IMeshData_Edge::get_type_name(@)",
                            header: "IMeshData_Edge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_Edge::get_type_descriptor(@)",
    header: "IMeshData_Edge.hxx".}
proc dynamicType*(this: IMeshDataEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Edge.hxx".}
