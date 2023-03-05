#import ../../wrapper/tkbrep/topexp/topexp_explorer
import system
import ../../wrapper/occt_wrapper
#import ../../wrapper/tkg3d/tkg3d
import ../geom/geom
import ../../wrapper/breptools/[breptools_types, breptools_wireexplorer]
import ../../wrapper/tkg3d/topabs/topabs_types


#[
    topAbsSOLID, 
    topAbsSHELL, 
    topAbsFACE,
    topAbsWIRE, 
    topAbsEDGE, 
    topAbsVERTEX, 
    topAbsSHAPE
]#


# Compound
iterator getCompounds*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsCOMPOUND) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()

# CompSolid
iterator getCompsolids*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsCOMPSOLID) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()

# Faces
iterator getFaces*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsFACE) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()


iterator getPlanes*(body:TopoDS_Shape): TopoDS_Face =
  for face in body.getFaces():
    var surface = face.surface 
    if surface.isGeomPlane:  # Consider only plane surfaces
      yield face#surface.toPlane

proc getPlaneZmax*(body:TopoDS_Shape): TopoDS_Face =
  ## get the plane with highest Z location
  var zMax = low(float)
  
  for aFace in body.getPlanes():
      var aPnt = aFace.surface.location()      
      var aZ = aPnt.z() 

      if aZ > zMax: # We get the plane surface with the highest Z value
        zMax = aZ
        result = aFace

proc getPlaneZmin*(body:TopoDS_Shape): TopoDS_Face =
  var zMin = high(float)
  
  for aFace in body.getPlanes():
      var aPnt = aFace.surface.location()      
      var aZ = aPnt.z() 

      if aZ < zMin: # We get the plane surface with the lowest Z value
        zMin = aZ
        result = aFace




# Wire
iterator getWires*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsWIRE) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()

# iterator getEdges*(aWire: TopoDS_Wire): TopoDS_Edge =
#   var wireExplorer = newBRepTools_WireExplorer( aWire )
#   while wireExplorer.more():
#     yield wireExplorer.current
#     wireExplorer.next()

iterator getOrientation*(aWire: TopoDS_Wire): TopAbs_Orientation =
  var wireExplorer = newBRepTools_WireExplorer( aWire )
  while wireExplorer.more():
    yield wireExplorer.orientation
    wireExplorer.next()

# iterator getVertex*(aWire: TopoDS_Wire): TopoDS_Vertex =
#   var wireExplorer = newBRepTools_WireExplorer( aWire )
#   while wireExplorer.more():
#     yield wireExplorer.currentVertex
#     wireExplorer.next()

# Edges
iterator getEdges*(body:TopoDS_Shape):TopoDS_Edge =
  var anExplorer = newExplorer(body, topAbsEDGE)
  while anExplorer.more():
    yield anExplorer.current.edge
    anExplorer.next()

# Vertex
iterator getVertex*(body:TopoDS_Shape):TopoDS_Vertex =
  var anExplorer = newExplorer(body, topAbsVERTEX)
  while anExplorer.more():
    yield anExplorer.current.vertex
    anExplorer.next()


# Some inspiration
# https://github.com/sgenoud/replicad/blob/11438e7/packages/replicad/src/finders/generic3dfinder.ts

#[
  /**
   * Filter to find elements that contain a certain point
   *
   * @category Filter
   */
  containsPoint(point: Point): this {
    return this.atDistance(0, point);
  }
]#

iterator getDistancesToFaces*[PX,PY,PZ: SomeNumber](shp: TopoDS_Shape; 
        px: PX; py: PY; pz:PZ): tuple[distance:float;face:TopoDS_Face] =
  ## get the distances of all the faces of a shape to a point
  let p = pnt(px,py,pz)
  #let v = vertex(p)

  # Calculates minimum distances between shapes
  var distanceBuilder = newBRepExtrema_DistShapeShape()

  # - loads the first shape: the vertex
  distanceBuilder.loadS1( p.vertex ) 

  for aFace in shp.getFaces():
    distanceBuilder.loadS2( aFace )
    if distanceBuilder.perform():
      yield (distanceBuilder.value.float, aFace)

iterator getFacesWithinDistance*[D,PX,PY,PZ: SomeNumber](shp: TopoDS_Shape; 
        distance:D;
        px: PX; py: PY; pz:PZ): tuple[distance:float;face:TopoDS_Face] =
  ## get the shape's face within a certain distance
  let p = pnt(px,py,pz)
  #let v = vertex(p)

  # Calculates minimum distances between shapes
  var distanceBuilder = newBRepExtrema_DistShapeShape()

  # - loads the first shape: the vertex
  distanceBuilder.loadS1( p.vertex ) 

  for aFace in shp.getFaces():
    distanceBuilder.loadS2( aFace )
    if distanceBuilder.perform():
      if distance.float >= distanceBuilder.value:
        yield (distanceBuilder.value.float, aFace)

iterator getFacesContaining*[PX,PY,PZ: SomeNumber](shp: TopoDS_Shape; 
        px: PX; py: PY; pz:PZ; tolerance: float = 1.0e-7): TopoDS_Face =
  ## returns faces containing a point
  for (_,aFace) in shp.getFacesWithinDistance(tolerance, px,py,pz):
    yield aFace

# =================
# FILTERS
# =================


#[
  /**
   * Filter to find faces that are of a cetain surface type.
   *
   * @category Filter
   */
  ofSurfaceType(surfaceType: SurfaceType): this {
    const check = ({ element }: { element: Face }) => {
      return element.geomType === surfaceType;
    };
    this.filters.push(check);
    return this;
  }
]#

#[ChatGPT
We then create a bounding box around the point using 
the BRepBndLib::Add function and a shape for the bounding box 
using the BRepPrimAPI_MakeBox class.

Next, we create a shape for the edges we want to search 
(you would replace this with the shape you want to search). 
We create an instance of the BRepExtrema_DistShapeShape class 
with the shape to search and the bounding box shape. We 
set the maximum distance we want to search using 
the SetMaxDistance function.

Finally, we perform the distance calculation using 
the Perform function and iterate over the edges that 
are within the maximum distance using the NbSolution function.


// create a point in 3D space
gp_Pnt point(0, 0, 0);

// create a shape for the point
BRepBuilderAPI_MakeVertex vertexMaker(point);
TopoDS_Vertex vertex = vertexMaker.Vertex();

// create a bounding box around the point
Bnd_Box bbox;
BRepBndLib::Add(vertex, bbox);

// create a shape for the bounding box
TopoDS_Shape bboxShape = BRepPrimAPI_MakeBox(bbox).Shape();

// create a shape for the edges you want to search
TopoDS_Shape shapeToSearch = /* insert your shape here */;

// create an instance of the BRepExtrema_DistShapeShape class
BRepExtrema_DistShapeShape distCalculator(shapeToSearch, bboxShape);

// set the maximum distance you want to search
Standard_Real maxDistance = /* insert your maximum distance here */;
distCalculator.SetMaxDistance(maxDistance);

// perform the distance calculation
distCalculator.Perform();

// iterate over the edges that are within the maximum distance
for (int i = 1; i <= distCalculator.NbSolution(); i++) {
    TopoDS_Edge edge = TopoDS::Edge(distCalculator.Shape1(i));
    // do something with the edge, like add it to a list
}
]#





#[
// iterate over the faces in the shape
TopExp_Explorer faceExplorer(shapeToSearch, TopAbs_FACE);
while (faceExplorer.More()) {
    TopoDS_Face face = TopoDS::Face(faceExplorer.Current());

    // check if the face contains the point
    if (BRep_Tool::IsPointOnFace(vertex, face)) {
        elementsContainingPoint[face] = true;
    }

    faceExplorer.Next();
}
]#





#[ChatGPT
In this example, we create a point in 3D space and a shape for the 
point using the BRepBuilderAPI_MakeVertex class. We then create a 
shape for the edges and faces we want to search (you would replace 
this with the shape you want to search).

We create a map to store the edges and faces that contain the point. 
We iterate over the faces in the shape using the TopExp_Explorer 
class and check if each face contains the point using 
the BRep_Tool::IsPointOnFace function. If the face contains the point, 
we add it to the map.

We then iterate over the edges in the shape using the TopExp_Explorer class 
and check if each edge contains the point by checking if the parameter 
of the point on the edge is between the first and last parameter of the 
edge using the BRep_Tool::Parameter, BRep_Tool::FirstParameter, 
and BRep_Tool::LastParameter functions. If the edge contains 
the point, we add it to the map.

Finally, we iterate over the elements containing the point using 
a for-each loop and do something with each element, like add it to a list.




// iterate over the edges in the shape
TopExp_Explorer edgeExplorer(shapeToSearch, TopAbs_EDGE);
while (edgeExplorer.More()) {
    TopoDS_Edge edge = TopoDS::Edge(edgeExplorer.Current());

    // check if the edge contains the point
    Standard_Real u;
    BRep_Tool::Parameter(vertex, edge, u);
    if (u > BRep_Tool::FirstParameter(edge) && u < BRep_Tool::LastParameter(edge)) {
        elementsContainingPoint[edge] = true;
    }

    edgeExplorer.Next();
}

// iterate over the elements containing the point
for (auto& element : elementsContainingPoint) {
    // do something with the element, like add it to a list
}


]#