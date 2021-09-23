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

import
  ../Message/Message_Alert, TopoDS_Shape

## ! Alert object storing TopoDS shape in its field

type
  TopoDS_AlertWithShape* {.importcpp: "TopoDS_AlertWithShape",
                          header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of Message_Alert ##
                                                                                           ## !
                                                                                           ## Constructor
                                                                                           ## with
                                                                                           ## shape
                                                                                           ## argument


proc constructTopoDS_AlertWithShape*(theShape: TopoDS_Shape): TopoDS_AlertWithShape {.
    constructor, importcpp: "TopoDS_AlertWithShape(@)",
    header: "TopoDS_AlertWithShape.hxx".}
proc GetShape*(this: TopoDS_AlertWithShape): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "TopoDS_AlertWithShape.hxx".}
proc SetShape*(this: var TopoDS_AlertWithShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "TopoDS_AlertWithShape.hxx".}
proc SupportsMerge*(this: TopoDS_AlertWithShape): Standard_Boolean {.noSideEffect,
    importcpp: "SupportsMerge", header: "TopoDS_AlertWithShape.hxx".}
proc Merge*(this: var TopoDS_AlertWithShape; theTarget: handle[Message_Alert]): Standard_Boolean {.
    importcpp: "Merge", header: "TopoDS_AlertWithShape.hxx".}
type
  TopoDS_AlertWithShapebase_type* = Message_Alert

proc get_type_name*(): cstring {.importcpp: "TopoDS_AlertWithShape::get_type_name(@)",
                              header: "TopoDS_AlertWithShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopoDS_AlertWithShape::get_type_descriptor(@)",
    header: "TopoDS_AlertWithShape.hxx".}
proc DynamicType*(this: TopoDS_AlertWithShape): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TopoDS_AlertWithShape.hxx".}
## ! Helper macro allowing to define alert with shape argument in one line of code

template DEFINE_ALERT_WITH_SHAPE*(Alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of TopoDS_AlertWithShape

  proc constructAlert*(theShape: TopoDS_Shape): Alert {.constructor,
      importcpp: "Alert(@)", header: "TopoDS_AlertWithShape.hxx".}
  type
    Alertbase_type* = TopoDS_AlertWithShape
  proc get_type_name*(): cstring {.importcpp: "Alert::get_type_name(@)",
                                header: "TopoDS_AlertWithShape.hxx".}
  proc get_type_descriptor*(): handle[Standard_Type] {.
      importcpp: "Alert::get_type_descriptor(@)",
      header: "TopoDS_AlertWithShape.hxx".}
  proc DynamicType*(this: Alert): handle[Standard_Type] {.noSideEffect,
      importcpp: "DynamicType", header: "TopoDS_AlertWithShape.hxx".}
  