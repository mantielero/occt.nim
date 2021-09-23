##  Created on : Thu May 14 15:13:19 2020
##  Created by: Igor KHOZHANOV
##  Generator:	Express (EXPRESS -> CASCADE/XSTEP Translator) V2.0
##  Copyright (c) Open CASCADE 2020
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
  StepVisual_RenderingPropertiesSelect,
  StepVisual_Array1OfRenderingPropertiesSelect,
  ../NCollection/NCollection_DefineHArray1

type
  StepVisual_HArray1OfRenderingPropertiesSelect* {.
      importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect",
      header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx", bycopy.} = object of StepVisual_Array1OfRenderingPropertiesSelect


proc constructStepVisual_HArray1OfRenderingPropertiesSelect*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepVisual_HArray1OfRenderingPropertiesSelect {.
    constructor, importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc constructStepVisual_HArray1OfRenderingPropertiesSelect*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepVisual_HArray1OfRenderingPropertiesSelect {.
    constructor, importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc constructStepVisual_HArray1OfRenderingPropertiesSelect*(
    theOther: StepVisual_Array1OfRenderingPropertiesSelect): StepVisual_HArray1OfRenderingPropertiesSelect {.
    constructor, importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc Array1*(this: StepVisual_HArray1OfRenderingPropertiesSelect): StepVisual_Array1OfRenderingPropertiesSelect {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc ChangeArray1*(this: var StepVisual_HArray1OfRenderingPropertiesSelect): var StepVisual_Array1OfRenderingPropertiesSelect {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
type
  StepVisual_HArray1OfRenderingPropertiesSelectbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect::get_type_name(@)", header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc DynamicType*(this: StepVisual_HArray1OfRenderingPropertiesSelect): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}