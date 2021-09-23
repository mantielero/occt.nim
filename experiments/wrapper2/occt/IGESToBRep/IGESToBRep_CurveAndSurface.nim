##  Created on: 1994-03-14
##  Created by: s:	Christophe GUYOT & Frederic UNTEREINER
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Message/Message_ProgressRange

discard "forward decl of Geom_Surface"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Message_Msg"
type
  IGESToBRep_CurveAndSurface* {.importcpp: "IGESToBRep_CurveAndSurface",
                               header: "IGESToBRep_CurveAndSurface.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## tool
                                                                                      ## CurveAndSurface
                                                                                      ## ready
                                                                                      ## to
                                                                                      ## run,
                                                                                      ## with
                                                                                      ##
                                                                                      ## !
                                                                                      ## epsilons
                                                                                      ## set
                                                                                      ## to
                                                                                      ## 1.E-04,
                                                                                      ## myModeTopo
                                                                                      ## to
                                                                                      ## True,
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## optimization
                                                                                      ## of
                                                                                      ## the
                                                                                      ## continuity
                                                                                      ## to
                                                                                      ## False.


proc constructIGESToBRep_CurveAndSurface*(): IGESToBRep_CurveAndSurface {.
    constructor, importcpp: "IGESToBRep_CurveAndSurface(@)",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc constructIGESToBRep_CurveAndSurface*(eps: Standard_Real;
    epsGeom: Standard_Real; epsCoeff: Standard_Real; mode: Standard_Boolean;
    modeapprox: Standard_Boolean; optimized: Standard_Boolean): IGESToBRep_CurveAndSurface {.
    constructor, importcpp: "IGESToBRep_CurveAndSurface(@)",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc Init*(this: var IGESToBRep_CurveAndSurface) {.importcpp: "Init",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetEpsilon*(this: var IGESToBRep_CurveAndSurface; eps: Standard_Real) {.
    importcpp: "SetEpsilon", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetEpsilon*(this: IGESToBRep_CurveAndSurface): Standard_Real {.noSideEffect,
    importcpp: "GetEpsilon", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetEpsCoeff*(this: var IGESToBRep_CurveAndSurface; eps: Standard_Real) {.
    importcpp: "SetEpsCoeff", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetEpsCoeff*(this: IGESToBRep_CurveAndSurface): Standard_Real {.noSideEffect,
    importcpp: "GetEpsCoeff", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetEpsGeom*(this: var IGESToBRep_CurveAndSurface; eps: Standard_Real) {.
    importcpp: "SetEpsGeom", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetEpsGeom*(this: IGESToBRep_CurveAndSurface): Standard_Real {.noSideEffect,
    importcpp: "GetEpsGeom", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetMinTol*(this: var IGESToBRep_CurveAndSurface; mintol: Standard_Real) {.
    importcpp: "SetMinTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetMaxTol*(this: var IGESToBRep_CurveAndSurface; maxtol: Standard_Real) {.
    importcpp: "SetMaxTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc UpdateMinMaxTol*(this: var IGESToBRep_CurveAndSurface) {.
    importcpp: "UpdateMinMaxTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetMinTol*(this: IGESToBRep_CurveAndSurface): Standard_Real {.noSideEffect,
    importcpp: "GetMinTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetMaxTol*(this: IGESToBRep_CurveAndSurface): Standard_Real {.noSideEffect,
    importcpp: "GetMaxTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetModeApprox*(this: var IGESToBRep_CurveAndSurface; mode: Standard_Boolean) {.
    importcpp: "SetModeApprox", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetModeApprox*(this: IGESToBRep_CurveAndSurface): Standard_Boolean {.
    noSideEffect, importcpp: "GetModeApprox",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetModeTransfer*(this: var IGESToBRep_CurveAndSurface; mode: Standard_Boolean) {.
    importcpp: "SetModeTransfer", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetModeTransfer*(this: IGESToBRep_CurveAndSurface): Standard_Boolean {.
    noSideEffect, importcpp: "GetModeTransfer",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetOptimized*(this: var IGESToBRep_CurveAndSurface; optimized: Standard_Boolean) {.
    importcpp: "SetOptimized", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetOptimized*(this: IGESToBRep_CurveAndSurface): Standard_Boolean {.
    noSideEffect, importcpp: "GetOptimized",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetUnitFactor*(this: IGESToBRep_CurveAndSurface): Standard_Real {.noSideEffect,
    importcpp: "GetUnitFactor", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetSurfaceCurve*(this: var IGESToBRep_CurveAndSurface; ival: Standard_Integer) {.
    importcpp: "SetSurfaceCurve", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetSurfaceCurve*(this: IGESToBRep_CurveAndSurface): Standard_Integer {.
    noSideEffect, importcpp: "GetSurfaceCurve",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetModel*(this: var IGESToBRep_CurveAndSurface;
              model: handle[IGESData_IGESModel]) {.importcpp: "SetModel",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetModel*(this: IGESToBRep_CurveAndSurface): handle[IGESData_IGESModel] {.
    noSideEffect, importcpp: "GetModel", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetContinuity*(this: var IGESToBRep_CurveAndSurface;
                   continuity: Standard_Integer) {.importcpp: "SetContinuity",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetContinuity*(this: IGESToBRep_CurveAndSurface): Standard_Integer {.
    noSideEffect, importcpp: "GetContinuity",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetTransferProcess*(this: var IGESToBRep_CurveAndSurface;
                        TP: handle[Transfer_TransientProcess]) {.
    importcpp: "SetTransferProcess", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetTransferProcess*(this: IGESToBRep_CurveAndSurface): handle[
    Transfer_TransientProcess] {.noSideEffect, importcpp: "GetTransferProcess",
                                header: "IGESToBRep_CurveAndSurface.hxx".}
proc TransferCurveAndSurface*(this: var IGESToBRep_CurveAndSurface;
                             start: handle[IGESData_IGESEntity]; theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDS_Shape {.
    importcpp: "TransferCurveAndSurface", header: "IGESToBRep_CurveAndSurface.hxx".}
proc TransferGeometry*(this: var IGESToBRep_CurveAndSurface;
                      start: handle[IGESData_IGESEntity]; theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDS_Shape {.
    importcpp: "TransferGeometry", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SendFail*(this: var IGESToBRep_CurveAndSurface;
              start: handle[IGESData_IGESEntity]; amsg: Message_Msg) {.
    importcpp: "SendFail", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SendWarning*(this: var IGESToBRep_CurveAndSurface;
                 start: handle[IGESData_IGESEntity]; amsg: Message_Msg) {.
    importcpp: "SendWarning", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SendMsg*(this: var IGESToBRep_CurveAndSurface;
             start: handle[IGESData_IGESEntity]; amsg: Message_Msg) {.
    importcpp: "SendMsg", header: "IGESToBRep_CurveAndSurface.hxx".}
proc HasShapeResult*(this: IGESToBRep_CurveAndSurface;
                    start: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "HasShapeResult",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetShapeResult*(this: IGESToBRep_CurveAndSurface;
                    start: handle[IGESData_IGESEntity]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShapeResult",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetShapeResult*(this: var IGESToBRep_CurveAndSurface;
                    start: handle[IGESData_IGESEntity]; result: TopoDS_Shape) {.
    importcpp: "SetShapeResult", header: "IGESToBRep_CurveAndSurface.hxx".}
proc NbShapeResult*(this: IGESToBRep_CurveAndSurface;
                   start: handle[IGESData_IGESEntity]): Standard_Integer {.
    noSideEffect, importcpp: "NbShapeResult",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetShapeResult*(this: IGESToBRep_CurveAndSurface;
                    start: handle[IGESData_IGESEntity]; num: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShapeResult",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc AddShapeResult*(this: var IGESToBRep_CurveAndSurface;
                    start: handle[IGESData_IGESEntity]; result: TopoDS_Shape) {.
    importcpp: "AddShapeResult", header: "IGESToBRep_CurveAndSurface.hxx".}
proc SetSurface*(this: var IGESToBRep_CurveAndSurface;
                theSurface: handle[Geom_Surface]) {.importcpp: "SetSurface",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc Surface*(this: IGESToBRep_CurveAndSurface): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "IGESToBRep_CurveAndSurface.hxx".}
proc GetUVResolution*(this: var IGESToBRep_CurveAndSurface): Standard_Real {.
    importcpp: "GetUVResolution", header: "IGESToBRep_CurveAndSurface.hxx".}