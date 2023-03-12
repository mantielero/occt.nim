# https://occtutorials.wordpress.com/2015/12/04/chapter-o-box-with-hole/#more-40
# nim cpp -r chapter0
import occt
import os # for stdout
proc main =
  echo """
------- OpenCASCADE Tutorial by Laszlo Kudela -------
------- Chapter 0: Demonstrative example      -------
"""
 
  # Create a simple box with a size 100x100x50, centered around the origin
  let lowerLeftCornerOfBox = pnt(-50.0,-50.0,0.0)
  var boxMaker = box(lowerLeftCornerOfBox,100,100,50)
  var myBox = boxMaker.shape()
     
  # Create a cylinder with a radius 25.0 and height 50.0, centered at the origin 
  var cylinderMaker = cylinder(25.0,50.0)
  var myCylinder = cylinderMaker.shape()
 
  # Cut the cylinder out from the box
  var cutMaker = cut(myBox,myCylinder)
  var boxWithHole = cutMaker.shape()
     
  # Write the resulting shape to a file
  var writer = newSTEPControlWriter() 
  discard writer.transfer(boxWithHole,STEPControl_AsIs)
  discard writer.write("boxWithHole.stp")
 
  echo "Created box with hole, file is written to boxWithHole.stp"
 
  # We compute some volumetric properties of the resulting shape
  var volumeProperties:GProp_GProps
  VolumeProperties(boxWithHole, volumeProperties) 

  # Compute the volume of the model
  setPrecision(14)   # std::setprecision(14)
  echo volumeProperties.Mass()
  #std::cout << std::setprecision(14) << "Volume of the model is: " << volumeProperties.Mass() << std::endl;
     
  # Compute the center of mass
  var com = volumeProperties.CentreOfMass()
  echo "Center of mass is: ", com
     

  # Compute the matrix of inertia
  var inertiaMatrix = volumeProperties.MatrixOfInertia()
  echo "Matrix of inertia:"
  echo typeof(inertiaMatrix)
  for i in 1..3:
    for j in 1..3:
      #echo inertiaMatrix(i.cint, j.cint)
      stdout.write inertiaMatrix(i.cint, j.cint)
      stdout.write " "
    stdout.flushFile
    echo ""

main()