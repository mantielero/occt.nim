##  Created on: 1995-12-06
##  Created by: Frederic MAUPAS
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

type
  StepVisualDirectionCountSelect* {.importcpp: "StepVisual_DirectionCountSelect", header: "StepVisual_DirectionCountSelect.hxx",
                                   bycopy.} = object


proc `new`*(this: var StepVisualDirectionCountSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_DirectionCountSelect::operator new",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc `delete`*(this: var StepVisualDirectionCountSelect; theAddress: pointer) {.
    importcpp: "StepVisual_DirectionCountSelect::operator delete",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc `new[]`*(this: var StepVisualDirectionCountSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_DirectionCountSelect::operator new[]",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc `delete[]`*(this: var StepVisualDirectionCountSelect; theAddress: pointer) {.
    importcpp: "StepVisual_DirectionCountSelect::operator delete[]",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc `new`*(this: var StepVisualDirectionCountSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepVisual_DirectionCountSelect::operator new",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc `delete`*(this: var StepVisualDirectionCountSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_DirectionCountSelect::operator delete",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc constructStepVisualDirectionCountSelect*(): StepVisualDirectionCountSelect {.
    constructor, importcpp: "StepVisual_DirectionCountSelect(@)",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc setTypeOfContent*(this: var StepVisualDirectionCountSelect; aTypeOfContent: int) {.
    importcpp: "SetTypeOfContent", header: "StepVisual_DirectionCountSelect.hxx".}
proc typeOfContent*(this: StepVisualDirectionCountSelect): int {.noSideEffect,
    importcpp: "TypeOfContent", header: "StepVisual_DirectionCountSelect.hxx".}
proc uDirectionCount*(this: StepVisualDirectionCountSelect): int {.noSideEffect,
    importcpp: "UDirectionCount", header: "StepVisual_DirectionCountSelect.hxx".}
proc setUDirectionCount*(this: var StepVisualDirectionCountSelect;
                        aUDirectionCount: int) {.importcpp: "SetUDirectionCount",
    header: "StepVisual_DirectionCountSelect.hxx".}
proc vDirectionCount*(this: StepVisualDirectionCountSelect): int {.noSideEffect,
    importcpp: "VDirectionCount", header: "StepVisual_DirectionCountSelect.hxx".}
proc setVDirectionCount*(this: var StepVisualDirectionCountSelect;
                        aUDirectionCount: int) {.importcpp: "SetVDirectionCount",
    header: "StepVisual_DirectionCountSelect.hxx".}