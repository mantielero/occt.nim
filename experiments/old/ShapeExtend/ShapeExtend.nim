##  Created on: 1998-07-21
##  Created by: data exchange team
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

discard "forward decl of ShapeExtend_ComplexCurve"
discard "forward decl of ShapeExtend_CompositeSurface"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of ShapeExtend_MsgRegistrator"
discard "forward decl of ShapeExtend_Explorer"
type
  ShapeExtend* {.importcpp: "ShapeExtend", header: "ShapeExtend.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Inits
                                                                                ## using
                                                                                ## of
                                                                                ## ShapeExtend.
                                                                                ##
                                                                                ## !
                                                                                ## Currently,
                                                                                ## loads
                                                                                ## messages
                                                                                ## output
                                                                                ## by
                                                                                ## ShapeHealing
                                                                                ## algorithms.


proc init*() {.importcpp: "ShapeExtend::Init(@)", header: "ShapeExtend.hxx".}
proc encodeStatus*(status: ShapeExtendStatus): cint {.
    importcpp: "ShapeExtend::EncodeStatus(@)", header: "ShapeExtend.hxx".}
proc decodeStatus*(flag: cint; status: ShapeExtendStatus): bool {.
    importcpp: "ShapeExtend::DecodeStatus(@)", header: "ShapeExtend.hxx".}

























