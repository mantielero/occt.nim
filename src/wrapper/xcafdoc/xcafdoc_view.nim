import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types



##  Created on: 2016-10-19
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

when defined(GetObject):
  discard




proc newXCAFDocView*(): XCAFDocView {.cdecl, constructor,
                                   importcpp: "XCAFDoc_View(@)",
                                   header: "XCAFDoc_View.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_View::GetID(@)",
                           header: "XCAFDoc_View.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocView] {.cdecl,
    importcpp: "XCAFDoc_View::Set(@)", header: "XCAFDoc_View.hxx".}
proc id*(this: XCAFDocView): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
                                        header: "XCAFDoc_View.hxx".}
proc setObject*(this: var XCAFDocView; theViewObject: Handle[XCAFViewObject]) {.cdecl,
    importcpp: "SetObject", header: "XCAFDoc_View.hxx".}
proc getObject*(this: XCAFDocView): Handle[XCAFViewObject] {.noSideEffect, cdecl,
    importcpp: "GetObject", header: "XCAFDoc_View.hxx".}

