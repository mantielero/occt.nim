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
  HandleC1C1* = Handle[TDataXtdGeometry]

## ! This class is used to model construction geometry.
## ! The specific geometric construction of the
## ! attribute is defined by an element of the
## ! enumeration TDataXtd_GeometryEnum.
## ! This attribute may  also be used to qualify  underlying
## ! geometry  of   the  associated NamedShape.     for
## ! Constructuion element by example.

type
  TDataXtdGeometry* {.importcpp: "TDataXtd_Geometry",
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


proc set*(label: TDF_Label): Handle[TDataXtdGeometry] {.
    importcpp: "TDataXtd_Geometry::Set(@)", header: "TDataXtd_Geometry.hxx".}
proc `type`*(L: TDF_Label): TDataXtdGeometryEnum {.
    importcpp: "TDataXtd_Geometry::Type(@)", header: "TDataXtd_Geometry.hxx".}
proc `type`*(s: Handle[TNamingNamedShape]): TDataXtdGeometryEnum {.
    importcpp: "TDataXtd_Geometry::Type(@)", header: "TDataXtd_Geometry.hxx".}
proc point*(L: TDF_Label; g: var Pnt): bool {.importcpp: "TDataXtd_Geometry::Point(@)",
                                       header: "TDataXtd_Geometry.hxx".}
proc point*(s: Handle[TNamingNamedShape]; g: var Pnt): bool {.
    importcpp: "TDataXtd_Geometry::Point(@)", header: "TDataXtd_Geometry.hxx".}
proc axis*(L: TDF_Label; g: var Ax1): bool {.importcpp: "TDataXtd_Geometry::Axis(@)",
                                      header: "TDataXtd_Geometry.hxx".}
proc axis*(s: Handle[TNamingNamedShape]; g: var Ax1): bool {.
    importcpp: "TDataXtd_Geometry::Axis(@)", header: "TDataXtd_Geometry.hxx".}
proc line*(L: TDF_Label; g: var Lin): bool {.importcpp: "TDataXtd_Geometry::Line(@)",
                                      header: "TDataXtd_Geometry.hxx".}
proc line*(s: Handle[TNamingNamedShape]; g: var Lin): bool {.
    importcpp: "TDataXtd_Geometry::Line(@)", header: "TDataXtd_Geometry.hxx".}
proc circle*(L: TDF_Label; g: var Circ): bool {.
    importcpp: "TDataXtd_Geometry::Circle(@)", header: "TDataXtd_Geometry.hxx".}
proc circle*(s: Handle[TNamingNamedShape]; g: var Circ): bool {.
    importcpp: "TDataXtd_Geometry::Circle(@)", header: "TDataXtd_Geometry.hxx".}
proc ellipse*(L: TDF_Label; g: var Elips): bool {.
    importcpp: "TDataXtd_Geometry::Ellipse(@)", header: "TDataXtd_Geometry.hxx".}
proc ellipse*(s: Handle[TNamingNamedShape]; g: var Elips): bool {.
    importcpp: "TDataXtd_Geometry::Ellipse(@)", header: "TDataXtd_Geometry.hxx".}
proc plane*(L: TDF_Label; g: var Pln): bool {.importcpp: "TDataXtd_Geometry::Plane(@)",
                                       header: "TDataXtd_Geometry.hxx".}
proc plane*(s: Handle[TNamingNamedShape]; g: var Pln): bool {.
    importcpp: "TDataXtd_Geometry::Plane(@)", header: "TDataXtd_Geometry.hxx".}
proc cylinder*(L: TDF_Label; g: var Cylinder): bool {.
    importcpp: "TDataXtd_Geometry::Cylinder(@)", header: "TDataXtd_Geometry.hxx".}
proc cylinder*(s: Handle[TNamingNamedShape]; g: var Cylinder): bool {.
    importcpp: "TDataXtd_Geometry::Cylinder(@)", header: "TDataXtd_Geometry.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataXtd_Geometry::GetID(@)",
                           header: "TDataXtd_Geometry.hxx".}
proc constructTDataXtdGeometry*(): TDataXtdGeometry {.constructor,
    importcpp: "TDataXtd_Geometry(@)", header: "TDataXtd_Geometry.hxx".}
proc setType*(this: var TDataXtdGeometry; t: TDataXtdGeometryEnum) {.
    importcpp: "SetType", header: "TDataXtd_Geometry.hxx".}
proc getType*(this: TDataXtdGeometry): TDataXtdGeometryEnum {.noSideEffect,
    importcpp: "GetType", header: "TDataXtd_Geometry.hxx".}
proc id*(this: TDataXtdGeometry): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Geometry.hxx".}
proc restore*(this: var TDataXtdGeometry; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Geometry.hxx".}
proc newEmpty*(this: TDataXtdGeometry): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Geometry.hxx".}
proc paste*(this: TDataXtdGeometry; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_Geometry.hxx".}
proc dump*(this: TDataXtdGeometry; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Geometry.hxx".}
type
  TDataXtdGeometrybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataXtd_Geometry::get_type_name(@)",
                            header: "TDataXtd_Geometry.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_Geometry::get_type_descriptor(@)",
    header: "TDataXtd_Geometry.hxx".}
proc dynamicType*(this: TDataXtdGeometry): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Geometry.hxx".}

























