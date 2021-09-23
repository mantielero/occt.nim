##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_Surface"
discard "forward decl of StepGeom_Surface"
type
  Handle_StepGeom_Surface* = handle[StepGeom_Surface]
  StepGeom_Surface* {.importcpp: "StepGeom_Surface",
                     header: "StepGeom_Surface.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## Surface


proc constructStepGeom_Surface*(): StepGeom_Surface {.constructor,
    importcpp: "StepGeom_Surface(@)", header: "StepGeom_Surface.hxx".}
type
  StepGeom_Surfacebase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepGeom_Surface::get_type_name(@)",
                              header: "StepGeom_Surface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Surface::get_type_descriptor(@)",
    header: "StepGeom_Surface.hxx".}
proc DynamicType*(this: StepGeom_Surface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Surface.hxx".}