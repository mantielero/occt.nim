import brepbuilderapi_types
import ../Standard/standard
import ../TopoDS/topods_types
import ../gp/gp_types
import ../Geom/geom_types

{.push header: "BRepBuilderAPI_MakeFace.hxx".}

proc MakeFace*(): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace".}
    ## Not done.

proc MakeFace*(F: TopoDS_Face): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Load a face. Usefull to add wires.

proc MakeFace*(P: gp_Pln): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a plane.

proc MakeFace*(C: gp_Cylinder): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a cylinder.

proc MakeFace*(C: gp_Cone): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a cone.

proc MakeFace*(S: gp_Sphere): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a sphere.

proc MakeFace*(C: gp_Torus): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a torus.

proc MakeFace*(S: Handle[Geom_Surface], TolDegen: Standard_Real): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a Surface. Accepts tolerance value (TolDegen) for
    ## resolution of degenerated edges.

proc MakeFace*(P: gp_Pln, UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a plane.

proc MakeFace*(C: gp_Cylinder, UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a cylinder.

proc MakeFace*(C: gp_Cone, UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a cone.

proc MakeFace*(S: gp_Sphere, UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a sphere.

proc MakeFace*(C: gp_Torus, UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a torus.

proc MakeFace*(S: Handle[Geom_Surface], UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real, TolDegen: Standard_Real): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a Surface. Accepts tolerance value (TolDegen) for
    ## resolution of degenerated edges.

#BRepBuilderAPI_MakeFace
proc MakeFace*(W: TopoDS_Wire, OnlyPlane: Standard_Boolean = false): TopoDS_Face  {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Find a surface from the wire and make a face. if <OnlyPlane> is true,
    ## the computed surface will be a plane. If it is not possible to find a
    ## plane, the flag NotDone will be set.

proc MakeFace*(P: gp_Pln, W: TopoDS_Wire, Inside: Standard_Boolean = true): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a plane and a wire.

proc MakeFace*(C: gp_Cylinder, W: TopoDS_Wire, Inside: Standard_Boolean= true): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a cylinder and a wire.

proc MakeFace*(C: gp_Cone, W: TopoDS_Wire, Inside: Standard_Boolean= true): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a cone and a wire.

proc MakeFace*(S: gp_Sphere, W: TopoDS_Wire, Inside: Standard_Boolean= true): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a sphere and a wire.

proc MakeFace*(C: gp_Torus, W: TopoDS_Wire, Inside: Standard_Boolean= true): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a torus and a wire.

proc MakeFace*(S: Handle[Geom_Surface], W: TopoDS_Wire, Inside: Standard_Boolean= true): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Make a face from a Surface and a wire.

proc MakeFace*(F: TopoDS_Face, W: TopoDS_Wire): BRepBuilderAPI_MakeFace {.constructor,importcpp: "BRepBuilderAPI_MakeFace::BRepBuilderAPI_MakeFace(@)".}
    ## Adds the wire <W> in the face <F> A general method to create a face is
    ## to give - a surface S as the support (the geometric domain) of the
    ## face, - and a wire W to bound it. The bounds of the face can also be
    ## defined by four parameter values umin, umax, vmin, vmax which
    ## determine isoparametric limitations on the parametric space of the
    ## surface. In this way, a patch is defined. The parameter values are
    ## optional. If they are omitted, the natural bounds of the surface are
    ## used. A wire is automatically built using the defined bounds. Up to
    ## four edges and four vertices are created with this wire (no edge is
    ## created when the corresponding parameter value is infinite). Wires can
    ## then be added using the function Add to define other restrictions on
    ## the face. These restrictions represent holes. More than one wire may
    ## be added by this way, provided that the wires do not cross each other
    ## and that they define only one area on the surface. (Be careful,
    ## however, as this is not checked). Forbidden addition of wires Note
    ## that in this schema, the third case is valid if edges of the wire W
    ## are declared internal to the face. As a result, these edges are no
    ## longer bounds of the face. A default tolerance
    ## (Precision::Confusion()) is given to the face, this tolerance may be
    ## increased during construction of the face using various algorithms.
    ## Rules applied to the arguments For the surface: - The surface must not
    ## be a 'null handle'. - If the surface is a trimmed surface, the basis
    ## surface is used. - For the wire: the wire is composed of connected
    ## edges, each edge having a parametric curve description in the
    ## parametric domain of the surface; in other words, as a pcurve. For the
    ## parameters: - The parameter values must be in the parametric range of
    ## the surface (or the basis surface, if the surface is trimmed). If this
    ## condition is not satisfied, the face is not built, and the Error
    ## function will return BRepBuilderAPI_ParametersOutOfRange. - The
    ## bounding parameters p1 and p2 are adjusted on a periodic surface in a
    ## given parametric direction by adding or subtracting the period to
    ## obtain p1 in the parametric range of the surface and such p2, that p2
    ## - p1 <= Period, where Period is the period of the surface in this
    ## parametric direction. - A parameter value may be infinite. There will
    ## be no edge and no vertex in the corresponding direction.

proc ` new`*(this: var BRepBuilderAPI_MakeFace, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeFace, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeFace, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeFace, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeFace, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeFace, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var BRepBuilderAPI_MakeFace, F: TopoDS_Face)  {.importcpp: "Init".}
    ## Initializes (or reinitializes) the construction of a face by creating
    ## a new object which is a copy of the face F, in order to add wires to
    ## it, using the function Add. Note: this complete copy of the geometry
    ## is only required if you want to work on the geometries of the two
    ## faces independently.

proc init*(this: var BRepBuilderAPI_MakeFace, S: Handle[Geom_Surface], Bound: Standard_Boolean, TolDegen: Standard_Real)  {.importcpp: "Init".}
    ## Initializes (or reinitializes) the construction of a face on the
    ## surface S. If Bound is true, a wire is automatically created from the
    ## natural bounds of the surface S and added to the face in order to
    ## bound it. If Bound is false, no wire is added. This option is used
    ## when real bounds are known. These will be added to the face after this
    ## initialization, using the function Add. TolDegen parameter is used for
    ## resolution of degenerated edges if calculation of natural bounds is
    ## turned on.

proc init*(this: var BRepBuilderAPI_MakeFace, S: Handle[Geom_Surface], UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real, TolDegen: Standard_Real)  {.importcpp: "Init".}
    ## Initializes (or reinitializes) the construction of a face on the
    ## surface S, limited in the u parametric direction by the two parameter
    ## values UMin and UMax and in the v parametric direction by the two
    ## parameter values VMin and VMax. Warning Error returns: -
    ## BRepBuilderAPI_ParametersOutOfRange when the parameters given are
    ## outside the bounds of the surface or the basis surface of a trimmed
    ## surface. TolDegen parameter is used for resolution of degenerated
    ## edges.

proc add*(this: var BRepBuilderAPI_MakeFace, W: TopoDS_Wire)  {.importcpp: "Add".}
    ## Adds the wire W to the constructed face as a hole. Warning W must not
    ## cross the other bounds of the face, and all the bounds must define
    ## only one area on the surface. (Be careful, however, as this is not
    ## checked.) Example // a cylinder gp_Cylinder C = ..; // a wire
    ## TopoDS_Wire W = ...; BRepBuilderAPI_MakeFace MF(C); MF.Add(W);
    ## TopoDS_Face F = MF;

proc isDone*(this: BRepBuilderAPI_MakeFace): Standard_Boolean  {.importcpp: "IsDone".}
    ## Returns true if this algorithm has a valid face.

proc error*(this: BRepBuilderAPI_MakeFace): BRepBuilderAPI_FaceError  {.importcpp: "Error".}
    ## Returns the construction status BRepBuilderAPI_FaceDone if the face is
    ## built, or - another value of the BRepBuilderAPI_FaceError enumeration
    ## indicating why the construction failed, in particular when the given
    ## parameters are outside the bounds of the surface.

proc face*(this: BRepBuilderAPI_MakeFace): TopoDS_Face  {.importcpp: "Face".}
    ## Returns the constructed face. Exceptions StdFail_NotDone if no face is
    ## built.

{.pop.}  # header: "BRepBuilderAPI_MakeFace.hxx"
