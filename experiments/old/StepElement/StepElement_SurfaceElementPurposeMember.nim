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

discard "forward decl of StepElement_SurfaceElementPurposeMember"
discard "forward decl of StepElement_SurfaceElementPurposeMember"
type
  HandleC1C1* = Handle[StepElementSurfaceElementPurposeMember]

## ! Representation of member for  STEP SELECT type SurfaceElementPurpose

type
  StepElementSurfaceElementPurposeMember* {.
      importcpp: "StepElement_SurfaceElementPurposeMember",
      header: "StepElement_SurfaceElementPurposeMember.hxx", bycopy.} = object of StepDataSelectNamed ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepElementSurfaceElementPurposeMember*(): StepElementSurfaceElementPurposeMember {.
    constructor, importcpp: "StepElement_SurfaceElementPurposeMember(@)",
    header: "StepElement_SurfaceElementPurposeMember.hxx".}
proc hasName*(this: StepElementSurfaceElementPurposeMember): StandardBoolean {.
    noSideEffect, importcpp: "HasName",
    header: "StepElement_SurfaceElementPurposeMember.hxx".}
proc name*(this: StepElementSurfaceElementPurposeMember): StandardCString {.
    noSideEffect, importcpp: "Name",
    header: "StepElement_SurfaceElementPurposeMember.hxx".}
proc setName*(this: var StepElementSurfaceElementPurposeMember;
             name: StandardCString): StandardBoolean {.importcpp: "SetName",
    header: "StepElement_SurfaceElementPurposeMember.hxx".}
proc matches*(this: StepElementSurfaceElementPurposeMember; name: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "Matches",
    header: "StepElement_SurfaceElementPurposeMember.hxx".}
type
  StepElementSurfaceElementPurposeMemberbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepElement_SurfaceElementPurposeMember::get_type_name(@)", header: "StepElement_SurfaceElementPurposeMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_SurfaceElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_SurfaceElementPurposeMember.hxx".}
proc dynamicType*(this: StepElementSurfaceElementPurposeMember): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_SurfaceElementPurposeMember.hxx".}