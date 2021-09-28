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
discard "forward decl of IGESSolid_Ellipsoid"
discard "forward decl of IGESSolid_Ellipsoid"
type
  HandleC1C1* = Handle[IGESSolidEllipsoid]

## ! defines Ellipsoid, Type <168> Form Number <0>
## ! in package IGESSolid
## ! The ellipsoid is a solid bounded by the surface defined
## ! by:
## ! X^2       Y^2       Z^2
## ! -----  +  -----  +  -----  =  1
## ! LX^2      LY^2      LZ^2

type
  IGESSolidEllipsoid* {.importcpp: "IGESSolid_Ellipsoid",
                       header: "IGESSolid_Ellipsoid.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidEllipsoid*(): IGESSolidEllipsoid {.constructor,
    importcpp: "IGESSolid_Ellipsoid(@)", header: "IGESSolid_Ellipsoid.hxx".}
proc init*(this: var IGESSolidEllipsoid; aSize: Xyz; aCenter: Xyz; anXAxis: Xyz;
          anZAxis: Xyz) {.importcpp: "Init", header: "IGESSolid_Ellipsoid.hxx".}
proc size*(this: IGESSolidEllipsoid): Xyz {.noSideEffect, importcpp: "Size",
                                        header: "IGESSolid_Ellipsoid.hxx".}
proc xLength*(this: IGESSolidEllipsoid): cfloat {.noSideEffect, importcpp: "XLength",
    header: "IGESSolid_Ellipsoid.hxx".}
proc yLength*(this: IGESSolidEllipsoid): cfloat {.noSideEffect, importcpp: "YLength",
    header: "IGESSolid_Ellipsoid.hxx".}
proc zLength*(this: IGESSolidEllipsoid): cfloat {.noSideEffect, importcpp: "ZLength",
    header: "IGESSolid_Ellipsoid.hxx".}
proc center*(this: IGESSolidEllipsoid): Pnt {.noSideEffect, importcpp: "Center",
    header: "IGESSolid_Ellipsoid.hxx".}
proc transformedCenter*(this: IGESSolidEllipsoid): Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_Ellipsoid.hxx".}
proc xAxis*(this: IGESSolidEllipsoid): Dir {.noSideEffect, importcpp: "XAxis",
    header: "IGESSolid_Ellipsoid.hxx".}
proc transformedXAxis*(this: IGESSolidEllipsoid): Dir {.noSideEffect,
    importcpp: "TransformedXAxis", header: "IGESSolid_Ellipsoid.hxx".}
proc yAxis*(this: IGESSolidEllipsoid): Dir {.noSideEffect, importcpp: "YAxis",
    header: "IGESSolid_Ellipsoid.hxx".}
proc transformedYAxis*(this: IGESSolidEllipsoid): Dir {.noSideEffect,
    importcpp: "TransformedYAxis", header: "IGESSolid_Ellipsoid.hxx".}
proc zAxis*(this: IGESSolidEllipsoid): Dir {.noSideEffect, importcpp: "ZAxis",
    header: "IGESSolid_Ellipsoid.hxx".}
proc transformedZAxis*(this: IGESSolidEllipsoid): Dir {.noSideEffect,
    importcpp: "TransformedZAxis", header: "IGESSolid_Ellipsoid.hxx".}
type
  IGESSolidEllipsoidbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Ellipsoid::get_type_name(@)",
                            header: "IGESSolid_Ellipsoid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Ellipsoid::get_type_descriptor(@)",
    header: "IGESSolid_Ellipsoid.hxx".}
proc dynamicType*(this: IGESSolidEllipsoid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Ellipsoid.hxx".}

























