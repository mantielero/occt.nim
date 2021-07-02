##  Created on: 1997-04-29
##  Created by: Stagiaire Francois DUMONT
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_BoundedCurve"
type
  Geom2dConvertCompCurveToBSplineCurve* {.
      importcpp: "Geom2dConvert_CompCurveToBSplineCurve",
      header: "Geom2dConvert_CompCurveToBSplineCurve.hxx", bycopy.} = object ## !
                                                                        ## Initialize the
                                                                        ## algorithme
                                                                        ## ! -
                                                                        ## Parameterisation is used to convert
                                                                        ## ! Concat two
                                                                        ## BSplineCurves.


proc constructGeom2dConvertCompCurveToBSplineCurve*(
    parameterisation: ConvertParameterisationType = convertTgtThetaOver2): Geom2dConvertCompCurveToBSplineCurve {.
    constructor, importcpp: "Geom2dConvert_CompCurveToBSplineCurve(@)",
    header: "Geom2dConvert_CompCurveToBSplineCurve.hxx".}
proc constructGeom2dConvertCompCurveToBSplineCurve*(
    basisCurve: Handle[Geom2dBoundedCurve];
    parameterisation: ConvertParameterisationType = convertTgtThetaOver2): Geom2dConvertCompCurveToBSplineCurve {.
    constructor, importcpp: "Geom2dConvert_CompCurveToBSplineCurve(@)",
    header: "Geom2dConvert_CompCurveToBSplineCurve.hxx".}
proc add*(this: var Geom2dConvertCompCurveToBSplineCurve;
         newCurve: Handle[Geom2dBoundedCurve]; tolerance: StandardReal;
         after: StandardBoolean = standardFalse): StandardBoolean {.importcpp: "Add",
    header: "Geom2dConvert_CompCurveToBSplineCurve.hxx".}
proc bSplineCurve*(this: Geom2dConvertCompCurveToBSplineCurve): Handle[
    Geom2dBSplineCurve] {.noSideEffect, importcpp: "BSplineCurve",
                         header: "Geom2dConvert_CompCurveToBSplineCurve.hxx".}
proc clear*(this: var Geom2dConvertCompCurveToBSplineCurve) {.importcpp: "Clear",
    header: "Geom2dConvert_CompCurveToBSplineCurve.hxx".}

