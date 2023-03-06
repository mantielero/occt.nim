import topods_types
import ../standard/standard_types
import ../message/message_types





##  Created on: 2017-06-27
##  Created by: Andrey Betenev
##  Copyright (c) 2017 OPEN CASCADE SAS
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

## ! Alert object storing TopoDS shape in its field



proc newTopoDS_AlertWithShape*(theShape: TopoDS_Shape): TopoDS_AlertWithShape {.
    cdecl, constructor, importcpp: "TopoDS_AlertWithShape(@)", header: "TopoDS_AlertWithShape.hxx".}
proc getShape*(this: TopoDS_AlertWithShape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape", header: "TopoDS_AlertWithShape.hxx".}
proc setShape*(this: var TopoDS_AlertWithShape; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", header: "TopoDS_AlertWithShape.hxx".}
proc supportsMerge*(this: TopoDS_AlertWithShape): bool {.noSideEffect, cdecl,
    importcpp: "SupportsMerge", header: "TopoDS_AlertWithShape.hxx".}
proc merge*(this: var TopoDS_AlertWithShape; theTarget: Handle[MessageAlert]): bool {.
    cdecl, importcpp: "Merge", header: "TopoDS_AlertWithShape.hxx".}
## ! Helper macro allowing to define alert with shape argument in one line of code

template define_Alert_With_Shape*(alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of TopoDS_AlertWithShape

  proc newAlert*(theShape: TopoDS_Shape): Alert {.cdecl, constructor,
      importcpp: "Alert(@)", header: "TopoDS_AlertWithShape.hxx".}
  type
    AlertbaseType* = TopoDS_AlertWithShape



