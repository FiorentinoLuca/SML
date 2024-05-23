fun reverse list = 
  let
    fun aux [] acc = acc
      | aux (x::xs) acc = aux xs (x :: acc)
  in
    aux list []
  end;