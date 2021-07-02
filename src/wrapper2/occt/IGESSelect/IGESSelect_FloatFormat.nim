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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESSelect_FloatFormat"
discard "forward decl of IGESSelect_FloatFormat"
type
  HandleIGESSelectFloatFormat* = Handle[IGESSelectFloatFormat]

## ! This class gives control out format for floatting values :
## ! ZeroSuppress or no, Main Format, Format in Range (for values
## ! around 1.), as IGESWriter allows to manage it.
## ! Formats are given under C-printf form

type
  IGESSelectFloatFormat* {.importcpp: "IGESSelect_FloatFormat",
                          header: "IGESSelect_FloatFormat.hxx", bycopy.} = object of IGESSelectFileModifier ##
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


proc constructIGESSelectFloatFormat*(): IGESSelectFloatFormat {.constructor,
    importcpp: "IGESSelect_FloatFormat(@)", header: "IGESSelect_FloatFormat.hxx".}
proc setDefault*(this: var IGESSelectFloatFormat; digits: StandardInteger = 0) {.
    importcpp: "SetDefault", header: "IGESSelect_FloatFormat.hxx".}
proc setZeroSuppress*(this: var IGESSelectFloatFormat; mode: StandardBoolean) {.
    importcpp: "SetZeroSuppress", header: "IGESSelect_FloatFormat.hxx".}
proc setFormat*(this: var IGESSelectFloatFormat; format: StandardCString = "%E") {.
    importcpp: "SetFormat", header: "IGESSelect_FloatFormat.hxx".}
proc setFormatForRange*(this: var IGESSelectFloatFormat;
                       format: StandardCString = "%f"; rmin: StandardReal = 0.1;
                       rmax: StandardReal = 1000.0) {.
    importcpp: "SetFormatForRange", header: "IGESSelect_FloatFormat.hxx".}
proc format*(this: IGESSelectFloatFormat; zerosup: var StandardBoolean;
            mainform: var TCollectionAsciiString; hasrange: var StandardBoolean;
            forminrange: var TCollectionAsciiString; rangemin: var StandardReal;
            rangemax: var StandardReal) {.noSideEffect, importcpp: "Format",
                                       header: "IGESSelect_FloatFormat.hxx".}
proc perform*(this: IGESSelectFloatFormat; ctx: var IFSelectContextWrite;
             writer: var IGESDataIGESWriter) {.noSideEffect, importcpp: "Perform",
    header: "IGESSelect_FloatFormat.hxx".}
proc label*(this: IGESSelectFloatFormat): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_FloatFormat.hxx".}
type
  IGESSelectFloatFormatbaseType* = IGESSelectFileModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_FloatFormat::get_type_name(@)",
                            header: "IGESSelect_FloatFormat.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_FloatFormat::get_type_descriptor(@)",
    header: "IGESSelect_FloatFormat.hxx".}
proc dynamicType*(this: IGESSelectFloatFormat): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_FloatFormat.hxx".}

