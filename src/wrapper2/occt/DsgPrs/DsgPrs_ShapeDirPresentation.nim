##  Created on: 1995-10-06
##  Created by: Jing Cheng MEI
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

discard "forward decl of TopoDS_Shape"
type
  DsgPrsShapeDirPresentation* {.importcpp: "DsgPrs_ShapeDirPresentation",
                               header: "DsgPrs_ShapeDirPresentation.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Adds
                                                                                       ## the
                                                                                       ## shape
                                                                                       ## shape
                                                                                       ## and
                                                                                       ## the
                                                                                       ## mode
                                                                                       ## mode
                                                                                       ## to
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## presentation
                                                                                       ## object
                                                                                       ## prs.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## display
                                                                                       ## attributes
                                                                                       ## of
                                                                                       ## the
                                                                                       ## normal
                                                                                       ## are
                                                                                       ## defined
                                                                                       ## by
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## attribute
                                                                                       ## manager
                                                                                       ## aDrawer.
                                                                                       ##
                                                                                       ## !
                                                                                       ## mode
                                                                                       ## determines
                                                                                       ## whether
                                                                                       ## the
                                                                                       ## first
                                                                                       ## or
                                                                                       ## the
                                                                                       ## last
                                                                                       ## point
                                                                                       ## of
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## normal
                                                                                       ## is
                                                                                       ## given
                                                                                       ## to
                                                                                       ## the
                                                                                       ## presentation
                                                                                       ## object.
                                                                                       ## If
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## first
                                                                                       ## point:
                                                                                       ## 0;
                                                                                       ## if
                                                                                       ## the
                                                                                       ## last
                                                                                       ## point,
                                                                                       ## 1.


proc add*(prs: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         shape: TopoDS_Shape; mode: StandardInteger) {.
    importcpp: "DsgPrs_ShapeDirPresentation::Add(@)",
    header: "DsgPrs_ShapeDirPresentation.hxx".}

