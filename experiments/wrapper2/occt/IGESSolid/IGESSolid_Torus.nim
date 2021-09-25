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
discard "forward decl of IGESSolid_Torus"
discard "forward decl of IGESSolid_Torus"
type
  HandleIGESSolidTorus* = Handle[IGESSolidTorus]

## ! defines Torus, Type <160> Form Number <0>
## ! in package IGESSolid
## ! A Torus is a solid formed by revolving a circular disc
## ! about a specified coplanar axis.

type
  IGESSolidTorus* {.importcpp: "IGESSolid_Torus", header: "IGESSolid_Torus.hxx",
                   bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidTorus*(): IGESSolidTorus {.constructor,
    importcpp: "IGESSolid_Torus(@)", header: "IGESSolid_Torus.hxx".}
proc init*(this: var IGESSolidTorus; r1: float; r2: float; aPoint: Xyz; anAxisdir: Xyz) {.
    importcpp: "Init", header: "IGESSolid_Torus.hxx".}
proc majorRadius*(this: IGESSolidTorus): float {.noSideEffect,
    importcpp: "MajorRadius", header: "IGESSolid_Torus.hxx".}
proc discRadius*(this: IGESSolidTorus): float {.noSideEffect,
    importcpp: "DiscRadius", header: "IGESSolid_Torus.hxx".}
proc axisPoint*(this: IGESSolidTorus): Pnt {.noSideEffect, importcpp: "AxisPoint",
    header: "IGESSolid_Torus.hxx".}
proc transformedAxisPoint*(this: IGESSolidTorus): Pnt {.noSideEffect,
    importcpp: "TransformedAxisPoint", header: "IGESSolid_Torus.hxx".}
proc axis*(this: IGESSolidTorus): Dir {.noSideEffect, importcpp: "Axis",
                                    header: "IGESSolid_Torus.hxx".}
proc transformedAxis*(this: IGESSolidTorus): Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_Torus.hxx".}
type
  IGESSolidTorusbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Torus::get_type_name(@)",
                            header: "IGESSolid_Torus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Torus::get_type_descriptor(@)",
    header: "IGESSolid_Torus.hxx".}
proc dynamicType*(this: IGESSolidTorus): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Torus.hxx".}
