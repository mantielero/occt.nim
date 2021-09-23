##  Created on: 1994-12-21
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Dispatch,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of IFSelect_SignCounter"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerSignature"
discard "forward decl of IFSelect_DispPerSignature"
type
  Handle_IFSelect_DispPerSignature* = handle[IFSelect_DispPerSignature]

## ! A DispPerSignature sorts input Entities according to a
## ! Signature : it works with a SignCounter to do this.

type
  IFSelect_DispPerSignature* {.importcpp: "IFSelect_DispPerSignature",
                              header: "IFSelect_DispPerSignature.hxx", bycopy.} = object of IFSelect_Dispatch ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## DispPerSignature
                                                                                                       ## with
                                                                                                       ## no
                                                                                                       ## SignCounter
                                                                                                       ## (by
                                                                                                       ## default,
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## produces
                                                                                                       ## only
                                                                                                       ## one
                                                                                                       ## packet)


proc constructIFSelect_DispPerSignature*(): IFSelect_DispPerSignature {.
    constructor, importcpp: "IFSelect_DispPerSignature(@)",
    header: "IFSelect_DispPerSignature.hxx".}
proc SignCounter*(this: IFSelect_DispPerSignature): handle[IFSelect_SignCounter] {.
    noSideEffect, importcpp: "SignCounter", header: "IFSelect_DispPerSignature.hxx".}
proc SetSignCounter*(this: var IFSelect_DispPerSignature;
                    sign: handle[IFSelect_SignCounter]) {.
    importcpp: "SetSignCounter", header: "IFSelect_DispPerSignature.hxx".}
proc SignName*(this: IFSelect_DispPerSignature): Standard_CString {.noSideEffect,
    importcpp: "SignName", header: "IFSelect_DispPerSignature.hxx".}
proc Label*(this: IFSelect_DispPerSignature): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IFSelect_DispPerSignature.hxx".}
proc LimitedMax*(this: IFSelect_DispPerSignature; nbent: Standard_Integer;
                max: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_DispPerSignature.hxx".}
proc Packets*(this: IFSelect_DispPerSignature; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispPerSignature.hxx".}
type
  IFSelect_DispPerSignaturebase_type* = IFSelect_Dispatch

proc get_type_name*(): cstring {.importcpp: "IFSelect_DispPerSignature::get_type_name(@)",
                              header: "IFSelect_DispPerSignature.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_DispPerSignature::get_type_descriptor(@)",
    header: "IFSelect_DispPerSignature.hxx".}
proc DynamicType*(this: IFSelect_DispPerSignature): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_DispPerSignature.hxx".}