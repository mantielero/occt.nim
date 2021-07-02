##  Created on: 2008-06-20
##  Copyright (c) 1998-1999 Matra Datavision
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
  FSD_FileHeader* {.importcpp: "FSD_FileHeader", header: "FSD_FileHeader.hxx", bycopy.} = object
    testindian* {.importc: "testindian".}: StandardInteger
    binfo* {.importc: "binfo".}: StandardInteger
    einfo* {.importc: "einfo".}: StandardInteger
    bcomment* {.importc: "bcomment".}: StandardInteger
    ecomment* {.importc: "ecomment".}: StandardInteger
    btype* {.importc: "btype".}: StandardInteger
    etype* {.importc: "etype".}: StandardInteger
    broot* {.importc: "broot".}: StandardInteger
    eroot* {.importc: "eroot".}: StandardInteger
    bref* {.importc: "bref".}: StandardInteger
    eref* {.importc: "eref".}: StandardInteger
    bdata* {.importc: "bdata".}: StandardInteger
    edata* {.importc: "edata".}: StandardInteger



