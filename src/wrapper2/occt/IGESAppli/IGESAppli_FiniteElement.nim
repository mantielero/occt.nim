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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  IGESAppli_HArray1OfNode, ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_Node"
discard "forward decl of IGESAppli_FiniteElement"
discard "forward decl of IGESAppli_FiniteElement"
type
  Handle_IGESAppli_FiniteElement* = handle[IGESAppli_FiniteElement]

## ! defines FiniteElement, Type <136> Form <0>
## ! in package IGESAppli
## ! Used to define a finite element with the help of an
## ! element topology.

type
  IGESAppli_FiniteElement* {.importcpp: "IGESAppli_FiniteElement",
                            header: "IGESAppli_FiniteElement.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_FiniteElement*(): IGESAppli_FiniteElement {.constructor,
    importcpp: "IGESAppli_FiniteElement(@)", header: "IGESAppli_FiniteElement.hxx".}
proc Init*(this: var IGESAppli_FiniteElement; aType: Standard_Integer;
          allNodes: handle[IGESAppli_HArray1OfNode];
          aName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_FiniteElement.hxx".}
proc Topology*(this: IGESAppli_FiniteElement): Standard_Integer {.noSideEffect,
    importcpp: "Topology", header: "IGESAppli_FiniteElement.hxx".}
proc NbNodes*(this: IGESAppli_FiniteElement): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "IGESAppli_FiniteElement.hxx".}
proc Node*(this: IGESAppli_FiniteElement; Index: Standard_Integer): handle[
    IGESAppli_Node] {.noSideEffect, importcpp: "Node",
                     header: "IGESAppli_FiniteElement.hxx".}
proc Name*(this: IGESAppli_FiniteElement): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESAppli_FiniteElement.hxx".}
type
  IGESAppli_FiniteElementbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_FiniteElement::get_type_name(@)",
                              header: "IGESAppli_FiniteElement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_FiniteElement::get_type_descriptor(@)",
    header: "IGESAppli_FiniteElement.hxx".}
proc DynamicType*(this: IGESAppli_FiniteElement): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_FiniteElement.hxx".}