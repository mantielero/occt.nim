##  Created on: 1994-11-04
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
  MoniTool_AttrList, ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Type, ../Standard/Standard_CString

discard "forward decl of MoniTool_AttrList"
discard "forward decl of MoniTool_Element"
discard "forward decl of MoniTool_Element"
type
  Handle_MoniTool_Element* = handle[MoniTool_Element]

## ! a Element allows to map any kind of object as a Key for a Map.
## ! This works by defining, for a Hash Code, that of the real Key,
## ! not of the Element which acts only as an intermediate.
## ! When a Map asks for the HashCode of a Element, this one returns
## ! the code it has determined at creation time

type
  MoniTool_Element* {.importcpp: "MoniTool_Element",
                     header: "MoniTool_Element.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
                                                                                      ##
                                                                                      ## !
                                                                                      ## Stores
                                                                                      ## the
                                                                                      ## HashCode
                                                                                      ## which
                                                                                      ## corresponds
                                                                                      ## to
                                                                                      ## the
                                                                                      ## Value
                                                                                      ## given
                                                                                      ## to
                                                                                      ##
                                                                                      ## !
                                                                                      ## create
                                                                                      ## the
                                                                                      ## Mapper


proc constructMoniTool_Element*(): MoniTool_Element {.constructor,
    importcpp: "MoniTool_Element(@)", header: "MoniTool_Element.hxx".}
proc GetHashCode*(this: MoniTool_Element): Standard_Integer {.noSideEffect,
    importcpp: "GetHashCode", header: "MoniTool_Element.hxx".}
proc Equates*(this: MoniTool_Element; other: handle[MoniTool_Element]): Standard_Boolean {.
    noSideEffect, importcpp: "Equates", header: "MoniTool_Element.hxx".}
proc ValueType*(this: MoniTool_Element): handle[Standard_Type] {.noSideEffect,
    importcpp: "ValueType", header: "MoniTool_Element.hxx".}
proc ValueTypeName*(this: MoniTool_Element): Standard_CString {.noSideEffect,
    importcpp: "ValueTypeName", header: "MoniTool_Element.hxx".}
proc ListAttr*(this: MoniTool_Element): MoniTool_AttrList {.noSideEffect,
    importcpp: "ListAttr", header: "MoniTool_Element.hxx".}
proc ChangeAttr*(this: var MoniTool_Element): var MoniTool_AttrList {.
    importcpp: "ChangeAttr", header: "MoniTool_Element.hxx".}
type
  MoniTool_Elementbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MoniTool_Element::get_type_name(@)",
                              header: "MoniTool_Element.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_Element::get_type_descriptor(@)",
    header: "MoniTool_Element.hxx".}
proc DynamicType*(this: MoniTool_Element): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_Element.hxx".}