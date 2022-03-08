sub init() 
    m.top.setFocus(true)
    m.myList = m.top.findNode("myList")
    
    setMovieNames()
end sub

sub setMovieNames()
  movieNames = [
    {
      "movieName": "AAA",
      "movieDesc": "A movie desc",
      "avengers_poster": "pkg:/images/avengers_poster.jpg",
      "unfocusedButton": "pkg:/images/button_unfocused.png",
      "focusedButton": "pkg:/images/button.jpg"
    },
    {
      "movieName": "BBB",
      "movieDesc": "A movie desc",
      "avengers_poster": "pkg:/images/avengers_poster.jpg",
      "unfocusedButton": "pkg:/images/button_unfocused.png",
      "focusedButton": "pkg:/images/button.jpg"
    },
    {
      "movieName": "CCC",
      "movieDesc": "A movie desc",
      "avengers_poster": "pkg:/images/avengers_poster.jpg",
      "unfocusedButton": "pkg:/images/button_unfocused.png",
      "focusedButton": "pkg:/images/button.jpg"

    },
    {
      "movieName": "DDD",
      "movieDesc": "A movie desc",
      "avengers_poster": "pkg:/images/avengers_poster.jpg",
      "unfocusedButton": "pkg:/images/button_unfocused.png",
      "focusedButton": "pkg:/images/button.jpg"
    }
  ]
  parentContent = createObject("roSgNode", "contentNode")

  for each item in movieNames 
    childContent = parentContent.createChild("listFields")
    childContent.movieName = item.movieName
    childContent.movieDesc = item.movieDesc
    childContent.avengers_poster = item.avengers_poster
    childContent.unfocusedButton = item.unfocusedButton
    childContent.focusedButton = item.focusedButton
    
  end for
    m.myList.content = parentContent
    m.myList.observeField("itemFocused","onItemFocused")
    m.myList.setFocus(true)
end sub

sub onItemFocused()
  temp = m.myList.content.getChild(m.myList.itemFocused)
  temp.isFocused = true
end sub