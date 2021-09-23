##  Created on: 2009-04-06
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, TDataXtd_GeometryEnum,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataXtd_Geometry"
discard "forward decl of TDataXtd_Geometry"
type
  Handle_TDataXtd_Geometry* = handle[TDataXtd_Geometry]

## ! This class is used to model construction geometry.
## ! The specific geometric construction of the
## ! attribute is defined by an element of the
## ! enumeration TDataXtd_GeometryEnum.
## ! This attribute may  also be used to qualify  underlying
## ! geometry  of   the  associated NamedShape.     for
## ! Constructuion element by example.

type
  TDataXtd_Geometry* {.importcpp: "TDataXtd_Geometry",
                      header: "TDataXtd_Geometry.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## API
                                                                                   ## class
                                                                                   ## methods
                                                                                   ##
                                                                                   ## !
                                                                                   ## =================
                                                                                   ##
                                                                                   ## !
                                                                                   ## Finds,
                                                                                   ## or
                                                                                   ## creates,
                                                                                   ## a
                                                                                   ## Geometry
                                                                                   ## attribute
                                                                                   ## defined
                                                                                   ## by
                                                                                   ## the
                                                                                   ## label
                                                                                   ## label.
                                                                                   ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## default
                                                                                   ## type
                                                                                   ## of
                                                                                   ## geometry
                                                                                   ## is
                                                                                   ## the
                                                                                   ## value
                                                                                   ##
                                                                                   ## !
                                                                                   ## ANY_GEOM
                                                                                   ## of
                                                                                   ## the
                                                                                   ## enumeration
                                                                                   ## TDataXtd_GeometryEnum.
                                                                                   ##
                                                                                   ## !
                                                                                   ## To
                                                                                   ## specify
                                                                                   ## another
                                                                                   ## value
                                                                                   ## of
                                                                                   ## this
                                                                                   ## enumeration,
                                                                                   ## use
                                                                                   ##
                                                                                   ## !
                                                                                   ## the
                                                                                   ## function
                                                                                   ## SetType.


proc Set*(label: TDF_Label): handle[TDataXtd_Geometry] {.
    importcpp: "TDataXtd_Geometry::Set(@)", header: "TDataXtd_Geometry.hxx".}
proc Type*(L: TDF_Label): TDataXtd_GeometryEnum {.
    importcpp: "TDataXtd_Geometry::Type(@)", header: "TDataXtd_Geometry.hxx".}
proc Type*(S: handle[TNaming_NamedShape]): TDataXtd_GeometryEnum {.
    importcpp: "TDataXtd_Geometry::Type(@)", header: "TDataXtd_Geometry.hxx".}
proc Point*(L: TDF_Label; G: var gp_Pnt): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Point(@)", header: "TDataXtd_Geometry.hxx".}
proc Point*(S: handle[TNaming_NamedShape]; G: var gp_Pnt): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Point(@)", header: "TDataXtd_Geometry.hxx".}
proc Axis*(L: TDF_Label; G: var gp_Ax1): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Axis(@)", header: "TDataXtd_Geometry.hxx".}
proc Axis*(S: handle[TNaming_NamedShape]; G: var gp_Ax1): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Axis(@)", header: "TDataXtd_Geometry.hxx".}
proc Line*(L: TDF_Label; G: var gp_Lin): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Line(@)", header: "TDataXtd_Geometry.hxx".}
proc Line*(S: handle[TNaming_NamedShape]; G: var gp_Lin): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Line(@)", header: "TDataXtd_Geometry.hxx".}
proc Circle*(L: TDF_Label; G: var gp_Circ): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Circle(@)", header: "TDataXtd_Geometry.hxx".}
proc Circle*(S: handle[TNaming_NamedShape]; G: var gp_Circ): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Circle(@)", header: "TDataXtd_Geometry.hxx".}
proc Ellipse*(L: TDF_Label; G: var gp_Elips): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Ellipse(@)", header: "TDataXtd_Geometry.hxx".}
proc Ellipse*(S: handle[TNaming_NamedShape]; G: var gp_Elips): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Ellipse(@)", header: "TDataXtd_Geometry.hxx".}
proc Plane*(L: TDF_Label; G: var gp_Pln): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Plane(@)", header: "TDataXtd_Geometry.hxx".}
proc Plane*(S: handle[TNaming_NamedShape]; G: var gp_Pln): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Plane(@)", header: "TDataXtd_Geometry.hxx".}
proc Cylinder*(L: TDF_Label; G: var gp_Cylinder): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Cylinder(@)", header: "TDataXtd_Geometry.hxx".}
proc Cylinder*(S: handle[TNaming_NamedShape]; G: var gp_Cylinder): Standard_Boolean {.
    importcpp: "TDataXtd_Geometry::Cylinder(@)", header: "TDataXtd_Geometry.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Geometry::GetID(@)",
                            header: "TDataXtd_Geometry.hxx".}
proc constructTDataXtd_Geometry*(): TDataXtd_Geometry {.constructor,
    importcpp: "TDataXtd_Geometry(@)", header: "TDataXtd_Geometry.hxx".}
proc SetType*(this: var TDataXtd_Geometry; T: TDataXtd_GeometryEnum) {.
    importcpp: "SetType", header: "TDataXtd_Geometry.hxx".}
proc GetType*(this: TDataXtd_Geometry): TDataXtd_GeometryEnum {.noSideEffect,
    importcpp: "GetType", header: "TDataXtd_Geometry.hxx".}
proc ID*(this: TDataXtd_Geometry): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Geometry.hxx".}
proc Restore*(this: var TDataXtd_Geometry; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Geometry.hxx".}
proc NewEmpty*(this: TDataXtd_Geometry): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Geometry.hxx".}
proc Paste*(this: TDataXtd_Geometry; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_Geometry.hxx".}
proc Dump*(this: TDataXtd_Geometry; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Geometry.hxx".}
type
  TDataXtd_Geometrybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataXtd_Geometry::get_type_name(@)",
                              header: "TDataXtd_Geometry.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_Geometry::get_type_descriptor(@)",
    header: "TDataXtd_Geometry.hxx".}
proc DynamicType*(this: TDataXtd_Geometry): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Geometry.hxx".}