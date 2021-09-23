##  Created on: 1998-01-28
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TColStd/TColStd_SequenceOfTransient, ../TColStd/TColStd_SequenceOfInteger,
  IFSelect_Signature, ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IFSelect_Signature"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SignMultiple"
discard "forward decl of IFSelect_SignMultiple"
type
  Handle_IFSelect_SignMultiple* = handle[IFSelect_SignMultiple]

## ! Multiple Signature : ordered list of other Signatures
## ! It concatenates on a same line the result of its sub-items
## ! separated by sets of 3 blanks
## ! It is possible to define tabulations between sub-items
## ! Moreover, match rules are specific

type
  IFSelect_SignMultiple* {.importcpp: "IFSelect_SignMultiple",
                          header: "IFSelect_SignMultiple.hxx", bycopy.} = object of IFSelect_Signature ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## SignMultiple
                                                                                                ## with
                                                                                                ## a
                                                                                                ## Name
                                                                                                ##
                                                                                                ## !
                                                                                                ## This
                                                                                                ## name
                                                                                                ## should
                                                                                                ## take
                                                                                                ## expected
                                                                                                ## tabulations
                                                                                                ## into
                                                                                                ## account


proc constructIFSelect_SignMultiple*(name: Standard_CString): IFSelect_SignMultiple {.
    constructor, importcpp: "IFSelect_SignMultiple(@)",
    header: "IFSelect_SignMultiple.hxx".}
proc Add*(this: var IFSelect_SignMultiple; subsign: handle[IFSelect_Signature];
         width: Standard_Integer = 0; maxi: Standard_Boolean = Standard_False) {.
    importcpp: "Add", header: "IFSelect_SignMultiple.hxx".}
proc Value*(this: IFSelect_SignMultiple; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IFSelect_SignMultiple.hxx".}
proc Matches*(this: IFSelect_SignMultiple; ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel];
             text: TCollection_AsciiString; exact: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "IFSelect_SignMultiple.hxx".}
type
  IFSelect_SignMultiplebase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IFSelect_SignMultiple::get_type_name(@)",
                              header: "IFSelect_SignMultiple.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SignMultiple::get_type_descriptor(@)",
    header: "IFSelect_SignMultiple.hxx".}
proc DynamicType*(this: IFSelect_SignMultiple): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SignMultiple.hxx".}