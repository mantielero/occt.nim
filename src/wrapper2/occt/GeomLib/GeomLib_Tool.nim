##  Created on: 2003-03-18
##  Created by: Oleg FEDYAEV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
type
  GeomLibTool* {.importcpp: "GeomLib_Tool", header: "GeomLib_Tool.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Extracts
                                                                                  ## the
                                                                                  ## parameter
                                                                                  ## of
                                                                                  ## a
                                                                                  ## 3D
                                                                                  ## point
                                                                                  ## lying
                                                                                  ## on
                                                                                  ## a
                                                                                  ## 3D
                                                                                  ## curve
                                                                                  ##
                                                                                  ## !
                                                                                  ## or
                                                                                  ## at
                                                                                  ## a
                                                                                  ## distance
                                                                                  ## less
                                                                                  ## than
                                                                                  ## the
                                                                                  ## MaxDist
                                                                                  ## value.


proc parameter*(curve: Handle[GeomCurve]; point: GpPnt; maxDist: StandardReal;
               u: var StandardReal): StandardBoolean {.
    importcpp: "GeomLib_Tool::Parameter(@)", header: "GeomLib_Tool.hxx".}
proc parameters*(surface: Handle[GeomSurface]; point: GpPnt; maxDist: StandardReal;
                u: var StandardReal; v: var StandardReal): StandardBoolean {.
    importcpp: "GeomLib_Tool::Parameters(@)", header: "GeomLib_Tool.hxx".}
proc parameter*(curve: Handle[Geom2dCurve]; point: GpPnt2d; maxDist: StandardReal;
               u: var StandardReal): StandardBoolean {.
    importcpp: "GeomLib_Tool::Parameter(@)", header: "GeomLib_Tool.hxx".}

