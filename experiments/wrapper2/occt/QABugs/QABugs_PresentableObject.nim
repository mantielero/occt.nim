##  Created on: 2002-04-09
##  Created by: QA Admin
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

import
  ../AIS/AIS_InteractiveObject

discard "forward decl of QABugs_PresentableObject"
type
  Handle_QABugs_PresentableObject* = handle[QABugs_PresentableObject]
  QABugs_PresentableObject* {.importcpp: "QABugs_PresentableObject",
                             header: "QABugs_PresentableObject.hxx", bycopy.} = object of AIS_InteractiveObject

  QABugs_PresentableObjectbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "QABugs_PresentableObject::get_type_name(@)",
                              header: "QABugs_PresentableObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "QABugs_PresentableObject::get_type_descriptor(@)",
    header: "QABugs_PresentableObject.hxx".}
proc DynamicType*(this: QABugs_PresentableObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "QABugs_PresentableObject.hxx".}
proc constructQABugs_PresentableObject*(aTypeOfPresentation3d: PrsMgr_TypeOfPresentation3d = PrsMgr_TOP_AllView): QABugs_PresentableObject {.
    constructor, importcpp: "QABugs_PresentableObject(@)",
    header: "QABugs_PresentableObject.hxx".}