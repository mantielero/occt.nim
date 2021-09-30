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

## ! used to store constraints on a (Ui,Vj) point

type
  AdvApp2VarNode* {.importcpp: "AdvApp2Var_Node", header: "AdvApp2Var_Node.hxx",
                   bycopy.} = object of StandardTransient

  AdvApp2VarNodebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AdvApp2Var_Node::get_type_name(@)",
                            header: "AdvApp2Var_Node.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AdvApp2Var_Node::get_type_descriptor(@)",
    header: "AdvApp2Var_Node.hxx".}
proc dynamicType*(this: AdvApp2VarNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AdvApp2Var_Node.hxx".}
proc constructAdvApp2VarNode*(): AdvApp2VarNode {.constructor,
    importcpp: "AdvApp2Var_Node(@)", header: "AdvApp2Var_Node.hxx".}
proc constructAdvApp2VarNode*(iu: cint; iv: cint): AdvApp2VarNode {.constructor,
    importcpp: "AdvApp2Var_Node(@)", header: "AdvApp2Var_Node.hxx".}
proc constructAdvApp2VarNode*(uv: Xy; iu: cint; iv: cint): AdvApp2VarNode {.constructor,
    importcpp: "AdvApp2Var_Node(@)", header: "AdvApp2Var_Node.hxx".}
proc coord*(this: AdvApp2VarNode): Xy {.noSideEffect, importcpp: "Coord",
                                    header: "AdvApp2Var_Node.hxx".}
proc setCoord*(this: var AdvApp2VarNode; x1: cfloat; x2: cfloat) {.
    importcpp: "SetCoord", header: "AdvApp2Var_Node.hxx".}
proc uOrder*(this: AdvApp2VarNode): cint {.noSideEffect, importcpp: "UOrder",
                                       header: "AdvApp2Var_Node.hxx".}
proc vOrder*(this: AdvApp2VarNode): cint {.noSideEffect, importcpp: "VOrder",
                                       header: "AdvApp2Var_Node.hxx".}
proc setPoint*(this: var AdvApp2VarNode; iu: cint; iv: cint; pt: Pnt) {.
    importcpp: "SetPoint", header: "AdvApp2Var_Node.hxx".}
proc point*(this: AdvApp2VarNode; iu: cint; iv: cint): Pnt {.noSideEffect,
    importcpp: "Point", header: "AdvApp2Var_Node.hxx".}
proc setError*(this: var AdvApp2VarNode; iu: cint; iv: cint; error: cfloat) {.
    importcpp: "SetError", header: "AdvApp2Var_Node.hxx".}
proc error*(this: AdvApp2VarNode; iu: cint; iv: cint): cfloat {.noSideEffect,
    importcpp: "Error", header: "AdvApp2Var_Node.hxx".}

























