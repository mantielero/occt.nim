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

discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of IGESAppli_Node"
discard "forward decl of IGESAppli_Node"
type
  HandleIGESAppliNode* = Handle[IGESAppliNode]

## ! defines Node, Type <134> Form <0>
## ! in package IGESAppli
## ! Geometric point used in the definition of a finite element.

type
  IGESAppliNode* {.importcpp: "IGESAppli_Node", header: "IGESAppli_Node.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliNode*(): IGESAppliNode {.constructor,
    importcpp: "IGESAppli_Node(@)", header: "IGESAppli_Node.hxx".}
proc init*(this: var IGESAppliNode; aCoord: Xyz;
          aCoordSystem: Handle[IGESGeomTransformationMatrix]) {.importcpp: "Init",
    header: "IGESAppli_Node.hxx".}
proc coord*(this: IGESAppliNode): Pnt {.noSideEffect, importcpp: "Coord",
                                    header: "IGESAppli_Node.hxx".}
proc system*(this: IGESAppliNode): Handle[IGESDataTransfEntity] {.noSideEffect,
    importcpp: "System", header: "IGESAppli_Node.hxx".}
proc systemType*(this: IGESAppliNode): int {.noSideEffect, importcpp: "SystemType",
    header: "IGESAppli_Node.hxx".}
proc transformedNodalCoord*(this: IGESAppliNode): Pnt {.noSideEffect,
    importcpp: "TransformedNodalCoord", header: "IGESAppli_Node.hxx".}
type
  IGESAppliNodebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_Node::get_type_name(@)",
                            header: "IGESAppli_Node.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_Node::get_type_descriptor(@)",
    header: "IGESAppli_Node.hxx".}
proc dynamicType*(this: IGESAppliNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_Node.hxx".}
