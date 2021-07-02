##  Created on: 1991-04-03
##  Created by: Remi GILET
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
type
  GccAnaPnt2dBisec* {.importcpp: "GccAna_Pnt2dBisec",
                     header: "GccAna_Pnt2dBisec.hxx", bycopy.} = object ## ! Constructs a bisecting line between the points Point1 and Point2.


proc constructGccAnaPnt2dBisec*(point1: GpPnt2d; point2: GpPnt2d): GccAnaPnt2dBisec {.
    constructor, importcpp: "GccAna_Pnt2dBisec(@)", header: "GccAna_Pnt2dBisec.hxx".}
proc isDone*(this: GccAnaPnt2dBisec): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Pnt2dBisec.hxx".}
proc hasSolution*(this: GccAnaPnt2dBisec): StandardBoolean {.noSideEffect,
    importcpp: "HasSolution", header: "GccAna_Pnt2dBisec.hxx".}
proc thisSolution*(this: GccAnaPnt2dBisec): GpLin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "GccAna_Pnt2dBisec.hxx".}

