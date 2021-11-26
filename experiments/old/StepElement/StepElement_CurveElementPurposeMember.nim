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

discard "forward decl of StepElement_CurveElementPurposeMember"
discard "forward decl of StepElement_CurveElementPurposeMember"
type
  HandleC1C1* = Handle[StepElementCurveElementPurposeMember]

## ! Representation of member for  STEP SELECT type CurveElementPurpose

type
  StepElementCurveElementPurposeMember* {.
      importcpp: "StepElement_CurveElementPurposeMember",
      header: "StepElement_CurveElementPurposeMember.hxx", bycopy.} = object of StepDataSelectNamed ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepElementCurveElementPurposeMember*(): StepElementCurveElementPurposeMember {.
    constructor, importcpp: "StepElement_CurveElementPurposeMember(@)",
    header: "StepElement_CurveElementPurposeMember.hxx".}
proc hasName*(this: StepElementCurveElementPurposeMember): StandardBoolean {.
    noSideEffect, importcpp: "HasName",
    header: "StepElement_CurveElementPurposeMember.hxx".}
proc name*(this: StepElementCurveElementPurposeMember): StandardCString {.
    noSideEffect, importcpp: "Name",
    header: "StepElement_CurveElementPurposeMember.hxx".}
proc setName*(this: var StepElementCurveElementPurposeMember; name: StandardCString): StandardBoolean {.
    importcpp: "SetName", header: "StepElement_CurveElementPurposeMember.hxx".}
proc matches*(this: StepElementCurveElementPurposeMember; name: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "Matches",
    header: "StepElement_CurveElementPurposeMember.hxx".}
type
  StepElementCurveElementPurposeMemberbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepElement_CurveElementPurposeMember::get_type_name(@)",
                            header: "StepElement_CurveElementPurposeMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_CurveElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_CurveElementPurposeMember.hxx".}
proc dynamicType*(this: StepElementCurveElementPurposeMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_CurveElementPurposeMember.hxx".}