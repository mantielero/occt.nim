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

proc fSC_GetPSC*(): var TopOpeBRepToolShapeClassifier {.cdecl,
    importcpp: "FSC_GetPSC(@)", header: "TopOpeBRepTool_SC.hxx".}
proc fSC_GetPSC*(s: TopoDS_Shape): var TopOpeBRepToolShapeClassifier {.cdecl,
    importcpp: "FSC_GetPSC(@)", header: "TopOpeBRepTool_SC.hxx".}
##  ----------------------------------------------------------------------
##   state point <P> on/in shapes (edge <E>,face <F>)
##  ----------------------------------------------------------------------

proc fSC_StatePonFace*(p: PntObj; f: TopoDS_Shape;
                      psc: var TopOpeBRepToolShapeClassifier): TopAbsState {.cdecl,
    importcpp: "FSC_StatePonFace(@)", header: "TopOpeBRepTool_SC.hxx".}
proc fSC_StateEonFace*(e: TopoDS_Shape; t: cfloat; f: TopoDS_Shape;
                      psc: var TopOpeBRepToolShapeClassifier): TopAbsState {.cdecl,
    importcpp: "FSC_StateEonFace(@)", header: "TopOpeBRepTool_SC.hxx".}