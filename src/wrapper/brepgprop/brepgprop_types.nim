import ../gprop/gprop_types
import ../math/math_types

type
  BRepGProp_Cinert* {.importcpp: "BRepGProp_Cinert",
                     header: "BRepGProp_Cinert.hxx", bycopy.} = object of GProp_GProps

type
  BRepGProp_Domain* {.importcpp: "BRepGProp_Domain",
                     header: "BRepGProp_Domain.hxx", bycopy.} = object ## ! Empty constructor.

type
  BRepGProp_EdgeTool* {.importcpp: "BRepGProp_EdgeTool",
                       header: "BRepGProp_EdgeTool.hxx", bycopy.} = object ## ! Returns the parametric value of the start point of
                                                                      ## ! the curve.  The curve is oriented from the start point
                                                                      ## ! to the end point.


type
  BRepGProp_Face* {.importcpp: "BRepGProp_Face", header: "BRepGProp_Face.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Constructor.
                                                                                         ## Initializes
                                                                                         ## the
                                                                                         ## object
                                                                                         ## with
                                                                                         ## a
                                                                                         ## flag
                                                                                         ## IsUseSpan
                                                                                         ##
                                                                                         ## !
                                                                                         ## that
                                                                                         ## says
                                                                                         ## if
                                                                                         ## it
                                                                                         ## is
                                                                                         ## necessary
                                                                                         ## to
                                                                                         ## define
                                                                                         ## spans
                                                                                         ## on
                                                                                         ## a
                                                                                         ## face.
                                                                                         ##
                                                                                         ## !
                                                                                         ## This
                                                                                         ## option
                                                                                         ## has
                                                                                         ## an
                                                                                         ## effect
                                                                                         ## only
                                                                                         ## for
                                                                                         ## BSpline
                                                                                         ## faces.
                                                                                         ## Spans
                                                                                         ##
                                                                                         ## !
                                                                                         ## are
                                                                                         ## returned
                                                                                         ## by
                                                                                         ## the
                                                                                         ## methods
                                                                                         ## GetUKnots
                                                                                         ## and
                                                                                         ## GetTKnots.

type
  BRepGProp_Gauss* {.importcpp: "BRepGProp_Gauss", header: "BRepGProp_Gauss.hxx",
                    bycopy.} = object ## ! Auxiliary structure for storing of inertial moments.
                                   ## ! @name public API
                                   ## ! Describes types of geometric objects.
                                   ## ! - Vinert is 3D closed region of space delimited with:
                                   ## ! -- Surface;
                                   ## ! -- Point and Surface;
                                   ## ! -- Plane and Surface.
                                   ## ! - Sinert is face in 3D space.
                                   ## ! @name private methods
                                   ## ! @name private fields
    ## !< Type of geometric object
    ## !< Pointer on the add function
    ## !< Pointer on the mult function

  BRepGProp_GaussBRepGProp_GaussType* {.size: sizeof(cint), importcpp: "BRepGProp_Gauss::BRepGProp_GaussType",
                                       header: "BRepGProp_Gauss.hxx".} = enum
    GaussType_Vinert = 0, 
    GaussType_Sinert


type
  BRepGProp_MeshCinert* {.importcpp: "BRepGProp_MeshCinert",
                         header: "BRepGProp_MeshCinert.hxx", bycopy.} = object of GProp_GProps



type
  BRepGProp_MeshProps* {.importcpp: "BRepGProp_MeshProps",
                        header: "BRepGProp_MeshProps.hxx", bycopy.} = object of GProp_GProps ##
                                                                                      ## !
                                                                                      ## Describes
                                                                                      ## types
                                                                                      ## of
                                                                                      ## geometric
                                                                                      ## objects.
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Vinert
                                                                                      ## is
                                                                                      ## 3D
                                                                                      ## closed
                                                                                      ## region
                                                                                      ## of
                                                                                      ## space
                                                                                      ## delimited
                                                                                      ## with
                                                                                      ##
                                                                                      ## !
                                                                                      ## Point
                                                                                      ## and
                                                                                      ## surface
                                                                                      ## mesh;
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Sinert
                                                                                      ## is
                                                                                      ## surface
                                                                                      ## mesh
                                                                                      ## in
                                                                                      ## 3D
                                                                                      ## space.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## private
                                                                                      ## fields
    ## !< Type of geometric object

  BRepGProp_MeshPropsBRepGProp_MeshObjType* {.size: sizeof(cint),
      importcpp: "BRepGProp_MeshProps::BRepGProp_MeshObjType",
      header: "BRepGProp_MeshProps.hxx".} = enum
    Vinert = 0, Sinert


type
  BRepGProp_Sinert* {.importcpp: "BRepGProp_Sinert",
                     header: "BRepGProp_Sinert.hxx", bycopy.} = object of GProp_GProps


type
  BRepGProp_TFunction* {.importcpp: "BRepGProp_TFunction",
                        header: "BRepGProp_TFunction.hxx", bycopy.} = object of MathFunction ##
                                                                                       ## !
                                                                                       ## Constructor.
                                                                                       ## Initializes
                                                                                       ## the
                                                                                       ## function
                                                                                       ## with
                                                                                       ## the
                                                                                       ## face,
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## location
                                                                                       ## point,
                                                                                       ## the
                                                                                       ## flag
                                                                                       ## IsByPoint,
                                                                                       ## the
                                                                                       ## coefficients
                                                                                       ##
                                                                                       ## !
                                                                                       ## theCoeff
                                                                                       ## that
                                                                                       ## have
                                                                                       ## different
                                                                                       ## meaning
                                                                                       ## depending
                                                                                       ## on
                                                                                       ## the
                                                                                       ## value
                                                                                       ##
                                                                                       ## !
                                                                                       ## of
                                                                                       ## IsByPoint.
                                                                                       ## The
                                                                                       ## last
                                                                                       ## two
                                                                                       ## parameters
                                                                                       ## are
                                                                                       ## theUMin
                                                                                       ## -
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## lower
                                                                                       ## bound
                                                                                       ## of
                                                                                       ## the
                                                                                       ## inner
                                                                                       ## integral.
                                                                                       ## This
                                                                                       ## value
                                                                                       ## is
                                                                                       ## fixed
                                                                                       ## for
                                                                                       ##
                                                                                       ## !
                                                                                       ## any
                                                                                       ## integral.
                                                                                       ## And
                                                                                       ## the
                                                                                       ## value
                                                                                       ## of
                                                                                       ## tolerance
                                                                                       ## of
                                                                                       ## inner
                                                                                       ## integral
                                                                                       ##
                                                                                       ## !
                                                                                       ## computation.
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## IsByPoint
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## Standard_True,
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## coefficients
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## 3
                                                                                       ## and
                                                                                       ## they
                                                                                       ## represent
                                                                                       ## X,
                                                                                       ## Y
                                                                                       ## and
                                                                                       ## Z
                                                                                       ##
                                                                                       ## !
                                                                                       ## coordinates
                                                                                       ## (theCoeff[0],
                                                                                       ## theCoeff[1]
                                                                                       ## and
                                                                                       ## theCoeff[2]
                                                                                       ##
                                                                                       ## !
                                                                                       ## correspondingly)
                                                                                       ## of
                                                                                       ## the
                                                                                       ## shift
                                                                                       ## if
                                                                                       ## the
                                                                                       ## inertia
                                                                                       ## is
                                                                                       ## computed
                                                                                       ##
                                                                                       ## !
                                                                                       ## with
                                                                                       ## respect
                                                                                       ## to
                                                                                       ## the
                                                                                       ## point
                                                                                       ## different
                                                                                       ## then
                                                                                       ## the
                                                                                       ## location.
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## IsByPoint
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## Standard_False,
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## coefficients
                                                                                       ## is
                                                                                       ## 4
                                                                                       ## and
                                                                                       ## they
                                                                                       ## represent
                                                                                       ## the
                                                                                       ## combination
                                                                                       ## of
                                                                                       ##
                                                                                       ## !
                                                                                       ## plane
                                                                                       ## parameters
                                                                                       ## and
                                                                                       ## shift
                                                                                       ## values.


type
  BRepGProp_UFunction* {.importcpp: "BRepGProp_UFunction",
                        header: "BRepGProp_UFunction.hxx", bycopy.} = object of MathFunction ##
                                                                                       ## !
                                                                                       ## Constructor.
                                                                                       ## Initializes
                                                                                       ## the
                                                                                       ## function
                                                                                       ## with
                                                                                       ## the
                                                                                       ## face,
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## location
                                                                                       ## point,
                                                                                       ## the
                                                                                       ## flag
                                                                                       ## IsByPoint
                                                                                       ## and
                                                                                       ## the
                                                                                       ## coefficients
                                                                                       ##
                                                                                       ## !
                                                                                       ## theCoeff
                                                                                       ## that
                                                                                       ## have
                                                                                       ## different
                                                                                       ## meaning
                                                                                       ## depending
                                                                                       ## on
                                                                                       ## the
                                                                                       ## value
                                                                                       ##
                                                                                       ## !
                                                                                       ## of
                                                                                       ## IsByPoint.
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## IsByPoint
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## Standard_True,
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## coefficients
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## 3
                                                                                       ## and
                                                                                       ## they
                                                                                       ## represent
                                                                                       ## X,
                                                                                       ## Y
                                                                                       ## and
                                                                                       ## Z
                                                                                       ##
                                                                                       ## !
                                                                                       ## coordinates
                                                                                       ## (theCoeff[0],
                                                                                       ## theCoeff[1]
                                                                                       ## and
                                                                                       ## theCoeff[2]
                                                                                       ##
                                                                                       ## !
                                                                                       ## correspondingly)
                                                                                       ## of
                                                                                       ## the
                                                                                       ## shift,
                                                                                       ## if
                                                                                       ## the
                                                                                       ## inertia
                                                                                       ## is
                                                                                       ## computed
                                                                                       ##
                                                                                       ## !
                                                                                       ## with
                                                                                       ## respect
                                                                                       ## to
                                                                                       ## the
                                                                                       ## point
                                                                                       ## different
                                                                                       ## then
                                                                                       ## the
                                                                                       ## location.
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## IsByPoint
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## Standard_False,
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## coefficients
                                                                                       ## is
                                                                                       ## 4
                                                                                       ## and
                                                                                       ## they
                                                                                       ## represent
                                                                                       ## the
                                                                                       ## combination
                                                                                       ## of
                                                                                       ##
                                                                                       ## !
                                                                                       ## plane
                                                                                       ## parameters
                                                                                       ## and
                                                                                       ## shift
                                                                                       ## values.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Private
                                                                                       ## method.
                                                                                       ## Returns
                                                                                       ## the
                                                                                       ## value
                                                                                       ## for
                                                                                       ## volume
                                                                                       ## computation.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Other
                                                                                       ## returned
                                                                                       ## values
                                                                                       ## are:
                                                                                       ##
                                                                                       ## !
                                                                                       ## -
                                                                                       ## thePMP0
                                                                                       ## -
                                                                                       ## PSurf(X,Y)
                                                                                       ## minus
                                                                                       ## Location.
                                                                                       ##
                                                                                       ## !
                                                                                       ## -
                                                                                       ## theS
                                                                                       ## and
                                                                                       ## theD1
                                                                                       ## coeffitients
                                                                                       ## that
                                                                                       ## are
                                                                                       ## computed
                                                                                       ## and
                                                                                       ## used
                                                                                       ##
                                                                                       ## !
                                                                                       ## for
                                                                                       ## computation
                                                                                       ## of
                                                                                       ## center
                                                                                       ## of
                                                                                       ## mass
                                                                                       ## and
                                                                                       ## inertia
                                                                                       ## values
                                                                                       ##
                                                                                       ## !
                                                                                       ## by
                                                                                       ## plane.

type
  BRepGProp_Vinert* {.importcpp: "BRepGProp_Vinert",
                     header: "BRepGProp_Vinert.hxx", bycopy.} = object of GProp_GProps


type
  BRepGProp_VinertGK* {.importcpp: "BRepGProp_VinertGK",
                       header: "BRepGProp_VinertGK.hxx", bycopy.} = object of GProp_GProps ##
    ## !
    ## Empty
    ## constructor.
    ##
    ## !
    ## Main
    ## method
    ## for
    ## computation
    ## of
    ## the
    ## global
    ## properties
    ## that
    ##
    ## !
    ## is
    ## invoked
    ## by
    ## each
    ## Perform
    ## method.

type
  BRepGProp* {.importcpp: "BRepGProp", header: "BRepGProp.hxx", bycopy.} = object ## !
    ## Computes the linear global
    ## properties of the shape S,
    ## ! i.e. the global
    ## properties
    ## induced by each edge of the
    ## ! shape S, and brings them
    ## together with the global
    ## !
    ## properties still
    ## retained by the
    ## framework
    ## LProps. If
    ## ! the
    ## current system of LProps was empty, its global
    ## !
    ## properties become equal to the linear global
    ## !
    ## properties of S.
    ## ! For this
    ## computation no linear
    ## density is
    ## attached to
    ## ! the edges. So, for
    ## example, the added mass
    ## !
    ## corresponds to the sum of the
    ## lengths of the edges of
    ## ! S. The
    ## density of the
    ## composed
    ## systems, i.e. that of
    ## ! each
    ## component of the
    ## current system of
    ## LProps, and
    ## ! that of S which is
    ## considered to be equal to 1, must be
    ## coherent.
    ## ! Note that this
    ## coherence cannot be
    ## checked. You are
    ## !
    ## advised to use a
    ## separate
    ## framework for each
    ## !
    ## density, and then to bring these
    ## frameworks
    ## together
    ## ! into a global one.
    ## ! The point
    ## relative to which the
    ## inertia of the system is
    ## !
    ## computed is the
    ## reference point of the
    ## framework
    ## LProps.
    ## ! Note: if your
    ## programming
    ## ensures that the
    ## framework
    ## ! LProps
    ## retains only linear global
    ## properties
    ## (brought
    ## !
    ## together for
    ## example, by the
    ## function
    ## !
    ## LinearProperties) for
    ## objects the
    ## density of which is
    ## ! equal to 1 (or is not
    ## defined), the
    ## function Mass will
    ## ! return the total length of edges of the system
    ## analysed by
    ## LProps.
    ## !
    ## Warning
    ## ! No check is
    ## performed to verify that the shape S
    ## !
    ## retains truly linear
    ## properties. If S is simply a
    ## vertex, it
    ## ! is not
    ## considered to
    ## present any
    ## additional global
    ## properties.
    ## !
    ## SkipShared is a
    ## special flag, which allows taking in
    ## calculation
    ## ! shared
    ## topological
    ## entities or not.
    ## ! For ex., if
    ## SkipShared = True, edges, shared by two or more faces,
    ## ! are taken into
    ## calculation only once.
    ## ! If we have cube with sizes 1, 1, 1, its linear
    ## properties = 12
    ## ! for
    ## SkipEdges = true and 24 for
    ## SkipEdges = false.
    ## !
    ## UseTriangulation is a
    ## special flag, which
    ## defines
    ## preferable
    ## ! source of
    ## geometry data. If
    ## UseTriangulation =
    ## Standard_False,
    ## ! exact
    ## geometry
    ## objects
    ## (curves) are used,
    ## otherwise
    ## polygons of
    ## !
    ## triangulation are used first.

