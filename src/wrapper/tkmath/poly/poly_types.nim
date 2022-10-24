type
  Poly* {.importcpp: "Poly", header: "Poly.hxx", bycopy.} = object ## ! Computes and  stores  the    link from   nodes  to
                                                           ## ! triangles     and from triangles to   neighbouring
                                                           ## ! triangles.
                                                           ## ! This tool is obsolete, replaced by
                                                           ## Poly_CoherentTriangulation
                                                           ## ! Algorithm to make minimal loops in a graph
                                                           ## ! Join several triangulations to one new triangulation object.
                                                           ## ! The new triangulation is just a mechanical sum of input
                                                           ## ! triangulations, without node sharing. UV coordinates are
                                                           ## ! dropped in the result.
type
  PolyCoherentLink* {.importcpp: "Poly_CoherentLink",
                     header: "Poly_CoherentLink.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                   ## *
                                                                   ##  Empty constructor.
                                                                   ##
                                                                   ##  ---------- PROTECTED METHODS ----------
                                                                   ##  ---------- PRIVATE FIELDS ----------
type
  PolyCoherentNode* {.importcpp: "Poly_CoherentNode",
                     header: "Poly_CoherentNode.hxx", bycopy.} = object of XyzObj ##  ---------- PUBLIC METHODS ----------
                                                                        ## *
                                                                        ##  Empty constructor.
                                                                        ##
                                                                        ##  ---------- PROTECTED METHODS ----------
                                                                        ##  ---------- PRIVATE FIELDS ----------
type
  PolyCoherentTriangle* {.importcpp: "Poly_CoherentTriangle",
                         header: "Poly_CoherentTriangle.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                           ## *
                                                                           ##  Empty constructor.
                                                                           ##
                                                                           ##  ---------- PROTECTED METHODS ----------
                                                                           ##  ---------- PRIVATE FIELDS ----------
type
  PolyBaseIteratorOfCoherentTriangle* {.importcpp:"NCollection_Vector<Poly_CoherentTriangle>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj
  PolyBaseIteratorOfCoherentNode* {.importcpp:"NCollection_Vector<PolyCoherentNode>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj
  PolyBaseIteratorOfCoherentLink* {.importcpp:"NCollection_Vector<PolyCoherentLink>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj
## ! Definition of HANDLE object using Standard_DefineHandle.hxx
type
  HandlePolyCoherentTriangulation* = Handle[PolyCoherentTriangulation]
## *
##  Triangulation structure that allows to:
##  <ul>
##  <li>Store the connectivity of each triangle with up to 3 neighbouring ones and with the corresponding 3rd nodes on them,</li>
##  <li>Store the connectivity of each node with all triangles that share this node</li>
##  <li>Add nodes and triangles to the structure,</li>
##  <li>Find all triangles sharing a single or a couple of nodes</li>
##  <li>Remove triangles from structure</li>
##  <li>Optionally create Links between pairs of nodes according to the current triangulation.</li>
##  <li>Convert from/to Poly_Triangulation structure.</li>
##  </ul>
##
##  This class is useful for algorithms that need to analyse and/or edit a triangulated mesh -- for example for mesh refining.
##  The connectivity model follows the idea that all Triangles in a mesh should have coherent orientation like on a surface of a solid body.
##  Connections between more than 2 triangles are not suppoorted.
##
##  @section Poly_CoherentTriangulation Architecture
##  The data types used in this structure are:
##  <ul>
##  <li><b>Poly_CoherentNode</b>: Inherits go_XYZ therefore provides the full public API of gp_XYZ.
##  Contains references to all incident triangles. You can add new nodes but you cannot remove existing ones.
##  However each node that has no referenced triangle is considered as "free" (use the method IsFreeNode() to check this).
##  Free nodes are not available to further processing, particularly they are not exported in Poly_Triangulation.
##  </li>
##  <li><b>Poly_CoherentTriangle</b>: Main data type. Refers three Nodes, three connected Triangles, three opposite (connected) Nodes and three Links.
##  If there is boundary then 1, 2 or 3 references to Triangles/connected Nodes/Links are assigned to NULL (for pointers) or -1 (for integer node index).
##
##  You can find a triangle by one node using its triangle iterator or by
##  two nodes - creating a temporary Poly_CoherentLink and calling the method FindTriangle().
##
##  Triangles can be removed but they are never deleted from the containing array. Removed triangles have all nodes equal to -1.
##  You can use the method IsEmpty() to check that.
##  </li>
##  <li><b>Poly_CoherentLink</b>: Auxiliary data type. Normally the array of Links is empty, because for many algorithms it is sufficient to define only Triangles.
##  You can explicitly create the Links at least once, calling the method ComputeLinks(). Each Link is oriented couple of Poly_CoherentNode (directed to the ascending Node index).
##  It refers two connected triangulated Nodes - on the left and on the right,
##  therefore a Poly_CoherentLink instance refers the full set of nodes that constitute a couple of connected Triangles.
##  A boundary Link has either the first (left) or the second (right) connected node index equal to -1.
##
##  When the array of Links is created, all subsequent calls to AddTriangle and RemoveTriangle try to preserve the connectivity Triangle-Link in addition to the connectivity Triangle-Triangle.
##  Particularly, new Links are created by method AddTriangle() and existing ones are removed by method RemoveTriangle(), in each case whenever necessary.
##
##  Similarly to Poly_CoherentTriangle, a Link can be removed but not destroyed separately from others.
##  Removed Link can be recogniosed using the method IsEmpty(). To destroy all Links, call the method ClearLinks(),
##  this method also nullifies Link references in all Triangles.
##  </li>
##  All objects (except for free Nodes and empty Triangles and Links) can be visited by the corresponding Iterator.
##  Direct access is provided only for Nodes (needed to resolve Node indexed commonly used as reference).
##  Triangles and Links can be retrieved by their index only internally, the public API provides only references or pointers to C++ objects.
##  If you need a direct access to Triangles and Links, you can subclass Poly_CoherentTriangulation and use the protected API for your needs.
##
##  Memory management: All data objects are stored in NCollection_Vector containers that prove to be efficient for the performance.
##  In addition references to triangles are stored in ring lists, with an instance of such list per Poly_CoherentNode.
##  These lists are allocated in a memory allocator that is provided in the constructor of Poly_CoherentTriangulation.
##  By default the standard OCCT allocator (aka NCollection_BaseAllocator) is used.
##  But if you need to increase the performance you can use NCollection_IncAllocator instead.
##  </ul>
##
type
  PolyCoherentTriangulation* {.importcpp: "Poly_CoherentTriangulation",
                              header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of StandardTransient ## *
                                                                                                        ##  Subclass Iterator - allows to iterate all triangles skipping those that
                                                                                                        ##  have been removed.
                                                                                                        ##
                                                                                                        ##  ---------- PUBLIC METHODS ----------
                                                                                                        ## *
                                                                                                        ##  Empty constructor.
                                                                                                        ##
                                                                                                        ##  ---------- PROTECTED METHODS ----------
                                                                                                        ##  ---------- PROTECTED FIELDS ----------
                                                                                                        ##  Declaration of CASCADE RTTI
  PolyCoherentTriangulationIteratorOfTriangle* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfTriangle",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentTriangle ##
                                                                                                 ## !
                                                                                                 ## Constructor
type
  PolyCoherentTriangulationIteratorOfNode* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfNode",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentNode ##
                                                                                             ## !
                                                                                             ## Constructor
type
  PolyCoherentTriangulationIteratorOfLink* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfLink",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentLink ##
                                                                                             ## !
                                                                                             ## Constructor
type
  PolyCoherentTriangulationTwoIntegers* {.
      importcpp: "Poly_CoherentTriangulation::TwoIntegers",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: array[2, cint]
type
  PolyCoherentTriPtr* {.importcpp: "Poly_CoherentTriPtr",
                       header: "Poly_CoherentTriPtr.hxx", bycopy.} = object ## *
                                                                       ##  Iterator class for this list of triangles. Because the list is round,
                                                                       ##  an iteration can be started from any member and it finishes before taking
                                                                       ##  this member again. The iteration sense is always forward (Next).
                                                                       ##
                                                                       ##  ---------- PROTECTED METHODS ----------
                                                                       ## *
                                                                       ##  Constructor.
                                                                       ##
                                                                       ##  ---------- PRIVATE FIELDS ----------
  PolyCoherentTriPtrIterator* {.importcpp: "Poly_CoherentTriPtr::Iterator",
                               header: "Poly_CoherentTriPtr.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor
type
  PolyConnect* {.importcpp: "Poly_Connect", header: "Poly_Connect.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Constructs
                                                                                  ## an
                                                                                  ## uninitialized
                                                                                  ## algorithm.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Initializes
                                                                                  ## an
                                                                                  ## iterator
                                                                                  ## to
                                                                                  ## search
                                                                                  ## for
                                                                                  ## all
                                                                                  ## the
                                                                                  ## triangles
                                                                                  ##
                                                                                  ## !
                                                                                  ## containing
                                                                                  ## the
                                                                                  ## node
                                                                                  ## referenced
                                                                                  ## at
                                                                                  ## index
                                                                                  ## N
                                                                                  ## in
                                                                                  ## the
                                                                                  ## nodes
                                                                                  ##
                                                                                  ## !
                                                                                  ## table,
                                                                                  ## for
                                                                                  ## the
                                                                                  ## triangulation
                                                                                  ## analyzed
                                                                                  ## by
                                                                                  ## this
                                                                                  ## tool.
                                                                                  ##
                                                                                  ## !
                                                                                  ## The
                                                                                  ## iterator
                                                                                  ## is
                                                                                  ## managed
                                                                                  ## by
                                                                                  ## the
                                                                                  ## following
                                                                                  ## functions:
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## More,
                                                                                  ## which
                                                                                  ## checks
                                                                                  ## if
                                                                                  ## there
                                                                                  ## are
                                                                                  ## still
                                                                                  ## elements
                                                                                  ## in
                                                                                  ## the
                                                                                  ## iterator
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## Next,
                                                                                  ## which
                                                                                  ## positions
                                                                                  ## the
                                                                                  ## iterator
                                                                                  ## on
                                                                                  ## the
                                                                                  ## next
                                                                                  ## element
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## Value,
                                                                                  ## which
                                                                                  ## returns
                                                                                  ## the
                                                                                  ## current
                                                                                  ## element.
                                                                                  ##
                                                                                  ## !
                                                                                  ## The
                                                                                  ## use
                                                                                  ## of
                                                                                  ## such
                                                                                  ## an
                                                                                  ## iterator
                                                                                  ## provides
                                                                                  ## direct
                                                                                  ## access
                                                                                  ## to
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## triangles
                                                                                  ## around
                                                                                  ## a
                                                                                  ## particular
                                                                                  ## node,
                                                                                  ## i.e.
                                                                                  ## it
                                                                                  ## avoids
                                                                                  ## iterating
                                                                                  ## on
                                                                                  ##
                                                                                  ## !
                                                                                  ## all
                                                                                  ## the
                                                                                  ## component
                                                                                  ## triangles
                                                                                  ## of
                                                                                  ## a
                                                                                  ## triangulation.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Example
                                                                                  ##
                                                                                  ## !
                                                                                  ## Poly_Connect
                                                                                  ## C(Tr);
                                                                                  ##
                                                                                  ## !
                                                                                  ## for
                                                                                  ##
                                                                                  ## !
                                                                                  ## (C.Initialize(n1);C.More();C.Next())
                                                                                  ##
                                                                                  ## !
                                                                                  ## {
                                                                                  ##
                                                                                  ## !
                                                                                  ## t
                                                                                  ## =
                                                                                  ## C.Value();
                                                                                  ##
                                                                                  ## !
                                                                                  ## }
type
  PolyHArray1OfTriangle* {.importcpp: "Poly_HArray1OfTriangle",
                          header: "Poly_HArray1OfTriangle.hxx", bycopy.} = object of PolyArray1OfTriangle
type
  PolyMakeLoops* {.importcpp: "Poly_MakeLoops", header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj##
                                                                                        ## !
                                                                                        ## Orientation
                                                                                        ## flags
                                                                                        ## that
                                                                                        ## can
                                                                                        ## be
                                                                                        ## attached
                                                                                        ## to
                                                                                        ## a
                                                                                        ## link
                                                                                        ##
                                                                                        ## PUBLIC
                                                                                        ## METHODS
                                                                                        ##
                                                                                        ## !
                                                                                        ## Constructor.
                                                                                        ## If
                                                                                        ## helper
                                                                                        ## is
                                                                                        ## NULL
                                                                                        ## then
                                                                                        ## the
                                                                                        ## algorithm
                                                                                        ## will
                                                                                        ##
                                                                                        ## !
                                                                                        ## probably
                                                                                        ## return
                                                                                        ## a
                                                                                        ## wrong
                                                                                        ## result
  PolyMakeLoopsLinkFlag* {.size: sizeof(cint),
                          importcpp: "Poly_MakeLoops::LinkFlag",
                          header: "Poly_MakeLoops.hxx".} = enum
    LF_None = 0, LF_Fwd = 1,       ##  forward orientation
    LF_Rev = 2,                 ##  reversed orientation
    LF_Both = 3,                ##  both ways oriented
    LF_Reversed = 4
type
  PolyMakeLoopsLink* {.importcpp: "Poly_MakeLoops::Link",
                      header: "Poly_MakeLoops.hxx", bycopy.} = object
    node1* {.importc: "node1".}: cint
    node2* {.importc: "node2".}: cint
    flags* {.importc: "flags".}: cint
type
  PolyMakeLoopsListOfLink* = NCollectionList[PolyMakeLoopsLink]
  PolyMakeLoopsLoop* = PolyMakeLoopsListOfLink
  PolyMakeLoopsHelper* {.importcpp: "Poly_MakeLoops::Helper",
                        header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj ## ! returns the links adjacent to the given node
type
  PolyMakeLoopsHeapOfInteger* {.importcpp: "Poly_MakeLoops::HeapOfInteger",
                               header: "Poly_MakeLoops.hxx", bycopy.} = object
type
  PolyMakeLoopsResultCode* {.size: sizeof(cint),
                            importcpp: "Poly_MakeLoops::ResultCode",
                            header: "Poly_MakeLoops.hxx".} = enum
    RC_LoopsDone = 1, RC_HangingLinks = 2, RC_Failure = 4
type
  PolyMakeLoops3D* {.importcpp: "Poly_MakeLoops3D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops ## ! The abstract helper class
  PolyMakeLoops3DHelper* {.importcpp: "Poly_MakeLoops3D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper ##  all the following methods should return False if
                                                                                          ##  it is impossible to return a valid direction
                                                                                          ## ! returns the tangent vector at the first node of a link
type
  PolyMakeLoops2D* {.importcpp: "Poly_MakeLoops2D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops ## ! The abstract helper class
                                                  ## ! this flag says that chooseLeftWay must choose the right way instead
  PolyMakeLoops2DHelper* {.importcpp: "Poly_MakeLoops2D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper ##  all the following methods should return False if
                                                                                          ##  it is impossible to return a valid direction
                                                                                          ## ! returns the tangent vector at the first node of a link
type
  HandlePolyPolygon2D* = Handle[PolyPolygon2D]
## ! Provides a polygon in 2D space (for example, in the
## ! parametric space of a surface). It is generally an
## ! approximate representation of a curve.
## ! A Polygon2D is defined by a table of nodes. Each node is
## ! a 2D point. If the polygon is closed, the point of closure is
## ! repeated at the end of the table of nodes.
type
  PolyPolygon2D* {.importcpp: "Poly_Polygon2D", header: "Poly_Polygon2D.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Constructs
                                                                                                           ## a
                                                                                                           ## 2D
                                                                                                           ## polygon
                                                                                                           ## with
                                                                                                           ## specified
                                                                                                           ## number
                                                                                                           ## of
                                                                                                           ## nodes.
type
  HandlePolyPolygon3D* = Handle[PolyPolygon3D]
## ! This class Provides a polygon in 3D space. It is generally an approximate representation of a curve.
## ! A Polygon3D is defined by a table of nodes. Each node is
## ! a 3D point. If the polygon is closed, the point of closure is
## ! repeated at the end of the table of nodes.
## ! If the polygon is an approximate representation of a curve,
## ! you can associate with each of its nodes the value of the
## ! parameter of the corresponding point on the curve.
type
  PolyPolygon3D* {.importcpp: "Poly_Polygon3D", header: "Poly_Polygon3D.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Constructs
                                                                                                           ## a
                                                                                                           ## 3D
                                                                                                           ## polygon
                                                                                                           ## with
                                                                                                           ## specific
                                                                                                           ## number
                                                                                                           ## of
                                                                                                           ## nodes.
type
  HandlePolyPolygonOnTriangulation* = Handle[PolyPolygonOnTriangulation]
## ! This class provides a polygon in 3D space, based on the triangulation
## ! of a surface. It may be the approximate representation of a
## ! curve on the surface, or more generally the shape.
## ! A PolygonOnTriangulation is defined by a table of
## ! nodes. Each node is an index in the table of nodes specific
## ! to a triangulation, and represents a point on the surface. If
## ! the polygon is closed, the index of the point of closure is
## ! repeated at the end of the table of nodes.
## ! If the polygon is an approximate representation of a curve
## ! on a surface, you can associate with each of its nodes the
## ! value of the parameter of the corresponding point on the
## ! curve.represents a 3d Polygon
type
  PolyPolygonOnTriangulation* {.importcpp: "Poly_PolygonOnTriangulation",
                               header: "Poly_PolygonOnTriangulation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## a
                                                                                                          ## 3D
                                                                                                          ## polygon
                                                                                                          ## on
                                                                                                          ## the
                                                                                                          ## triangulation
                                                                                                          ## of
                                                                                                          ## a
                                                                                                          ## shape
                                                                                                          ## with
                                                                                                          ## specified
                                                                                                          ## size
                                                                                                          ## of
                                                                                                          ## nodes.
type
  PolyTriangle* {.importcpp: "Poly_Triangle", header: "Poly_Triangle.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## a
                                                                                     ## triangle
                                                                                     ## and
                                                                                     ## sets
                                                                                     ## all
                                                                                     ## indices
                                                                                     ## to
                                                                                     ## zero.
type
  HandlePolyTriangulation* = Handle[PolyTriangulation]
## ! Provides a triangulation for a surface, a set of surfaces, or
## ! more generally a shape.
## ! A triangulation consists of an approximate representation
## ! of the actual shape, using a collection of points and
## ! triangles. The points are located on the surface. The
## ! edges of the triangles connect adjacent points with a
## ! straight line that approximates the true curve on the surface.
## ! A triangulation comprises:
## ! -   A table of 3D nodes (3D points on the surface).
## ! -   A table of triangles. Each triangle (Poly_Triangle
## ! object) comprises a triplet of indices in the table of 3D
## ! nodes specific to the triangulation.
## ! -   A table of 2D nodes (2D points), parallel to the table of
## ! 3D nodes. This table is optional. If it exists, the
## ! coordinates of a 2D point are the (u, v) parameters
## ! of the corresponding 3D point on the surface
## ! approximated by the triangulation.
## ! -   A deflection (optional), which maximizes the distance
## ! from a point on the surface to the corresponding point
## ! on its approximate triangulation.
## ! In many cases, algorithms do not need to work with the
## ! exact representation of a surface. A triangular
## ! representation induces simpler and more robust adjusting,
## ! faster performances, and the results are as good.
## ! This is a Transient class.
type
  PolyTriangulation* {.importcpp: "Poly_Triangulation",
                      header: "Poly_Triangulation.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Constructs
                                                                                        ## a
                                                                                        ## triangulation
                                                                                        ## from
                                                                                        ## a
                                                                                        ## set
                                                                                        ## of
                                                                                        ## triangles.
                                                                                        ## The
                                                                                        ##
                                                                                        ## !
                                                                                        ## triangulation
                                                                                        ## is
                                                                                        ## initialized
                                                                                        ## without
                                                                                        ## a
                                                                                        ## triangle
                                                                                        ## or
                                                                                        ## a
                                                                                        ## node,
                                                                                        ## but
                                                                                        ## capable
                                                                                        ## of
                                                                                        ##
                                                                                        ## !
                                                                                        ## containing
                                                                                        ## nbNodes
                                                                                        ## nodes,
                                                                                        ## and
                                                                                        ## nbTriangles
                                                                                        ##
                                                                                        ## !
                                                                                        ## triangles.
                                                                                        ## Here
                                                                                        ## the
                                                                                        ## UVNodes
                                                                                        ## flag
                                                                                        ## indicates
                                                                                        ## whether
                                                                                        ##
                                                                                        ## !
                                                                                        ## 2D
                                                                                        ## nodes
                                                                                        ## will
                                                                                        ## be
                                                                                        ## associated
                                                                                        ## with
                                                                                        ## 3D
                                                                                        ## ones,
                                                                                        ## (i.e.
                                                                                        ## to
                                                                                        ##
                                                                                        ## !
                                                                                        ## enable
                                                                                        ## a
                                                                                        ## 2D
                                                                                        ## representation).
