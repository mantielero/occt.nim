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

discard "forward decl of Standard_Transient"
discard "forward decl of MoniTool_Element"
discard "forward decl of MoniTool_TransientElem"
discard "forward decl of MoniTool_TransientElem"
type
  HandleC1C1* = Handle[MoniToolTransientElem]

## ! an TransientElem defines an Element for a specific input class
## ! its definition includes the value of the Key to be mapped,
## ! and the HashCoder associated to the class of the Key
## !
## ! Transient from Standard defines the class to be keyed
## ! MapTransientHasher from TColStd is the associated Hasher
## ! DataInfo from MoniTool   is an additionnal class which helps to provide
## ! informations on the value (template : see DataInfo)

type
  MoniToolTransientElem* {.importcpp: "MoniTool_TransientElem",
                          header: "MoniTool_TransientElem.hxx", bycopy.} = object of MoniToolElement ##
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


proc constructMoniToolTransientElem*(akey: Handle[StandardTransient]): MoniToolTransientElem {.
    constructor, importcpp: "MoniTool_TransientElem(@)",
    header: "MoniTool_TransientElem.hxx".}
proc value*(this: MoniToolTransientElem): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Value", header: "MoniTool_TransientElem.hxx".}
proc equates*(this: MoniToolTransientElem; other: Handle[MoniToolElement]): bool {.
    noSideEffect, importcpp: "Equates", header: "MoniTool_TransientElem.hxx".}
proc valueType*(this: MoniToolTransientElem): Handle[StandardType] {.noSideEffect,
    importcpp: "ValueType", header: "MoniTool_TransientElem.hxx".}
proc valueTypeName*(this: MoniToolTransientElem): StandardCString {.noSideEffect,
    importcpp: "ValueTypeName", header: "MoniTool_TransientElem.hxx".}
type
  MoniToolTransientElembaseType* = MoniToolElement

proc getTypeName*(): cstring {.importcpp: "MoniTool_TransientElem::get_type_name(@)",
                            header: "MoniTool_TransientElem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_TransientElem::get_type_descriptor(@)",
    header: "MoniTool_TransientElem.hxx".}
proc dynamicType*(this: MoniToolTransientElem): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_TransientElem.hxx".}

























