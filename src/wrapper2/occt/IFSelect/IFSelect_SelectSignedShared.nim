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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Boolean,
  IFSelect_SelectExplore, ../Standard/Standard_CString,
  ../Standard/Standard_Integer

discard "forward decl of IFSelect_Signature"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_SelectSignedShared"
discard "forward decl of IFSelect_SelectSignedShared"
type
  Handle_IFSelect_SelectSignedShared* = handle[IFSelect_SelectSignedShared]

## ! In the graph, explore the Shareds of the input entities,
## ! until it encounters some which match a given Signature
## ! (for a limited level, filters the returned list)
## ! By default, fitted for any level

type
  IFSelect_SelectSignedShared* {.importcpp: "IFSelect_SelectSignedShared",
                                header: "IFSelect_SelectSignedShared.hxx", bycopy.} = object of IFSelect_SelectExplore ##
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


proc constructIFSelect_SelectSignedShared*(matcher: handle[IFSelect_Signature];
    signtext: Standard_CString; exact: Standard_Boolean = Standard_True;
    level: Standard_Integer = 0): IFSelect_SelectSignedShared {.constructor,
    importcpp: "IFSelect_SelectSignedShared(@)",
    header: "IFSelect_SelectSignedShared.hxx".}
proc Signature*(this: IFSelect_SelectSignedShared): handle[IFSelect_Signature] {.
    noSideEffect, importcpp: "Signature", header: "IFSelect_SelectSignedShared.hxx".}
proc SignatureText*(this: IFSelect_SelectSignedShared): TCollection_AsciiString {.
    noSideEffect, importcpp: "SignatureText",
    header: "IFSelect_SelectSignedShared.hxx".}
proc IsExact*(this: IFSelect_SelectSignedShared): Standard_Boolean {.noSideEffect,
    importcpp: "IsExact", header: "IFSelect_SelectSignedShared.hxx".}
proc Explore*(this: IFSelect_SelectSignedShared; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "IFSelect_SelectSignedShared.hxx".}
proc ExploreLabel*(this: IFSelect_SelectSignedShared): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "IFSelect_SelectSignedShared.hxx".}
type
  IFSelect_SelectSignedSharedbase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectSignedShared::get_type_name(@)",
                              header: "IFSelect_SelectSignedShared.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectSignedShared::get_type_descriptor(@)",
    header: "IFSelect_SelectSignedShared.hxx".}
proc DynamicType*(this: IFSelect_SelectSignedShared): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_SelectSignedShared.hxx".}