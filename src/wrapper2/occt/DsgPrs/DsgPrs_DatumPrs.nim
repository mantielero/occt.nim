##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../gp/gp_Ax2, ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_Presentation,
  ../Prs3d/Prs3d_Root

## ! A framework for displaying an XYZ trihedron.

type
  DsgPrs_DatumPrs* {.importcpp: "DsgPrs_DatumPrs", header: "DsgPrs_DatumPrs.hxx",
                    bycopy.} = object of Prs3d_Root ## ! Draw XYZ axes at specified location with attributes defined by the attribute manager theDrawer:
                                               ## ! - Prs3d_DatumAspect defines arrow, line and lenght trihedron axis parameters,
                                               ## ! - Prs3d_TextAspect defines displayed text.
                                               ## ! The thihedron origin and axis directions are defined by theDatum coordinate system.
                                               ## ! DsgPrs_XYZAxisPresentation framework is used to create graphical primitives for each axis.
                                               ## ! Axes are marked with "X", "Y", "Z" text.
                                               ## ! @param thePresentation [out] the modified presentation
                                               ## ! @param theDatum [in] the source of trihedron position
                                               ## ! @param theDrawer [in] the provider of display attributes


proc Add*(thePresentation: handle[Prs3d_Presentation]; theDatum: gp_Ax2;
         theDrawer: handle[Prs3d_Drawer]) {.importcpp: "DsgPrs_DatumPrs::Add(@)",
    header: "DsgPrs_DatumPrs.hxx".}