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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopExp/TopExp_Explorer,
  ../TopoDS/TopoDS_Face, ../Standard/Standard_Address,
  ../TColStd/TColStd_ListOfTransient,
  ../TColStd/TColStd_ListIteratorOfListOfTransient, ../Standard/Standard_Real,
  ../Adaptor3d/Adaptor3d_TopolTool, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_State, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Integer

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
  Handle_BRepTopAdaptor_TopolTool* = handle[BRepTopAdaptor_TopolTool]
  BRepTopAdaptor_TopolTool* {.importcpp: "BRepTopAdaptor_TopolTool",
                             header: "BRepTopAdaptor_TopolTool.hxx", bycopy.} = object of Adaptor3d_TopolTool


proc constructBRepTopAdaptor_TopolTool*(): BRepTopAdaptor_TopolTool {.constructor,
    importcpp: "BRepTopAdaptor_TopolTool(@)",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc constructBRepTopAdaptor_TopolTool*(Surface: handle[Adaptor3d_HSurface]): BRepTopAdaptor_TopolTool {.
    constructor, importcpp: "BRepTopAdaptor_TopolTool(@)",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc Initialize*(this: var BRepTopAdaptor_TopolTool) {.importcpp: "Initialize",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc Initialize*(this: var BRepTopAdaptor_TopolTool; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Initialize", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Initialize*(this: var BRepTopAdaptor_TopolTool;
                Curve: handle[Adaptor2d_HCurve2d]) {.importcpp: "Initialize",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc Init*(this: var BRepTopAdaptor_TopolTool) {.importcpp: "Init",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc More*(this: var BRepTopAdaptor_TopolTool): Standard_Boolean {.importcpp: "More",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc Value*(this: var BRepTopAdaptor_TopolTool): handle[Adaptor2d_HCurve2d] {.
    importcpp: "Value", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Next*(this: var BRepTopAdaptor_TopolTool) {.importcpp: "Next",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc Edge*(this: BRepTopAdaptor_TopolTool): Standard_Address {.noSideEffect,
    importcpp: "Edge", header: "BRepTopAdaptor_TopolTool.hxx".}
proc InitVertexIterator*(this: var BRepTopAdaptor_TopolTool) {.
    importcpp: "InitVertexIterator", header: "BRepTopAdaptor_TopolTool.hxx".}
proc MoreVertex*(this: var BRepTopAdaptor_TopolTool): Standard_Boolean {.
    importcpp: "MoreVertex", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Vertex*(this: var BRepTopAdaptor_TopolTool): handle[Adaptor3d_HVertex] {.
    importcpp: "Vertex", header: "BRepTopAdaptor_TopolTool.hxx".}
proc NextVertex*(this: var BRepTopAdaptor_TopolTool) {.importcpp: "NextVertex",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc Classify*(this: var BRepTopAdaptor_TopolTool; P2d: gp_Pnt2d; Tol: Standard_Real;
              RecadreOnPeriodic: Standard_Boolean = Standard_True): TopAbs_State {.
    importcpp: "Classify", header: "BRepTopAdaptor_TopolTool.hxx".}
proc IsThePointOn*(this: var BRepTopAdaptor_TopolTool; P2d: gp_Pnt2d;
                  Tol: Standard_Real;
                  RecadreOnPeriodic: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "IsThePointOn", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Orientation*(this: var BRepTopAdaptor_TopolTool; C: handle[Adaptor2d_HCurve2d]): TopAbs_Orientation {.
    importcpp: "Orientation", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Orientation*(this: var BRepTopAdaptor_TopolTool; C: handle[Adaptor3d_HVertex]): TopAbs_Orientation {.
    importcpp: "Orientation", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Destroy*(this: var BRepTopAdaptor_TopolTool) {.importcpp: "Destroy",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc destroyBRepTopAdaptor_TopolTool*(this: var BRepTopAdaptor_TopolTool) {.
    importcpp: "#.~BRepTopAdaptor_TopolTool()",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc Has3d*(this: BRepTopAdaptor_TopolTool): Standard_Boolean {.noSideEffect,
    importcpp: "Has3d", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Tol3d*(this: BRepTopAdaptor_TopolTool; C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    noSideEffect, importcpp: "Tol3d", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Tol3d*(this: BRepTopAdaptor_TopolTool; V: handle[Adaptor3d_HVertex]): Standard_Real {.
    noSideEffect, importcpp: "Tol3d", header: "BRepTopAdaptor_TopolTool.hxx".}
proc Pnt*(this: BRepTopAdaptor_TopolTool; V: handle[Adaptor3d_HVertex]): gp_Pnt {.
    noSideEffect, importcpp: "Pnt", header: "BRepTopAdaptor_TopolTool.hxx".}
proc ComputeSamplePoints*(this: var BRepTopAdaptor_TopolTool) {.
    importcpp: "ComputeSamplePoints", header: "BRepTopAdaptor_TopolTool.hxx".}
proc NbSamplesU*(this: var BRepTopAdaptor_TopolTool): Standard_Integer {.
    importcpp: "NbSamplesU", header: "BRepTopAdaptor_TopolTool.hxx".}
proc NbSamplesV*(this: var BRepTopAdaptor_TopolTool): Standard_Integer {.
    importcpp: "NbSamplesV", header: "BRepTopAdaptor_TopolTool.hxx".}
proc NbSamples*(this: var BRepTopAdaptor_TopolTool): Standard_Integer {.
    importcpp: "NbSamples", header: "BRepTopAdaptor_TopolTool.hxx".}
proc SamplePoint*(this: var BRepTopAdaptor_TopolTool; Index: Standard_Integer;
                 P2d: var gp_Pnt2d; P3d: var gp_Pnt) {.importcpp: "SamplePoint",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc DomainIsInfinite*(this: var BRepTopAdaptor_TopolTool): Standard_Boolean {.
    importcpp: "DomainIsInfinite", header: "BRepTopAdaptor_TopolTool.hxx".}
type
  BRepTopAdaptor_TopolToolbase_type* = Adaptor3d_TopolTool

proc get_type_name*(): cstring {.importcpp: "BRepTopAdaptor_TopolTool::get_type_name(@)",
                              header: "BRepTopAdaptor_TopolTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepTopAdaptor_TopolTool::get_type_descriptor(@)",
    header: "BRepTopAdaptor_TopolTool.hxx".}
proc DynamicType*(this: BRepTopAdaptor_TopolTool): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepTopAdaptor_TopolTool.hxx".}