##  Created on: 1994-04-01
##  Created by: Modelistation
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

discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of BRepTopAdaptor_TopolTool"
type
  HandleC1C1* = Handle[BRepTopAdaptorTopolTool]
  BRepTopAdaptorTopolTool* {.importcpp: "BRepTopAdaptor_TopolTool",
                            header: "BRepTopAdaptor_TopolTool.hxx", bycopy.} = object of Adaptor3dTopolTool


proc constructBRepTopAdaptorTopolTool*(): BRepTopAdaptorTopolTool {.constructor,
    importcpp: "BRepTopAdaptor_TopolTool(@)",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc constructBRepTopAdaptorTopolTool*(surface: Handle[Adaptor3dHSurface]): BRepTopAdaptorTopolTool {.
    constructor, importcpp: "BRepTopAdaptor_TopolTool(@)",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc initialize*(this: var BRepTopAdaptorTopolTool) {.importcpp: "Initialize",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc initialize*(this: var BRepTopAdaptorTopolTool; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Initialize", header: "BRepTopAdaptor_TopolTool.hxx".}
proc initialize*(this: var BRepTopAdaptorTopolTool; curve: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "Initialize", header: "BRepTopAdaptor_TopolTool.hxx".}
proc init*(this: var BRepTopAdaptorTopolTool) {.importcpp: "Init",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc more*(this: var BRepTopAdaptorTopolTool): StandardBoolean {.importcpp: "More",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc value*(this: var BRepTopAdaptorTopolTool): Handle[Adaptor2dHCurve2d] {.
    importcpp: "Value", header: "BRepTopAdaptor_TopolTool.hxx".}
proc next*(this: var BRepTopAdaptorTopolTool) {.importcpp: "Next",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc edge*(this: BRepTopAdaptorTopolTool): StandardAddress {.noSideEffect,
    importcpp: "Edge", header: "BRepTopAdaptor_TopolTool.hxx".}
proc initVertexIterator*(this: var BRepTopAdaptorTopolTool) {.
    importcpp: "InitVertexIterator", header: "BRepTopAdaptor_TopolTool.hxx".}
proc moreVertex*(this: var BRepTopAdaptorTopolTool): StandardBoolean {.
    importcpp: "MoreVertex", header: "BRepTopAdaptor_TopolTool.hxx".}
proc vertex*(this: var BRepTopAdaptorTopolTool): Handle[Adaptor3dHVertex] {.
    importcpp: "Vertex", header: "BRepTopAdaptor_TopolTool.hxx".}
proc nextVertex*(this: var BRepTopAdaptorTopolTool) {.importcpp: "NextVertex",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc classify*(this: var BRepTopAdaptorTopolTool; p2d: Pnt2d; tol: StandardReal;
              recadreOnPeriodic: StandardBoolean = true): TopAbsState {.
    importcpp: "Classify", header: "BRepTopAdaptor_TopolTool.hxx".}
proc isThePointOn*(this: var BRepTopAdaptorTopolTool; p2d: Pnt2d; tol: StandardReal;
                  recadreOnPeriodic: StandardBoolean = true): StandardBoolean {.
    importcpp: "IsThePointOn", header: "BRepTopAdaptor_TopolTool.hxx".}
proc orientation*(this: var BRepTopAdaptorTopolTool; c: Handle[Adaptor2dHCurve2d]): TopAbsOrientation {.
    importcpp: "Orientation", header: "BRepTopAdaptor_TopolTool.hxx".}
proc orientation*(this: var BRepTopAdaptorTopolTool; c: Handle[Adaptor3dHVertex]): TopAbsOrientation {.
    importcpp: "Orientation", header: "BRepTopAdaptor_TopolTool.hxx".}
proc destroy*(this: var BRepTopAdaptorTopolTool) {.importcpp: "Destroy",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc destroyBRepTopAdaptorTopolTool*(this: var BRepTopAdaptorTopolTool) {.
    importcpp: "#.~BRepTopAdaptor_TopolTool()",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc has3d*(this: BRepTopAdaptorTopolTool): StandardBoolean {.noSideEffect,
    importcpp: "Has3d", header: "BRepTopAdaptor_TopolTool.hxx".}
proc tol3d*(this: BRepTopAdaptorTopolTool; c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    noSideEffect, importcpp: "Tol3d", header: "BRepTopAdaptor_TopolTool.hxx".}
proc tol3d*(this: BRepTopAdaptorTopolTool; v: Handle[Adaptor3dHVertex]): StandardReal {.
    noSideEffect, importcpp: "Tol3d", header: "BRepTopAdaptor_TopolTool.hxx".}
proc pnt*(this: BRepTopAdaptorTopolTool; v: Handle[Adaptor3dHVertex]): Pnt {.
    noSideEffect, importcpp: "Pnt", header: "BRepTopAdaptor_TopolTool.hxx".}
proc computeSamplePoints*(this: var BRepTopAdaptorTopolTool) {.
    importcpp: "ComputeSamplePoints", header: "BRepTopAdaptor_TopolTool.hxx".}
proc nbSamplesU*(this: var BRepTopAdaptorTopolTool): int {.importcpp: "NbSamplesU",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc nbSamplesV*(this: var BRepTopAdaptorTopolTool): int {.importcpp: "NbSamplesV",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc nbSamples*(this: var BRepTopAdaptorTopolTool): int {.importcpp: "NbSamples",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc samplePoint*(this: var BRepTopAdaptorTopolTool; index: int; p2d: var Pnt2d;
                 p3d: var Pnt) {.importcpp: "SamplePoint",
                              header: "BRepTopAdaptor_TopolTool.hxx".}
proc domainIsInfinite*(this: var BRepTopAdaptorTopolTool): StandardBoolean {.
    importcpp: "DomainIsInfinite", header: "BRepTopAdaptor_TopolTool.hxx".}
type
  BRepTopAdaptorTopolToolbaseType* = Adaptor3dTopolTool

proc getTypeName*(): cstring {.importcpp: "BRepTopAdaptor_TopolTool::get_type_name(@)",
                            header: "BRepTopAdaptor_TopolTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTopAdaptor_TopolTool::get_type_descriptor(@)",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc dynamicType*(this: BRepTopAdaptorTopolTool): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepTopAdaptor_TopolTool.hxx".}