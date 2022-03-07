sub init() 
    m.top.setFocus(true)
    ' m.myList.observeField("itemSelected","onItemSelected")
    m.myList = m.top.findNode("myList")
    
    setAnimalNames()
end sub

sub setAnimalNames()
  animalNames = [
    {
      "animalName": "like",
      "imageUri1": "pkg:/images/live_markuplist.png",
      "imageUri2": "pkg:/images/Profile_markuplist.png"
    },
    {
      "animalName": "liked",
      "imageUri1": "pkg:/images/live-active_markuplist.png",
      "imageUri2": "pkg:/images/Profile_markuplist.png"
    },
    {
      "animalName": "profile",
      "imageUri1": "pkg:/images/Profile_markuplist.png",
      "imageUri2": "pkg:/images/Profile_markuplist.png"
    },
    {
      "animalName": "search",
      "imageUri1": "pkg:/images/Shows-active_markuplist.png",
      "imageUri2": "pkg:/images/Profile_markuplist.png"
    }
  ]
  parentContent = createObject("roSgNode", "contentNode")

  for each item in animalNames
    childContent = parentContent.createChild("listFields")
    childContent.labelValue = item.animalName
    childContent.posterUri1 = item.imageUri1
    childContent.posterUri2 = item.imageUri2
    
  end for
    m.myList.content = parentContent
    m.myList.setFocus(true)
end sub