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

type
  TopoDS_AlertWithShape* {.importcpp: "TopoDS_AlertWithShape",
                          header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of MessageAlert ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ## with
                                                                                          ## shape
                                                                                          ## argument


proc constructTopoDS_AlertWithShape*(theShape: TopoDS_Shape): TopoDS_AlertWithShape {.
    constructor, importcpp: "TopoDS_AlertWithShape(@)",
    header: "TopoDS_AlertWithShape.hxx".}
proc getShape*(this: TopoDS_AlertWithShape): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "TopoDS_AlertWithShape.hxx".}
proc setShape*(this: var TopoDS_AlertWithShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "TopoDS_AlertWithShape.hxx".}
proc supportsMerge*(this: TopoDS_AlertWithShape): bool {.noSideEffect,
    importcpp: "SupportsMerge", header: "TopoDS_AlertWithShape.hxx".}
proc merge*(this: var TopoDS_AlertWithShape; theTarget: Handle[MessageAlert]): bool {.
    importcpp: "Merge", header: "TopoDS_AlertWithShape.hxx".}
type
  TopoDS_AlertWithShapebaseType* = MessageAlert

proc getTypeName*(): cstring {.importcpp: "TopoDS_AlertWithShape::get_type_name(@)",
                            header: "TopoDS_AlertWithShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_AlertWithShape::get_type_descriptor(@)",
    header: "TopoDS_AlertWithShape.hxx".}
proc dynamicType*(this: TopoDS_AlertWithShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_AlertWithShape.hxx".}
## ! Helper macro allowing to define alert with shape argument in one line of code

template define_Alert_With_Shape*(alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of TopoDS_AlertWithShape

  proc constructAlert*(theShape: TopoDS_Shape): Alert {.constructor,
      importcpp: "Alert(@)", header: "TopoDS_AlertWithShape.hxx".}
  type
    AlertbaseType* = TopoDS_AlertWithShape
  proc getTypeName*(): cstring {.importcpp: "Alert::get_type_name(@)",
                              header: "TopoDS_AlertWithShape.hxx".}
  proc getTypeDescriptor*(): Handle[StandardType] {.
      importcpp: "Alert::get_type_descriptor(@)",
      header: "TopoDS_AlertWithShape.hxx".}
  proc dynamicType*(this: Alert): Handle[StandardType] {.noSideEffect,
      importcpp: "DynamicType", header: "TopoDS_AlertWithShape.hxx".}
  














































