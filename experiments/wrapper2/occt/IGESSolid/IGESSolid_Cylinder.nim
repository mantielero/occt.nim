##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_Cylinder"
discard "forward decl of IGESSolid_Cylinder"
type
  HandleIGESSolidCylinder* = Handle[IGESSolidCylinder]

## ! defines Cylinder, Type <154> Form Number <0>
## ! in package IGESSolid
## ! This defines a solid cylinder

type
  IGESSolidCylinder* {.importcpp: "IGESSolid_Cylinder",
                      header: "IGESSolid_Cylinder.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidCylinder*(): IGESSolidCylinder {.constructor,
    importcpp: "IGESSolid_Cylinder(@)", header: "IGESSolid_Cylinder.hxx".}
proc init*(this: var IGESSolidCylinder; aHeight: float; aRadius: float; aCenter: Xyz;
          anAxis: Xyz) {.importcpp: "Init", header: "IGESSolid_Cylinder.hxx".}
proc height*(this: IGESSolidCylinder): float {.noSideEffect, importcpp: "Height",
    header: "IGESSolid_Cylinder.hxx".}
proc radius*(this: IGESSolidCylinder): float {.noSideEffect, importcpp: "Radius",
    header: "IGESSolid_Cylinder.hxx".}
proc faceCenter*(this: IGESSolidCylinder): Pnt {.noSideEffect,
    importcpp: "FaceCenter", header: "IGESSolid_Cylinder.hxx".}
proc transformedFaceCenter*(this: IGESSolidCylinder): Pnt {.noSideEffect,
    importcpp: "TransformedFaceCenter", header: "IGESSolid_Cylinder.hxx".}
proc axis*(this: IGESSolidCylinder): Dir {.noSideEffect, importcpp: "Axis",
                                       header: "IGESSolid_Cylinder.hxx".}
proc transformedAxis*(this: IGESSolidCylinder): Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_Cylinder.hxx".}
type
  IGESSolidCylinderbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Cylinder::get_type_name(@)",
                            header: "IGESSolid_Cylinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Cylinder::get_type_descriptor(@)",
    header: "IGESSolid_Cylinder.hxx".}
proc dynamicType*(this: IGESSolidCylinder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Cylinder.hxx".}
