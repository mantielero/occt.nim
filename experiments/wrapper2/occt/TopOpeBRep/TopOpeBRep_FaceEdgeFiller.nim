##  Created on: 1995-06-14
##  Created by: Jean Yves LEBEY
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
discard "forward decl of TopOpeBRep_FaceEdgeIntersector"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepFaceEdgeFiller* {.importcpp: "TopOpeBRep_FaceEdgeFiller",
                             header: "TopOpeBRep_FaceEdgeFiller.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Search,
                                                                                   ## among
                                                                                   ## a
                                                                                   ## list
                                                                                   ## of
                                                                                   ## interferences
                                                                                   ## accessed
                                                                                   ## by
                                                                                   ## the
                                                                                   ## iterator
                                                                                   ##
                                                                                   ## !
                                                                                   ## <IT>,
                                                                                   ## a
                                                                                   ## geometry
                                                                                   ## <G>
                                                                                   ## whose
                                                                                   ## 3D
                                                                                   ## point
                                                                                   ## is
                                                                                   ## identical
                                                                                   ## to
                                                                                   ## the
                                                                                   ## 3D
                                                                                   ## point
                                                                                   ##
                                                                                   ## !
                                                                                   ## of
                                                                                   ## the
                                                                                   ## TheDSPoint
                                                                                   ## <DSP>.
                                                                                   ##
                                                                                   ## !
                                                                                   ## returns
                                                                                   ## True
                                                                                   ## if
                                                                                   ## such
                                                                                   ## an
                                                                                   ## interference
                                                                                   ## has
                                                                                   ## been
                                                                                   ## found,
                                                                                   ## False
                                                                                   ## else.
                                                                                   ##
                                                                                   ## !
                                                                                   ## if
                                                                                   ## True,
                                                                                   ## iterator
                                                                                   ## It
                                                                                   ## points
                                                                                   ## (by
                                                                                   ## the
                                                                                   ## Value()
                                                                                   ## method)
                                                                                   ## on
                                                                                   ## the
                                                                                   ## first
                                                                                   ##
                                                                                   ## !
                                                                                   ## interference
                                                                                   ## accessing
                                                                                   ## an
                                                                                   ## identical
                                                                                   ## 3D
                                                                                   ## point.


proc constructTopOpeBRepFaceEdgeFiller*(): TopOpeBRepFaceEdgeFiller {.constructor,
    importcpp: "TopOpeBRep_FaceEdgeFiller(@)",
    header: "TopOpeBRep_FaceEdgeFiller.hxx".}
proc insert*(this: var TopOpeBRepFaceEdgeFiller; f: TopoDS_Shape; e: TopoDS_Shape;
            feint: var TopOpeBRepFaceEdgeIntersector;
            hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Insert",
    header: "TopOpeBRep_FaceEdgeFiller.hxx".}

























