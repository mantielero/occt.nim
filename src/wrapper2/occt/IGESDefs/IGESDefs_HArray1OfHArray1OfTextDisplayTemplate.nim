##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../TColStd/TColStd_Array1OfTransient, ../Standard/Standard_Transient,
  ../IGESGraph/IGESGraph_HArray1OfTextDisplayTemplate,
  ../Standard/Standard_Integer

discard "forward decl of IGESDefs_HArray1OfHArray1OfTextDisplayTemplate"
discard "forward decl of IGESDefs_HArray1OfHArray1OfTextDisplayTemplate"
type
  Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate* = handle[
      IGESDefs_HArray1OfHArray1OfTextDisplayTemplate]
  IGESDefs_HArray1OfHArray1OfTextDisplayTemplate* {.
      importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate",
      header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx", bycopy.} = object of Standard_Transient


proc constructIGESDefs_HArray1OfHArray1OfTextDisplayTemplate*(
    low: Standard_Integer; up: Standard_Integer): IGESDefs_HArray1OfHArray1OfTextDisplayTemplate {.
    constructor, importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate(@)",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc Lower*(this: IGESDefs_HArray1OfHArray1OfTextDisplayTemplate): Standard_Integer {.
    noSideEffect, importcpp: "Lower",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc Upper*(this: IGESDefs_HArray1OfHArray1OfTextDisplayTemplate): Standard_Integer {.
    noSideEffect, importcpp: "Upper",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc Length*(this: IGESDefs_HArray1OfHArray1OfTextDisplayTemplate): Standard_Integer {.
    noSideEffect, importcpp: "Length",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc SetValue*(this: var IGESDefs_HArray1OfHArray1OfTextDisplayTemplate;
              num: Standard_Integer;
              val: handle[IGESGraph_HArray1OfTextDisplayTemplate]) {.
    importcpp: "SetValue",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc Value*(this: IGESDefs_HArray1OfHArray1OfTextDisplayTemplate;
           num: Standard_Integer): handle[IGESGraph_HArray1OfTextDisplayTemplate] {.
    noSideEffect, importcpp: "Value",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
type
  IGESDefs_HArray1OfHArray1OfTextDisplayTemplatebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate::get_type_name(@)", header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate::get_type_descriptor(@)",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc DynamicType*(this: IGESDefs_HArray1OfHArray1OfTextDisplayTemplate): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}