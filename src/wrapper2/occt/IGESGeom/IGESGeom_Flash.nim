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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Flash"
discard "forward decl of IGESGeom_Flash"
type
  HandleIGESGeomFlash* = Handle[IGESGeomFlash]

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
  IGESGeomFlash* {.importcpp: "IGESGeom_Flash", header: "IGESGeom_Flash.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomFlash*(): IGESGeomFlash {.constructor,
    importcpp: "IGESGeom_Flash(@)", header: "IGESGeom_Flash.hxx".}
proc init*(this: var IGESGeomFlash; aPoint: GpXY; aDim: StandardReal;
          anotherDim: StandardReal; aRotation: StandardReal;
          aReference: Handle[IGESDataIGESEntity]) {.importcpp: "Init",
    header: "IGESGeom_Flash.hxx".}
proc setFormNumber*(this: var IGESGeomFlash; form: StandardInteger) {.
    importcpp: "SetFormNumber", header: "IGESGeom_Flash.hxx".}
proc referencePoint*(this: IGESGeomFlash): GpPnt2d {.noSideEffect,
    importcpp: "ReferencePoint", header: "IGESGeom_Flash.hxx".}
proc transformedReferencePoint*(this: IGESGeomFlash): GpPnt {.noSideEffect,
    importcpp: "TransformedReferencePoint", header: "IGESGeom_Flash.hxx".}
proc dimension1*(this: IGESGeomFlash): StandardReal {.noSideEffect,
    importcpp: "Dimension1", header: "IGESGeom_Flash.hxx".}
proc dimension2*(this: IGESGeomFlash): StandardReal {.noSideEffect,
    importcpp: "Dimension2", header: "IGESGeom_Flash.hxx".}
proc rotation*(this: IGESGeomFlash): StandardReal {.noSideEffect,
    importcpp: "Rotation", header: "IGESGeom_Flash.hxx".}
proc referenceEntity*(this: IGESGeomFlash): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "ReferenceEntity", header: "IGESGeom_Flash.hxx".}
proc hasReferenceEntity*(this: IGESGeomFlash): StandardBoolean {.noSideEffect,
    importcpp: "HasReferenceEntity", header: "IGESGeom_Flash.hxx".}
type
  IGESGeomFlashbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_Flash::get_type_name(@)",
                            header: "IGESGeom_Flash.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_Flash::get_type_descriptor(@)",
    header: "IGESGeom_Flash.hxx".}
proc dynamicType*(this: IGESGeomFlash): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Flash.hxx".}

