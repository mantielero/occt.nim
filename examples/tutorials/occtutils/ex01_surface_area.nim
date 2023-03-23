import occt

proc main =
  var r = ellipse(30,20)
  echo r.face.area  # Shows: 1884.95556640625
  
main()