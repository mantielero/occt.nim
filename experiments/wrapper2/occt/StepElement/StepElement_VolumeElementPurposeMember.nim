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

discard "forward decl of StepElement_VolumeElementPurposeMember"
discard "forward decl of StepElement_VolumeElementPurposeMember"
type
  HandleC1C1* = Handle[StepElementVolumeElementPurposeMember]

## ! Representation of member for  STEP SELECT type VolumeElementPurpose

type
  StepElementVolumeElementPurposeMember* {.
      importcpp: "StepElement_VolumeElementPurposeMember",
      header: "StepElement_VolumeElementPurposeMember.hxx", bycopy.} = object of StepDataSelectNamed ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepElementVolumeElementPurposeMember*(): StepElementVolumeElementPurposeMember {.
    constructor, importcpp: "StepElement_VolumeElementPurposeMember(@)",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc hasName*(this: StepElementVolumeElementPurposeMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepElement_VolumeElementPurposeMember.hxx".}
proc name*(this: StepElementVolumeElementPurposeMember): StandardCString {.
    noSideEffect, importcpp: "Name",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc setName*(this: var StepElementVolumeElementPurposeMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepElement_VolumeElementPurposeMember.hxx".}
proc matches*(this: StepElementVolumeElementPurposeMember; name: StandardCString): bool {.
    noSideEffect, importcpp: "Matches",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
type
  StepElementVolumeElementPurposeMemberbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepElement_VolumeElementPurposeMember::get_type_name(@)", header: "StepElement_VolumeElementPurposeMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_VolumeElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc dynamicType*(this: StepElementVolumeElementPurposeMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_VolumeElementPurposeMember.hxx".}

























