##  Created on: 2015-05-07
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard_TypeDef

## ! Filtering tool used to detect if two given mesh elements
## ! should be tested for overlapping/intersection or not.

type
  BRepExtrema_ElementFilter* {.importcpp: "BRepExtrema_ElementFilter",
                              header: "BRepExtrema_ElementFilter.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Result
                                                                                    ## of
                                                                                    ## filtering
                                                                                    ## function.

  BRepExtrema_ElementFilterFilterResult* {.size: sizeof(cint),
      importcpp: "BRepExtrema_ElementFilter::FilterResult",
      header: "BRepExtrema_ElementFilter.hxx".} = enum
    NoCheck, Overlap, DoCheck


proc destroyBRepExtrema_ElementFilter*(this: var BRepExtrema_ElementFilter) {.
    importcpp: "#.~BRepExtrema_ElementFilter()",
    header: "BRepExtrema_ElementFilter.hxx".}
proc PreCheckElements*(this: var BRepExtrema_ElementFilter; a2: Standard_Integer; ## theIndex1
                      a3: Standard_Integer): BRepExtrema_ElementFilterFilterResult {.
    importcpp: "PreCheckElements", header: "BRepExtrema_ElementFilter.hxx".}
  ## theIndex2