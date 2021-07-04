##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, Transfer_Finder,
  ../TColStd/TColStd_MapTransientHasher, ../Standard/Standard_Boolean,
  ../Standard/Standard_Type, ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_DataInfo"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_TransientMapper"
discard "forward decl of Transfer_TransientMapper"
type
  Handle_Transfer_TransientMapper* = handle[Transfer_TransientMapper]
  Transfer_TransientMapper* {.importcpp: "Transfer_TransientMapper",
                             header: "Transfer_TransientMapper.hxx", bycopy.} = object of Transfer_Finder ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## Mapper
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


proc constructTransfer_TransientMapper*(akey: handle[Standard_Transient]): Transfer_TransientMapper {.
    constructor, importcpp: "Transfer_TransientMapper(@)",
    header: "Transfer_TransientMapper.hxx".}
proc Value*(this: Transfer_TransientMapper): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Value", header: "Transfer_TransientMapper.hxx".}
proc Equates*(this: Transfer_TransientMapper; other: handle[Transfer_Finder]): Standard_Boolean {.
    noSideEffect, importcpp: "Equates", header: "Transfer_TransientMapper.hxx".}
proc ValueType*(this: Transfer_TransientMapper): handle[Standard_Type] {.
    noSideEffect, importcpp: "ValueType", header: "Transfer_TransientMapper.hxx".}
proc ValueTypeName*(this: Transfer_TransientMapper): Standard_CString {.
    noSideEffect, importcpp: "ValueTypeName",
    header: "Transfer_TransientMapper.hxx".}
type
  Transfer_TransientMapperbase_type* = Transfer_Finder

proc get_type_name*(): cstring {.importcpp: "Transfer_TransientMapper::get_type_name(@)",
                              header: "Transfer_TransientMapper.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_TransientMapper::get_type_descriptor(@)",
    header: "Transfer_TransientMapper.hxx".}
proc DynamicType*(this: Transfer_TransientMapper): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_TransientMapper.hxx".}