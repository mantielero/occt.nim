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
discard "forward decl of StepData_StepWriter"
discard "forward decl of StepSelect_FloatFormat"
discard "forward decl of StepSelect_FloatFormat"
type
  HandleC1C1* = Handle[StepSelectFloatFormat]

## ! This class gives control out format for floatting values :
## ! ZeroSuppress or no, Main Format, Format in Range (for values
## ! around 1.), as StepWriter allows to manage it.
## ! Formats are given under C-printf form

type
  StepSelectFloatFormat* {.importcpp: "StepSelect_FloatFormat",
                          header: "StepSelect_FloatFormat.hxx", bycopy.} = object of StepSelectFileModifier ##
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


proc constructStepSelectFloatFormat*(): StepSelectFloatFormat {.constructor,
    importcpp: "StepSelect_FloatFormat(@)", header: "StepSelect_FloatFormat.hxx".}
proc setDefault*(this: var StepSelectFloatFormat; digits: cint = 0) {.
    importcpp: "SetDefault", header: "StepSelect_FloatFormat.hxx".}
proc setZeroSuppress*(this: var StepSelectFloatFormat; mode: bool) {.
    importcpp: "SetZeroSuppress", header: "StepSelect_FloatFormat.hxx".}
proc setFormat*(this: var StepSelectFloatFormat; format: StandardCString = "%E") {.
    importcpp: "SetFormat", header: "StepSelect_FloatFormat.hxx".}
proc setFormatForRange*(this: var StepSelectFloatFormat;
                       format: StandardCString = "%f"; rmin: cfloat = 0.1;
                       rmax: cfloat = 1000.0) {.importcpp: "SetFormatForRange",
    header: "StepSelect_FloatFormat.hxx".}
proc format*(this: StepSelectFloatFormat; zerosup: var bool;
            mainform: var TCollectionAsciiString; hasrange: var bool;
            forminrange: var TCollectionAsciiString; rangemin: var cfloat;
            rangemax: var cfloat) {.noSideEffect, importcpp: "Format",
                                 header: "StepSelect_FloatFormat.hxx".}
proc perform*(this: StepSelectFloatFormat; ctx: var IFSelectContextWrite;
             writer: var StepDataStepWriter) {.noSideEffect, importcpp: "Perform",
    header: "StepSelect_FloatFormat.hxx".}
proc label*(this: StepSelectFloatFormat): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "StepSelect_FloatFormat.hxx".}
type
  StepSelectFloatFormatbaseType* = StepSelectFileModifier

proc getTypeName*(): cstring {.importcpp: "StepSelect_FloatFormat::get_type_name(@)",
                            header: "StepSelect_FloatFormat.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepSelect_FloatFormat::get_type_descriptor(@)",
    header: "StepSelect_FloatFormat.hxx".}
proc dynamicType*(this: StepSelectFloatFormat): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepSelect_FloatFormat.hxx".}

























