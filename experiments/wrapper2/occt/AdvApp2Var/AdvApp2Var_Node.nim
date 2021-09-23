##  Created on: 1996-04-09
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../gp/gp_XY, ../Standard/Standard, ../Standard/Standard_Handle,
  ../Standard/Standard_Type, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array2OfReal

## ! used to store constraints on a (Ui,Vj) point

type
  AdvApp2Var_Node* {.importcpp: "AdvApp2Var_Node", header: "AdvApp2Var_Node.hxx",
                    bycopy.} = object of Standard_Transient

  AdvApp2Var_Nodebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AdvApp2Var_Node::get_type_name(@)",
                              header: "AdvApp2Var_Node.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AdvApp2Var_Node::get_type_descriptor(@)",
    header: "AdvApp2Var_Node.hxx".}
proc DynamicType*(this: AdvApp2Var_Node): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AdvApp2Var_Node.hxx".}
proc constructAdvApp2Var_Node*(): AdvApp2Var_Node {.constructor,
    importcpp: "AdvApp2Var_Node(@)", header: "AdvApp2Var_Node.hxx".}
proc constructAdvApp2Var_Node*(iu: Standard_Integer; iv: Standard_Integer): AdvApp2Var_Node {.
    constructor, importcpp: "AdvApp2Var_Node(@)", header: "AdvApp2Var_Node.hxx".}
proc constructAdvApp2Var_Node*(UV: gp_XY; iu: Standard_Integer; iv: Standard_Integer): AdvApp2Var_Node {.
    constructor, importcpp: "AdvApp2Var_Node(@)", header: "AdvApp2Var_Node.hxx".}
proc Coord*(this: AdvApp2Var_Node): gp_XY {.noSideEffect, importcpp: "Coord",
                                        header: "AdvApp2Var_Node.hxx".}
proc SetCoord*(this: var AdvApp2Var_Node; x1: Standard_Real; x2: Standard_Real) {.
    importcpp: "SetCoord", header: "AdvApp2Var_Node.hxx".}
proc UOrder*(this: AdvApp2Var_Node): Standard_Integer {.noSideEffect,
    importcpp: "UOrder", header: "AdvApp2Var_Node.hxx".}
proc VOrder*(this: AdvApp2Var_Node): Standard_Integer {.noSideEffect,
    importcpp: "VOrder", header: "AdvApp2Var_Node.hxx".}
proc SetPoint*(this: var AdvApp2Var_Node; iu: Standard_Integer; iv: Standard_Integer;
              Pt: gp_Pnt) {.importcpp: "SetPoint", header: "AdvApp2Var_Node.hxx".}
proc Point*(this: AdvApp2Var_Node; iu: Standard_Integer; iv: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "AdvApp2Var_Node.hxx".}
proc SetError*(this: var AdvApp2Var_Node; iu: Standard_Integer; iv: Standard_Integer;
              error: Standard_Real) {.importcpp: "SetError",
                                    header: "AdvApp2Var_Node.hxx".}
proc Error*(this: AdvApp2Var_Node; iu: Standard_Integer; iv: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Error", header: "AdvApp2Var_Node.hxx".}