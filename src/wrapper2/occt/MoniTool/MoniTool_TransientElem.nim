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
  ../Standard/Standard, ../Standard/Standard_Type, MoniTool_Element,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type,
  ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of MoniTool_Element"
discard "forward decl of MoniTool_TransientElem"
discard "forward decl of MoniTool_TransientElem"
type
  Handle_MoniTool_TransientElem* = handle[MoniTool_TransientElem]

## ! an TransientElem defines an Element for a specific input class
## ! its definition includes the value of the Key to be mapped,
## ! and the HashCoder associated to the class of the Key
## !
## ! Transient from Standard defines the class to be keyed
## ! MapTransientHasher from TColStd is the associated Hasher
## ! DataInfo from MoniTool   is an additionnal class which helps to provide
## ! informations on the value (template : see DataInfo)

type
  MoniTool_TransientElem* {.importcpp: "MoniTool_TransientElem",
                           header: "MoniTool_TransientElem.hxx", bycopy.} = object of MoniTool_Element ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## TransientElem
                                                                                                ## with
                                                                                                ## a
                                                                                                ## Value.
                                                                                                ## This
                                                                                                ## Value
                                                                                                ## can
                                                                                                ## then
                                                                                                ## not
                                                                                                ## be
                                                                                                ##
                                                                                                ## !
                                                                                                ## changed.
                                                                                                ## It
                                                                                                ## is
                                                                                                ## used
                                                                                                ## by
                                                                                                ## the
                                                                                                ## Hasher
                                                                                                ## to
                                                                                                ## compute
                                                                                                ## the
                                                                                                ## HashCode,
                                                                                                ##
                                                                                                ## !
                                                                                                ## which
                                                                                                ## will
                                                                                                ## then
                                                                                                ## be
                                                                                                ## stored
                                                                                                ## for
                                                                                                ## an
                                                                                                ## immediate
                                                                                                ## reading.


proc constructMoniTool_TransientElem*(akey: handle[Standard_Transient]): MoniTool_TransientElem {.
    constructor, importcpp: "MoniTool_TransientElem(@)",
    header: "MoniTool_TransientElem.hxx".}
proc Value*(this: MoniTool_TransientElem): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Value", header: "MoniTool_TransientElem.hxx".}
proc Equates*(this: MoniTool_TransientElem; other: handle[MoniTool_Element]): Standard_Boolean {.
    noSideEffect, importcpp: "Equates", header: "MoniTool_TransientElem.hxx".}
proc ValueType*(this: MoniTool_TransientElem): handle[Standard_Type] {.noSideEffect,
    importcpp: "ValueType", header: "MoniTool_TransientElem.hxx".}
proc ValueTypeName*(this: MoniTool_TransientElem): Standard_CString {.noSideEffect,
    importcpp: "ValueTypeName", header: "MoniTool_TransientElem.hxx".}
type
  MoniTool_TransientElembase_type* = MoniTool_Element

proc get_type_name*(): cstring {.importcpp: "MoniTool_TransientElem::get_type_name(@)",
                              header: "MoniTool_TransientElem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_TransientElem::get_type_descriptor(@)",
    header: "MoniTool_TransientElem.hxx".}
proc DynamicType*(this: MoniTool_TransientElem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MoniTool_TransientElem.hxx".}