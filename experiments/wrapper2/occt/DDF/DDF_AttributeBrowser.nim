##  Created by: DAUTRY Philippe
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
##       	------------------------
##  Version:	0.0
## Version	Date		Purpose
## 		0.0	Oct  6 1997	Creation

type
  DDF_AttributeBrowser* {.importcpp: "DDF_AttributeBrowser",
                         header: "DDF_AttributeBrowser.hxx", bycopy.} = object


proc constructDDF_AttributeBrowser*(test: proc (a1: Handle[TDF_Attribute]): bool; open: proc (
    a1: Handle[TDF_Attribute]): TCollectionAsciiString; text: proc (
    a1: Handle[TDF_Attribute]): TCollectionAsciiString): DDF_AttributeBrowser {.
    constructor, importcpp: "DDF_AttributeBrowser(@)",
    header: "DDF_AttributeBrowser.hxx".}
proc test*(this: DDF_AttributeBrowser; anAtt: Handle[TDF_Attribute]): bool {.
    noSideEffect, importcpp: "Test", header: "DDF_AttributeBrowser.hxx".}
proc open*(this: DDF_AttributeBrowser; anAtt: Handle[TDF_Attribute]): TCollectionAsciiString {.
    noSideEffect, importcpp: "Open", header: "DDF_AttributeBrowser.hxx".}
proc text*(this: DDF_AttributeBrowser; anAtt: Handle[TDF_Attribute]): TCollectionAsciiString {.
    noSideEffect, importcpp: "Text", header: "DDF_AttributeBrowser.hxx".}
proc next*(this: var DDF_AttributeBrowser): ptr DDF_AttributeBrowser {.
    importcpp: "Next", header: "DDF_AttributeBrowser.hxx".}
proc findBrowser*(anAtt: Handle[TDF_Attribute]): ptr DDF_AttributeBrowser {.
    importcpp: "DDF_AttributeBrowser::FindBrowser(@)",
    header: "DDF_AttributeBrowser.hxx".}
