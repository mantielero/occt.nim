type
  PrsDim* {.importcpp: "PrsDim", header: "PrsDim.hxx", bycopy.} = object ## ! Returns the nearest point in a shape. This is used by
                                                                 ## ! several classes in calculation of dimensions.
type
  HandlePrsDimAngleDimension* = Handle[PrsDimAngleDimension]
## ! Angle dimension. Can be constructed:
## ! - on two intersected edges.
## ! - on three points or vertices.
## ! - on conical face.
## ! - between two intersected faces.
## !
## ! In case of three points or two intersected edges the dimension plane
## ! (on which dimension presentation is built) can be computed uniquely
## ! as through three defined points can be built only one plane.
## ! Therefore, if user-defined plane differs from this one, the dimension can't be built.
## !
## ! In cases of two planes automatic plane by default is built on point of the
## ! origin of parametric space of the first face (the basis surface) so, that
## ! the working plane and two faces intersection forms minimal angle between the faces.
## ! User can define the other point which the dimension plane should pass through
## ! using the appropriate constructor. This point can lay on the one of the faces or not.
## ! Also user can define his own plane but it should pass through the three points
## ! computed on the geometry initialization step (when the constructor or SetMeasuredGeometry() method
## ! is called).
## !
## ! In case of the conical face the center point of the angle is the apex of the conical surface.
## ! The attachment points are points of the first and the last parameter of the basis circle of the cone.
type
  PrsDimAngleDimension* {.importcpp: "PrsDim_AngleDimension",
                         header: "PrsDim_AngleDimension.hxx", bycopy.} = object of PrsDimDimension ##
                                                                                            ## !
                                                                                            ## Constructs
                                                                                            ## minimum
                                                                                            ## angle
                                                                                            ## dimension
                                                                                            ## between
                                                                                            ## two
                                                                                            ## linear
                                                                                            ## edges
                                                                                            ## (where
                                                                                            ## possible).
                                                                                            ##
                                                                                            ## !
                                                                                            ## These
                                                                                            ## two
                                                                                            ## edges
                                                                                            ## should
                                                                                            ## be
                                                                                            ## intersected
                                                                                            ## by
                                                                                            ## each
                                                                                            ## other.
                                                                                            ## Otherwise
                                                                                            ## the
                                                                                            ## geometry
                                                                                            ## is
                                                                                            ## not
                                                                                            ## valid.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theFirstEdge
                                                                                            ## [in]
                                                                                            ## the
                                                                                            ## first
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theSecondEdge
                                                                                            ## [in]
                                                                                            ## the
                                                                                            ## second
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @return
                                                                                            ## first
                                                                                            ## point
                                                                                            ## forming
                                                                                            ## the
                                                                                            ## angle.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Measures
                                                                                            ## minimum
                                                                                            ## angle
                                                                                            ## dimension
                                                                                            ## between
                                                                                            ## two
                                                                                            ## linear
                                                                                            ## edges.
                                                                                            ##
                                                                                            ## !
                                                                                            ## These
                                                                                            ## two
                                                                                            ## edges
                                                                                            ## should
                                                                                            ## be
                                                                                            ## intersected
                                                                                            ## by
                                                                                            ## each
                                                                                            ## other.
                                                                                            ## Otherwise
                                                                                            ## the
                                                                                            ## geometry
                                                                                            ## is
                                                                                            ## not
                                                                                            ## valid.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theFirstEdge
                                                                                            ## [in]
                                                                                            ## the
                                                                                            ## first
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theSecondEdge
                                                                                            ## [in]
                                                                                            ## the
                                                                                            ## second
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Initialization
                                                                                            ## of
                                                                                            ## fields
                                                                                            ## that
                                                                                            ## is
                                                                                            ## common
                                                                                            ## to
                                                                                            ## all
                                                                                            ## constructors.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Init
                                                                                            ## angular
                                                                                            ## dimension
                                                                                            ## to
                                                                                            ## measure
                                                                                            ## angle
                                                                                            ## between
                                                                                            ## two
                                                                                            ## linear
                                                                                            ## edges.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @return
                                                                                            ## TRUE
                                                                                            ## if
                                                                                            ## the
                                                                                            ## angular
                                                                                            ## dimension
                                                                                            ## can
                                                                                            ## be
                                                                                            ## constructured
                                                                                            ##
                                                                                            ## !
                                                                                            ## for
                                                                                            ## the
                                                                                            ## passed
                                                                                            ## edges.
    ## !< type of angle
    ## !< type of arrows visibility
type
  HandlePrsDimChamf2dDimension* = Handle[PrsDimChamf2dDimension]
## ! A framework to define display of 2D chamfers.
## ! A chamfer is displayed with arrows and text. The text
## ! gives the length of the chamfer if it is a symmetrical
## ! chamfer, or the angle if it is not.
type
  PrsDimChamf2dDimension* {.importcpp: "PrsDim_Chamf2dDimension",
                           header: "PrsDim_Chamf2dDimension.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## the
                                                                                               ## display
                                                                                               ## object
                                                                                               ## for
                                                                                               ## 2D
                                                                                               ## chamfers.
                                                                                               ##
                                                                                               ## !
                                                                                               ## This
                                                                                               ## object
                                                                                               ## is
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ## face
                                                                                               ## aFShape,
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## dimension
                                                                                               ## aVal,
                                                                                               ## the
                                                                                               ## plane
                                                                                               ## aPlane
                                                                                               ## and
                                                                                               ## the
                                                                                               ## text
                                                                                               ## aText.
type
  HandlePrsDimChamf3dDimension* = Handle[PrsDimChamf3dDimension]
## ! A framework to define display of 3D chamfers.
## ! A chamfer is displayed with arrows and text. The text
## ! gives the length of the chamfer if it is a symmetrical
## ! chamfer, or the angle if it is not.
type
  PrsDimChamf3dDimension* {.importcpp: "PrsDim_Chamf3dDimension",
                           header: "PrsDim_Chamf3dDimension.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## a
                                                                                               ## display
                                                                                               ## object
                                                                                               ## for
                                                                                               ## 3D
                                                                                               ## chamfers.
                                                                                               ##
                                                                                               ## !
                                                                                               ## This
                                                                                               ## object
                                                                                               ## is
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ## shape
                                                                                               ## aFShape,
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## dimension
                                                                                               ## aVal
                                                                                               ## and
                                                                                               ## the
                                                                                               ## text
                                                                                               ## aText.
type
  HandlePrsDimConcentricRelation* = Handle[PrsDimConcentricRelation]
## ! A framework to define a constraint by a relation of
## ! concentricity between two or more interactive datums.
## ! The display of this constraint is also defined.
## ! A plane is used to create an axis along which the
## ! relation of concentricity can be extended.
type
  PrsDimConcentricRelation* {.importcpp: "PrsDim_ConcentricRelation",
                             header: "PrsDim_ConcentricRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## the
                                                                                                   ## display
                                                                                                   ## object
                                                                                                   ## for
                                                                                                   ## concentric
                                                                                                   ## relations
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## between
                                                                                                   ## shapes.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## This
                                                                                                   ## object
                                                                                                   ## is
                                                                                                   ## defined
                                                                                                   ## by
                                                                                                   ## the
                                                                                                   ## two
                                                                                                   ## shapes,
                                                                                                   ## aFShape
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## and
                                                                                                   ## aSShape
                                                                                                   ## and
                                                                                                   ## the
                                                                                                   ## plane
                                                                                                   ## aPlane.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## aPlane
                                                                                                   ## is
                                                                                                   ## provided
                                                                                                   ## to
                                                                                                   ## create
                                                                                                   ## an
                                                                                                   ## axis
                                                                                                   ## along
                                                                                                   ## which
                                                                                                   ## the
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## relation
                                                                                                   ## of
                                                                                                   ## concentricity
                                                                                                   ## can
                                                                                                   ## be
                                                                                                   ## extended.
type
  HandlePrsDimDiameterDimension* = Handle[PrsDimDiameterDimension]
## ! Diameter dimension. Can be constructued:
## ! - On generic circle.
## ! - On generic circle with user-defined anchor point on that circle
## !   (dimension plane is oriented to follow the anchor point).
## ! - On generic circle in the specified plane.
## ! - On generic shape containing geometry that can be measured
## !   by diameter dimension: circle wire, circular face, etc.
## ! The anchor point is the location of the left attachement point of
## ! dimension on the circle.
## ! The anchor point computation is processed after dimension plane setting
## ! so that positive flyout direction stands with normal of the circle and
## ! the normal of the plane.
## ! If the plane is user-defined the anchor point was computed as intersection
## ! of the plane and the basis circle. Among two intersection points
## ! the one is selected so that positive flyout direction vector and
## ! the circle normal on the one side form the circle plane.
## ! (corner between positive flyout directio nand the circle normal is acute.)
## ! If the plane is computed automatically (by default it is the circle plane),
## ! the anchor point is the zero parameter point of the circle.
## !
## ! The dimension is considered as invalid if the user-defined plane
## ! does not include th enachor point and th ecircle center,
## ! if the diameter of the circle is less than Precision::Confusion().
## ! In case if the dimension is built on the arbitrary shape, it can be considered
## ! as invalid if the shape does not contain circle geometry.
type
  PrsDimDiameterDimension* {.importcpp: "PrsDim_DiameterDimension",
                            header: "PrsDim_DiameterDimension.hxx", bycopy.} = object of PrsDimDimension ##
                                                                                                  ## !
                                                                                                  ## Construct
                                                                                                  ## diameter
                                                                                                  ## dimension
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## circle.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theCircle
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## circle
                                                                                                  ## to
                                                                                                  ## measure.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @return
                                                                                                  ## measured
                                                                                                  ## geometry
                                                                                                  ## circle.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Measure
                                                                                                  ## diameter
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## circle.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## actual
                                                                                                  ## dimension
                                                                                                  ## plane
                                                                                                  ## is
                                                                                                  ## used
                                                                                                  ## for
                                                                                                  ## determining
                                                                                                  ## anchor
                                                                                                  ## points
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## circle
                                                                                                  ## to
                                                                                                  ## attach
                                                                                                  ## the
                                                                                                  ## dimension
                                                                                                  ## lines
                                                                                                  ## to.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## dimension
                                                                                                  ## will
                                                                                                  ## become
                                                                                                  ## invalid
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## diameter
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## circle
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## is
                                                                                                  ## less
                                                                                                  ## than
                                                                                                  ## Precision::Confusion().
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theCircle
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## circle
                                                                                                  ## to
                                                                                                  ## measure.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Override
                                                                                                  ## this
                                                                                                  ## method
                                                                                                  ## to
                                                                                                  ## change
                                                                                                  ## logic
                                                                                                  ## of
                                                                                                  ## anchor
                                                                                                  ## point
                                                                                                  ## computation.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Computes
                                                                                                  ## anchor
                                                                                                  ## point.
                                                                                                  ## Its
                                                                                                  ## computation
                                                                                                  ## is
                                                                                                  ## based
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## current
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## dimension
                                                                                                  ## plane.
                                                                                                  ## Therfore,
                                                                                                  ## anchor
                                                                                                  ## point
                                                                                                  ## is
                                                                                                  ## an
                                                                                                  ## intersection
                                                                                                  ## of
                                                                                                  ## plane
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## and
                                                                                                  ## circle.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## ATTENTION!
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## 1)
                                                                                                  ## The
                                                                                                  ## plane
                                                                                                  ## should
                                                                                                  ## be
                                                                                                  ## set
                                                                                                  ## or
                                                                                                  ## computed
                                                                                                  ## before.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## 2)
                                                                                                  ## The
                                                                                                  ## plane
                                                                                                  ## should
                                                                                                  ## inclide
                                                                                                  ## th
                                                                                                  ## ecircle
                                                                                                  ## center
                                                                                                  ## to
                                                                                                  ## be
                                                                                                  ## valid.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Compute
                                                                                                  ## points
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## circle
                                                                                                  ## sides
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## dimension
                                                                                                  ## plane.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Program
                                                                                                  ## error
                                                                                                  ## exception
                                                                                                  ## is
                                                                                                  ## raised
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## dimension
                                                                                                  ## plane
                                                                                                  ## "x"
                                                                                                  ## direction
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## is
                                                                                                  ## orthogonal
                                                                                                  ## to
                                                                                                  ## plane
                                                                                                  ## (the
                                                                                                  ## "impossible"
                                                                                                  ## case).
                                                                                                  ## The
                                                                                                  ## passed
                                                                                                  ## dimension
                                                                                                  ## plane
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## one
                                                                                                  ## specially
                                                                                                  ## computed
                                                                                                  ## to
                                                                                                  ## locate
                                                                                                  ## dimension
                                                                                                  ## presentation
                                                                                                  ## in
                                                                                                  ## circle.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theCircle
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## circle.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theFirstPnt
                                                                                                  ## [out]
                                                                                                  ## the
                                                                                                  ## first
                                                                                                  ## point.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theSecondPnt
                                                                                                  ## [out]
                                                                                                  ## the
                                                                                                  ## second
                                                                                                  ## point.
type
  HandlePrsDimDimension* = Handle[PrsDimDimension]
## ! PrsDim_Dimension is a base class for 2D presentations of linear (length, diameter, radius)
## ! and angular dimensions.
## !
## ! The dimensions provide measurement of quantities, such as lengths or plane angles.
## ! The measurement of dimension "value" is done in model space "as is".
## ! These "value" are said to be represented in "model units", which can be specified by user.
## ! During the display the measured value converted from "model units" to "display units".
## ! The display and model units are stored in common Prs3d_Drawer (drawer of the context)
## ! to share it between all dimensions.
## ! The specified by user units are stored in the dimension's drawer.
## !
## ! As a drawing, the dimension is composed from the following components:
## ! - Attachment (binding) points. The points where the dimension lines attaches to, for
## !   length dimensions the distances are measured between these points.
## ! - Main dimension line. The which extends from the attachment points in "up" direction,
## !   and which contains text label on it with value string.
## ! - Flyouts. The lines connecting the attachment points with main dimension line.
## ! - Extension. The lines used to extend the main dimension line in the cases when text
## !   or arrows do not fit into the main dimension line due to their size.
## ! - Arrows.
## !
## ! <pre>
## !  Linear dimensions:
## !
## !  extension
## !   line                                     arrow
## !       -->|------- main dimension line -------|<--
## !          |                                   |
## !          |flyout                       flyout|
## !          |                                   |
## !          +-----------------------------------+
## ! attachment                                attachment
## !  point                                       point
## !
## !  Angular dimensions:
## !
## !                  extension
## !                     line
## !                        -->|+++++
## !                     arrow |     +++
## !                           |        90(deg) - main dimension line
## !                    flyout |         +++
## !                           |           +
## !                           o---flyout---
## !                         center         ^
## !                         point          | extension
## !                                          line
## ! </pre>
## !
## ! Being a 2D drawings, the dimensions are created on imaginary plane, called "dimension plane",
## ! which can be thought of as reference system of axes (X,Y,N) for constructing the presentation.
## !
## ! The role of axes of the dimension plane is to guide you through the encapsualted automations
## ! of presentation building to help you understand how is the presentation will look and how it
## ! will be oriented in model space during construction.
## !
## ! Orientation of dimension line in model space relatively to the base shapes is defined
## ! with the flyouts. Flyouts specify length of flyout lines and their orientation relatively
## ! to the attachment points on the working plane.
## ! For linear dimensions:
## !   Direction of flyouts is specified with direction of main dimension line
## !   (vector from the first attachment to the second attachment) and the normal of the dimension plane.
## !   Positive direction of flyouts is defined by vector multiplication: AttachVector * PlaneNormal.
## ! For angular dimensions:
## !   Flyouts are defined by vectors from the center point to the attachment points.
## !   These vectors directions are supposed to be the positive directions of flyouts.
## !   Negative flyouts directions means that these vectors should be reversed
## !   (and dimension will be built out of the angle constructed with center and two attach points).
## !
## ! The dimension plane can be constructed automatically by application (where possible,
## ! it depends on the measured geometry).
## ! It can be also set by user. However, if the user-defined plane does not fit the
## ! geometry of the dimension (attach points do not belong to it), the dimension could not
## ! be built.
## ! If it is not possible to compute automatic plane (for example, in case of length between
## ! two points) the user is supposed to specify the custom plane.
## !
## ! Since the dimensions feature automated construction procedures from an arbitrary shapes,
## ! the interfaces to check the validness are also implemented. Once the measured geometry is
## ! specified, the one can inquire the validness status by calling "IsValid()" method. If the result
## ! is TRUE, then all of public parameters should be pre-computed and ready. The presentation
## ! should be also computable. Otherwise, the parameters may return invalid values. In this case,
## ! the presentation will not be computed and displayed.
## !
## ! The dimension support two local selection modes: main dimension line selection and text label
## ! selection. These modes can be used to develop interactive modification of dimension presentations.
## ! The component highlighting in these selection modes is provided by PrsDim_DimensionOwner class.
## ! Please note that selection is unavailable until the presentation is computed.
## !
## ! The specific drawing attributes are controlled through Prs3d_DimensionAspect. The one can change
## ! color, arrows, text and arrow style and specify positioning of value label by setting corresponding
## ! values to the aspect.
## !
## ! Such set of parameters that consists of:
## ! - flyout size and direction,
## ! - user-defined  dimension plane,
## ! - horizontal and vertical text alignment
## ! can be uniquely replaced with text position in 3d space. Therefore, there are methods to convert
## ! this set of parameters to the text position and vice versa:
## !
## ! - If the fixed text position is defined by user, called SetTextPosition (theTextPos) method converts
## ! this 3d point to the set of parameters including adjusting of the dimension plane (this plane will be
## ! automatic plane, NOT user-defined one).
## ! If the fixed text position is set, the flag myIsFixedTextPosition is set to TRUE.
## ! ATTENSION! myIsFixedTextPosition fixes all parameters of the set from recomputing inside
## ! SetMeasureGeometry() methods. Parameters in dimension aspect (they are horizontal text position
## ! and extension size) are adjusted on presentation computing step, user-defined values in
## ! dimension aspect are not changed.
## ! But plane and flyout as dimension position parameters are changed by SetTextPosition() method
## ! according with user-defined text position.
## ! If parameters from the set are changed by user with calls of setters, it leads to disabling of
## ! fixed text position (myIsFixedTextPosition is set to FALSE).
## ! If the fixed text position is set and geometry is changed by user (SetMeasureGeometry() method
## ! is called) and the geometry doesn't satisfy computed dimension plane, the dimension is not valid.
## !
## ! - If the set of parameters was set by user (may be without the user-defined plane or with it),
## ! it can be converted to the text position by calling the method GetTextPosition(). In this case
## ! the text position is NOT fixed, and SetMeasureGeometry() without user-defined plane adjusts
## ! the automatic plane according input geometry (if it is possible).
type
  PrsDimDimension* {.importcpp: "PrsDim_Dimension", header: "PrsDim_Dimension.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Geometry type defines type of shapes on which the dimension is to be built.
                                                          ## ! Some type of geometry allows automatic plane computing and
                                                          ## ! can be built without user-defined plane
                                                          ## ! Another types can't be built without user-defined plane.
                                                          ## ! Specifies supported presentation compute modes.
                                                          ## ! Used to compute only parts of presentation for
                                                          ## ! advanced highlighting.
                                                          ## ! Constructor with default parameters values.
                                                          ## ! @param theType [in] the type of dimension.
                                                          ## ! Gets the dimension aspect from AIS object drawer.
                                                          ## ! Dimension aspect contains aspects of line, text and arrows for dimension presentation.
                                                          ## ! @return dimension special symbol display options.
                                                          ## ! Returns selection tolerance for text2d:
                                                          ## ! For 2d text selection detection sensitive point with tolerance is used
                                                          ## ! Important! Only for 2d text.
                                                          ## ! @name Static auxilliary methods for geometry extraction
                                                          ## ! If it is possible extracts circle from planar face.
                                                          ## ! @param theFace        [in] the planar face
                                                          ## ! @param theCurve       [out] the circular curve
                                                          ## ! @param theFirstPoint  [out] the point of the first parameter of the circlular curve
                                                          ## ! @param theSecondPoint [out] the point of the last parameter of the circlular curve
                                                          ## ! @return TRUE in case of successful circle extraction
                                                          ## ! @name Behavior to implement
                                                          ## ! Override this method to check if user-defined plane
                                                          ## ! is valid for the dimension geometry.
                                                          ## ! @param thePlane [in] the working plane for positioning every
                                                          ## ! dimension in the application.
                                                          ## ! @return true is the plane is suitable for building dimension
                                                          ## ! with computed dimension geometry.
                                                          ## ! @name Selection geometry
                                                          ## ! Selection geometry of dimension presentation. The structure is filled with data
                                                          ## ! during compute of presentation, then this data is used to generate selection
                                                          ## ! sensitives when computing selection.
                                                          ## ! @name Value properties
                                                          ## ! @name Fixed text position properties
                                                          ## ! @name Units properties
                                                          ## ! @name Geometrical properties
    ## !< Sensitive point tolerance for 2d text selection.
    ## ! type of value (computed or user-defined)
    ## !< Value of the dimension (computed or user-defined).
    ## !< Value of the dimension (computed or user-defined).
    ## !< Stores text position fixed by user.
    ## !< Is the text label position fixed by user.
    ## !< Special symbol.
    ## !< Special symbol display options.
    ## !< defines type of shapes on which the dimension is to be built.
    ## !< Plane where dimension will be built (computed or user defined).
    ## !< Is plane defined by user (otherwise it will be computed automatically).
    ## !< Flyout distance.
    ## !< Is dimension geometry properly defined.
  PrsDimDimensionComputeMode* {.size: sizeof(cint),
                               importcpp: "PrsDim_Dimension::ComputeMode",
                               header: "PrsDim_Dimension.hxx".} = enum
    ComputeModeAll = 0,         ## !< "0" is reserved as neutral mode
    ComputeModeLine = 1,        ## !< corresponds to selection mode
    ComputeModeText = 2
type
  HandlePrsDimDimensionOwner* = Handle[PrsDimDimensionOwner]
## ! The owner is the entity which makes it possible to link
## ! the sensitive primitives and the reference shapes that
## ! you want to detect. It stocks the various pieces of
## ! information which make it possible to find objects. An
## ! owner has a priority which you can modulate, so as to
## ! make one entity more selectable than another. You
## ! might want to make edges more selectable than
## ! faces, for example. In that case, you could attribute sa
## ! higher priority to the one compared to the other. An
## ! edge, could have priority 5, for example, and a face,
## ! priority 4. The default priority is 5.
type
  PrsDimDimensionOwner* {.importcpp: "PrsDim_DimensionOwner",
                         header: "PrsDim_DimensionOwner.hxx", bycopy.} = object of SelectMgrEntityOwner ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## the
                                                                                                 ## dimension
                                                                                                 ## owner,
                                                                                                 ## theSO,
                                                                                                 ## and
                                                                                                 ## attributes
                                                                                                 ## it
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## the
                                                                                                 ## priority,
                                                                                                 ## thePriority.
type
  HandlePrsDimEllipseRadiusDimension* = Handle[PrsDimEllipseRadiusDimension]
## ! Computes  geometry  (  basis  curve  and  plane  of  dimension)
## ! for  input  shape  aShape  from  TopoDS
## ! Root  class  for MinRadiusDimension  and  MaxRadiusDimension
type
  PrsDimEllipseRadiusDimension* {.importcpp: "PrsDim_EllipseRadiusDimension",
                                 header: "PrsDim_EllipseRadiusDimension.hxx",
                                 bycopy.} = object of PrsDimRelation
type
  HandlePrsDimEqualDistanceRelation* = Handle[PrsDimEqualDistanceRelation]
## ! A framework to display equivalent distances between
## ! shapes and a given plane.
## ! The distance is the length of a projection from the
## ! shape to the plane.
## ! These distances are used to compare shapes by this vector alone.
type
  PrsDimEqualDistanceRelation* {.importcpp: "PrsDim_EqualDistanceRelation",
                                header: "PrsDim_EqualDistanceRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## a
                                                                                                         ## framework
                                                                                                         ## to
                                                                                                         ## display
                                                                                                         ## equivalent
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## distances
                                                                                                         ## between
                                                                                                         ## the
                                                                                                         ## shapes
                                                                                                         ## aShape1,
                                                                                                         ## aShape2,
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## aShape3,
                                                                                                         ## aShape4
                                                                                                         ## and
                                                                                                         ## the
                                                                                                         ## plane
                                                                                                         ## aPlane.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## distance
                                                                                                         ## is
                                                                                                         ## the
                                                                                                         ## length
                                                                                                         ## of
                                                                                                         ## a
                                                                                                         ## projection
                                                                                                         ## from
                                                                                                         ## the
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## shape
                                                                                                         ## to
                                                                                                         ## the
                                                                                                         ## plane.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Computes
                                                                                                         ## the
                                                                                                         ## location
                                                                                                         ## of
                                                                                                         ## an
                                                                                                         ## intreval
                                                                                                         ## between
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## between
                                                                                                         ## two
                                                                                                         ## edges.
                                                                                                         ## FirstAttach
                                                                                                         ## ,
                                                                                                         ## SecondAttach
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## are
                                                                                                         ## the
                                                                                                         ## returned
                                                                                                         ## extreme
                                                                                                         ## points
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## interval.
type
  HandlePrsDimEqualRadiusRelation* = Handle[PrsDimEqualRadiusRelation]
  PrsDimEqualRadiusRelation* {.importcpp: "PrsDim_EqualRadiusRelation",
                              header: "PrsDim_EqualRadiusRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## equal
                                                                                                     ## relation
                                                                                                     ## of
                                                                                                     ## two
                                                                                                     ## arc's
                                                                                                     ## radiuses.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## If
                                                                                                     ## one
                                                                                                     ## of
                                                                                                     ## edges
                                                                                                     ## is
                                                                                                     ## not
                                                                                                     ## in
                                                                                                     ## the
                                                                                                     ## given
                                                                                                     ## plane,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## presentation
                                                                                                     ## method
                                                                                                     ## projects
                                                                                                     ## it
                                                                                                     ## onto
                                                                                                     ## the
                                                                                                     ## plane.
type
  HandlePrsDimFixRelation* = Handle[PrsDimFixRelation]
## ! Constructs and manages a constraint by a fixed
## ! relation between two or more interactive datums. This
## ! constraint is represented by a wire from a shape -
## ! point, vertex, or edge - in the first datum and a
## ! corresponding shape in the second.
## ! Warning: This relation is not bound with any kind of parametric
## ! constraint : it represents the "status" of an parametric
## ! object.
type
  PrsDimFixRelation* {.importcpp: "PrsDim_FixRelation",
                      header: "PrsDim_FixRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                     ## !
                                                                                     ## initializes
                                                                                     ## the
                                                                                     ## vertex
                                                                                     ## aShape,
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## plane
                                                                                     ## aPlane
                                                                                     ## and
                                                                                     ## the
                                                                                     ## wire
                                                                                     ## aWire,
                                                                                     ## which
                                                                                     ## connects
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## two
                                                                                     ## vertices
                                                                                     ## in
                                                                                     ## a
                                                                                     ## fixed
                                                                                     ## relation.
type
  HandlePrsDimIdenticRelation* = Handle[PrsDimIdenticRelation]
## ! Constructs a constraint by a relation of identity
## ! between two or more datums figuring in shape
## ! Interactive Objects.
type
  PrsDimIdenticRelation* {.importcpp: "PrsDim_IdenticRelation",
                          header: "PrsDim_IdenticRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                             ## !
                                                                                             ## Initializes
                                                                                             ## the
                                                                                             ## relation
                                                                                             ## of
                                                                                             ## identity
                                                                                             ## between
                                                                                             ## the
                                                                                             ## two
                                                                                             ##
                                                                                             ## !
                                                                                             ## entities,
                                                                                             ## FirstShape
                                                                                             ## and
                                                                                             ## SecondShape.
                                                                                             ## The
                                                                                             ## plane
                                                                                             ##
                                                                                             ## !
                                                                                             ## aPlane
                                                                                             ## is
                                                                                             ## initialized
                                                                                             ## in
                                                                                             ## case
                                                                                             ## a
                                                                                             ## visual
                                                                                             ## reference
                                                                                             ## is
                                                                                             ##
                                                                                             ## !
                                                                                             ## needed
                                                                                             ## to
                                                                                             ## show
                                                                                             ## identity.
type
  HandlePrsDimLengthDimension* = Handle[PrsDimLengthDimension]
## ! Length dimension. Can be constructued:
## ! - Between two generic points.
## ! - Between two vertices.
## ! - Between two faces.
## ! - Between two parallel edges.
## ! - Between face and edge.
## !
## ! In case of two points (vertices) or one linear edge the user-defined plane
## ! that includes this geometry is necessary to be set.
## !
## ! In case of face-edge, edge-vertex or face-face lengthes the automatic plane
## ! computing is allowed. For this plane the third point is found on the
## ! edge or on the face.
## !
## ! Please note that if the inappropriate geometry is defined
## ! or the distance between measured points is less than
## ! Precision::Confusion(), the dimension is invalid and its
## ! presentation can not be computed.
type
  PrsDimLengthDimension* {.importcpp: "PrsDim_LengthDimension",
                          header: "PrsDim_LengthDimension.hxx", bycopy.} = object of PrsDimDimension ##
                                                                                              ## !
                                                                                              ## Construct
                                                                                              ## length
                                                                                              ## dimension
                                                                                              ## between
                                                                                              ## face
                                                                                              ## and
                                                                                              ## edge.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Here
                                                                                              ## dimension
                                                                                              ## can
                                                                                              ## be
                                                                                              ## built
                                                                                              ## without
                                                                                              ## user-defined
                                                                                              ## plane.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theFace
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## face
                                                                                              ## (first
                                                                                              ## shape).
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theEdge
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## edge
                                                                                              ## (second
                                                                                              ## shape).
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## first
                                                                                              ## attachement
                                                                                              ## point.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Measure
                                                                                              ## distance
                                                                                              ## between
                                                                                              ## two
                                                                                              ## points.
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## dimension
                                                                                              ## will
                                                                                              ## become
                                                                                              ## invalid
                                                                                              ## if
                                                                                              ## the
                                                                                              ## new
                                                                                              ## distance
                                                                                              ## between
                                                                                              ##
                                                                                              ## !
                                                                                              ## attachement
                                                                                              ## points
                                                                                              ## is
                                                                                              ## less
                                                                                              ## than
                                                                                              ## Precision::Confusion().
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theFirstPoint
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## first
                                                                                              ## point.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theSecondPoint
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## second
                                                                                              ## point.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## thePlane
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## user-defined
                                                                                              ## plane
                                                                                              ##
                                                                                              ## !
                                                                                              ## Checks
                                                                                              ## if
                                                                                              ## the
                                                                                              ## plane
                                                                                              ## includes
                                                                                              ## first
                                                                                              ## and
                                                                                              ## second
                                                                                              ## points
                                                                                              ## to
                                                                                              ## build
                                                                                              ## dimension.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Checks
                                                                                              ## that
                                                                                              ## distance
                                                                                              ## between
                                                                                              ## two
                                                                                              ## points
                                                                                              ## is
                                                                                              ## valid.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theFirstPoint
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## first
                                                                                              ## point.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theSecondPoint
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## second
                                                                                              ## point.
type
  HandlePrsDimMaxRadiusDimension* = Handle[PrsDimMaxRadiusDimension]
## ! Ellipse  Max  radius  dimension  of  a  Shape  which  can  be  Edge
## ! or  Face  (planar  or  cylindrical(surface  of  extrusion  or
## ! surface  of  offset))
type
  PrsDimMaxRadiusDimension* {.importcpp: "PrsDim_MaxRadiusDimension",
                             header: "PrsDim_MaxRadiusDimension.hxx", bycopy.} = object of PrsDimEllipseRadiusDimension ##
                                                                                                                 ## !
                                                                                                                 ## Max
                                                                                                                 ## Ellipse
                                                                                                                 ## radius
                                                                                                                 ## dimension
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## Shape
                                                                                                                 ## can
                                                                                                                 ## be
                                                                                                                 ## edge
                                                                                                                 ## ,
                                                                                                                 ## planar
                                                                                                                 ## face
                                                                                                                 ## or
                                                                                                                 ## cylindrical
                                                                                                                 ## face
type
  HandlePrsDimMidPointRelation* = Handle[PrsDimMidPointRelation]
## ! presentation of equal distance to point myMidPoint
type
  PrsDimMidPointRelation* {.importcpp: "PrsDim_MidPointRelation",
                           header: "PrsDim_MidPointRelation.hxx", bycopy.} = object of PrsDimRelation
type
  HandlePrsDimMinRadiusDimension* = Handle[PrsDimMinRadiusDimension]
## ! --  Ellipse  Min  radius  dimension  of  a  Shape  which
## ! can  be  Edge  or  Face  (planar  or  cylindrical(surface  of
## ! extrusion  or  surface  of  offset))
type
  PrsDimMinRadiusDimension* {.importcpp: "PrsDim_MinRadiusDimension",
                             header: "PrsDim_MinRadiusDimension.hxx", bycopy.} = object of PrsDimEllipseRadiusDimension ##
                                                                                                                 ## !
                                                                                                                 ## Max
                                                                                                                 ## Ellipse
                                                                                                                 ## radius
                                                                                                                 ## dimension
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## Shape
                                                                                                                 ## can
                                                                                                                 ## be
                                                                                                                 ## edge
                                                                                                                 ## ,
                                                                                                                 ## planar
                                                                                                                 ## face
                                                                                                                 ## or
                                                                                                                 ## cylindrical
                                                                                                                 ## face
type
  HandlePrsDimOffsetDimension* = Handle[PrsDimOffsetDimension]
## ! A framework to display dimensions of offsets.
## ! The relation between the offset and the basis shape
## ! is indicated. This relation is displayed with arrows and
## ! text. The text gives the dsitance between the offset
## ! and the basis shape.
type
  PrsDimOffsetDimension* {.importcpp: "PrsDim_OffsetDimension",
                          header: "PrsDim_OffsetDimension.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                             ## !
                                                                                             ## Constructs
                                                                                             ## the
                                                                                             ## offset
                                                                                             ## display
                                                                                             ## object
                                                                                             ## defined
                                                                                             ## by
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## first
                                                                                             ## shape
                                                                                             ## aFShape,
                                                                                             ## the
                                                                                             ## second
                                                                                             ## shape
                                                                                             ## aSShape,
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## dimension
                                                                                             ## aVal,
                                                                                             ## and
                                                                                             ## the
                                                                                             ## text
                                                                                             ## aText.
type
  HandlePrsDimParallelRelation* = Handle[PrsDimParallelRelation]
## ! A framework to display constraints of parallelism
## ! between two or more Interactive Objects. These
## ! entities can be faces or edges.
type
  PrsDimParallelRelation* {.importcpp: "PrsDim_ParallelRelation",
                           header: "PrsDim_ParallelRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## an
                                                                                               ## object
                                                                                               ## to
                                                                                               ## display
                                                                                               ## parallel
                                                                                               ## constraints.
                                                                                               ##
                                                                                               ## !
                                                                                               ## This
                                                                                               ## object
                                                                                               ## is
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ## first
                                                                                               ## shape
                                                                                               ## aFShape
                                                                                               ## and
                                                                                               ##
                                                                                               ## !
                                                                                               ## the
                                                                                               ## second
                                                                                               ## shape
                                                                                               ## aSShape
                                                                                               ## and
                                                                                               ## the
                                                                                               ## plane
                                                                                               ## aPlane.
type
  HandlePrsDimPerpendicularRelation* = Handle[PrsDimPerpendicularRelation]
## ! A framework to display constraints of perpendicularity
## ! between two or more interactive datums. These
## ! datums can be edges or faces.
type
  PrsDimPerpendicularRelation* {.importcpp: "PrsDim_PerpendicularRelation",
                                header: "PrsDim_PerpendicularRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## object
                                                                                                         ## to
                                                                                                         ## display
                                                                                                         ## constraints
                                                                                                         ## of
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## perpendicularity
                                                                                                         ## on
                                                                                                         ## shapes.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## This
                                                                                                         ## object
                                                                                                         ## is
                                                                                                         ## defined
                                                                                                         ## by
                                                                                                         ## a
                                                                                                         ## first
                                                                                                         ## shape
                                                                                                         ## aFShape,
                                                                                                         ## a
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## second
                                                                                                         ## shape
                                                                                                         ## aSShape,
                                                                                                         ## and
                                                                                                         ## a
                                                                                                         ## plane
                                                                                                         ## aPlane.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## aPlane
                                                                                                         ## is
                                                                                                         ## the
                                                                                                         ## plane
                                                                                                         ## of
                                                                                                         ## reference
                                                                                                         ## to
                                                                                                         ## show
                                                                                                         ## and
                                                                                                         ## test
                                                                                                         ## the
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## perpendicular
                                                                                                         ## relation
                                                                                                         ## between
                                                                                                         ## two
                                                                                                         ## shapes,
                                                                                                         ## at
                                                                                                         ## least
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## one
                                                                                                         ## of
                                                                                                         ## which
                                                                                                         ## has
                                                                                                         ## a
                                                                                                         ## revolved
                                                                                                         ## surface.
type
  HandlePrsDimRadiusDimension* = Handle[PrsDimRadiusDimension]
## ! Radius dimension. Can be constructued:
## ! - On generic circle.
## ! - On generic circle with user-defined anchor point on that circle.
## ! - On generic shape containing geometry that can be measured
## !   by diameter dimension: circle wire, arc, circular face, etc.
## ! The anchor point is the location of left attachement point of
## ! dimension on the circle. It can be user-specified, or computed as
## ! middle point on the arc. The radius dimension always lies in the
## ! plane of the measured circle. The dimension is considered as
## ! invalid if the user-specified anchor point is not lying on the circle,
## ! if the radius of the circle is less than Precision::Confusion().
## ! In case if the dimension is built on the arbitrary shape,
## ! it can be considered as invalid if the shape does not contain
## ! circle geometry.
type
  PrsDimRadiusDimension* {.importcpp: "PrsDim_RadiusDimension",
                          header: "PrsDim_RadiusDimension.hxx", bycopy.} = object of PrsDimDimension ##
                                                                                              ## !
                                                                                              ## Create
                                                                                              ## radius
                                                                                              ## dimension
                                                                                              ## for
                                                                                              ## the
                                                                                              ## circle
                                                                                              ## geometry.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theCircle
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## circle
                                                                                              ## to
                                                                                              ## measure.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## measured
                                                                                              ## geometry
                                                                                              ## circle.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Measure
                                                                                              ## radius
                                                                                              ## of
                                                                                              ## the
                                                                                              ## circle.
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## dimension
                                                                                              ## will
                                                                                              ## become
                                                                                              ## invalid
                                                                                              ## if
                                                                                              ## the
                                                                                              ## radius
                                                                                              ## of
                                                                                              ## the
                                                                                              ## circle
                                                                                              ##
                                                                                              ## !
                                                                                              ## is
                                                                                              ## less
                                                                                              ## than
                                                                                              ## Precision::Confusion().
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theCircle
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## circle
                                                                                              ## to
                                                                                              ## measure.
type
  PrsDimRelation* {.importcpp: "PrsDim_Relation", header: "PrsDim_Relation.hxx",
                   bycopy.} = object of AIS_InteractiveObject ## ! Allows you to provide settings for the color theColor
                                                         ## ! of the lines representing the relation between the two shapes.
type
  HandlePrsDimSymmetricRelation* = Handle[PrsDimSymmetricRelation]
## ! A framework to display constraints of symmetricity
## ! between two or more datum Interactive Objects.
## ! A plane serves as the axis of symmetry between the
## ! shapes of which the datums are parts.
type
  PrsDimSymmetricRelation* {.importcpp: "PrsDim_SymmetricRelation",
                            header: "PrsDim_SymmetricRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## an
                                                                                                 ## object
                                                                                                 ## to
                                                                                                 ## display
                                                                                                 ## constraints
                                                                                                 ## of
                                                                                                 ## symmetricity.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## object
                                                                                                 ## is
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## a
                                                                                                 ## tool
                                                                                                 ## aSymmTool,
                                                                                                 ## a
                                                                                                 ## first
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## shape
                                                                                                 ## FirstShape,
                                                                                                 ## a
                                                                                                 ## second
                                                                                                 ## shape
                                                                                                 ## SecondShape,
                                                                                                 ## and
                                                                                                 ## a
                                                                                                 ## plane
                                                                                                 ## aPlane.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## aPlane
                                                                                                 ## serves
                                                                                                 ## as
                                                                                                 ## the
                                                                                                 ## axis
                                                                                                 ## of
                                                                                                 ## symmetry.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## aSymmTool
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## shape
                                                                                                 ## composed
                                                                                                 ## of
                                                                                                 ## FirstShape
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## SecondShape
                                                                                                 ## and
                                                                                                 ## aPlane.
                                                                                                 ## It
                                                                                                 ## may
                                                                                                 ## be
                                                                                                 ## queried
                                                                                                 ## and
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## edited
                                                                                                 ## using
                                                                                                 ## the
                                                                                                 ## functions
                                                                                                 ## GetTool
                                                                                                 ## and
                                                                                                 ## SetTool.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## two
                                                                                                 ## shapes
                                                                                                 ## are
                                                                                                 ## typically
                                                                                                 ## two
                                                                                                 ## edges,
                                                                                                 ## two
                                                                                                 ## vertices
                                                                                                 ## or
                                                                                                 ## two
                                                                                                 ## points.
type
  HandlePrsDimTangentRelation* = Handle[PrsDimTangentRelation]
## ! A framework to display tangency constraints between
## ! two or more Interactive Objects of the datum type.
## ! The datums are normally faces or edges.
type
  PrsDimTangentRelation* {.importcpp: "PrsDim_TangentRelation",
                          header: "PrsDim_TangentRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                             ## !
                                                                                             ## TwoFacesTangent
                                                                                             ## or
                                                                                             ## TwoEdgesTangent
                                                                                             ## relation
                                                                                             ##
                                                                                             ## !
                                                                                             ## Constructs
                                                                                             ## an
                                                                                             ## object
                                                                                             ## to
                                                                                             ## display
                                                                                             ## tangency
                                                                                             ## constraints.
                                                                                             ##
                                                                                             ## !
                                                                                             ## This
                                                                                             ## object
                                                                                             ## is
                                                                                             ## defined
                                                                                             ## by
                                                                                             ## the
                                                                                             ## first
                                                                                             ## shape
                                                                                             ## aFShape,
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## second
                                                                                             ## shape
                                                                                             ## aSShape,
                                                                                             ## the
                                                                                             ## plane
                                                                                             ## aPlane
                                                                                             ## and
                                                                                             ## the
                                                                                             ## index
                                                                                             ## anExternRef.
                                                                                             ##
                                                                                             ## !
                                                                                             ## aPlane
                                                                                             ## serves
                                                                                             ## as
                                                                                             ## an
                                                                                             ## optional
                                                                                             ## axis.
                                                                                             ##
                                                                                             ## !
                                                                                             ## anExternRef
                                                                                             ## set
                                                                                             ## to
                                                                                             ## 0
                                                                                             ## indicates
                                                                                             ## that
                                                                                             ## there
                                                                                             ## is
                                                                                             ## no
                                                                                             ## relation.
