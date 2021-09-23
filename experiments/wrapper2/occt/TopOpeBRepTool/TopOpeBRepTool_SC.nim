##  Created on: 1998-04-01
##  Created by: Jean Yves LEBEY
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

import
  TopOpeBRepTool_define, TopOpeBRepTool_ShapeClassifier,
  TopOpeBRepTool_PShapeClassifier

proc FSC_GetPSC*(): var TopOpeBRepTool_ShapeClassifier {.importcpp: "FSC_GetPSC(@)",
    header: "TopOpeBRepTool_SC.hxx".}
proc FSC_GetPSC*(S: TopoDS_Shape): var TopOpeBRepTool_ShapeClassifier {.
    importcpp: "FSC_GetPSC(@)", header: "TopOpeBRepTool_SC.hxx".}
##  ----------------------------------------------------------------------
##   state point <P> on/in shapes (edge <E>,face <F>)
##  ----------------------------------------------------------------------

proc FSC_StatePonFace*(P: gp_Pnt; F: TopoDS_Shape;
                      PSC: var TopOpeBRepTool_ShapeClassifier): TopAbs_State {.
    importcpp: "FSC_StatePonFace(@)", header: "TopOpeBRepTool_SC.hxx".}
proc FSC_StateEonFace*(E: TopoDS_Shape; t: Standard_Real; F: TopoDS_Shape;
                      PSC: var TopOpeBRepTool_ShapeClassifier): TopAbs_State {.
    importcpp: "FSC_StateEonFace(@)", header: "TopOpeBRepTool_SC.hxx".}