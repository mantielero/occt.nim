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

discard "forward decl of IFSelect_SignCounter"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerSignature"
discard "forward decl of IFSelect_DispPerSignature"
type
  HandleIFSelectDispPerSignature* = Handle[IFSelectDispPerSignature]

## ! A DispPerSignature sorts input Entities according to a
## ! Signature : it works with a SignCounter to do this.

type
  IFSelectDispPerSignature* {.importcpp: "IFSelect_DispPerSignature",
                             header: "IFSelect_DispPerSignature.hxx", bycopy.} = object of IFSelectDispatch ##
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


proc constructIFSelectDispPerSignature*(): IFSelectDispPerSignature {.constructor,
    importcpp: "IFSelect_DispPerSignature(@)",
    header: "IFSelect_DispPerSignature.hxx".}
proc signCounter*(this: IFSelectDispPerSignature): Handle[IFSelectSignCounter] {.
    noSideEffect, importcpp: "SignCounter", header: "IFSelect_DispPerSignature.hxx".}
proc setSignCounter*(this: var IFSelectDispPerSignature;
                    sign: Handle[IFSelectSignCounter]) {.
    importcpp: "SetSignCounter", header: "IFSelect_DispPerSignature.hxx".}
proc signName*(this: IFSelectDispPerSignature): StandardCString {.noSideEffect,
    importcpp: "SignName", header: "IFSelect_DispPerSignature.hxx".}
proc label*(this: IFSelectDispPerSignature): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispPerSignature.hxx".}
proc limitedMax*(this: IFSelectDispPerSignature; nbent: StandardInteger;
                max: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_DispPerSignature.hxx".}
proc packets*(this: IFSelectDispPerSignature; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispPerSignature.hxx".}
type
  IFSelectDispPerSignaturebaseType* = IFSelectDispatch

proc getTypeName*(): cstring {.importcpp: "IFSelect_DispPerSignature::get_type_name(@)",
                            header: "IFSelect_DispPerSignature.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_DispPerSignature::get_type_descriptor(@)",
    header: "IFSelect_DispPerSignature.hxx".}
proc dynamicType*(this: IFSelectDispPerSignature): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_DispPerSignature.hxx".}

