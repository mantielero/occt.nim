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

import
  IMeshData_TessellatedShape, IMeshData_StatusOwner, ../Standard/Standard_Type,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS, IMeshData_Curve, IMeshData_PCurve,
  IMeshData_Types, ../BRep/BRep_Tool

discard "forward decl of IMeshData_Face"
type
  IMeshData_Edge* {.importcpp: "IMeshData_Edge", header: "IMeshData_Edge.hxx", bycopy.} = object of IMeshData_TessellatedShape ##
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


proc destroyIMeshData_Edge*(this: var IMeshData_Edge) {.
    importcpp: "#.~IMeshData_Edge()", header: "IMeshData_Edge.hxx".}
proc GetEdge*(this: IMeshData_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "GetEdge", header: "IMeshData_Edge.hxx".}
proc PCurvesNb*(this: IMeshData_Edge): Standard_Integer {.noSideEffect,
    importcpp: "PCurvesNb", header: "IMeshData_Edge.hxx".}
proc AddPCurve*(this: var IMeshData_Edge; theDFace: IFacePtr;
               theOrientation: TopAbs_Orientation): IPCurveHandle {.
    importcpp: "AddPCurve", header: "IMeshData_Edge.hxx".}
proc GetPCurve*(this: IMeshData_Edge; theDFace: IFacePtr;
               theOrientation: TopAbs_Orientation): IPCurveHandle {.noSideEffect,
    importcpp: "GetPCurve", header: "IMeshData_Edge.hxx".}
proc GetPCurve*(this: IMeshData_Edge; theIndex: Standard_Integer): IPCurveHandle {.
    noSideEffect, importcpp: "GetPCurve", header: "IMeshData_Edge.hxx".}
proc Clear*(this: var IMeshData_Edge; isKeepEndPoints: Standard_Boolean) {.
    importcpp: "Clear", header: "IMeshData_Edge.hxx".}
proc IsFree*(this: IMeshData_Edge): Standard_Boolean {.noSideEffect,
    importcpp: "IsFree", header: "IMeshData_Edge.hxx".}
proc SetCurve*(this: var IMeshData_Edge; theCurve: ICurveHandle) {.
    importcpp: "SetCurve", header: "IMeshData_Edge.hxx".}
proc GetCurve*(this: IMeshData_Edge): ICurveHandle {.noSideEffect,
    importcpp: "GetCurve", header: "IMeshData_Edge.hxx".}
proc GetAngularDeflection*(this: IMeshData_Edge): Standard_Real {.noSideEffect,
    importcpp: "GetAngularDeflection", header: "IMeshData_Edge.hxx".}
proc SetAngularDeflection*(this: var IMeshData_Edge; theValue: Standard_Real) {.
    importcpp: "SetAngularDeflection", header: "IMeshData_Edge.hxx".}
proc GetSameParam*(this: IMeshData_Edge): Standard_Boolean {.noSideEffect,
    importcpp: "GetSameParam", header: "IMeshData_Edge.hxx".}
proc SetSameParam*(this: var IMeshData_Edge; theValue: Standard_Boolean) {.
    importcpp: "SetSameParam", header: "IMeshData_Edge.hxx".}
proc GetSameRange*(this: IMeshData_Edge): Standard_Boolean {.noSideEffect,
    importcpp: "GetSameRange", header: "IMeshData_Edge.hxx".}
proc SetSameRange*(this: var IMeshData_Edge; theValue: Standard_Boolean) {.
    importcpp: "SetSameRange", header: "IMeshData_Edge.hxx".}
proc GetDegenerated*(this: IMeshData_Edge): Standard_Boolean {.noSideEffect,
    importcpp: "GetDegenerated", header: "IMeshData_Edge.hxx".}
proc SetDegenerated*(this: var IMeshData_Edge; theValue: Standard_Boolean) {.
    importcpp: "SetDegenerated", header: "IMeshData_Edge.hxx".}
type
  IMeshData_Edgebase_type* = IMeshData_TessellatedShape

proc get_type_name*(): cstring {.importcpp: "IMeshData_Edge::get_type_name(@)",
                              header: "IMeshData_Edge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_Edge::get_type_descriptor(@)",
    header: "IMeshData_Edge.hxx".}
proc DynamicType*(this: IMeshData_Edge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Edge.hxx".}