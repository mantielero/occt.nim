##  Created on: 1994-03-24
##  Created by: model
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

discard "forward decl of Adaptor2d_HLine2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of Adaptor3d_TopolTool"
type
  Adaptor3dTopolTool* {.importcpp: "Adaptor3d_TopolTool",
                       header: "Adaptor3d_TopolTool.hxx", bycopy.} = object of StandardTransient

type
  HandleAdaptor3dTopolTool* = Handle[Adaptor3dTopolTool]

## ! This class provides a default topological tool,
## ! based on the Umin,Vmin,Umax,Vmax of an HSurface
## ! from Adaptor3d.
## ! All methods and fields may be redefined when
## ! inheriting from this class.
## ! This class is used to instantiate algorithmes
## ! as Intersection, outlines,...



proc constructAdaptor3dTopolTool*(): Adaptor3dTopolTool {.constructor,
    importcpp: "Adaptor3d_TopolTool(@)", header: "Adaptor3d_TopolTool.hxx".}
proc constructAdaptor3dTopolTool*(surface: Handle[Adaptor3dHSurface]): Adaptor3dTopolTool {.
    constructor, importcpp: "Adaptor3d_TopolTool(@)",
    header: "Adaptor3d_TopolTool.hxx".}
proc initialize*(this: var Adaptor3dTopolTool) {.importcpp: "Initialize",
    header: "Adaptor3d_TopolTool.hxx".}
proc initialize*(this: var Adaptor3dTopolTool; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Initialize", header: "Adaptor3d_TopolTool.hxx".}
proc initialize*(this: var Adaptor3dTopolTool; curve: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "Initialize", header: "Adaptor3d_TopolTool.hxx".}
proc init*(this: var Adaptor3dTopolTool) {.importcpp: "Init",
                                       header: "Adaptor3d_TopolTool.hxx".}
proc more*(this: var Adaptor3dTopolTool): bool {.importcpp: "More",
    header: "Adaptor3d_TopolTool.hxx".}
proc value*(this: var Adaptor3dTopolTool): Handle[Adaptor2dHCurve2d] {.
    importcpp: "Value", header: "Adaptor3d_TopolTool.hxx".}
proc next*(this: var Adaptor3dTopolTool) {.importcpp: "Next",
                                       header: "Adaptor3d_TopolTool.hxx".}
proc initVertexIterator*(this: var Adaptor3dTopolTool) {.
    importcpp: "InitVertexIterator", header: "Adaptor3d_TopolTool.hxx".}
proc moreVertex*(this: var Adaptor3dTopolTool): bool {.importcpp: "MoreVertex",
    header: "Adaptor3d_TopolTool.hxx".}
proc vertex*(this: var Adaptor3dTopolTool): Handle[Adaptor3dHVertex] {.
    importcpp: "Vertex", header: "Adaptor3d_TopolTool.hxx".}
proc nextVertex*(this: var Adaptor3dTopolTool) {.importcpp: "NextVertex",
    header: "Adaptor3d_TopolTool.hxx".}
proc classify*(this: var Adaptor3dTopolTool; p: Pnt2d; tol: cfloat;
              reacdreOnPeriodic: bool = true): TopAbsState {.importcpp: "Classify",
    header: "Adaptor3d_TopolTool.hxx".}
proc isThePointOn*(this: var Adaptor3dTopolTool; p: Pnt2d; tol: cfloat;
                  reacdreOnPeriodic: bool = true): bool {.importcpp: "IsThePointOn",
    header: "Adaptor3d_TopolTool.hxx".}
proc orientation*(this: var Adaptor3dTopolTool; c: Handle[Adaptor2dHCurve2d]): TopAbsOrientation {.
    importcpp: "Orientation", header: "Adaptor3d_TopolTool.hxx".}
proc orientation*(this: var Adaptor3dTopolTool; v: Handle[Adaptor3dHVertex]): TopAbsOrientation {.
    importcpp: "Orientation", header: "Adaptor3d_TopolTool.hxx".}
proc identical*(this: var Adaptor3dTopolTool; v1: Handle[Adaptor3dHVertex];
               v2: Handle[Adaptor3dHVertex]): bool {.importcpp: "Identical",
    header: "Adaptor3d_TopolTool.hxx".}
proc has3d*(this: Adaptor3dTopolTool): bool {.noSideEffect, importcpp: "Has3d",
    header: "Adaptor3d_TopolTool.hxx".}
proc tol3d*(this: Adaptor3dTopolTool; c: Handle[Adaptor2dHCurve2d]): cfloat {.
    noSideEffect, importcpp: "Tol3d", header: "Adaptor3d_TopolTool.hxx".}
proc tol3d*(this: Adaptor3dTopolTool; v: Handle[Adaptor3dHVertex]): cfloat {.
    noSideEffect, importcpp: "Tol3d", header: "Adaptor3d_TopolTool.hxx".}
proc pnt*(this: Adaptor3dTopolTool; v: Handle[Adaptor3dHVertex]): Pnt {.noSideEffect,
    importcpp: "Pnt", header: "Adaptor3d_TopolTool.hxx".}
proc computeSamplePoints*(this: var Adaptor3dTopolTool) {.
    importcpp: "ComputeSamplePoints", header: "Adaptor3d_TopolTool.hxx".}
proc nbSamplesU*(this: var Adaptor3dTopolTool): cint {.importcpp: "NbSamplesU",
    header: "Adaptor3d_TopolTool.hxx".}
proc nbSamplesV*(this: var Adaptor3dTopolTool): cint {.importcpp: "NbSamplesV",
    header: "Adaptor3d_TopolTool.hxx".}
proc nbSamples*(this: var Adaptor3dTopolTool): cint {.importcpp: "NbSamples",
    header: "Adaptor3d_TopolTool.hxx".}
#[ proc uParameters*(this: Adaptor3dTopolTool; theArray: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "UParameters", header: "Adaptor3d_TopolTool.hxx".}
proc vParameters*(this: Adaptor3dTopolTool; theArray: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "VParameters", header: "Adaptor3d_TopolTool.hxx".} ]#
proc samplePoint*(this: var Adaptor3dTopolTool; index: cint; p2d: var Pnt2d; p3d: var Pnt) {.
    importcpp: "SamplePoint", header: "Adaptor3d_TopolTool.hxx".}
proc domainIsInfinite*(this: var Adaptor3dTopolTool): bool {.
    importcpp: "DomainIsInfinite", header: "Adaptor3d_TopolTool.hxx".}
proc edge*(this: Adaptor3dTopolTool): StandardAddress {.noSideEffect,
    importcpp: "Edge", header: "Adaptor3d_TopolTool.hxx".}
proc samplePnts*(this: var Adaptor3dTopolTool; theDefl: cfloat; theNUmin: cint;
                theNVmin: cint) {.importcpp: "SamplePnts",
                                header: "Adaptor3d_TopolTool.hxx".}
proc bSplSamplePnts*(this: var Adaptor3dTopolTool; theDefl: cfloat; theNUmin: cint;
                    theNVmin: cint) {.importcpp: "BSplSamplePnts",
                                    header: "Adaptor3d_TopolTool.hxx".}
proc isUniformSampling*(this: Adaptor3dTopolTool): bool {.noSideEffect,
    importcpp: "IsUniformSampling", header: "Adaptor3d_TopolTool.hxx".}
type
  Adaptor3dTopolToolbaseType* = StandardTransient

#[ proc getTypeName*(): cstring {.importcpp: "Adaptor3d_TopolTool::get_type_name(@)",
                            header: "Adaptor3d_TopolTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Adaptor3d_TopolTool::get_type_descriptor(@)",
    header: "Adaptor3d_TopolTool.hxx".}
proc dynamicType*(this: Adaptor3dTopolTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_TopolTool.hxx".} ]#

























