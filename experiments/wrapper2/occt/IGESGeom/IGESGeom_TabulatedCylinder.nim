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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_TabulatedCylinder"
discard "forward decl of IGESGeom_TabulatedCylinder"
type
  Handle_IGESGeom_TabulatedCylinder* = handle[IGESGeom_TabulatedCylinder]

## ! defines IGESTabulatedCylinder, Type <122> Form <0>
## ! in package IGESGeom
## ! A tabulated cylinder is a surface formed by moving a line
## ! segment called generatrix parallel to itself along a curve
## ! called directrix. The curve may be a line, circular arc,
## ! conic arc, parametric spline curve, rational B-spline
## ! curve or composite curve.

type
  IGESGeom_TabulatedCylinder* {.importcpp: "IGESGeom_TabulatedCylinder",
                               header: "IGESGeom_TabulatedCylinder.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_TabulatedCylinder*(): IGESGeom_TabulatedCylinder {.
    constructor, importcpp: "IGESGeom_TabulatedCylinder(@)",
    header: "IGESGeom_TabulatedCylinder.hxx".}
proc Init*(this: var IGESGeom_TabulatedCylinder;
          aDirectrix: handle[IGESData_IGESEntity]; anEnd: gp_XYZ) {.
    importcpp: "Init", header: "IGESGeom_TabulatedCylinder.hxx".}
proc Directrix*(this: IGESGeom_TabulatedCylinder): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Directrix", header: "IGESGeom_TabulatedCylinder.hxx".}
proc EndPoint*(this: IGESGeom_TabulatedCylinder): gp_Pnt {.noSideEffect,
    importcpp: "EndPoint", header: "IGESGeom_TabulatedCylinder.hxx".}
proc TransformedEndPoint*(this: IGESGeom_TabulatedCylinder): gp_Pnt {.noSideEffect,
    importcpp: "TransformedEndPoint", header: "IGESGeom_TabulatedCylinder.hxx".}
type
  IGESGeom_TabulatedCylinderbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_TabulatedCylinder::get_type_name(@)",
                              header: "IGESGeom_TabulatedCylinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_TabulatedCylinder::get_type_descriptor(@)",
    header: "IGESGeom_TabulatedCylinder.hxx".}
proc DynamicType*(this: IGESGeom_TabulatedCylinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_TabulatedCylinder.hxx".}