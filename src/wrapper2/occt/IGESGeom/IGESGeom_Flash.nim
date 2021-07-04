##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XY,
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Flash"
discard "forward decl of IGESGeom_Flash"
type
  Handle_IGESGeom_Flash* = handle[IGESGeom_Flash]

## ! defines IGESFlash, Type <125> Form <0 - 4>
## ! in package IGESGeom
## ! A flash entity is a point in the ZT=0 plane that locates
## ! a particular closed area. That closed area can be defined
## ! in one of two ways. First, it can be an arbitrary closed
## ! area defined by any entity capable of defining a closed
## ! area. The points of this entity must all lie in the ZT=0
## ! plane. Second, it can be a member of a predefined set of
## ! flash shapes.

type
  IGESGeom_Flash* {.importcpp: "IGESGeom_Flash", header: "IGESGeom_Flash.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_Flash*(): IGESGeom_Flash {.constructor,
    importcpp: "IGESGeom_Flash(@)", header: "IGESGeom_Flash.hxx".}
proc Init*(this: var IGESGeom_Flash; aPoint: gp_XY; aDim: Standard_Real;
          anotherDim: Standard_Real; aRotation: Standard_Real;
          aReference: handle[IGESData_IGESEntity]) {.importcpp: "Init",
    header: "IGESGeom_Flash.hxx".}
proc SetFormNumber*(this: var IGESGeom_Flash; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESGeom_Flash.hxx".}
proc ReferencePoint*(this: IGESGeom_Flash): gp_Pnt2d {.noSideEffect,
    importcpp: "ReferencePoint", header: "IGESGeom_Flash.hxx".}
proc TransformedReferencePoint*(this: IGESGeom_Flash): gp_Pnt {.noSideEffect,
    importcpp: "TransformedReferencePoint", header: "IGESGeom_Flash.hxx".}
proc Dimension1*(this: IGESGeom_Flash): Standard_Real {.noSideEffect,
    importcpp: "Dimension1", header: "IGESGeom_Flash.hxx".}
proc Dimension2*(this: IGESGeom_Flash): Standard_Real {.noSideEffect,
    importcpp: "Dimension2", header: "IGESGeom_Flash.hxx".}
proc Rotation*(this: IGESGeom_Flash): Standard_Real {.noSideEffect,
    importcpp: "Rotation", header: "IGESGeom_Flash.hxx".}
proc ReferenceEntity*(this: IGESGeom_Flash): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "ReferenceEntity", header: "IGESGeom_Flash.hxx".}
proc HasReferenceEntity*(this: IGESGeom_Flash): Standard_Boolean {.noSideEffect,
    importcpp: "HasReferenceEntity", header: "IGESGeom_Flash.hxx".}
type
  IGESGeom_Flashbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_Flash::get_type_name(@)",
                              header: "IGESGeom_Flash.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_Flash::get_type_descriptor(@)",
    header: "IGESGeom_Flash.hxx".}
proc DynamicType*(this: IGESGeom_Flash): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Flash.hxx".}