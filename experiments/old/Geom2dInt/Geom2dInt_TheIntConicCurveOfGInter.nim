##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _Geom2dInt_TheIntConicCurveOfGInter_HeaderFile [NewLine] # _Geom2dInt_TheIntConicCurveOfGInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < IntRes2d_Intersection . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] class IntCurve_IConicTool ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter"
discard "forward decl of Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter"
discard "forward decl of gp_Lin2d"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
type
  Geom2dIntTheIntConicCurveOfGInter* {.importcpp: "Geom2dInt_TheIntConicCurveOfGInter", header: "Geom2dInt_TheIntConicCurveOfGInter.hxx",
                                      bycopy.} = object of IntRes2dIntersection ## ! Empty
                                                                           ## constructor.
                                                                           ## !
                                                                           ## Intersection
                                                                           ## between a conic fom gp
                                                                           ## ! and a
                                                                           ## parametric
                                                                           ## curve.


proc constructGeom2dIntTheIntConicCurveOfGInter*(): Geom2dIntTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc constructGeom2dIntTheIntConicCurveOfGInter*(L: Lin2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: float; tol: float): Geom2dIntTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc constructGeom2dIntTheIntConicCurveOfGInter*(c: Circ2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: float; tol: float): Geom2dIntTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc constructGeom2dIntTheIntConicCurveOfGInter*(e: Elips2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: float; tol: float): Geom2dIntTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc constructGeom2dIntTheIntConicCurveOfGInter*(prb: Parab2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: float; tol: float): Geom2dIntTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc constructGeom2dIntTheIntConicCurveOfGInter*(h: Hypr2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: float; tol: float): Geom2dIntTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntConicCurveOfGInter; L: Lin2d;
             d1: IntRes2dDomain; pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntConicCurveOfGInter; c: Circ2d;
             d1: IntRes2dDomain; pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntConicCurveOfGInter; e: Elips2d;
             d1: IntRes2dDomain; pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntConicCurveOfGInter; prb: Parab2d;
             d1: IntRes2dDomain; pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntConicCurveOfGInter; h: Hypr2d;
             d1: IntRes2dDomain; pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "Geom2dInt_TheIntConicCurveOfGInter.hxx".}
## !!!Ignored construct:  # TheImpTool IntCurve_IConicTool [NewLine] # TheImpTool_hxx < IntCurve_IConicTool . hxx > [NewLine] # ThePCurve Adaptor2d_Curve2d [NewLine] # ThePCurve_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # ThePCurveTool Geom2dInt_Geom2dCurveTool [NewLine] # ThePCurveTool_hxx < Geom2dInt_Geom2dCurveTool . hxx > [NewLine] # TheProjPCur Geom2dInt_TheProjPCurOfGInter [NewLine] # TheProjPCur_hxx < Geom2dInt_TheProjPCurOfGInter . hxx > [NewLine] # IntCurve_TheIntersector Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter [NewLine] # IntCurve_TheIntersector_hxx < Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter . hxx > [NewLine] # IntCurve_MyImpParToolOfTheIntersector Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx < Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter . hxx > [NewLine] # IntCurve_MyImpParToolOfTheIntersector Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx < Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter . hxx > [NewLine] # IntCurve_IntConicCurveGen Geom2dInt_TheIntConicCurveOfGInter [NewLine] # IntCurve_IntConicCurveGen_hxx < Geom2dInt_TheIntConicCurveOfGInter . hxx > [NewLine] # < IntCurve_IntConicCurveGen . lxx > [NewLine] # TheImpTool [NewLine] # TheImpTool_hxx [NewLine] # ThePCurve [NewLine] # ThePCurve_hxx [NewLine] # ThePCurveTool [NewLine] # ThePCurveTool_hxx [NewLine] # TheProjPCur [NewLine] # TheProjPCur_hxx [NewLine] # IntCurve_TheIntersector [NewLine] # IntCurve_TheIntersector_hxx [NewLine] # IntCurve_MyImpParToolOfTheIntersector [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx [NewLine] # IntCurve_MyImpParToolOfTheIntersector [NewLine] # IntCurve_MyImpParToolOfTheIntersector_hxx [NewLine] # IntCurve_IntConicCurveGen [NewLine] # IntCurve_IntConicCurveGen_hxx [NewLine] #  _Geom2dInt_TheIntConicCurveOfGInter_HeaderFile
## Error: did not expect <!!!














































