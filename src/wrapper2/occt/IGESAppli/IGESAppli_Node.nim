##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of IGESAppli_Node"
discard "forward decl of IGESAppli_Node"
type
  Handle_IGESAppli_Node* = handle[IGESAppli_Node]

## ! defines Node, Type <134> Form <0>
## ! in package IGESAppli
## ! Geometric point used in the definition of a finite element.

type
  IGESAppli_Node* {.importcpp: "IGESAppli_Node", header: "IGESAppli_Node.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_Node*(): IGESAppli_Node {.constructor,
    importcpp: "IGESAppli_Node(@)", header: "IGESAppli_Node.hxx".}
proc Init*(this: var IGESAppli_Node; aCoord: gp_XYZ;
          aCoordSystem: handle[IGESGeom_TransformationMatrix]) {.
    importcpp: "Init", header: "IGESAppli_Node.hxx".}
proc Coord*(this: IGESAppli_Node): gp_Pnt {.noSideEffect, importcpp: "Coord",
                                        header: "IGESAppli_Node.hxx".}
proc System*(this: IGESAppli_Node): handle[IGESData_TransfEntity] {.noSideEffect,
    importcpp: "System", header: "IGESAppli_Node.hxx".}
proc SystemType*(this: IGESAppli_Node): Standard_Integer {.noSideEffect,
    importcpp: "SystemType", header: "IGESAppli_Node.hxx".}
proc TransformedNodalCoord*(this: IGESAppli_Node): gp_Pnt {.noSideEffect,
    importcpp: "TransformedNodalCoord", header: "IGESAppli_Node.hxx".}
type
  IGESAppli_Nodebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_Node::get_type_name(@)",
                              header: "IGESAppli_Node.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_Node::get_type_descriptor(@)",
    header: "IGESAppli_Node.hxx".}
proc DynamicType*(this: IGESAppli_Node): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_Node.hxx".}