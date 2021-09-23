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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_XYZ, ../IGESData/IGESData_IGESEntity

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_Torus"
discard "forward decl of IGESSolid_Torus"
type
  Handle_IGESSolid_Torus* = handle[IGESSolid_Torus]

## ! defines Torus, Type <160> Form Number <0>
## ! in package IGESSolid
## ! A Torus is a solid formed by revolving a circular disc
## ! about a specified coplanar axis.

type
  IGESSolid_Torus* {.importcpp: "IGESSolid_Torus", header: "IGESSolid_Torus.hxx",
                    bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Torus*(): IGESSolid_Torus {.constructor,
    importcpp: "IGESSolid_Torus(@)", header: "IGESSolid_Torus.hxx".}
proc Init*(this: var IGESSolid_Torus; R1: Standard_Real; R2: Standard_Real;
          aPoint: gp_XYZ; anAxisdir: gp_XYZ) {.importcpp: "Init",
    header: "IGESSolid_Torus.hxx".}
proc MajorRadius*(this: IGESSolid_Torus): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "IGESSolid_Torus.hxx".}
proc DiscRadius*(this: IGESSolid_Torus): Standard_Real {.noSideEffect,
    importcpp: "DiscRadius", header: "IGESSolid_Torus.hxx".}
proc AxisPoint*(this: IGESSolid_Torus): gp_Pnt {.noSideEffect,
    importcpp: "AxisPoint", header: "IGESSolid_Torus.hxx".}
proc TransformedAxisPoint*(this: IGESSolid_Torus): gp_Pnt {.noSideEffect,
    importcpp: "TransformedAxisPoint", header: "IGESSolid_Torus.hxx".}
proc Axis*(this: IGESSolid_Torus): gp_Dir {.noSideEffect, importcpp: "Axis",
                                        header: "IGESSolid_Torus.hxx".}
proc TransformedAxis*(this: IGESSolid_Torus): gp_Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_Torus.hxx".}
type
  IGESSolid_Torusbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Torus::get_type_name(@)",
                              header: "IGESSolid_Torus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Torus::get_type_descriptor(@)",
    header: "IGESSolid_Torus.hxx".}
proc DynamicType*(this: IGESSolid_Torus): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Torus.hxx".}