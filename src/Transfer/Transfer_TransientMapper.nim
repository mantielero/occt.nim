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

discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_DataInfo"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_TransientMapper"
discard "forward decl of Transfer_TransientMapper"
type
  HandleTransferTransientMapper* = Handle[TransferTransientMapper]
  TransferTransientMapper* {.importcpp: "Transfer_TransientMapper",
                            header: "Transfer_TransientMapper.hxx", bycopy.} = object of TransferFinder ##
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


proc constructTransferTransientMapper*(akey: Handle[StandardTransient]): TransferTransientMapper {.
    constructor, importcpp: "Transfer_TransientMapper(@)",
    header: "Transfer_TransientMapper.hxx".}
proc value*(this: TransferTransientMapper): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Value", header: "Transfer_TransientMapper.hxx".}
proc equates*(this: TransferTransientMapper; other: Handle[TransferFinder]): bool {.
    noSideEffect, importcpp: "Equates", header: "Transfer_TransientMapper.hxx".}
proc valueType*(this: TransferTransientMapper): Handle[StandardType] {.noSideEffect,
    importcpp: "ValueType", header: "Transfer_TransientMapper.hxx".}
proc valueTypeName*(this: TransferTransientMapper): StandardCString {.noSideEffect,
    importcpp: "ValueTypeName", header: "Transfer_TransientMapper.hxx".}
type
  TransferTransientMapperbaseType* = TransferFinder

proc getTypeName*(): cstring {.importcpp: "Transfer_TransientMapper::get_type_name(@)",
                            header: "Transfer_TransientMapper.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_TransientMapper::get_type_descriptor(@)",
    header: "Transfer_TransientMapper.hxx".}
proc dynamicType*(this: TransferTransientMapper): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_TransientMapper.hxx".}














































