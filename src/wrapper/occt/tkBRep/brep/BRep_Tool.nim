# /usr/include/opencascade/BRep_Tool.hxx --> occt/tkBRep/brep/BRep_Tool.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreptool = "/usr/include/opencascade/BRep_Tool.hxx"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepTool* {.importcpp: "BRep_Tool", header: headerBreptool, bycopy.} = object


proc `new`*(this: var BRepTool; theSize: csize_t): pointer {.
    importcpp: "BRep_Tool::operator new", header: headerBreptool.}
proc `delete`*(this: var BRepTool; theAddress: pointer) {.
    importcpp: "BRep_Tool::operator delete", header: headerBreptool.}
proc `new[]`*(this: var BRepTool; theSize: csize_t): pointer {.
    importcpp: "BRep_Tool::operator new[]", header: headerBreptool.}
proc `delete[]`*(this: var BRepTool; theAddress: pointer) {.
    importcpp: "BRep_Tool::operator delete[]", header: headerBreptool.}
proc `new`*(this: var BRepTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRep_Tool::operator new", header: headerBreptool.}
proc `delete`*(this: var BRepTool; a2: pointer; a3: pointer) {.
    importcpp: "BRep_Tool::operator delete", header: headerBreptool.}
proc isClosed*(s: TopoDS_Shape): StandardBoolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: headerBreptool.}
proc surface*(f: TopoDS_Face; L: var TopLocLocation): Handle[GeomSurface] {.
    importcpp: "BRep_Tool::Surface(@)", header: headerBreptool.}
proc surface*(f: TopoDS_Face): Handle[GeomSurface] {.
    importcpp: "BRep_Tool::Surface(@)", header: headerBreptool.}
proc triangulation*(f: TopoDS_Face; L: var TopLocLocation): Handle[PolyTriangulation] {.
    importcpp: "BRep_Tool::Triangulation(@)", header: headerBreptool.}
proc tolerance*(f: TopoDS_Face): StandardReal {.
    importcpp: "BRep_Tool::Tolerance(@)", header: headerBreptool.}
proc naturalRestriction*(f: TopoDS_Face): StandardBoolean {.
    importcpp: "BRep_Tool::NaturalRestriction(@)", header: headerBreptool.}
proc isGeometric*(f: TopoDS_Face): StandardBoolean {.
    importcpp: "BRep_Tool::IsGeometric(@)", header: headerBreptool.}
proc isGeometric*(e: TopoDS_Edge): StandardBoolean {.
    importcpp: "BRep_Tool::IsGeometric(@)", header: headerBreptool.}
proc curve*(e: TopoDS_Edge; L: var TopLocLocation; first: var StandardReal;
           last: var StandardReal): Handle[GeomCurve] {.
    importcpp: "BRep_Tool::Curve(@)", header: headerBreptool.}
proc curve*(e: TopoDS_Edge; first: var StandardReal; last: var StandardReal): Handle[
    GeomCurve] {.importcpp: "BRep_Tool::Curve(@)", header: headerBreptool.}
proc polygon3D*(e: TopoDS_Edge; L: var TopLocLocation): Handle[PolyPolygon3D] {.
    importcpp: "BRep_Tool::Polygon3D(@)", header: headerBreptool.}
proc curveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face; first: var StandardReal;
                    last: var StandardReal; theIsStored: ptr StandardBoolean = null): Handle[
    Geom2dCurve] {.importcpp: "BRep_Tool::CurveOnSurface(@)",
                  header: headerBreptool.}
proc curveOnSurface*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                    first: var StandardReal; last: var StandardReal;
                    theIsStored: ptr StandardBoolean = null): Handle[Geom2dCurve] {.
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: headerBreptool.}
proc curveOnPlane*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                  first: var StandardReal; last: var StandardReal): Handle[Geom2dCurve] {.
    importcpp: "BRep_Tool::CurveOnPlane(@)", header: headerBreptool.}
proc curveOnSurface*(e: TopoDS_Edge; c: var Handle[Geom2dCurve];
                    s: var Handle[GeomSurface]; L: var TopLocLocation;
                    first: var StandardReal; last: var StandardReal) {.
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: headerBreptool.}
proc curveOnSurface*(e: TopoDS_Edge; c: var Handle[Geom2dCurve];
                    s: var Handle[GeomSurface]; L: var TopLocLocation;
                    first: var StandardReal; last: var StandardReal;
                    index: StandardInteger) {.
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: headerBreptool.}
proc polygonOnSurface*(e: TopoDS_Edge; f: TopoDS_Face): Handle[PolyPolygon2D] {.
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: headerBreptool.}
proc polygonOnSurface*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation): Handle[
    PolyPolygon2D] {.importcpp: "BRep_Tool::PolygonOnSurface(@)",
                    header: headerBreptool.}
proc polygonOnSurface*(e: TopoDS_Edge; c: var Handle[PolyPolygon2D];
                      s: var Handle[GeomSurface]; L: var TopLocLocation) {.
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: headerBreptool.}
proc polygonOnSurface*(e: TopoDS_Edge; c: var Handle[PolyPolygon2D];
                      s: var Handle[GeomSurface]; L: var TopLocLocation;
                      index: StandardInteger) {.
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: headerBreptool.}
proc polygonOnTriangulation*(e: TopoDS_Edge; t: Handle[PolyTriangulation];
                            L: TopLocLocation): Handle[PolyPolygonOnTriangulation] {.
    importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: headerBreptool.}
proc polygonOnTriangulation*(e: TopoDS_Edge;
                            p: var Handle[PolyPolygonOnTriangulation];
                            t: var Handle[PolyTriangulation]; L: var TopLocLocation) {.
    importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: headerBreptool.}
proc polygonOnTriangulation*(e: TopoDS_Edge;
                            p: var Handle[PolyPolygonOnTriangulation];
                            t: var Handle[PolyTriangulation];
                            L: var TopLocLocation; index: StandardInteger) {.
    importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: headerBreptool.}
proc isClosed*(e: TopoDS_Edge; f: TopoDS_Face): StandardBoolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: headerBreptool.}
proc isClosed*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation): StandardBoolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: headerBreptool.}
proc isClosed*(e: TopoDS_Edge; t: Handle[PolyTriangulation]; L: TopLocLocation): StandardBoolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: headerBreptool.}
proc tolerance*(e: TopoDS_Edge): StandardReal {.
    importcpp: "BRep_Tool::Tolerance(@)", header: headerBreptool.}
proc sameParameter*(e: TopoDS_Edge): StandardBoolean {.
    importcpp: "BRep_Tool::SameParameter(@)", header: headerBreptool.}
proc sameRange*(e: TopoDS_Edge): StandardBoolean {.
    importcpp: "BRep_Tool::SameRange(@)", header: headerBreptool.}
proc degenerated*(e: TopoDS_Edge): StandardBoolean {.
    importcpp: "BRep_Tool::Degenerated(@)", header: headerBreptool.}
proc range*(e: TopoDS_Edge; first: var StandardReal; last: var StandardReal) {.
    importcpp: "BRep_Tool::Range(@)", header: headerBreptool.}
proc range*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
           first: var StandardReal; last: var StandardReal) {.
    importcpp: "BRep_Tool::Range(@)", header: headerBreptool.}
proc range*(e: TopoDS_Edge; f: TopoDS_Face; first: var StandardReal;
           last: var StandardReal) {.importcpp: "BRep_Tool::Range(@)",
                                  header: headerBreptool.}
proc uVPoints*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
              pFirst: var GpPnt2d; pLast: var GpPnt2d) {.
    importcpp: "BRep_Tool::UVPoints(@)", header: headerBreptool.}
proc uVPoints*(e: TopoDS_Edge; f: TopoDS_Face; pFirst: var GpPnt2d; pLast: var GpPnt2d) {.
    importcpp: "BRep_Tool::UVPoints(@)", header: headerBreptool.}
proc setUVPoints*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                 pFirst: GpPnt2d; pLast: GpPnt2d) {.
    importcpp: "BRep_Tool::SetUVPoints(@)", header: headerBreptool.}
proc setUVPoints*(e: TopoDS_Edge; f: TopoDS_Face; pFirst: GpPnt2d; pLast: GpPnt2d) {.
    importcpp: "BRep_Tool::SetUVPoints(@)", header: headerBreptool.}
proc hasContinuity*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): StandardBoolean {.
    importcpp: "BRep_Tool::HasContinuity(@)", header: headerBreptool.}
proc continuity*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): GeomAbsShape {.
    importcpp: "BRep_Tool::Continuity(@)", header: headerBreptool.}
proc hasContinuity*(e: TopoDS_Edge; s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                   l1: TopLocLocation; l2: TopLocLocation): StandardBoolean {.
    importcpp: "BRep_Tool::HasContinuity(@)", header: headerBreptool.}
proc continuity*(e: TopoDS_Edge; s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                l1: TopLocLocation; l2: TopLocLocation): GeomAbsShape {.
    importcpp: "BRep_Tool::Continuity(@)", header: headerBreptool.}
proc hasContinuity*(e: TopoDS_Edge): StandardBoolean {.
    importcpp: "BRep_Tool::HasContinuity(@)", header: headerBreptool.}
proc maxContinuity*(theEdge: TopoDS_Edge): GeomAbsShape {.
    importcpp: "BRep_Tool::MaxContinuity(@)", header: headerBreptool.}
proc pnt*(v: TopoDS_Vertex): GpPnt {.importcpp: "BRep_Tool::Pnt(@)",
                                 header: headerBreptool.}
proc tolerance*(v: TopoDS_Vertex): StandardReal {.
    importcpp: "BRep_Tool::Tolerance(@)", header: headerBreptool.}
proc parameter*(theV: TopoDS_Vertex; theE: TopoDS_Edge; theParam: var StandardReal): StandardBoolean {.
    importcpp: "BRep_Tool::Parameter(@)", header: headerBreptool.}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge): StandardReal {.
    importcpp: "BRep_Tool::Parameter(@)", header: headerBreptool.}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge; f: TopoDS_Face): StandardReal {.
    importcpp: "BRep_Tool::Parameter(@)", header: headerBreptool.}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge; s: Handle[GeomSurface];
               L: TopLocLocation): StandardReal {.
    importcpp: "BRep_Tool::Parameter(@)", header: headerBreptool.}
proc parameters*(v: TopoDS_Vertex; f: TopoDS_Face): GpPnt2d {.
    importcpp: "BRep_Tool::Parameters(@)", header: headerBreptool.}
proc maxTolerance*(theShape: TopoDS_Shape; theSubShape: TopAbsShapeEnum): StandardReal {.
    importcpp: "BRep_Tool::MaxTolerance(@)", header: headerBreptool.}