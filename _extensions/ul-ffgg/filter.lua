function Meta(meta)
    if meta.author then
      print("meta.author : ", meta.author)
      print("type de meta.author : ", type(meta.author))
      print("nombre : ", #meta.author)
      local authors = meta.author
      if type(authors) == "table" then
        meta.author_count = #authors -- renvoi un entier
      else
        meta.author_count = 1
      end
    else
      meta.author_count = 0
    end
    return meta
  end

