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

import
  ../TColStd/TColStd_HArray1OfReal, ../TopAbs/TopAbs_State,
  ../TopAbs/TopAbs_Orientation, ../TColStd/TColStd_Array1OfReal, Adaptor3d_HVertex

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
  Handle_Adaptor3d_TopolTool* = handle[Adaptor3d_TopolTool]

## ! This class provides a default topological tool,
## ! based on the Umin,Vmin,Umax,Vmax of an HSurface
## ! from Adaptor3d.
## ! All methods and fields may be redefined when
## ! inheriting from this class.
## ! This class is used to instantiate algorithmes
## ! as Intersection, outlines,...

type
  Adaptor3d_TopolTool* {.importcpp: "Adaptor3d_TopolTool",
                        header: "Adaptor3d_TopolTool.hxx", bycopy.} = object of Standard_Transient


proc constructAdaptor3d_TopolTool*(): Adaptor3d_TopolTool {.constructor,
    importcpp: "Adaptor3d_TopolTool(@)", header: "Adaptor3d_TopolTool.hxx".}
proc constructAdaptor3d_TopolTool*(Surface: handle[Adaptor3d_HSurface]): Adaptor3d_TopolTool {.
    constructor, importcpp: "Adaptor3d_TopolTool(@)",
    header: "Adaptor3d_TopolTool.hxx".}
proc Initialize*(this: var Adaptor3d_TopolTool) {.importcpp: "Initialize",
    header: "Adaptor3d_TopolTool.hxx".}
proc Initialize*(this: var Adaptor3d_TopolTool; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Initialize", header: "Adaptor3d_TopolTool.hxx".}
proc Initialize*(this: var Adaptor3d_TopolTool; Curve: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "Initialize", header: "Adaptor3d_TopolTool.hxx".}
proc Init*(this: var Adaptor3d_TopolTool) {.importcpp: "Init",
                                        header: "Adaptor3d_TopolTool.hxx".}
proc More*(this: var Adaptor3d_TopolTool): Standard_Boolean {.importcpp: "More",
    header: "Adaptor3d_TopolTool.hxx".}
proc Value*(this: var Adaptor3d_TopolTool): handle[Adaptor2d_HCurve2d] {.
    importcpp: "Value", header: "Adaptor3d_TopolTool.hxx".}
proc Next*(this: var Adaptor3d_TopolTool) {.importcpp: "Next",
                                        header: "Adaptor3d_TopolTool.hxx".}
proc InitVertexIterator*(this: var Adaptor3d_TopolTool) {.
    importcpp: "InitVertexIterator", header: "Adaptor3d_TopolTool.hxx".}
proc MoreVertex*(this: var Adaptor3d_TopolTool): Standard_Boolean {.
    importcpp: "MoreVertex", header: "Adaptor3d_TopolTool.hxx".}
proc Vertex*(this: var Adaptor3d_TopolTool): handle[Adaptor3d_HVertex] {.
    importcpp: "Vertex", header: "Adaptor3d_TopolTool.hxx".}
proc NextVertex*(this: var Adaptor3d_TopolTool) {.importcpp: "NextVertex",
    header: "Adaptor3d_TopolTool.hxx".}
proc Classify*(this: var Adaptor3d_TopolTool; P: gp_Pnt2d; Tol: Standard_Real;
              ReacdreOnPeriodic: Standard_Boolean = Standard_True): TopAbs_State {.
    importcpp: "Classify", header: "Adaptor3d_TopolTool.hxx".}
proc IsThePointOn*(this: var Adaptor3d_TopolTool; P: gp_Pnt2d; Tol: Standard_Real;
                  ReacdreOnPeriodic: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "IsThePointOn", header: "Adaptor3d_TopolTool.hxx".}
proc Orientation*(this: var Adaptor3d_TopolTool; C: handle[Adaptor2d_HCurve2d]): TopAbs_Orientation {.
    importcpp: "Orientation", header: "Adaptor3d_TopolTool.hxx".}
proc Orientation*(this: var Adaptor3d_TopolTool; V: handle[Adaptor3d_HVertex]): TopAbs_Orientation {.
    importcpp: "Orientation", header: "Adaptor3d_TopolTool.hxx".}
proc Identical*(this: var Adaptor3d_TopolTool; V1: handle[Adaptor3d_HVertex];
               V2: handle[Adaptor3d_HVertex]): Standard_Boolean {.
    importcpp: "Identical", header: "Adaptor3d_TopolTool.hxx".}
proc Has3d*(this: Adaptor3d_TopolTool): Standard_Boolean {.noSideEffect,
    importcpp: "Has3d", header: "Adaptor3d_TopolTool.hxx".}
proc Tol3d*(this: Adaptor3d_TopolTool; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    noSideEffect, importcpp: "Tol3d", header: "Adaptor3d_TopolTool.hxx".}
proc Tol3d*(this: Adaptor3d_TopolTool; V: handle[Adaptor3d_HVertex]): Standard_Real {.
    noSideEffect, importcpp: "Tol3d", header: "Adaptor3d_TopolTool.hxx".}
proc Pnt*(this: Adaptor3d_TopolTool; V: handle[Adaptor3d_HVertex]): gp_Pnt {.
    noSideEffect, importcpp: "Pnt", header: "Adaptor3d_TopolTool.hxx".}
proc ComputeSamplePoints*(this: var Adaptor3d_TopolTool) {.
    importcpp: "ComputeSamplePoints", header: "Adaptor3d_TopolTool.hxx".}
proc NbSamplesU*(this: var Adaptor3d_TopolTool): Standard_Integer {.
    importcpp: "NbSamplesU", header: "Adaptor3d_TopolTool.hxx".}
proc NbSamplesV*(this: var Adaptor3d_TopolTool): Standard_Integer {.
    importcpp: "NbSamplesV", header: "Adaptor3d_TopolTool.hxx".}
proc NbSamples*(this: var Adaptor3d_TopolTool): Standard_Integer {.
    importcpp: "NbSamples", header: "Adaptor3d_TopolTool.hxx".}
proc UParameters*(this: Adaptor3d_TopolTool; theArray: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "UParameters", header: "Adaptor3d_TopolTool.hxx".}
proc VParameters*(this: Adaptor3d_TopolTool; theArray: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "VParameters", header: "Adaptor3d_TopolTool.hxx".}
proc SamplePoint*(this: var Adaptor3d_TopolTool; Index: Standard_Integer;
                 P2d: var gp_Pnt2d; P3d: var gp_Pnt) {.importcpp: "SamplePoint",
    header: "Adaptor3d_TopolTool.hxx".}
proc DomainIsInfinite*(this: var Adaptor3d_TopolTool): Standard_Boolean {.
    importcpp: "DomainIsInfinite", header: "Adaptor3d_TopolTool.hxx".}
proc Edge*(this: Adaptor3d_TopolTool): Standard_Address {.noSideEffect,
    importcpp: "Edge", header: "Adaptor3d_TopolTool.hxx".}
proc SamplePnts*(this: var Adaptor3d_TopolTool; theDefl: Standard_Real;
                theNUmin: Standard_Integer; theNVmin: Standard_Integer) {.
    importcpp: "SamplePnts", header: "Adaptor3d_TopolTool.hxx".}
proc BSplSamplePnts*(this: var Adaptor3d_TopolTool; theDefl: Standard_Real;
                    theNUmin: Standard_Integer; theNVmin: Standard_Integer) {.
    importcpp: "BSplSamplePnts", header: "Adaptor3d_TopolTool.hxx".}
proc IsUniformSampling*(this: Adaptor3d_TopolTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsUniformSampling", header: "Adaptor3d_TopolTool.hxx".}
type
  Adaptor3d_TopolToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Adaptor3d_TopolTool::get_type_name(@)",
                              header: "Adaptor3d_TopolTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Adaptor3d_TopolTool::get_type_descriptor(@)",
    header: "Adaptor3d_TopolTool.hxx".}
proc DynamicType*(this: Adaptor3d_TopolTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_TopolTool.hxx".}