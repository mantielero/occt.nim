##  Created on: 1992-10-14
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
type
  HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter* {.
      importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter",
      header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx", bycopy.} = object ## !
                                                                               ## Among a
                                                                               ## set
                                                                               ## of
                                                                               ## points
                                                                               ## {C(ui),i=1,NbU},
                                                                               ## locate
                                                                               ## the
                                                                               ## point
                                                                               ## !
                                                                               ## P=C(uj)
                                                                               ## such
                                                                               ## that:
                                                                               ## !
                                                                               ## distance(P,C) =
                                                                               ## Min{distance(P,C(ui))}


proc Locate*(P: gp_Pnt2d; C: Standard_Address; NbU: Standard_Integer;
            Papp: var Extrema_POnCurv2d) {.importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter::Locate(@)", header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx".}
proc Locate*(P: gp_Pnt2d; C: Standard_Address; NbU: Standard_Integer;
            Umin: Standard_Real; Usup: Standard_Real; Papp: var Extrema_POnCurv2d) {.
    importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter::Locate(@)",
    header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx".}
proc Locate*(C1: Standard_Address; C2: Standard_Address; NbU: Standard_Integer;
            NbV: Standard_Integer; Papp1: var Extrema_POnCurv2d;
            Papp2: var Extrema_POnCurv2d) {.
    importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter::Locate(@)",
    header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx".}