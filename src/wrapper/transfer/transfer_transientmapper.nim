import ../standard/standard_types
import transfer_types





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



proc newTransferTransientMapper*(akey: Handle[StandardTransient]): TransferTransientMapper {.
    cdecl, constructor, importcpp: "Transfer_TransientMapper(@)", header: "Transfer_TransientMapper.hxx".}
proc value*(this: TransferTransientMapper): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Value", header: "Transfer_TransientMapper.hxx".}
proc equates*(this: TransferTransientMapper; other: Handle[TransferFinder]): bool {.
    noSideEffect, cdecl, importcpp: "Equates", header: "Transfer_TransientMapper.hxx".}
proc valueType*(this: TransferTransientMapper): Handle[StandardType] {.noSideEffect,
    cdecl, importcpp: "ValueType", header: "Transfer_TransientMapper.hxx".}
proc valueTypeName*(this: TransferTransientMapper): cstring {.noSideEffect, cdecl,
    importcpp: "ValueTypeName", header: "Transfer_TransientMapper.hxx".}



