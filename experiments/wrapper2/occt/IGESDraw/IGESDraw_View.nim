##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../IGESData/IGESData_ViewKindEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESGeom_Plane"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESDraw_View"
discard "forward decl of IGESDraw_View"
type
  Handle_IGESDraw_View* = handle[IGESDraw_View]

## ! defines IGES View Entity, Type <410> Form <0>
## ! in package IGESDraw
## !
## ! Used to define a framework for specifying a viewing
## ! orientation of an object in three dimensional model
## ! space (X,Y,Z). The framework is also used to support
## ! the projection of all or part of model space onto a
## ! view volume.

type
  IGESDraw_View* {.importcpp: "IGESDraw_View", header: "IGESDraw_View.hxx", bycopy.} = object of IGESData_ViewKindEntity


proc constructIGESDraw_View*(): IGESDraw_View {.constructor,
    importcpp: "IGESDraw_View(@)", header: "IGESDraw_View.hxx".}
proc Init*(this: var IGESDraw_View; aViewNum: Standard_Integer; aScale: Standard_Real;
          aLeftPlane: handle[IGESGeom_Plane]; aTopPlane: handle[IGESGeom_Plane];
          aRightPlane: handle[IGESGeom_Plane];
          aBottomPlane: handle[IGESGeom_Plane];
          aBackPlane: handle[IGESGeom_Plane]; aFrontPlane: handle[IGESGeom_Plane]) {.
    importcpp: "Init", header: "IGESDraw_View.hxx".}
proc IsSingle*(this: IGESDraw_View): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_View.hxx".}
proc NbViews*(this: IGESDraw_View): Standard_Integer {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_View.hxx".}
proc ViewItem*(this: IGESDraw_View; num: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_View.hxx".}
proc ViewNumber*(this: IGESDraw_View): Standard_Integer {.noSideEffect,
    importcpp: "ViewNumber", header: "IGESDraw_View.hxx".}
proc ScaleFactor*(this: IGESDraw_View): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDraw_View.hxx".}
proc HasLeftPlane*(this: IGESDraw_View): Standard_Boolean {.noSideEffect,
    importcpp: "HasLeftPlane", header: "IGESDraw_View.hxx".}
proc LeftPlane*(this: IGESDraw_View): handle[IGESGeom_Plane] {.noSideEffect,
    importcpp: "LeftPlane", header: "IGESDraw_View.hxx".}
proc HasTopPlane*(this: IGESDraw_View): Standard_Boolean {.noSideEffect,
    importcpp: "HasTopPlane", header: "IGESDraw_View.hxx".}
proc TopPlane*(this: IGESDraw_View): handle[IGESGeom_Plane] {.noSideEffect,
    importcpp: "TopPlane", header: "IGESDraw_View.hxx".}
proc HasRightPlane*(this: IGESDraw_View): Standard_Boolean {.noSideEffect,
    importcpp: "HasRightPlane", header: "IGESDraw_View.hxx".}
proc RightPlane*(this: IGESDraw_View): handle[IGESGeom_Plane] {.noSideEffect,
    importcpp: "RightPlane", header: "IGESDraw_View.hxx".}
proc HasBottomPlane*(this: IGESDraw_View): Standard_Boolean {.noSideEffect,
    importcpp: "HasBottomPlane", header: "IGESDraw_View.hxx".}
proc BottomPlane*(this: IGESDraw_View): handle[IGESGeom_Plane] {.noSideEffect,
    importcpp: "BottomPlane", header: "IGESDraw_View.hxx".}
proc HasBackPlane*(this: IGESDraw_View): Standard_Boolean {.noSideEffect,
    importcpp: "HasBackPlane", header: "IGESDraw_View.hxx".}
proc BackPlane*(this: IGESDraw_View): handle[IGESGeom_Plane] {.noSideEffect,
    importcpp: "BackPlane", header: "IGESDraw_View.hxx".}
proc HasFrontPlane*(this: IGESDraw_View): Standard_Boolean {.noSideEffect,
    importcpp: "HasFrontPlane", header: "IGESDraw_View.hxx".}
proc FrontPlane*(this: IGESDraw_View): handle[IGESGeom_Plane] {.noSideEffect,
    importcpp: "FrontPlane", header: "IGESDraw_View.hxx".}
proc ViewMatrix*(this: IGESDraw_View): handle[IGESData_TransfEntity] {.noSideEffect,
    importcpp: "ViewMatrix", header: "IGESDraw_View.hxx".}
proc ModelToView*(this: IGESDraw_View; coords: gp_XYZ): gp_XYZ {.noSideEffect,
    importcpp: "ModelToView", header: "IGESDraw_View.hxx".}
type
  IGESDraw_Viewbase_type* = IGESData_ViewKindEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_View::get_type_name(@)",
                              header: "IGESDraw_View.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_View::get_type_descriptor(@)",
    header: "IGESDraw_View.hxx".}
proc DynamicType*(this: IGESDraw_View): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_View.hxx".}