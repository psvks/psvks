local loaderII = {}

    function loaderII:load(url, boolean, arg1, arg2, arg3)
        local uri = url
        loadstring(game:HttpGetAsync(uri, boolean))(arg1, arg2, arg3)
    end


return loaderII
