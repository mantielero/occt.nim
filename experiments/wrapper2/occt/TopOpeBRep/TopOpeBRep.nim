##  Created on: 1993-06-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_VPointInterIterator"
discard "forward decl of TopOpeBRep_WPointInter"
discard "forward decl of TopOpeBRep_WPointInterIterator"
discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopOpeBRep_Hctxff2d"
discard "forward decl of TopOpeBRep_Hctxee2d"
discard "forward decl of TopOpeBRep_Point2d"
discard "forward decl of TopOpeBRep_PointClassifier"
discard "forward decl of TopOpeBRep_VPointInterClassifier"
discard "forward decl of TopOpeBRep_GeomTool"
discard "forward decl of TopOpeBRep_FacesIntersector"
discard "forward decl of TopOpeBRep_EdgesIntersector"
discard "forward decl of TopOpeBRep_FaceEdgeIntersector"
discard "forward decl of TopOpeBRep_ShapeScanner"
discard "forward decl of TopOpeBRep_ShapeIntersector"
discard "forward decl of TopOpeBRep_ShapeIntersector2d"
discard "forward decl of TopOpeBRep_PointGeomTool"
discard "forward decl of TopOpeBRep_FFTransitionTool"
discard "forward decl of TopOpeBRep_Bipoint"
discard "forward decl of TopOpeBRep_FacesFiller"
discard "forward decl of TopOpeBRep_FFDumper"
discard "forward decl of TopOpeBRep_EdgesFiller"
discard "forward decl of TopOpeBRep_FaceEdgeFiller"
discard "forward decl of TopOpeBRep_DSFiller"
type
  TopOpeBRep* {.importcpp: "TopOpeBRep", header: "TopOpeBRep.hxx", bycopy.} = object ## !
                                                                             ## Prints the
                                                                             ## name  of
                                                                             ## <TLC>  as  a
                                                                             ## String  on the
                                                                             ## !
                                                                             ## Stream <S> and
                                                                             ## returns
                                                                             ## <S>.


proc print*(tlc: TopOpeBRepTypeLineCurve; os: var StandardOStream): var StandardOStream {.
    importcpp: "TopOpeBRep::Print(@)", header: "TopOpeBRep.hxx".}
