##  Created on: 2002-12-10
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepElement_MeasureOrUnspecifiedValueMember"
discard "forward decl of StepElement_MeasureOrUnspecifiedValueMember"
type
  HandleC1C1* = Handle[StepElementMeasureOrUnspecifiedValueMember]

## ! Representation of member for  STEP SELECT type MeasureOrUnspecifiedValue

type
  StepElementMeasureOrUnspecifiedValueMember* {.
      importcpp: "StepElement_MeasureOrUnspecifiedValueMember",
      header: "StepElement_MeasureOrUnspecifiedValueMember.hxx", bycopy.} = object of StepDataSelectNamed ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor


proc constructStepElementMeasureOrUnspecifiedValueMember*(): StepElementMeasureOrUnspecifiedValueMember {.
    constructor, importcpp: "StepElement_MeasureOrUnspecifiedValueMember(@)",
    header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}
proc hasName*(this: StepElementMeasureOrUnspecifiedValueMember): StandardBoolean {.
    noSideEffect, importcpp: "HasName",
    header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}
proc name*(this: StepElementMeasureOrUnspecifiedValueMember): StandardCString {.
    noSideEffect, importcpp: "Name",
    header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}
proc setName*(this: var StepElementMeasureOrUnspecifiedValueMember;
             name: StandardCString): StandardBoolean {.importcpp: "SetName",
    header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}
proc matches*(this: StepElementMeasureOrUnspecifiedValueMember;
             name: StandardCString): StandardBoolean {.noSideEffect,
    importcpp: "Matches",
    header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}
type
  StepElementMeasureOrUnspecifiedValueMemberbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepElement_MeasureOrUnspecifiedValueMember::get_type_name(@)", header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_MeasureOrUnspecifiedValueMember::get_type_descriptor(@)",
    header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}
proc dynamicType*(this: StepElementMeasureOrUnspecifiedValueMember): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_MeasureOrUnspecifiedValueMember.hxx".}