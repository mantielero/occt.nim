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

discard "forward decl of Geom_Surface"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Message_Msg"
type
  IGESToBRepCurveAndSurface* {.importcpp: "IGESToBRep_CurveAndSurface",
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


proc constructIGESToBRepCurveAndSurface*(): IGESToBRepCurveAndSurface {.
    constructor, importcpp: "IGESToBRep_CurveAndSurface(@)",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc constructIGESToBRepCurveAndSurface*(eps: float; epsGeom: float; epsCoeff: float;
                                        mode: bool; modeapprox: bool;
                                        optimized: bool): IGESToBRepCurveAndSurface {.
    constructor, importcpp: "IGESToBRep_CurveAndSurface(@)",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc init*(this: var IGESToBRepCurveAndSurface) {.importcpp: "Init",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc setEpsilon*(this: var IGESToBRepCurveAndSurface; eps: float) {.
    importcpp: "SetEpsilon", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getEpsilon*(this: IGESToBRepCurveAndSurface): float {.noSideEffect,
    importcpp: "GetEpsilon", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setEpsCoeff*(this: var IGESToBRepCurveAndSurface; eps: float) {.
    importcpp: "SetEpsCoeff", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getEpsCoeff*(this: IGESToBRepCurveAndSurface): float {.noSideEffect,
    importcpp: "GetEpsCoeff", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setEpsGeom*(this: var IGESToBRepCurveAndSurface; eps: float) {.
    importcpp: "SetEpsGeom", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getEpsGeom*(this: IGESToBRepCurveAndSurface): float {.noSideEffect,
    importcpp: "GetEpsGeom", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setMinTol*(this: var IGESToBRepCurveAndSurface; mintol: float) {.
    importcpp: "SetMinTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setMaxTol*(this: var IGESToBRepCurveAndSurface; maxtol: float) {.
    importcpp: "SetMaxTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc updateMinMaxTol*(this: var IGESToBRepCurveAndSurface) {.
    importcpp: "UpdateMinMaxTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getMinTol*(this: IGESToBRepCurveAndSurface): float {.noSideEffect,
    importcpp: "GetMinTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getMaxTol*(this: IGESToBRepCurveAndSurface): float {.noSideEffect,
    importcpp: "GetMaxTol", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setModeApprox*(this: var IGESToBRepCurveAndSurface; mode: bool) {.
    importcpp: "SetModeApprox", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getModeApprox*(this: IGESToBRepCurveAndSurface): bool {.noSideEffect,
    importcpp: "GetModeApprox", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setModeTransfer*(this: var IGESToBRepCurveAndSurface; mode: bool) {.
    importcpp: "SetModeTransfer", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getModeTransfer*(this: IGESToBRepCurveAndSurface): bool {.noSideEffect,
    importcpp: "GetModeTransfer", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setOptimized*(this: var IGESToBRepCurveAndSurface; optimized: bool) {.
    importcpp: "SetOptimized", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getOptimized*(this: IGESToBRepCurveAndSurface): bool {.noSideEffect,
    importcpp: "GetOptimized", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getUnitFactor*(this: IGESToBRepCurveAndSurface): float {.noSideEffect,
    importcpp: "GetUnitFactor", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setSurfaceCurve*(this: var IGESToBRepCurveAndSurface; ival: int) {.
    importcpp: "SetSurfaceCurve", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getSurfaceCurve*(this: IGESToBRepCurveAndSurface): int {.noSideEffect,
    importcpp: "GetSurfaceCurve", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setModel*(this: var IGESToBRepCurveAndSurface; model: Handle[IGESDataIGESModel]) {.
    importcpp: "SetModel", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getModel*(this: IGESToBRepCurveAndSurface): Handle[IGESDataIGESModel] {.
    noSideEffect, importcpp: "GetModel", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setContinuity*(this: var IGESToBRepCurveAndSurface; continuity: int) {.
    importcpp: "SetContinuity", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getContinuity*(this: IGESToBRepCurveAndSurface): int {.noSideEffect,
    importcpp: "GetContinuity", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setTransferProcess*(this: var IGESToBRepCurveAndSurface;
                        tp: Handle[TransferTransientProcess]) {.
    importcpp: "SetTransferProcess", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getTransferProcess*(this: IGESToBRepCurveAndSurface): Handle[
    TransferTransientProcess] {.noSideEffect, importcpp: "GetTransferProcess",
                               header: "IGESToBRep_CurveAndSurface.hxx".}
proc transferCurveAndSurface*(this: var IGESToBRepCurveAndSurface;
                             start: Handle[IGESDataIGESEntity]; theProgress: MessageProgressRange = messageProgressRange()): TopoDS_Shape {.
    importcpp: "TransferCurveAndSurface", header: "IGESToBRep_CurveAndSurface.hxx".}
proc transferGeometry*(this: var IGESToBRepCurveAndSurface;
                      start: Handle[IGESDataIGESEntity]; theProgress: MessageProgressRange = messageProgressRange()): TopoDS_Shape {.
    importcpp: "TransferGeometry", header: "IGESToBRep_CurveAndSurface.hxx".}
proc sendFail*(this: var IGESToBRepCurveAndSurface;
              start: Handle[IGESDataIGESEntity]; amsg: MessageMsg) {.
    importcpp: "SendFail", header: "IGESToBRep_CurveAndSurface.hxx".}
proc sendWarning*(this: var IGESToBRepCurveAndSurface;
                 start: Handle[IGESDataIGESEntity]; amsg: MessageMsg) {.
    importcpp: "SendWarning", header: "IGESToBRep_CurveAndSurface.hxx".}
proc sendMsg*(this: var IGESToBRepCurveAndSurface;
             start: Handle[IGESDataIGESEntity]; amsg: MessageMsg) {.
    importcpp: "SendMsg", header: "IGESToBRep_CurveAndSurface.hxx".}
proc hasShapeResult*(this: IGESToBRepCurveAndSurface;
                    start: Handle[IGESDataIGESEntity]): bool {.noSideEffect,
    importcpp: "HasShapeResult", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getShapeResult*(this: IGESToBRepCurveAndSurface;
                    start: Handle[IGESDataIGESEntity]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShapeResult",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc setShapeResult*(this: var IGESToBRepCurveAndSurface;
                    start: Handle[IGESDataIGESEntity]; result: TopoDS_Shape) {.
    importcpp: "SetShapeResult", header: "IGESToBRep_CurveAndSurface.hxx".}
proc nbShapeResult*(this: IGESToBRepCurveAndSurface;
                   start: Handle[IGESDataIGESEntity]): int {.noSideEffect,
    importcpp: "NbShapeResult", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getShapeResult*(this: IGESToBRepCurveAndSurface;
                    start: Handle[IGESDataIGESEntity]; num: int): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShapeResult",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc addShapeResult*(this: var IGESToBRepCurveAndSurface;
                    start: Handle[IGESDataIGESEntity]; result: TopoDS_Shape) {.
    importcpp: "AddShapeResult", header: "IGESToBRep_CurveAndSurface.hxx".}
proc setSurface*(this: var IGESToBRepCurveAndSurface;
                theSurface: Handle[GeomSurface]) {.importcpp: "SetSurface",
    header: "IGESToBRep_CurveAndSurface.hxx".}
proc surface*(this: IGESToBRepCurveAndSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "IGESToBRep_CurveAndSurface.hxx".}
proc getUVResolution*(this: var IGESToBRepCurveAndSurface): float {.
    importcpp: "GetUVResolution", header: "IGESToBRep_CurveAndSurface.hxx".}
