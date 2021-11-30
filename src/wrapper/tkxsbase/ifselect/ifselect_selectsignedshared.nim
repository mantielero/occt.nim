##  Created on: 1996-09-25
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of IFSelect_Signature"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_SelectSignedShared"
type
  HandleIFSelectSelectSignedShared* = Handle[IFSelectSelectSignedShared]

## ! In the graph, explore the Shareds of the input entities,
## ! until it encounters some which match a given Signature
## ! (for a limited level, filters the returned list)
## ! By default, fitted for any level

type
  IFSelectSelectSignedShared* {.importcpp: "IFSelect_SelectSignedShared",
                               header: "IFSelect_SelectSignedShared.hxx", bycopy.} = object of IFSelectSelectExplore ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## a
                                                                                                              ## SelectSignedShared,
                                                                                                              ## defaulted
                                                                                                              ## for
                                                                                                              ## any
                                                                                                              ## level
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## with
                                                                                                              ## a
                                                                                                              ## given
                                                                                                              ## Signature
                                                                                                              ## and
                                                                                                              ## text
                                                                                                              ## to
                                                                                                              ## match


proc newIFSelectSelectSignedShared*(matcher: Handle[IFSelectSignature];
                                   signtext: cstring; exact: bool = true;
                                   level: cint = 0): IFSelectSelectSignedShared {.
    cdecl, constructor, importcpp: "IFSelect_SelectSignedShared(@)",
    header: "IFSelect_SelectSignedShared.hxx".}
proc signature*(this: IFSelectSelectSignedShared): Handle[IFSelectSignature] {.
    noSideEffect, cdecl, importcpp: "Signature", header: "IFSelect_SelectSignedShared.hxx".}
proc signatureText*(this: IFSelectSelectSignedShared): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SignatureText", header: "IFSelect_SelectSignedShared.hxx".}
proc isExact*(this: IFSelectSelectSignedShared): bool {.noSideEffect, cdecl,
    importcpp: "IsExact", header: "IFSelect_SelectSignedShared.hxx".}
proc explore*(this: IFSelectSelectSignedShared; level: cint;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): bool {.noSideEffect, cdecl,
    importcpp: "Explore", header: "IFSelect_SelectSignedShared.hxx".}
proc exploreLabel*(this: IFSelectSelectSignedShared): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExploreLabel", header: "IFSelect_SelectSignedShared.hxx".}