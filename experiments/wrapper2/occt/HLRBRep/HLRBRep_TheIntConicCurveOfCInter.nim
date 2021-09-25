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

## !!!Ignored construct:  # _HLRBRep_TheIntConicCurveOfCInter_HeaderFile [NewLine] # _HLRBRep_TheIntConicCurveOfCInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < IntRes2d_Intersection . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] class IntCurve_IConicTool ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter"
discard "forward decl of HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter"
discard "forward decl of gp_Lin2d"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
type
  HLRBRepTheIntConicCurveOfCInter* {.importcpp: "HLRBRep_TheIntConicCurveOfCInter", header: "HLRBRep_TheIntConicCurveOfCInter.hxx",
                                    bycopy.} = object of IntRes2dIntersection ## ! Empty
                                                                         ## constructor.
                                                                         ## !
                                                                         ## Intersection between a conic fom gp
                                                                         ## ! and a
                                                                         ## parametric curve.


proc constructHLRBRepTheIntConicCurveOfCInter*(): HLRBRepTheIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_TheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc constructHLRBRepTheIntConicCurveOfCInter*(L: Lin2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: float; tol: float): HLRBRepTheIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_TheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc constructHLRBRepTheIntConicCurveOfCInter*(c: Circ2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: float; tol: float): HLRBRepTheIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_TheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc constructHLRBRepTheIntConicCurveOfCInter*(e: Elips2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: float; tol: float): HLRBRepTheIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_TheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc constructHLRBRepTheIntConicCurveOfCInter*(prb: Parab2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: float; tol: float): HLRBRepTheIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_TheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc constructHLRBRepTheIntConicCurveOfCInter*(h: Hypr2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: float; tol: float): HLRBRepTheIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_TheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepTheIntConicCurveOfCInter; L: Lin2d; d1: IntRes2dDomain;
             pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepTheIntConicCurveOfCInter; c: Circ2d;
             d1: IntRes2dDomain; pCurve: StandardAddress; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepTheIntConicCurveOfCInter; e: Elips2d;
             d1: IntRes2dDomain; pCurve: StandardAddress; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepTheIntConicCurveOfCInter; prb: Parab2d;
             d1: IntRes2dDomain; pCurve: StandardAddress; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepTheIntConicCurveOfCInter; h: Hypr2d;
             d1: IntRes2dDomain; pCurve: StandardAddress; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "HLRBRep_TheIntConicCurveOfCInter.hxx".}
## !!!Ignored construct:  # TheImpTool IntCurve_IConicTool [NewLine] # TheImpTool_hxx < IntCurve_IConicTool . hxx > [NewLine] # ThePCurve Standard_Address [NewLine] # ThePCurve_hxx < Standard_Address . hxx > [NewLine] # ThePCurveTool HLRBRep_CurveTool [NewLine] # ThePCurveTool_hxx < HLRBRep_CurveTool . hxx > [NewLine] # TheProjPCur HLRBRep_TheProjPCurOfCInter [NewLine] # TheProjPCur_hxx < HLRBRep_TheProjPCurOfCInter . hxx > [NewLine] # IntCurve_TheIntersector HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter [NewLine] # IntCurve_TheIntersector_hxx < HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter . hxx > [NewLine] # IntCurve_MyImpParToolOfTheIntersector HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx < HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter . hxx > [NewLine] # IntCurve_MyImpParToolOfTheIntersector HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx < HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter . hxx > [NewLine] # IntCurve_IntConicCurveGen HLRBRep_TheIntConicCurveOfCInter [NewLine] # IntCurve_IntConicCurveGen_hxx < HLRBRep_TheIntConicCurveOfCInter . hxx > [NewLine] # < IntCurve_IntConicCurveGen . lxx > [NewLine] # TheImpTool [NewLine] # TheImpTool_hxx [NewLine] # ThePCurve [NewLine] # ThePCurve_hxx [NewLine] # ThePCurveTool [NewLine] # ThePCurveTool_hxx [NewLine] # TheProjPCur [NewLine] # TheProjPCur_hxx [NewLine] # IntCurve_TheIntersector [NewLine] # IntCurve_TheIntersector_hxx [NewLine] # IntCurve_MyImpParToolOfTheIntersector [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx [NewLine] # IntCurve_MyImpParToolOfTheIntersector [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx [NewLine] # IntCurve_IntConicCurveGen [NewLine] # IntCurve_IntConicCurveGen_hxx [NewLine] #  _HLRBRep_TheIntConicCurveOfCInter_HeaderFile
## Error: did not expect <!!!

