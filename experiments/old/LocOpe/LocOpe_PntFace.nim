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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  LocOpePntFace* {.importcpp: "LocOpe_PntFace", header: "LocOpe_PntFace.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor.
                                                                                        ## Useful
                                                                                        ## only
                                                                                        ## for
                                                                                        ## the
                                                                                        ## list.


proc constructLocOpePntFace*(): LocOpePntFace {.constructor,
    importcpp: "LocOpe_PntFace(@)", header: "LocOpe_PntFace.hxx".}
proc constructLocOpePntFace*(p: Pnt; f: TopoDS_Face; `or`: TopAbsOrientation;
                            param: cfloat; uPar: cfloat; vPar: cfloat): LocOpePntFace {.
    constructor, importcpp: "LocOpe_PntFace(@)", header: "LocOpe_PntFace.hxx".}
proc pnt*(this: LocOpePntFace): Pnt {.noSideEffect, importcpp: "Pnt",
                                  header: "LocOpe_PntFace.hxx".}
proc face*(this: LocOpePntFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "LocOpe_PntFace.hxx".}
proc orientation*(this: LocOpePntFace): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "LocOpe_PntFace.hxx".}
proc changeOrientation*(this: var LocOpePntFace): var TopAbsOrientation {.
    importcpp: "ChangeOrientation", header: "LocOpe_PntFace.hxx".}
proc parameter*(this: LocOpePntFace): cfloat {.noSideEffect, importcpp: "Parameter",
    header: "LocOpe_PntFace.hxx".}
proc uParameter*(this: LocOpePntFace): cfloat {.noSideEffect,
    importcpp: "UParameter", header: "LocOpe_PntFace.hxx".}
proc vParameter*(this: LocOpePntFace): cfloat {.noSideEffect,
    importcpp: "VParameter", header: "LocOpe_PntFace.hxx".}

























