import occt

proc main =
  # Create an empty list of shapes
  var myList:TopTools_ListOfShape

  # Add the shapes to the list
  var shape1, shape2: TopoDS_Shape

  mylist &= shape1
  mylist &= shape2

  # Print out the number of shapes in the list
  echo "Number of shapes in the list: ", mylist.len

  for shp in mylist:
    echo typeof(shp)

main()
