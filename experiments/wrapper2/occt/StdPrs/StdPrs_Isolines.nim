##  Created on: 2014-10-14
##  Created by: Anton POLETAEV
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
  ../BRepAdaptor/BRepAdaptor_HSurface, ../Geom/Geom_Surface,
  ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_Presentation, ../Prs3d/Prs3d_LineAspect,
  ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_NListOfSequenceOfPnt,
  ../Poly/Poly_Triangulation, StdPrs_DeflectionCurve,
  StdPrs_ToolTriangulatedShape, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_SequenceOfReal

discard "forward decl of Poly_Triangle"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopLoc_Location"
type
  StdPrs_Isolines* {.importcpp: "StdPrs_Isolines", header: "StdPrs_Isolines.hxx",
                    bycopy.} = object of Prs3d_Root ## ! Computes isolines presentation for a TopoDS face.
                                               ## ! This method chooses proper version of isoline builder algorithm : on triangulation
                                               ## ! or surface depending on the flag passed from Prs3d_Drawer attributes.
                                               ## ! This method is a default way to display isolines for a given TopoDS face.
                                               ## ! @param thePresentation [in] the presentation.
                                               ## ! @param theFace [in] the face.
                                               ## ! @param theDrawer [in] the display settings.
                                               ## ! @param theDeflection [in] the deflection for isolines-on-surface version.
                                               ## ! Auxiliary structure defining 3D point on isoline.
                                               ## ! Computes isolines on surface.
                                               ## ! @param theSurface [in] the surface
                                               ## ! @param theDrawer [in] the display settings
                                               ## ! @param theDeflection [in] the deflection value
                                               ## ! @param theUIsoParams [in] the parameters of u isolines to compute
                                               ## ! @param theVIsoParams [in] the parameters of v isolines to compute
                                               ## ! @param theUPolylines [out] the sequence of result polylines
                                               ## ! @param theVPolylines [out] the sequence of result polylines


proc Add*(thePresentation: handle[Prs3d_Presentation]; theFace: TopoDS_Face;
         theDrawer: handle[Prs3d_Drawer]; theDeflection: Standard_Real) {.
    importcpp: "StdPrs_Isolines::Add(@)", header: "StdPrs_Isolines.hxx".}
proc Add*(theFace: TopoDS_Face; theDrawer: handle[Prs3d_Drawer];
         theDeflection: Standard_Real;
         theUPolylines: var Prs3d_NListOfSequenceOfPnt;
         theVPolylines: var Prs3d_NListOfSequenceOfPnt) {.
    importcpp: "StdPrs_Isolines::Add(@)", header: "StdPrs_Isolines.hxx".}
proc AddOnTriangulation*(thePresentation: handle[Prs3d_Presentation];
                        theFace: TopoDS_Face; theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_Isolines::AddOnTriangulation(@)",
    header: "StdPrs_Isolines.hxx".}
proc AddOnTriangulation*(theFace: TopoDS_Face; theDrawer: handle[Prs3d_Drawer];
                        theUPolylines: var Prs3d_NListOfSequenceOfPnt;
                        theVPolylines: var Prs3d_NListOfSequenceOfPnt) {.
    importcpp: "StdPrs_Isolines::AddOnTriangulation(@)",
    header: "StdPrs_Isolines.hxx".}
proc AddOnTriangulation*(thePresentation: handle[Prs3d_Presentation];
                        theTriangulation: handle[Poly_Triangulation];
                        theSurface: handle[Geom_Surface];
                        theLocation: TopLoc_Location;
                        theDrawer: handle[Prs3d_Drawer];
                        theUIsoParams: TColStd_SequenceOfReal;
                        theVIsoParams: TColStd_SequenceOfReal) {.
    importcpp: "StdPrs_Isolines::AddOnTriangulation(@)",
    header: "StdPrs_Isolines.hxx".}
proc AddOnSurface*(thePresentation: handle[Prs3d_Presentation];
                  theFace: TopoDS_Face; theDrawer: handle[Prs3d_Drawer];
                  theDeflection: Standard_Real) {.
    importcpp: "StdPrs_Isolines::AddOnSurface(@)", header: "StdPrs_Isolines.hxx".}
proc AddOnSurface*(theFace: TopoDS_Face; theDrawer: handle[Prs3d_Drawer];
                  theDeflection: Standard_Real;
                  theUPolylines: var Prs3d_NListOfSequenceOfPnt;
                  theVPolylines: var Prs3d_NListOfSequenceOfPnt) {.
    importcpp: "StdPrs_Isolines::AddOnSurface(@)", header: "StdPrs_Isolines.hxx".}
proc AddOnSurface*(thePresentation: handle[Prs3d_Presentation];
                  theSurface: handle[BRepAdaptor_HSurface];
                  theDrawer: handle[Prs3d_Drawer]; theDeflection: Standard_Real;
                  theUIsoParams: TColStd_SequenceOfReal;
                  theVIsoParams: TColStd_SequenceOfReal) {.
    importcpp: "StdPrs_Isolines::AddOnSurface(@)", header: "StdPrs_Isolines.hxx".}
proc UVIsoParameters*(theFace: TopoDS_Face; theNbIsoU: Standard_Integer;
                     theNbIsoV: Standard_Integer; theUVLimit: Standard_Real;
                     theUIsoParams: var TColStd_SequenceOfReal;
                     theVIsoParams: var TColStd_SequenceOfReal;
                     theUmin: var Standard_Real; theUmax: var Standard_Real;
                     theVmin: var Standard_Real; theVmax: var Standard_Real) {.
    importcpp: "StdPrs_Isolines::UVIsoParameters(@)",
    header: "StdPrs_Isolines.hxx".}
type
  StdPrs_IsolinesPntOnIso* {.importcpp: "StdPrs_Isolines::PntOnIso",
                            header: "StdPrs_Isolines.hxx", bycopy.} = object
    Pnt* {.importc: "Pnt".}: gp_Pnt ## !< 3D point
    Param* {.importc: "Param".}: cdouble ## !< parameter along the line (for sorting)

  StdPrs_IsolinesSegOnIso* {.importcpp: "StdPrs_Isolines::SegOnIso",
                            header: "StdPrs_Isolines.hxx", bycopy.} = object
    Pnts* {.importc: "Pnts".}: array[2, StdPrs_IsolinesPntOnIso]


converter `PntOnIso*`*(this: var StdPrs_IsolinesSegOnIso): ptr StdPrs_IsolinesPntOnIso {.
    importcpp: "SegOnIso::operator PntOnIso*", header: "StdPrs_Isolines.hxx".}
converter `constPntOnIso*`*(this: StdPrs_IsolinesSegOnIso): ptr StdPrs_IsolinesPntOnIso {.
    noSideEffect, importcpp: "SegOnIso::operator constPntOnIso*",
    header: "StdPrs_Isolines.hxx".}
proc `<`*(this: StdPrs_IsolinesSegOnIso; theOther: StdPrs_IsolinesSegOnIso): bool {.
    noSideEffect, importcpp: "(# < #)", header: "StdPrs_Isolines.hxx".}