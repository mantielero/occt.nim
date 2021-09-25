##  Created on: 1997-03-27
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

discard "forward decl of StepGeom_TrimmingMember"
discard "forward decl of StepGeom_TrimmingMember"
type
  HandleStepGeomTrimmingMember* = Handle[StepGeomTrimmingMember]

## ! For immediate members of TrimmingSelect, i.e. :
## ! ParameterValue (a Real)

type
  StepGeomTrimmingMember* {.importcpp: "StepGeom_TrimmingMember",
                           header: "StepGeom_TrimmingMember.hxx", bycopy.} = object of StepDataSelectReal


proc constructStepGeomTrimmingMember*(): StepGeomTrimmingMember {.constructor,
    importcpp: "StepGeom_TrimmingMember(@)", header: "StepGeom_TrimmingMember.hxx".}
proc hasName*(this: StepGeomTrimmingMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepGeom_TrimmingMember.hxx".}
proc name*(this: StepGeomTrimmingMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepGeom_TrimmingMember.hxx".}
proc setName*(this: var StepGeomTrimmingMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepGeom_TrimmingMember.hxx".}
type
  StepGeomTrimmingMemberbaseType* = StepDataSelectReal

proc getTypeName*(): cstring {.importcpp: "StepGeom_TrimmingMember::get_type_name(@)",
                            header: "StepGeom_TrimmingMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_TrimmingMember::get_type_descriptor(@)",
    header: "StepGeom_TrimmingMember.hxx".}
proc dynamicType*(this: StepGeomTrimmingMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_TrimmingMember.hxx".}
