##  Created on: 1994-05-19
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Bisector_Curve"
discard "forward decl of Bisector_BisecAna"
discard "forward decl of Bisector_BisecPC"
discard "forward decl of Bisector_BisecCC"
discard "forward decl of Bisector_Bisec"
discard "forward decl of Bisector_Inter"
discard "forward decl of Bisector_PointOnBis"
discard "forward decl of Bisector_PolyBis"
discard "forward decl of Bisector_FunctionH"
discard "forward decl of Bisector_FunctionInter"
type
  Bisector* {.importcpp: "Bisector", header: "Bisector.hxx", bycopy.} = object


proc isConvex*(cu: Handle[Geom2dCurve]; sign: float): bool {.
    importcpp: "Bisector::IsConvex(@)", header: "Bisector.hxx".}
