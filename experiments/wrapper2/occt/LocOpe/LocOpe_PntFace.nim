##  Created on: 1995-05-29
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../TopoDS/TopoDS_Face,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Real

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  LocOpe_PntFace* {.importcpp: "LocOpe_PntFace", header: "LocOpe_PntFace.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor.
                                                                                         ## Useful
                                                                                         ## only
                                                                                         ## for
                                                                                         ## the
                                                                                         ## list.


proc constructLocOpe_PntFace*(): LocOpe_PntFace {.constructor,
    importcpp: "LocOpe_PntFace(@)", header: "LocOpe_PntFace.hxx".}
proc constructLocOpe_PntFace*(P: gp_Pnt; F: TopoDS_Face; Or: TopAbs_Orientation;
                             Param: Standard_Real; UPar: Standard_Real;
                             VPar: Standard_Real): LocOpe_PntFace {.constructor,
    importcpp: "LocOpe_PntFace(@)", header: "LocOpe_PntFace.hxx".}
proc Pnt*(this: LocOpe_PntFace): gp_Pnt {.noSideEffect, importcpp: "Pnt",
                                      header: "LocOpe_PntFace.hxx".}
proc Face*(this: LocOpe_PntFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "LocOpe_PntFace.hxx".}
proc Orientation*(this: LocOpe_PntFace): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "LocOpe_PntFace.hxx".}
proc ChangeOrientation*(this: var LocOpe_PntFace): var TopAbs_Orientation {.
    importcpp: "ChangeOrientation", header: "LocOpe_PntFace.hxx".}
proc Parameter*(this: LocOpe_PntFace): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "LocOpe_PntFace.hxx".}
proc UParameter*(this: LocOpe_PntFace): Standard_Real {.noSideEffect,
    importcpp: "UParameter", header: "LocOpe_PntFace.hxx".}
proc VParameter*(this: LocOpe_PntFace): Standard_Real {.noSideEffect,
    importcpp: "VParameter", header: "LocOpe_PntFace.hxx".}