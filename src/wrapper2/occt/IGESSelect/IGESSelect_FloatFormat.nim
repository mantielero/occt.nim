##  Created on: 1994-06-01
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Real,
  IGESSelect_FileModifier, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESSelect_FloatFormat"
discard "forward decl of IGESSelect_FloatFormat"
type
  Handle_IGESSelect_FloatFormat* = handle[IGESSelect_FloatFormat]

## ! This class gives control out format for floatting values :
## ! ZeroSuppress or no, Main Format, Format in Range (for values
## ! around 1.), as IGESWriter allows to manage it.
## ! Formats are given under C-printf form

type
  IGESSelect_FloatFormat* {.importcpp: "IGESSelect_FloatFormat",
                           header: "IGESSelect_FloatFormat.hxx", bycopy.} = object of IGESSelect_FileModifier ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## new
                                                                                                       ## FloatFormat,
                                                                                                       ## with
                                                                                                       ## standard
                                                                                                       ## options
                                                                                                       ## :
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## ZeroSuppress,
                                                                                                       ## Main
                                                                                                       ## Format
                                                                                                       ## =
                                                                                                       ## %E,
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Format
                                                                                                       ## between
                                                                                                       ## 0.001
                                                                                                       ## and
                                                                                                       ## 1000.
                                                                                                       ## =
                                                                                                       ## %f


proc constructIGESSelect_FloatFormat*(): IGESSelect_FloatFormat {.constructor,
    importcpp: "IGESSelect_FloatFormat(@)", header: "IGESSelect_FloatFormat.hxx".}
proc SetDefault*(this: var IGESSelect_FloatFormat; digits: Standard_Integer = 0) {.
    importcpp: "SetDefault", header: "IGESSelect_FloatFormat.hxx".}
proc SetZeroSuppress*(this: var IGESSelect_FloatFormat; mode: Standard_Boolean) {.
    importcpp: "SetZeroSuppress", header: "IGESSelect_FloatFormat.hxx".}
proc SetFormat*(this: var IGESSelect_FloatFormat; format: Standard_CString = "%E") {.
    importcpp: "SetFormat", header: "IGESSelect_FloatFormat.hxx".}
proc SetFormatForRange*(this: var IGESSelect_FloatFormat;
                       format: Standard_CString = "%f"; Rmin: Standard_Real = 0.1;
                       Rmax: Standard_Real = 1000.0) {.
    importcpp: "SetFormatForRange", header: "IGESSelect_FloatFormat.hxx".}
proc Format*(this: IGESSelect_FloatFormat; zerosup: var Standard_Boolean;
            mainform: var TCollection_AsciiString; hasrange: var Standard_Boolean;
            forminrange: var TCollection_AsciiString; rangemin: var Standard_Real;
            rangemax: var Standard_Real) {.noSideEffect, importcpp: "Format",
                                        header: "IGESSelect_FloatFormat.hxx".}
proc Perform*(this: IGESSelect_FloatFormat; ctx: var IFSelect_ContextWrite;
             writer: var IGESData_IGESWriter) {.noSideEffect, importcpp: "Perform",
    header: "IGESSelect_FloatFormat.hxx".}
proc Label*(this: IGESSelect_FloatFormat): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_FloatFormat.hxx".}
type
  IGESSelect_FloatFormatbase_type* = IGESSelect_FileModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_FloatFormat::get_type_name(@)",
                              header: "IGESSelect_FloatFormat.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_FloatFormat::get_type_descriptor(@)",
    header: "IGESSelect_FloatFormat.hxx".}
proc DynamicType*(this: IGESSelect_FloatFormat): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_FloatFormat.hxx".}