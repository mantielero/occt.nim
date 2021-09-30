##  Created on: 1996-04-01
##  Created by: Flore Lantheaume
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of gp_Dir"
type
  DsgPrsFixPresentation* {.importcpp: "DsgPrs_FixPresentation",
                          header: "DsgPrs_FixPresentation.hxx", bycopy.} = object ## !
                                                                             ## draws the
                                                                             ## presentation of
                                                                             ## fixed
                                                                             ## objects by
                                                                             ## !
                                                                             ## drawing the
                                                                             ## 'fix'
                                                                             ## symbol at
                                                                             ## position
                                                                             ## <aPntEnd>.
                                                                             ## ! A
                                                                             ## binding
                                                                             ## segment is
                                                                             ## drawn
                                                                             ## between
                                                                             ## <aPntAttach>
                                                                             ## ! (
                                                                             ## which
                                                                             ## belongs the the fix
                                                                             ## object) and
                                                                             ## <aPntEnd>.
                                                                             ## !
                                                                             ## aSymbSize is the
                                                                             ## size of the
                                                                             ## 'fix'symbol


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aPntAttach: Pnt; aPntEnd: Pnt; aNormPln: Dir; aSymbSize: cfloat) {.
    importcpp: "DsgPrs_FixPresentation::Add(@)",
    header: "DsgPrs_FixPresentation.hxx".}

























