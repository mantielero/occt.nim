##  Created on: 1997-03-28
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of StepBasic_SizeMember"
discard "forward decl of StepBasic_SizeMember"
type
  HandleC1C1* = Handle[StepBasicSizeMember]

## ! For immediate members of SizeSelect, i.e. :
## ! ParameterValue (a Real)

type
  StepBasicSizeMember* {.importcpp: "StepBasic_SizeMember",
                        header: "StepBasic_SizeMember.hxx", bycopy.} = object of StepDataSelectReal


proc constructStepBasicSizeMember*(): StepBasicSizeMember {.constructor,
    importcpp: "StepBasic_SizeMember(@)", header: "StepBasic_SizeMember.hxx".}
proc hasName*(this: StepBasicSizeMember): StandardBoolean {.noSideEffect,
    importcpp: "HasName", header: "StepBasic_SizeMember.hxx".}
proc name*(this: StepBasicSizeMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepBasic_SizeMember.hxx".}
proc setName*(this: var StepBasicSizeMember; name: StandardCString): StandardBoolean {.
    importcpp: "SetName", header: "StepBasic_SizeMember.hxx".}
type
  StepBasicSizeMemberbaseType* = StepDataSelectReal

proc getTypeName*(): cstring {.importcpp: "StepBasic_SizeMember::get_type_name(@)",
                            header: "StepBasic_SizeMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SizeMember::get_type_descriptor(@)",
    header: "StepBasic_SizeMember.hxx".}
proc dynamicType*(this: StepBasicSizeMember): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_SizeMember.hxx".}