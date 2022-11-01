import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types
import ../../tkernel/tcolstd/tcolstd_types
import "../interface/interface_types"




##  Created on: 1994-04-21
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





proc setIntCase*(this: var IFSelectSignature; hasmin: bool; valmin: cint; hasmax: bool;
                valmax: cint) {.cdecl, importcpp: "SetIntCase", header: "IFSelect_Signature.hxx".}
proc isIntCase*(this: IFSelectSignature; hasmin: var bool; valmin: var cint;
               hasmax: var bool; valmax: var cint): bool {.noSideEffect, cdecl,
    importcpp: "IsIntCase", header: "IFSelect_Signature.hxx".}
proc addCase*(this: var IFSelectSignature; acase: cstring) {.cdecl,
    importcpp: "AddCase", header: "IFSelect_Signature.hxx".}
proc caseList*(this: IFSelectSignature): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, cdecl, importcpp: "CaseList", header: "IFSelect_Signature.hxx".}
proc name*(this: IFSelectSignature): cstring {.noSideEffect, cdecl, importcpp: "Name",
    header: "IFSelect_Signature.hxx".}
proc label*(this: IFSelectSignature): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_Signature.hxx".}
proc matches*(this: IFSelectSignature; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]; text: TCollectionAsciiString;
             exact: bool): bool {.noSideEffect, cdecl, importcpp: "Matches",
                               header: "IFSelect_Signature.hxx".}
proc matchValue*(val: cstring; text: TCollectionAsciiString; exact: bool): bool {.cdecl,
    importcpp: "IFSelect_Signature::MatchValue(@)", header: "IFSelect_Signature.hxx".}
proc intValue*(val: cint): cstring {.cdecl,
                                 importcpp: "IFSelect_Signature::IntValue(@)",
                                 header: "IFSelect_Signature.hxx".}


