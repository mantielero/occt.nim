# https://occtutorials.wordpress.com/2015/12/04/chapter-o-box-with-hole/#more-40
# nim cpp -r ex20_chapter0
import occt

proc main =
  echo """
------- OpenCASCADE Tutorial by Laszlo Kudela -------
------- Chapter 0: Demonstrative example      -------
"""
 
  # Create a simple box with a size 100x100x50, centered around the origin
  let lowerLeftCornerOfBox = pnt(-50.0,-50.0,0.0)
  var boxMaker = box(lowerLeftCornerOfBox,100,100,50)  # tkprim/brepprimapi/brepprimapi_makebox | tkmath/bvh/bvh_box 
  echo typeof(boxMaker)
  var myBox:TopoDS_Shape = boxMaker.shape()
     
  # Create a cylinder with a radius 25.0 and height 50.0, centered at the origin 
  var cylinderMaker = cylinder(25.0,50.0)
  var myCylinder:TopoDS_Shape = cylinderMaker.shape()
 
  # Cut the cylinder out from the box
  var cutMaker = cut(myBox,myCylinder)
  var boxWithHole:TopoDS_Shape = cutMaker.shape()
     
  # Write the resulting shape to a file
  var writer = newSTEPControlWriter() 
  discard writer.transfer(boxWithHole,STEPControl_AsIs)
  discard writer.write("boxWithHole.stp")
 
  echo "Created box with hole, file is written to boxWithHole.stp"
 
  # We compute some volumetric properties of the resulting shape
  #GProp_GProps volumeProperties;
  #BRepGProp::VolumeProperties(boxWithHole,volumeProperties);
 
  # Compute the volume of the model
  #std::cout << std::setprecision(14) << "Volume of the model is: " << volumeProperties.Mass() << std::endl;
     
  # Compute the center of mass
  #std::cout << "Center of mass is: " << volumeProperties.CentreOfMass().X() << " " << volumeProperties.CentreOfMass().Y() << " " << volumeProperties.CentreOfMass().Z() << std::endl;
 
  # Compute the matrix of inertia
  #[     gp_Mat inertiaMatrix = volumeProperties.MatrixOfInertia();
    std::cout << "Matrix of inertia: " << std::endl;
    for (int i = 1; i <= 3; ++i) {
        for (int j = 1; j <= 3; ++j) {
            std::cout << inertiaMatrix(i,j) << "\t";
        }
        std::cout << std::endl;
    } 
  ]#

main()